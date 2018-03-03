-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
local common_pb = require("common_pb")
module('battlesync_pb')


local REQCHARACTERMOVE = protobuf.Descriptor();
local REQCHARACTERMOVE_DEST_FIELD = protobuf.FieldDescriptor();
local NOTIFYCHARACTERMOVE = protobuf.Descriptor();
local NOTIFYCHARACTERMOVE_CHARACTERID_FIELD = protobuf.FieldDescriptor();
local NOTIFYCHARACTERMOVE_POSITION_FIELD = protobuf.FieldDescriptor();
local NOTIFYCHARACTERIDLE = protobuf.Descriptor();
local NOTIFYCHARACTERIDLE_CHARACTERID_FIELD = protobuf.FieldDescriptor();
local NOTIFYCHARACTERIDLE_POS_FIELD = protobuf.FieldDescriptor();
local REQCHARACTERATTACK = protobuf.Descriptor();
local REQCHARACTERATTACK_SKILLID_FIELD = protobuf.FieldDescriptor();
local REQCHARACTERATTACK_TARGETID_FIELD = protobuf.FieldDescriptor();
local NOTIFYCHARACTERATTACK = protobuf.Descriptor();
local NOTIFYCHARACTERATTACK_CHARACTERID_FIELD = protobuf.FieldDescriptor();
local NOTIFYCHARACTERATTACK_TARGETID_FIELD = protobuf.FieldDescriptor();
local NOTIFYCHARACTERATTACK_SKILLID_FIELD = protobuf.FieldDescriptor();
local NOTIFYCHARACTERATTACK_POS_FIELD = protobuf.FieldDescriptor();
local NOTIFYHPCHANGE = protobuf.Descriptor();
local NOTIFYHPCHANGE_TARGETID_FIELD = protobuf.FieldDescriptor();
local NOTIFYHPCHANGE_HP_FIELD = protobuf.FieldDescriptor();
local NOTIFYCHARACTERDIE = protobuf.Descriptor();
local NOTIFYCHARACTERDIE_CHARACTERID_FIELD = protobuf.FieldDescriptor();

REQCHARACTERMOVE_DEST_FIELD.name = "dest"
REQCHARACTERMOVE_DEST_FIELD.full_name = ".ReqCharacterMove.dest"
REQCHARACTERMOVE_DEST_FIELD.number = 1
REQCHARACTERMOVE_DEST_FIELD.index = 0
REQCHARACTERMOVE_DEST_FIELD.label = 1
REQCHARACTERMOVE_DEST_FIELD.has_default_value = false
REQCHARACTERMOVE_DEST_FIELD.default_value = nil
REQCHARACTERMOVE_DEST_FIELD.message_type = COMMON_PB_VECTOR
REQCHARACTERMOVE_DEST_FIELD.type = 11
REQCHARACTERMOVE_DEST_FIELD.cpp_type = 10

REQCHARACTERMOVE.name = "ReqCharacterMove"
REQCHARACTERMOVE.full_name = ".ReqCharacterMove"
REQCHARACTERMOVE.nested_types = {}
REQCHARACTERMOVE.enum_types = {}
REQCHARACTERMOVE.fields = {REQCHARACTERMOVE_DEST_FIELD}
REQCHARACTERMOVE.is_extendable = false
REQCHARACTERMOVE.extensions = {}
NOTIFYCHARACTERMOVE_CHARACTERID_FIELD.name = "characterid"
NOTIFYCHARACTERMOVE_CHARACTERID_FIELD.full_name = ".NotifyCharacterMove.characterid"
NOTIFYCHARACTERMOVE_CHARACTERID_FIELD.number = 1
NOTIFYCHARACTERMOVE_CHARACTERID_FIELD.index = 0
NOTIFYCHARACTERMOVE_CHARACTERID_FIELD.label = 1
NOTIFYCHARACTERMOVE_CHARACTERID_FIELD.has_default_value = false
NOTIFYCHARACTERMOVE_CHARACTERID_FIELD.default_value = 0
NOTIFYCHARACTERMOVE_CHARACTERID_FIELD.type = 13
NOTIFYCHARACTERMOVE_CHARACTERID_FIELD.cpp_type = 3

