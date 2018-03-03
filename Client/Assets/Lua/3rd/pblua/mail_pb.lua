-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
local common_pb = require("common_pb")
module('mail_pb')


local REQMAILINFOS = protobuf.Descriptor();
local RESPMAILINFOS = protobuf.Descriptor();
local RESPMAILINFOS_MAILS_FIELD = protobuf.FieldDescriptor();
local REQDELETEMAIL = protobuf.Descriptor();
local REQDELETEMAIL_CHARACTERID_FIELD = protobuf.FieldDescriptor();
local REQDELETEMAIL_MAILID_FIELD = protobuf.FieldDescriptor();
local RESPDELETEMAIL = protobuf.Descriptor();
local RESPDELETEMAIL_MAILID_FIELD = protobuf.FieldDescriptor();
local RESPDELETEMAIL_MSGTIPS_FIELD = protobuf.FieldDescriptor();
local REQSENDMAIL = protobuf.Descriptor();
local REQSENDMAIL_DTO_FIELD = protobuf.FieldDescriptor();
local RESPSENDMAIL = protobuf.Descriptor();
local REQRECVITEM = protobuf.Descriptor();
local REQRECVITEM_MAIL_ID_FIELD = protobuf.FieldDescriptor();
local RESPRECVITEM = protobuf.Descriptor();

REQMAILINFOS.name = "ReqMailInfos"
REQMAILINFOS.full_name = ".ReqMailInfos"
REQMAILINFOS.nested_types = {}
REQMAILINFOS.enum_types = {}
REQMAILINFOS.fields = {}
REQMAILINFOS.is_extendable = false
REQMAILINFOS.extensions = {}
RESPMAILINFOS_MAILS_FIELD.name = "mails"
RESPMAILINFOS_MAILS_FIELD.full_name = ".RespMailInfos.mails"
RESPMAILINFOS_MAILS_FIELD.number = 1
RESPMAILINFOS_MAILS_FIELD.index = 0
RESPMAILINFOS_MAILS_FIELD.label = 3
RESPMAILINFOS_MAILS_FIELD.has_default_value = false
RESPMAILINFOS_MAILS_FIELD.default_value = {}
RESPMAILINFOS_MAILS_FIELD.message_type = COMMON_PB_MAILDTO
RESPMAILINFOS_MAILS_FIELD.type = 11
RESPMAILINFOS_MAILS_FIELD.cpp_type = 10

RESPMAILINFOS.name = "RespMailInfos"
RESPMAILINFOS.full_name = ".RespMailInfos"
RESPMAILINFOS.nested_types = {}
RESPMAILINFOS.enum_types = {}
RESPMAILINFOS.fields = {RESPMAILINFOS_MAILS_FIELD}
RESPMAILINFOS.is_extendable = false
RESPMAILINFOS.extensions = {}
REQDELETEMAIL_CHARACTERID_FIELD.name = "characterid"
REQDELETEMAIL_CHARACTERID_FIELD.full_name = ".ReqDeleteMail.characterid"
REQDELETEMAIL_CHARACTERID_FIELD.number = 1
REQDELETEMAIL_CHARACTERID_FIELD.index = 0
REQDELETEMAIL_CHARACTERID_FIELD.label = 2
REQDELETEMAIL_CHARACTERID_FIELD.has_default_value = false
REQDELETEMAIL_CHARACTERID_FIELD.default_value = 0
REQDELETEMAIL_CHARACTERID_FIELD.type = 5
REQDELETEMAIL_CHARACTERID_FIELD.cpp_type = 1

REQDELETEMAIL_MAILID_FIELD.name = "mailid"
REQDELETEMAIL_MAILID_FIELD.full_name = ".ReqDeleteMail.mailid"
REQDELETEMAIL_MAILID_FIELD.number = 2
REQDELETEMAIL_MAILID_FIELD.index = 1
REQDELETEMAIL_MAILID_FIELD.label = 2
REQDELETEMAIL_MAILID_FIELD.has_default_value = false
REQDELETEMAIL_MAILID_FIELD.default_value = 0
REQDELETEMAIL_MAILID_FIELD.type = 5
REQDELETEMAIL_MAILID_FIELD.cpp_type = 1

REQDELETEMAIL.name = "ReqDeleteMail"
REQDELETEMAIL.full_name = ".ReqDeleteMail"
REQDELETEMAIL.nested_types = {}
REQDELETEMAIL.enum_types = {}
REQDELETEMAIL.fields = {REQDELETEMAIL_CHARACTERID_FIELD, REQDELETEMAIL_MAILID_FIELD}
REQDELETEMAIL.is_extendable = false
REQDELETEMAIL.extensions = {}
RESPDELETEMAIL_MAILID_FIELD.name = "mailid"
RESPDELETEMAIL_MAILID_FIELD.full_name = ".RespDeleteMail.mailid"
RESPDELETEMAIL_MAILID_FIELD.number = 1
RESPDELETEMAIL_MAILID_FIELD.index = 0
RESPDELETEMAIL_MAILID_FIELD.label = 2
RESPDELETEMAIL_MAILID_FIELD.has_default_value = false
RESPDELETEMAIL_MAILID_FIELD.default_value = 0
RESPDELETEMAIL_MAILID_FIELD.type = 5
RESPDELETEMAIL_MAILID_FIELD.cpp_type = 1

