---
--- Created by shang.
--- DateTime: 2017/12/19 12:12
---

AccountHandler = {};
local this = AccountHandler;

function AccountHandler.Register()
    networkMgr:Register(1002, AccountHandler.OnRespLogin);
    networkMgr:Register(1004, AccountHandler.OnRegisterResp);
    networkMgr:Register(1006, AccountHandler.OnOffline);
end

function AccountHandler.OnRespLogin(m)
    --local decode = protobuf.decode("RespLogin" , m.message)
    local rsp = account_pb.RespLogin();
    local data = ByteArray.GetBuffer(m.message);
    rsp:ParseFromString(data);
    if rsp.msgtips == 1003 then
        MessageBox.Open("Account or Password Error");
    end
    if rsp.msgtips == 1005 then
        MessageBox.Open("Login Success");
    end
    --logError(msg.account);
    ---logError(rsp.msgtips);

    local msgWnd = CtrlManager.GetCtrl(CtrlNames.Message);
    ---msgWnd.Open();
end

function AccountHandler.OnRegisterResp(m)
    local rsp = account_pb.RespRegister();
    local data = ByteArray.GetBuffer(m.message);
    rsp:ParseFromString(data);
    if rsp.msgtips == 1006 then
        MessageBox.Open("Register Success");
    end
    if rsp.msgtips == 1007 then
        MessageBox.Open("Account Repeat");
    end

end

--- 下线通知
function OnOffline(m)
    local rsp = account_pb.RespOffline();

    local data = ByteArray.GetBuffer(m.message);
    rsp:ParseFromString(data);
end