NOTIFYCHARACTERMOVE_POSITION_FIELD.name = "position"
NOTIFYCHARACTERMOVE_POSITION_FIELD.full_name = ".NotifyCharacterMove.position"
NOTIFYCHARACTERMOVE_POSITION_FIELD.number = 2
NOTIFYCHARACTERMOVE_POSITION_FIELD.index = 1
NOTIFYCHARACTERMOVE_POSITION_FIELD.label = 1
NOTIFYCHARACTERMOVE_POSITION_FIELD.has_default_value = false
NOTIFYCHARACTERMOVE_POSITION_FIELD.default_value = nil
NOTIFYCHARACTERMOVE_POSITION_FIELD.message_type = COMMON_PB_VECTOR
NOTIFYCHARACTERMOVE_POSITION_FIELD.type = 11
NOTIFYCHARACTERMOVE_POSITION_FIELD.cpp_type = 10

NOTIFYCHARACTERMOVE.name = "NotifyCharacterMove"
NOTIFYCHARACTERMOVE.full_name = ".NotifyCharacterMove"
NOTIFYCHARACTERMOVE.nested_types = {}
NOTIFYCHARACTERMOVE.enum_types = {}
NOTIFYCHARACTERMOVE.fields = {NOTIFYCHARACTERMOVE_CHARACTERID_FIELD, NOTIFYCHARACTERMOVE_POSITION_FIELD}
NOTIFYCHARACTERMOVE.is_extendable = false
NOTIFYCHARACTERMOVE.extensions = {}
NOTIFYCHARACTERIDLE_CHARACTERID_FIELD.name = "characterid"
NOTIFYCHARACTERIDLE_CHARACTERID_FIELD.full_name = ".NotifyCharacterIdle.characterid"
NOTIFYCHARACTERIDLE_CHARACTERID_FIELD.number = 1
NOTIFYCHARACTERIDLE_CHARACTERID_FIELD.index = 0
NOTIFYCHARACTERIDLE_CHARACTERID_FIELD.label = 1
NOTIFYCHARACTERIDLE_CHARACTERID_FIELD.has_default_value = false
NOTIFYCHARACTERIDLE_CHARACTERID_FIELD.default_value = 0
NOTIFYCHARACTERIDLE_CHARACTERID_FIELD.type = 13
NOTIFYCHARACTERIDLE_CHARACTERID_FIELD.cpp_type = 3

NOTIFYCHARACTERIDLE_POS_FIELD.name = "pos"
NOTIFYCHARACTERIDLE_POS_FIELD.full_name = ".NotifyCharacterIdle.pos"
NOTIFYCHARACTERIDLE_POS_FIELD.number = 2
NOTIFYCHARACTERIDLE_POS_FIELD.index = 1
NOTIFYCHARACTERIDLE_POS_FIELD.label = 1
NOTIFYCHARACTERIDLE_POS_FIELD.has_default_value = false
NOTIFYCHARACTERIDLE_POS_FIELD.default_value = nil
NOTIFYCHARACTERIDLE_POS_FIELD.message_type = COMMON_PB_VECTOR
NOTIFYCHARACTERIDLE_POS_FIELD.type = 11
NOTIFYCHARACTERIDLE_POS_FIELD.cpp_type = 10

NOTIFYCHARACTERIDLE.name = "NotifyCharacterIdle"
NOTIFYCHARACTERIDLE.full_name = ".NotifyCharacterIdle"
NOTIFYCHARACTERIDLE.nested_types = {}
NOTIFYCHARACTERIDLE.enum_types = {}
NOTIFYCHARACTERIDLE.fields = {NOTIFYCHARACTERIDLE_CHARACTERID_FIELD, NOTIFYCHARACTERIDLE_POS_FIELD}
NOTIFYCHARACTERIDLE.is_extendable = false
NOTIFYCHARACTERIDLE.extensions = {}
REQCHARACTERATTACK_SKILLID_FIELD.name = "skillid"
REQCHARACTERATTACK_SKILLID_FIELD.full_name = ".ReqCharacterAttack.skillid"
REQCHARACTERATTACK_SKILLID_FIELD.number = 1
REQCHARACTERATTACK_SKILLID_FIELD.index = 0
REQCHARACTERATTACK_SKILLID_FIELD.label = 1
REQCHARACTERATTACK_SKILLID_FIELD.has_default_value = false
REQCHARACTERATTACK_SKILLID_FIELD.default_value = 0
REQCHARACTERATTACK_SKILLID_FIELD.type = 13
REQCHARACTERATTACK_SKILLID_FIELD.cpp_type = 3

