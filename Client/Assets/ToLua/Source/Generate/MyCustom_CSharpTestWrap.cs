﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class MyCustom_CSharpTestWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(MyCustom.CSharpTest), typeof(System.Object));
		L.RegFunction("ShowMessage", ShowMessage);
		L.RegFunction("Show", Show);
		L.RegFunction("New", _CreateMyCustom_CSharpTest);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateMyCustom_CSharpTest(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				MyCustom.CSharpTest obj = new MyCustom.CSharpTest();
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: MyCustom.CSharpTest.New");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ShowMessage(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				MyCustom.CSharpTest.ShowMessage();
				return 0;
			}
			else if (count == 1)
			{
				int arg0 = (int)LuaDLL.luaL_checknumber(L, 1);
				MyCustom.CSharpTest.ShowMessage(arg0);
				return 0;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: MyCustom.CSharpTest.ShowMessage");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Show(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			MyCustom.CSharpTest obj = (MyCustom.CSharpTest)ToLua.CheckObject<MyCustom.CSharpTest>(L, 1);
			obj.Show();
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}

