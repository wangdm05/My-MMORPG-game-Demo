-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
local common_pb = require("common_pb")
module('mall_pb')


local BUYTYPE = protobuf.EnumDescriptor();
local BUYTYPE_GOLD_ENUM = protobuf.EnumValueDescriptor();
local BUYTYPE_DIAMON_ENUM = protobuf.EnumValueDescriptor();
local REQMALLINFO = protobuf.Descriptor();
local RSPMALLINFO = protobuf.Descriptor();
local RSPMALLINFO_GOODS_FIELD = protobuf.FieldDescriptor();
local REQBUYGOODS = protobuf.Descriptor();
local REQBUYGOODS_GOODID_FIELD = protobuf.FieldDescriptor();
local REQBUYGOODS_BUYTYPE_FIELD = protobuf.FieldDescriptor();
local RSPBUYGOODS = protobuf.Descriptor();
local RSPBUYGOODS_MSGTIPS_FIELD = protobuf.FieldDescriptor();
local RSPBUYGOODS_INV_FIELD = protobuf.FieldDescriptor();
local RSPBUYGOODS_GOLD_FIELD = protobuf.FieldDescriptor();
local RSPBUYGOODS_DIAMOND_FIELD = protobuf.FieldDescriptor();

BUYTYPE_GOLD_ENUM.name = "Gold"
BUYTYPE_GOLD_ENUM.index = 0
BUYTYPE_GOLD_ENUM.number = 0
BUYTYPE_DIAMON_ENUM.name = "Diamon"
BUYTYPE_DIAMON_ENUM.index = 1
BUYTYPE_DIAMON_ENUM.number = 1
BUYTYPE.name = "BuyType"
BUYTYPE.full_name = ".BuyType"
BUYTYPE.values = {BUYTYPE_GOLD_ENUM,BUYTYPE_DIAMON_ENUM}
REQMALLINFO.name = "ReqMallInfo"
REQMALLINFO.full_name = ".ReqMallInfo"
REQMALLINFO.nested_types = {}
REQMALLINFO.enum_types = {}
REQMALLINFO.fields = {}
REQMALLINFO.is_extendable = false
REQMALLINFO.extensions = {}
RSPMALLINFO_GOODS_FIELD.name = "goods"
RSPMALLINFO_GOODS_FIELD.full_name = ".RspMallInfo.goods"
RSPMALLINFO_GOODS_FIELD.number = 1
RSPMALLINFO_GOODS_FIELD.index = 0
RSPMALLINFO_GOODS_FIELD.label = 3
RSPMALLINFO_GOODS_FIELD.has_default_value = false
RSPMALLINFO_GOODS_FIELD.default_value = {}
RSPMALLINFO_GOODS_FIELD.type = 13
RSPMALLINFO_GOODS_FIELD.cpp_type = 3

RSPMALLINFO.name = "RspMallInfo"
RSPMALLINFO.full_name = ".RspMallInfo"
RSPMALLINFO.nested_types = {}
RSPMALLINFO.enum_types = {}
RSPMALLINFO.fields = {RSPMALLINFO_GOODS_FIELD}
RSPMALLINFO.is_extendable = false
RSPMALLINFO.extensions = {}
REQBUYGOODS_GOODID_FIELD.name = "goodid"
REQBUYGOODS_GOODID_FIELD.full_name = ".ReqBuyGoods.goodid"
REQBUYGOODS_GOODID_FIELD.number = 1
REQBUYGOODS_GOODID_FIELD.index = 0
REQBUYGOODS_GOODID_FIELD.label = 2
REQBUYGOODS_GOODID_FIELD.has_default_value = false
REQBUYGOODS_GOODID_FIELD.default_value = 0
REQBUYGOODS_GOODID_FIELD.type = 13
REQBUYGOODS_GOODID_FIELD.cpp_type = 3

REQBUYGOODS_BUYTYPE_FIELD.name = "buyType"
REQBUYGOODS_BUYTYPE_FIELD.full_name = ".ReqBuyGoods.buyType"
REQBUYGOODS_BUYTYPE_FIELD.number = 2
REQBUYGOODS_BUYTYPE_FIELD.index = 1
REQBUYGOODS_BUYTYPE_FIELD.label = 2
REQBUYGOODS_BUYTYPE_FIELD.has_default_value = false
REQBUYGOODS_BUYTYPE_FIELD.default_value = nil
REQBUYGOODS_BUYTYPE_FIELD.enum_type = BUYTYPE
REQBUYGOODS_BUYTYPE_FIELD.type = 14
REQBUYGOODS_BUYTYPE_FIELD.cpp_type = 8