REQCHARACTERATTACK_TARGETID_FIELD.name = "targetID"
REQCHARACTERATTACK_TARGETID_FIELD.full_name = ".ReqCharacterAttack.targetID"
REQCHARACTERATTACK_TARGETID_FIELD.number = 2
REQCHARACTERATTACK_TARGETID_FIELD.index = 1
REQCHARACTERATTACK_TARGETID_FIELD.label = 1
REQCHARACTERATTACK_TARGETID_FIELD.has_default_value = false
REQCHARACTERATTACK_TARGETID_FIELD.default_value = 0
REQCHARACTERATTACK_TARGETID_FIELD.type = 13
REQCHARACTERATTACK_TARGETID_FIELD.cpp_type = 3

REQCHARACTERATTACK.name = "ReqCharacterAttack"
REQCHARACTERATTACK.full_name = ".ReqCharacterAttack"
REQCHARACTERATTACK.nested_types = {}
REQCHARACTERATTACK.enum_types = {}
REQCHARACTERATTACK.fields = {REQCHARACTERATTACK_SKILLID_FIELD, REQCHARACTERATTACK_TARGETID_FIELD}
REQCHARACTERATTACK.is_extendable = false
REQCHARACTERATTACK.extensions = {}
NOTIFYCHARACTERATTACK_CHARACTERID_FIELD.name = "characterid"
NOTIFYCHARACTERATTACK_CHARACTERID_FIELD.full_name = ".NotifyCharacterAttack.characterid"
NOTIFYCHARACTERATTACK_CHARACTERID_FIELD.number = 1
NOTIFYCHARACTERATTACK_CHARACTERID_FIELD.index = 0
NOTIFYCHARACTERATTACK_CHARACTERID_FIELD.label = 1
NOTIFYCHARACTERATTACK_CHARACTERID_FIELD.has_default_value = false
NOTIFYCHARACTERATTACK_CHARACTERID_FIELD.default_value = 0
NOTIFYCHARACTERATTACK_CHARACTERID_FIELD.type = 13
NOTIFYCHARACTERATTACK_CHARACTERID_FIELD.cpp_type = 3

NOTIFYCHARACTERATTACK_TARGETID_FIELD.name = "targetid"
NOTIFYCHARACTERATTACK_TARGETID_FIELD.full_name = ".NotifyCharacterAttack.targetid"
NOTIFYCHARACTERATTACK_TARGETID_FIELD.number = 2
NOTIFYCHARACTERATTACK_TARGETID_FIELD.index = 1
NOTIFYCHARACTERATTACK_TARGETID_FIELD.label = 1
NOTIFYCHARACTERATTACK_TARGETID_FIELD.has_default_value = false
NOTIFYCHARACTERATTACK_TARGETID_FIELD.default_value = 0
NOTIFYCHARACTERATTACK_TARGETID_FIELD.type = 13
NOTIFYCHARACTERATTACK_TARGETID_FIELD.cpp_type = 3

NOTIFYCHARACTERATTACK_SKILLID_FIELD.name = "skillid"
NOTIFYCHARACTERATTACK_SKILLID_FIELD.full_name = ".NotifyCharacterAttack.skillid"
NOTIFYCHARACTERATTACK_SKILLID_FIELD.number = 3
NOTIFYCHARACTERATTACK_SKILLID_FIELD.index = 2
NOTIFYCHARACTERATTACK_SKILLID_FIELD.label = 1
NOTIFYCHARACTERATTACK_SKILLID_FIELD.has_default_value = false
NOTIFYCHARACTERATTACK_SKILLID_FIELD.default_value = 0
NOTIFYCHARACTERATTACK_SKILLID_FIELD.type = 13
NOTIFYCHARACTERATTACK_SKILLID_FIELD.cpp_type = 3

NOTIFYCHARACTERATTACK_POS_FIELD.name = "pos"
NOTIFYCHARACTERATTACK_POS_FIELD.full_name = ".NotifyCharacterAttack.pos"
NOTIFYCHARACTERATTACK_POS_FIELD.number = 4
NOTIFYCHARACTERATTACK_POS_FIELD.index = 3
NOTIFYCHARACTERATTACK_POS_FIELD.label = 1
NOTIFYCHARACTERATTACK_POS_FIELD.has_default_value = false
NOTIFYCHARACTERATTACK_POS_FIELD.default_value = nil
NOTIFYCHARACTERATTACK_POS_FIELD.message_type = COMMON_PB_VECTOR
NOTIFYCHARACTERATTACK_POS_FIELD.type = 11
NOTIFYCHARACTERATTACK_POS_FIELD.cpp_type = 10