RESPDELETEMAIL_MSGTIPS_FIELD.name = "msgtips"
RESPDELETEMAIL_MSGTIPS_FIELD.full_name = ".RespDeleteMail.msgtips"
RESPDELETEMAIL_MSGTIPS_FIELD.number = 2
RESPDELETEMAIL_MSGTIPS_FIELD.index = 1
RESPDELETEMAIL_MSGTIPS_FIELD.label = 2
RESPDELETEMAIL_MSGTIPS_FIELD.has_default_value = false
RESPDELETEMAIL_MSGTIPS_FIELD.default_value = 0
RESPDELETEMAIL_MSGTIPS_FIELD.type = 5
RESPDELETEMAIL_MSGTIPS_FIELD.cpp_type = 1

RESPDELETEMAIL.name = "RespDeleteMail"
RESPDELETEMAIL.full_name = ".RespDeleteMail"
RESPDELETEMAIL.nested_types = {}
RESPDELETEMAIL.enum_types = {}
RESPDELETEMAIL.fields = {RESPDELETEMAIL_MAILID_FIELD, RESPDELETEMAIL_MSGTIPS_FIELD}
RESPDELETEMAIL.is_extendable = false
RESPDELETEMAIL.extensions = {}
REQSENDMAIL_DTO_FIELD.name = "dto"
REQSENDMAIL_DTO_FIELD.full_name = ".ReqSendMail.dto"
REQSENDMAIL_DTO_FIELD.number = 1
REQSENDMAIL_DTO_FIELD.index = 0
REQSENDMAIL_DTO_FIELD.label = 2
REQSENDMAIL_DTO_FIELD.has_default_value = false
REQSENDMAIL_DTO_FIELD.default_value = nil
REQSENDMAIL_DTO_FIELD.message_type = COMMON_PB_MAILDTO
REQSENDMAIL_DTO_FIELD.type = 11
REQSENDMAIL_DTO_FIELD.cpp_type = 10

REQSENDMAIL.name = "ReqSendMail"
REQSENDMAIL.full_name = ".ReqSendMail"
REQSENDMAIL.nested_types = {}
REQSENDMAIL.enum_types = {}
REQSENDMAIL.fields = {REQSENDMAIL_DTO_FIELD}
REQSENDMAIL.is_extendable = false
REQSENDMAIL.extensions = {}
RESPSENDMAIL.name = "RespSendMail"
RESPSENDMAIL.full_name = ".RespSendMail"
RESPSENDMAIL.nested_types = {}
RESPSENDMAIL.enum_types = {}
RESPSENDMAIL.fields = {}
RESPSENDMAIL.is_extendable = false
RESPSENDMAIL.extensions = {}
REQRECVITEM_MAIL_ID_FIELD.name = "mail_id"
REQRECVITEM_MAIL_ID_FIELD.full_name = ".ReqRecvItem.mail_id"
REQRECVITEM_MAIL_ID_FIELD.number = 1
REQRECVITEM_MAIL_ID_FIELD.index = 0
REQRECVITEM_MAIL_ID_FIELD.label = 2
REQRECVITEM_MAIL_ID_FIELD.has_default_value = false
REQRECVITEM_MAIL_ID_FIELD.default_value = 0
REQRECVITEM_MAIL_ID_FIELD.type = 5
REQRECVITEM_MAIL_ID_FIELD.cpp_type = 1

REQRECVITEM.name = "ReqRecvItem"
REQRECVITEM.full_name = ".ReqRecvItem"
REQRECVITEM.nested_types = {}
REQRECVITEM.enum_types = {}
REQRECVITEM.fields = {REQRECVITEM_MAIL_ID_FIELD}
REQRECVITEM.is_extendable = false
REQRECVITEM.extensions = {}
RESPRECVITEM.name = "RespRecvItem"
RESPRECVITEM.full_name = ".RespRecvItem"
RESPRECVITEM.nested_types = {}
RESPRECVITEM.enum_types = {}
RESPRECVITEM.fields = {}
RESPRECVITEM.is_extendable = false
RESPRECVITEM.extensions = {}

ReqDeleteMail = protobuf.Message(REQDELETEMAIL)
ReqMailInfos = protobuf.Message(REQMAILINFOS)
ReqRecvItem = protobuf.Message(REQRECVITEM)
ReqSendMail = protobuf.Message(REQSENDMAIL)
RespDeleteMail = protobuf.Message(RESPDELETEMAIL)
RespMailInfos = protobuf.Message(RESPMAILINFOS)
RespRecvItem = protobuf.Message(RESPRECVITEM)
RespSendMail = protobuf.Message(RESPSENDMAIL)

