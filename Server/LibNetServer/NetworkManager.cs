﻿using System;
using System.Net;
using System.Net.Sockets;
using System.Net.NetworkInformation;
using System.Threading;
using System.IO;

public class NetworkManager 
{
    // 服务器socket监听对象
    private Socket _server;

    // 最大客户端连接数
    private int _maxClient;

    // 最大连接数信号量
    private Semaphore _acceptClients;

    // 用户标记池
    private UserTokenPool _pool;

    /// <summary>
    /// 消息处理中心，由外部应用传入
    /// </summary>
    private IHandlerCenter _center;

    /// <summary>
    /// 初始化通信监听
    /// </summary>
    /// <param name="port">监听端口</param>
    public NetworkManager(int max, IHandlerCenter center)
    {
        //实例化监听对象
        _server = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);

        //设定服务器最大连接人数
        _maxClient = max;

        _center = center;
        _center.Initialize();
    }

    public void Start(int port)
    {
        //创建连接池
        _pool = new UserTokenPool(_maxClient);

        //连接信号量
        _acceptClients = new Semaphore(_maxClient, _maxClient);
        for (int i = 0; i < _maxClient; i++)
        {
            UserToken token = new UserToken();

            //初始化token信息               
            token.receiveSAEA.Completed += new EventHandler<SocketAsyncEventArgs>(IO_Comleted);
            token.sendSAEA.Completed += new EventHandler<SocketAsyncEventArgs>(IO_Comleted);

            token.sendProcess = ProcessSend;
            token.closeProcess = ClientClose;
            token.center = _center;
            _pool.push(token);
        }

        // 监听当前服务器网卡所有可用IP地址的port端口
        // 外网IP  内网IP192.168.x.x 本机IP一个127.0.0.1
        try
        {
            // 获取以太网有线连接IP
            IPAddress ip = IPHelper.GetEthernetIP(NetworkInterfaceType.Ethernet);

            if (ip == null)
            {
                // 获取以太网无线连接IP
                ip = IPHelper.GetEthernetIP(NetworkInterfaceType.Wireless80211);
            }

            _server.Bind(new IPEndPoint(ip, port));

            // 置于监听状态
            _server.Listen(10);
            StartAccept(null);

            Console.WriteLine(string.Format("Start Listen, ip: {0}, port: {1}. \n", ip, port));
        }
        catch (Exception e)
        {
            Console.WriteLine(e.Message);
        }
    }

    /// <summary>
    /// 开始客户端连接监听
    /// </summary>
    public void StartAccept(SocketAsyncEventArgs e)
    {
        //如果当前传入为空  说明调用新的客户端连接监听事件 否则的话 移除当前客户端连接
        if (e == null)
        {
            e = new SocketAsyncEventArgs();
            e.Completed += new EventHandler<SocketAsyncEventArgs>(Accept_Comleted);
        }
        else
        {
            e.AcceptSocket = null;
        }

        // 信号量-1
        _acceptClients.WaitOne();
        bool result = _server.AcceptAsync(e);

        // 判断异步事件是否挂起  没挂起说明立刻执行完成  直接处理事件 否则会在处理完成后触发Accept_Comleted事件
        if (!result)
        {
            ProcessAccept(e);
        }
    }

    public void ProcessAccept(SocketAsyncEventArgs e)
    {
        // 从连接对象池取出连接对象 供新用户使用
        UserToken token = _pool.pop();
        token.conn = e.AcceptSocket;

        // TODO 通知应用层 有客户端连接
        _center.ClientConnect(token);

        // 开启消息到达监听
        StartReceive(token);

        // 释放当前异步对象
        StartAccept(e);
    }

    public void Accept_Comleted(object sender, SocketAsyncEventArgs e)
    {
        ProcessAccept(e);
    }

    public void StartReceive(UserToken token)
    {
        try
        {
            // 用户连接对象 开启异步数据接收
            bool result = token.conn.ReceiveAsync(token.receiveSAEA);

            // 异步事件是否挂起
            if (!result)
            {
                ProcessReceive(token.receiveSAEA);
            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.Message);
        }
    }

    public void IO_Comleted(object sender, SocketAsyncEventArgs e)
    {
        if (e.LastOperation == SocketAsyncOperation.Receive)
        {
            ProcessReceive(e);
        }
        else
        {
            ProcessSend(e);
        }
    }

    public void ProcessReceive(SocketAsyncEventArgs e)
    {
        UserToken token = e.UserToken as UserToken;

        // 判断网络消息接收是否成功
        if (token.receiveSAEA.BytesTransferred > 0 && token.receiveSAEA.SocketError == SocketError.Success)
        {
            byte[] message = new byte[token.receiveSAEA.BytesTransferred];

            // 将网络消息拷贝到自定义数组
            Buffer.BlockCopy(token.receiveSAEA.Buffer, 0, message, 0, token.receiveSAEA.BytesTransferred);

            // 处理接收到的消息
            token.receive(message);

            StartReceive(token);
        }
        else
        {
            if (token.receiveSAEA.SocketError != SocketError.Success)
            {
                ClientClose(token, token.receiveSAEA.SocketError.ToString());
            }
            else
            {
                ClientClose(token, "客户端主动断开连接");
            }
        }
    }
    public void ProcessSend(SocketAsyncEventArgs e)
    {
        UserToken token = e.UserToken as UserToken;
        if (e.SocketError != SocketError.Success)
        {
            ClientClose(token, e.SocketError.ToString());
        }
        else
        {
            // 消息发送成功，回调成功
            token.writed();
        }
    }

    /// <summary>
    /// 客户端断开连接
    /// </summary>
    /// <param name="token"> 断开连接的用户对象</param>
    /// <param name="error">断开连接的错误编码</param>
    public void ClientClose(UserToken token, string error)
    {
        if (token.conn != null)
        {
            lock (token)
            {
                // 通知应用层面 客户端断开连接了
                _center.ClientClose(token, error);
                token.Close();

                // 加回一个信号量，供其它用户使用
                _pool.push(token);
                _acceptClients.Release();
            }
        }
    }

    public static void Send<T>(UserToken token, int command, T message)
    {
        byte[] data = SerializeUtil.Serialize<T>(message);
        SocketModel model = new SocketModel(command, data);
        byte[] value = Encoding.MsgEncode(model);
        value = Encoding.LengthEncode(value);
        token.write(value);
    }
}