NOTIFYCHARACTERATTACK.name = "NotifyCharacterAttack"
NOTIFYCHARACTERATTACK.full_name = ".NotifyCharacterAttack"
NOTIFYCHARACTERATTACK.nested_types = {}
NOTIFYCHARACTERATTACK.enum_types = {}
NOTIFYCHARACTERATTACK.fields = {NOTIFYCHARACTERATTACK_CHARACTERID_FIELD, NOTIFYCHARACTERATTACK_TARGETID_FIELD, NOTIFYCHARACTERATTACK_SKILLID_FIELD, NOTIFYCHARACTERATTACK_POS_FIELD}
NOTIFYCHARACTERATTACK.is_extendable = false
NOTIFYCHARACTERATTACK.extensions = {}
NOTIFYHPCHANGE_TARGETID_FIELD.name = "targetid"
NOTIFYHPCHANGE_TARGETID_FIELD.full_name = ".NotifyHPChange.targetid"
NOTIFYHPCHANGE_TARGETID_FIELD.number = 1
NOTIFYHPCHANGE_TARGETID_FIELD.index = 0
NOTIFYHPCHANGE_TARGETID_FIELD.label = 1
NOTIFYHPCHANGE_TARGETID_FIELD.has_default_value = false
NOTIFYHPCHANGE_TARGETID_FIELD.default_value = 0
NOTIFYHPCHANGE_TARGETID_FIELD.type = 13
NOTIFYHPCHANGE_TARGETID_FIELD.cpp_type = 3

NOTIFYHPCHANGE_HP_FIELD.name = "hp"
NOTIFYHPCHANGE_HP_FIELD.full_name = ".NotifyHPChange.hp"
NOTIFYHPCHANGE_HP_FIELD.number = 2
NOTIFYHPCHANGE_HP_FIELD.index = 1
NOTIFYHPCHANGE_HP_FIELD.label = 1
NOTIFYHPCHANGE_HP_FIELD.has_default_value = false
NOTIFYHPCHANGE_HP_FIELD.default_value = 0
NOTIFYHPCHANGE_HP_FIELD.type = 5
NOTIFYHPCHANGE_HP_FIELD.cpp_type = 1

NOTIFYHPCHANGE.name = "NotifyHPChange"
NOTIFYHPCHANGE.full_name = ".NotifyHPChange"
NOTIFYHPCHANGE.nested_types = {}
NOTIFYHPCHANGE.enum_types = {}
NOTIFYHPCHANGE.fields = {NOTIFYHPCHANGE_TARGETID_FIELD, NOTIFYHPCHANGE_HP_FIELD}
NOTIFYHPCHANGE.is_extendable = false
NOTIFYHPCHANGE.extensions = {}
NOTIFYCHARACTERDIE_CHARACTERID_FIELD.name = "characterid"
NOTIFYCHARACTERDIE_CHARACTERID_FIELD.full_name = ".NotifyCharacterDie.characterid"
NOTIFYCHARACTERDIE_CHARACTERID_FIELD.number = 1
NOTIFYCHARACTERDIE_CHARACTERID_FIELD.index = 0
NOTIFYCHARACTERDIE_CHARACTERID_FIELD.label = 1
NOTIFYCHARACTERDIE_CHARACTERID_FIELD.has_default_value = false
NOTIFYCHARACTERDIE_CHARACTERID_FIELD.default_value = 0
NOTIFYCHARACTERDIE_CHARACTERID_FIELD.type = 13
NOTIFYCHARACTERDIE_CHARACTERID_FIELD.cpp_type = 3

NOTIFYCHARACTERDIE.name = "NotifyCharacterDie"
NOTIFYCHARACTERDIE.full_name = ".NotifyCharacterDie"
NOTIFYCHARACTERDIE.nested_types = {}
NOTIFYCHARACTERDIE.enum_types = {}
NOTIFYCHARACTERDIE.fields = {NOTIFYCHARACTERDIE_CHARACTERID_FIELD}
NOTIFYCHARACTERDIE.is_extendable = false
NOTIFYCHARACTERDIE.extensions = {}

NotifyCharacterAttack = protobuf.Message(NOTIFYCHARACTERATTACK)
NotifyCharacterDie = protobuf.Message(NOTIFYCHARACTERDIE)
NotifyCharacterIdle = protobuf.Message(NOTIFYCHARACTERIDLE)
NotifyCharacterMove = protobuf.Message(NOTIFYCHARACTERMOVE)
NotifyHPChange = protobuf.Message(NOTIFYHPCHANGE)
ReqCharacterAttack = protobuf.Message(REQCHARACTERATTACK)
ReqCharacterMove = protobuf.Message(REQCHARACTERMOVE)