REQBUYGOODS.name = "ReqBuyGoods"
REQBUYGOODS.full_name = ".ReqBuyGoods"
REQBUYGOODS.nested_types = {}
REQBUYGOODS.enum_types = {}
REQBUYGOODS.fields = {REQBUYGOODS_GOODID_FIELD, REQBUYGOODS_BUYTYPE_FIELD}
REQBUYGOODS.is_extendable = false
REQBUYGOODS.extensions = {}
RSPBUYGOODS_MSGTIPS_FIELD.name = "msgtips"
RSPBUYGOODS_MSGTIPS_FIELD.full_name = ".RspBuyGoods.msgtips"
RSPBUYGOODS_MSGTIPS_FIELD.number = 1
RSPBUYGOODS_MSGTIPS_FIELD.index = 0
RSPBUYGOODS_MSGTIPS_FIELD.label = 2
RSPBUYGOODS_MSGTIPS_FIELD.has_default_value = false
RSPBUYGOODS_MSGTIPS_FIELD.default_value = 0
RSPBUYGOODS_MSGTIPS_FIELD.type = 13
RSPBUYGOODS_MSGTIPS_FIELD.cpp_type = 3

RSPBUYGOODS_INV_FIELD.name = "inv"
RSPBUYGOODS_INV_FIELD.full_name = ".RspBuyGoods.inv"
RSPBUYGOODS_INV_FIELD.number = 2
RSPBUYGOODS_INV_FIELD.index = 1
RSPBUYGOODS_INV_FIELD.label = 2
RSPBUYGOODS_INV_FIELD.has_default_value = false
RSPBUYGOODS_INV_FIELD.default_value = nil
RSPBUYGOODS_INV_FIELD.message_type = COMMON_PB_INVENTORYDTO
RSPBUYGOODS_INV_FIELD.type = 11
RSPBUYGOODS_INV_FIELD.cpp_type = 10

RSPBUYGOODS_GOLD_FIELD.name = "gold"
RSPBUYGOODS_GOLD_FIELD.full_name = ".RspBuyGoods.gold"
RSPBUYGOODS_GOLD_FIELD.number = 3
RSPBUYGOODS_GOLD_FIELD.index = 2
RSPBUYGOODS_GOLD_FIELD.label = 2
RSPBUYGOODS_GOLD_FIELD.has_default_value = false
RSPBUYGOODS_GOLD_FIELD.default_value = 0
RSPBUYGOODS_GOLD_FIELD.type = 13
RSPBUYGOODS_GOLD_FIELD.cpp_type = 3

RSPBUYGOODS_DIAMOND_FIELD.name = "diamond"
RSPBUYGOODS_DIAMOND_FIELD.full_name = ".RspBuyGoods.diamond"
RSPBUYGOODS_DIAMOND_FIELD.number = 4
RSPBUYGOODS_DIAMOND_FIELD.index = 3
RSPBUYGOODS_DIAMOND_FIELD.label = 2
RSPBUYGOODS_DIAMOND_FIELD.has_default_value = false
RSPBUYGOODS_DIAMOND_FIELD.default_value = 0
RSPBUYGOODS_DIAMOND_FIELD.type = 13
RSPBUYGOODS_DIAMOND_FIELD.cpp_type = 3

RSPBUYGOODS.name = "RspBuyGoods"
RSPBUYGOODS.full_name = ".RspBuyGoods"
RSPBUYGOODS.nested_types = {}
RSPBUYGOODS.enum_types = {}
RSPBUYGOODS.fields = {RSPBUYGOODS_MSGTIPS_FIELD, RSPBUYGOODS_INV_FIELD, RSPBUYGOODS_GOLD_FIELD, RSPBUYGOODS_DIAMOND_FIELD}
RSPBUYGOODS.is_extendable = false
RSPBUYGOODS.extensions = {}

Diamon = 1
Gold = 0
ReqBuyGoods = protobuf.Message(REQBUYGOODS)
ReqMallInfo = protobuf.Message(REQMALLINFO)
RspBuyGoods = protobuf.Message(RSPBUYGOODS)
RspMallInfo = protobuf.Message(RSPMALLINFO)

