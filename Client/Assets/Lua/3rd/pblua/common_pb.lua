-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
module('common_pb')


local BATTLETYPE = protobuf.EnumDescriptor();
local BATTLETYPE_WORLD_ENUM = protobuf.EnumValueDescriptor();
local BATTLETYPE_ARENA_ENUM = protobuf.EnumValueDescriptor();
local BATTLETYPE_BATTLEGROUND_ENUM = protobuf.EnumValueDescriptor();
local BATTLETYPE_DUNGEON_ENUM = protobuf.EnumValueDescriptor();
local RACE = protobuf.EnumDescriptor();
local RACE_NEUTRALITY_ENUM = protobuf.EnumValueDescriptor();
local RACE_ALLIANCE_ENUM = protobuf.EnumValueDescriptor();
local RACE_HORDE_ENUM = protobuf.EnumValueDescriptor();
local CHARACTERTYPE = protobuf.EnumDescriptor();
local CHARACTERTYPE_PLAYER_ENUM = protobuf.EnumValueDescriptor();
local CHARACTERTYPE_MONSTER_ENUM = protobuf.EnumValueDescriptor();
local CHARACTERTYPE_NPC_ENUM = protobuf.EnumValueDescriptor();
local JOB = protobuf.EnumDescriptor();
local JOB_BRAVE_ENUM = protobuf.EnumValueDescriptor();
local JOB_MAGE_ENUM = protobuf.EnumValueDescriptor();
local JOB_HUNTER_ENUM = protobuf.EnumValueDescriptor();
local JOB_PRIEST_ENUM = protobuf.EnumValueDescriptor();
local JOB_BANDIT_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS = protobuf.EnumDescriptor();
local MSGTIPS_NOACCOUNT_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_ACCOUNTHASONLINE_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_PASSWORDERROR_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_INPUTERROR_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_LOGINSUCCESS_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_REGISTERSUCCESS_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_ACCOUNTREPEAT_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_ACCOUNTINVALID_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_PASSWORDINVALID_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_ACCOUNTOFFLINE_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_CHARCREATESUCCESS_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_NAMEREPEAT_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_CHARONLINESUCCESS_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_CHAROFFLINESUCCESS_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_DELETECHARSUCCESS_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_CHARHASONLINE_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_EQUIPSUCCESS_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_UNLOADSUCCESS_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_DELETEITEMSUCCESS_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_DELETEMAILSUCCESS_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_RECVITEMSUCCESS_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_BUYGOODSSUCCESS_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_GOLDNOTENOUGH_ENUM = protobuf.EnumValueDescriptor();
local MSGTIPS_DIAMONDNOTENOUGH_ENUM = protobuf.EnumValueDescriptor();
local VECTOR = protobuf.Descriptor();
local VECTOR_X_FIELD = protobuf.FieldDescriptor();
local VECTOR_Y_FIELD = protobuf.FieldDescriptor();
local VECTOR_Z_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO = protobuf.Descriptor();
local CHARACTERDTO_ID_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_ACCOUNTID_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_NAME_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_RACE_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_JOB_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_GENDER_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_LEVEL_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_EXP_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_DIAMOND_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_GOLD_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_POS_X_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_POS_Y_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_POS_Z_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_CFGID_FIELD = protobuf.FieldDescriptor();
local CHARACTERDTO_MAPID_FIELD = protobuf.FieldDescriptor();
local INVENTORYDTO = protobuf.Descriptor();
local INVENTORYDTO_SLOT_FIELD = protobuf.FieldDescriptor();
local INVENTORYDTO_ITEMID_FIELD = protobuf.FieldDescriptor();
local INVENTORYDTO_NUM_FIELD = protobuf.FieldDescriptor();
local MAILDTO = protobuf.Descriptor();
local MAILDTO_ID_FIELD = protobuf.FieldDescriptor();
local MAILDTO_SENDER_ID_FIELD = protobuf.FieldDescriptor();
local MAILDTO_RECEIVER_ID_FIELD = protobuf.FieldDescriptor();
local MAILDTO_SUBJECT_FIELD = protobuf.FieldDescriptor();
local MAILDTO_BODY_FIELD = protobuf.FieldDescriptor();
local MAILDTO_DELIVER_TIME_FIELD = protobuf.FieldDescriptor();
local MAILDTO_MONEY_FIELD = protobuf.FieldDescriptor();
local MAILDTO_HAS_ITEMS_FIELD = protobuf.FieldDescriptor();
local MAILDTO_ITEMS_FIELD = protobuf.FieldDescriptor();
local MAIL_ITEMDTO = protobuf.Descriptor();
local MAIL_ITEMDTO_MAIL_ID_FIELD = protobuf.FieldDescriptor();
local MAIL_ITEMDTO_ITEM_ID_FIELD = protobuf.FieldDescriptor();
local MAIL_ITEMDTO_ITEM_NUM_FIELD = protobuf.FieldDescriptor();
local FRIENDINFO = protobuf.Descriptor();
local FRIENDINFO_CHARACTERID_FIELD = protobuf.FieldDescriptor();
local FRIENDINFO_NAME_FIELD = protobuf.FieldDescriptor();
local FRIENDINFO_ISONLINE_FIELD = protobuf.FieldDescriptor();

BATTLETYPE_WORLD_ENUM.name = "World"
BATTLETYPE_WORLD_ENUM.index = 0
BATTLETYPE_WORLD_ENUM.number = 0
BATTLETYPE_ARENA_ENUM.name = "Arena"
BATTLETYPE_ARENA_ENUM.index = 1
BATTLETYPE_ARENA_ENUM.number = 1
BATTLETYPE_BATTLEGROUND_ENUM.name = "Battleground"
BATTLETYPE_BATTLEGROUND_ENUM.index = 2
BATTLETYPE_BATTLEGROUND_ENUM.number = 2
BATTLETYPE_DUNGEON_ENUM.name = "Dungeon"
BATTLETYPE_DUNGEON_ENUM.index = 3
BATTLETYPE_DUNGEON_ENUM.number = 3
BATTLETYPE.name = "BattleType"
BATTLETYPE.full_name = ".common.BattleType"
BATTLETYPE.values = {BATTLETYPE_WORLD_ENUM,BATTLETYPE_ARENA_ENUM,BATTLETYPE_BATTLEGROUND_ENUM,BATTLETYPE_DUNGEON_ENUM}
RACE_NEUTRALITY_ENUM.name = "Neutrality"
RACE_NEUTRALITY_ENUM.index = 0
RACE_NEUTRALITY_ENUM.number = 0
RACE_ALLIANCE_ENUM.name = "Alliance"
RACE_ALLIANCE_ENUM.index = 1
RACE_ALLIANCE_ENUM.number = 1
RACE_HORDE_ENUM.name = "Horde"
RACE_HORDE_ENUM.index = 2
RACE_HORDE_ENUM.number = 2
RACE.name = "Race"
RACE.full_name = ".common.Race"
RACE.values = {RACE_NEUTRALITY_ENUM,RACE_ALLIANCE_ENUM,RACE_HORDE_ENUM}
CHARACTERTYPE_PLAYER_ENUM.name = "Player"
CHARACTERTYPE_PLAYER_ENUM.index = 0
CHARACTERTYPE_PLAYER_ENUM.number = 0
CHARACTERTYPE_MONSTER_ENUM.name = "Monster"
CHARACTERTYPE_MONSTER_ENUM.index = 1
CHARACTERTYPE_MONSTER_ENUM.number = 1
CHARACTERTYPE_NPC_ENUM.name = "Npc"
CHARACTERTYPE_NPC_ENUM.index = 2
CHARACTERTYPE_NPC_ENUM.number = 2
CHARACTERTYPE.name = "CharacterType"
CHARACTERTYPE.full_name = ".common.CharacterType"
CHARACTERTYPE.values = {CHARACTERTYPE_PLAYER_ENUM,CHARACTERTYPE_MONSTER_ENUM,CHARACTERTYPE_NPC_ENUM}
JOB_BRAVE_ENUM.name = "Brave"
JOB_BRAVE_ENUM.index = 0
JOB_BRAVE_ENUM.number = 0
JOB_MAGE_ENUM.name = "Mage"
JOB_MAGE_ENUM.index = 1
JOB_MAGE_ENUM.number = 1
JOB_HUNTER_ENUM.name = "Hunter"
JOB_HUNTER_ENUM.index = 2
JOB_HUNTER_ENUM.number = 2
JOB_PRIEST_ENUM.name = "Priest"
JOB_PRIEST_ENUM.index = 3
JOB_PRIEST_ENUM.number = 3
JOB_BANDIT_ENUM.name = "Bandit"
JOB_BANDIT_ENUM.index = 4
JOB_BANDIT_ENUM.number = 4
JOB.name = "Job"
JOB.full_name = ".common.Job"
JOB.values = {JOB_BRAVE_ENUM,JOB_MAGE_ENUM,JOB_HUNTER_ENUM,JOB_PRIEST_ENUM,JOB_BANDIT_ENUM}
MSGTIPS_NOACCOUNT_ENUM.name = "NoAccount"
MSGTIPS_NOACCOUNT_ENUM.index = 0
MSGTIPS_NOACCOUNT_ENUM.number = 1001
MSGTIPS_ACCOUNTHASONLINE_ENUM.name = "AccountHasOnline"
MSGTIPS_ACCOUNTHASONLINE_ENUM.index = 1
MSGTIPS_ACCOUNTHASONLINE_ENUM.number = 1002
MSGTIPS_PASSWORDERROR_ENUM.name = "PasswordError"
MSGTIPS_PASSWORDERROR_ENUM.index = 2
MSGTIPS_PASSWORDERROR_ENUM.number = 1003
MSGTIPS_INPUTERROR_ENUM.name = "InputError"
MSGTIPS_INPUTERROR_ENUM.index = 3
MSGTIPS_INPUTERROR_ENUM.number = 1004
MSGTIPS_LOGINSUCCESS_ENUM.name = "LoginSuccess"
MSGTIPS_LOGINSUCCESS_ENUM.index = 4
MSGTIPS_LOGINSUCCESS_ENUM.number = 1005
MSGTIPS_REGISTERSUCCESS_ENUM.name = "RegisterSuccess"
MSGTIPS_REGISTERSUCCESS_ENUM.index = 5
MSGTIPS_REGISTERSUCCESS_ENUM.number = 1006
MSGTIPS_ACCOUNTREPEAT_ENUM.name = "AccountRepeat"
MSGTIPS_ACCOUNTREPEAT_ENUM.index = 6
MSGTIPS_ACCOUNTREPEAT_ENUM.number = 1007
MSGTIPS_ACCOUNTINVALID_ENUM.name = "AccountInvalid"
MSGTIPS_ACCOUNTINVALID_ENUM.index = 7
MSGTIPS_ACCOUNTINVALID_ENUM.number = 1008
MSGTIPS_PASSWORDINVALID_ENUM.name = "PasswordInvalid"
MSGTIPS_PASSWORDINVALID_ENUM.index = 8
MSGTIPS_PASSWORDINVALID_ENUM.number = 1009
MSGTIPS_ACCOUNTOFFLINE_ENUM.name = "AccountOffline"
MSGTIPS_ACCOUNTOFFLINE_ENUM.index = 9
MSGTIPS_ACCOUNTOFFLINE_ENUM.number = 1010
MSGTIPS_CHARCREATESUCCESS_ENUM.name = "CharCreateSuccess"
MSGTIPS_CHARCREATESUCCESS_ENUM.index = 10
MSGTIPS_CHARCREATESUCCESS_ENUM.number = 1011
MSGTIPS_NAMEREPEAT_ENUM.name = "NameRepeat"
MSGTIPS_NAMEREPEAT_ENUM.index = 11
MSGTIPS_NAMEREPEAT_ENUM.number = 1012
MSGTIPS_CHARONLINESUCCESS_ENUM.name = "CharOnlineSuccess"
MSGTIPS_CHARONLINESUCCESS_ENUM.index = 12
MSGTIPS_CHARONLINESUCCESS_ENUM.number = 1013
MSGTIPS_CHAROFFLINESUCCESS_ENUM.name = "CharOfflineSuccess"
MSGTIPS_CHAROFFLINESUCCESS_ENUM.index = 13
MSGTIPS_CHAROFFLINESUCCESS_ENUM.number = 1014
MSGTIPS_DELETECHARSUCCESS_ENUM.name = "DeleteCharSuccess"
MSGTIPS_DELETECHARSUCCESS_ENUM.index = 14
MSGTIPS_DELETECHARSUCCESS_ENUM.number = 1015
MSGTIPS_CHARHASONLINE_ENUM.name = "CharHasOnline"
MSGTIPS_CHARHASONLINE_ENUM.index = 15
MSGTIPS_CHARHASONLINE_ENUM.number = 1016
MSGTIPS_EQUIPSUCCESS_ENUM.name = "EquipSuccess"
MSGTIPS_EQUIPSUCCESS_ENUM.index = 16
MSGTIPS_EQUIPSUCCESS_ENUM.number = 1021
MSGTIPS_UNLOADSUCCESS_ENUM.name = "UnloadSuccess"
MSGTIPS_UNLOADSUCCESS_ENUM.index = 17
MSGTIPS_UNLOADSUCCESS_ENUM.number = 1022
MSGTIPS_DELETEITEMSUCCESS_ENUM.name = "DeleteItemSuccess"
MSGTIPS_DELETEITEMSUCCESS_ENUM.index = 18
MSGTIPS_DELETEITEMSUCCESS_ENUM.number = 1023
MSGTIPS_DELETEMAILSUCCESS_ENUM.name = "DeleteMailSuccess"
MSGTIPS_DELETEMAILSUCCESS_ENUM.index = 19
MSGTIPS_DELETEMAILSUCCESS_ENUM.number = 1031
MSGTIPS_RECVITEMSUCCESS_ENUM.name = "RecvItemSuccess"
MSGTIPS_RECVITEMSUCCESS_ENUM.index = 20
MSGTIPS_RECVITEMSUCCESS_ENUM.number = 1032
MSGTIPS_BUYGOODSSUCCESS_ENUM.name = "BuyGoodsSuccess"
MSGTIPS_BUYGOODSSUCCESS_ENUM.index = 21
MSGTIPS_BUYGOODSSUCCESS_ENUM.number = 1041
MSGTIPS_GOLDNOTENOUGH_ENUM.name = "GoldNotEnough"
MSGTIPS_GOLDNOTENOUGH_ENUM.index = 22
MSGTIPS_GOLDNOTENOUGH_ENUM.number = 1042
MSGTIPS_DIAMONDNOTENOUGH_ENUM.name = "DiamondNotEnough"
MSGTIPS_DIAMONDNOTENOUGH_ENUM.index = 23
MSGTIPS_DIAMONDNOTENOUGH_ENUM.number = 1043
MSGTIPS.name = "MsgTips"
MSGTIPS.full_name = ".common.MsgTips"
MSGTIPS.values = {MSGTIPS_NOACCOUNT_ENUM,MSGTIPS_ACCOUNTHASONLINE_ENUM,MSGTIPS_PASSWORDERROR_ENUM,MSGTIPS_INPUTERROR_ENUM,MSGTIPS_LOGINSUCCESS_ENUM,MSGTIPS_REGISTERSUCCESS_ENUM,MSGTIPS_ACCOUNTREPEAT_ENUM,MSGTIPS_ACCOUNTINVALID_ENUM,MSGTIPS_PASSWORDINVALID_ENUM,MSGTIPS_ACCOUNTOFFLINE_ENUM,MSGTIPS_CHARCREATESUCCESS_ENUM,MSGTIPS_NAMEREPEAT_ENUM,MSGTIPS_CHARONLINESUCCESS_ENUM,MSGTIPS_CHAROFFLINESUCCESS_ENUM,MSGTIPS_DELETECHARSUCCESS_ENUM,MSGTIPS_CHARHASONLINE_ENUM,MSGTIPS_EQUIPSUCCESS_ENUM,MSGTIPS_UNLOADSUCCESS_ENUM,MSGTIPS_DELETEITEMSUCCESS_ENUM,MSGTIPS_DELETEMAILSUCCESS_ENUM,MSGTIPS_RECVITEMSUCCESS_ENUM,MSGTIPS_BUYGOODSSUCCESS_ENUM,MSGTIPS_GOLDNOTENOUGH_ENUM,MSGTIPS_DIAMONDNOTENOUGH_ENUM}
VECTOR_X_FIELD.name = "x"
VECTOR_X_FIELD.full_name = ".common.Vector.x"
VECTOR_X_FIELD.number = 1
VECTOR_X_FIELD.index = 0
VECTOR_X_FIELD.label = 2
VECTOR_X_FIELD.has_default_value = false
VECTOR_X_FIELD.default_value = 0.0
VECTOR_X_FIELD.type = 2
VECTOR_X_FIELD.cpp_type = 6

VECTOR_Y_FIELD.name = "y"
VECTOR_Y_FIELD.full_name = ".common.Vector.y"
VECTOR_Y_FIELD.number = 2
VECTOR_Y_FIELD.index = 1
VECTOR_Y_FIELD.label = 2
VECTOR_Y_FIELD.has_default_value = false
VECTOR_Y_FIELD.default_value = 0.0
VECTOR_Y_FIELD.type = 2
VECTOR_Y_FIELD.cpp_type = 6

VECTOR_Z_FIELD.name = "z"
VECTOR_Z_FIELD.full_name = ".common.Vector.z"
VECTOR_Z_FIELD.number = 3
VECTOR_Z_FIELD.index = 2
VECTOR_Z_FIELD.label = 2
VECTOR_Z_FIELD.has_default_value = false
VECTOR_Z_FIELD.default_value = 0.0
VECTOR_Z_FIELD.type = 2
VECTOR_Z_FIELD.cpp_type = 6

VECTOR.name = "Vector"
VECTOR.full_name = ".common.Vector"
VECTOR.nested_types = {}
VECTOR.enum_types = {}
VECTOR.fields = {VECTOR_X_FIELD, VECTOR_Y_FIELD, VECTOR_Z_FIELD}
VECTOR.is_extendable = false
VECTOR.extensions = {}
CHARACTERDTO_ID_FIELD.name = "id"
CHARACTERDTO_ID_FIELD.full_name = ".common.CharacterDTO.id"
CHARACTERDTO_ID_FIELD.number = 1
CHARACTERDTO_ID_FIELD.index = 0
CHARACTERDTO_ID_FIELD.label = 2
CHARACTERDTO_ID_FIELD.has_default_value = false
CHARACTERDTO_ID_FIELD.default_value = 0
CHARACTERDTO_ID_FIELD.type = 5
CHARACTERDTO_ID_FIELD.cpp_type = 1

CHARACTERDTO_ACCOUNTID_FIELD.name = "accountid"
CHARACTERDTO_ACCOUNTID_FIELD.full_name = ".common.CharacterDTO.accountid"
CHARACTERDTO_ACCOUNTID_FIELD.number = 2
CHARACTERDTO_ACCOUNTID_FIELD.index = 1
CHARACTERDTO_ACCOUNTID_FIELD.label = 2
CHARACTERDTO_ACCOUNTID_FIELD.has_default_value = false
CHARACTERDTO_ACCOUNTID_FIELD.default_value = 0
CHARACTERDTO_ACCOUNTID_FIELD.type = 5
CHARACTERDTO_ACCOUNTID_FIELD.cpp_type = 1

CHARACTERDTO_NAME_FIELD.name = "name"
CHARACTERDTO_NAME_FIELD.full_name = ".common.CharacterDTO.name"
CHARACTERDTO_NAME_FIELD.number = 3
CHARACTERDTO_NAME_FIELD.index = 2
CHARACTERDTO_NAME_FIELD.label = 2
CHARACTERDTO_NAME_FIELD.has_default_value = false
CHARACTERDTO_NAME_FIELD.default_value = ""
CHARACTERDTO_NAME_FIELD.type = 9
CHARACTERDTO_NAME_FIELD.cpp_type = 9

CHARACTERDTO_RACE_FIELD.name = "race"
CHARACTERDTO_RACE_FIELD.full_name = ".common.CharacterDTO.race"
CHARACTERDTO_RACE_FIELD.number = 4
CHARACTERDTO_RACE_FIELD.index = 3
CHARACTERDTO_RACE_FIELD.label = 2
CHARACTERDTO_RACE_FIELD.has_default_value = false
CHARACTERDTO_RACE_FIELD.default_value = 0
CHARACTERDTO_RACE_FIELD.type = 5
CHARACTERDTO_RACE_FIELD.cpp_type = 1

CHARACTERDTO_JOB_FIELD.name = "job"
CHARACTERDTO_JOB_FIELD.full_name = ".common.CharacterDTO.job"
CHARACTERDTO_JOB_FIELD.number = 5
CHARACTERDTO_JOB_FIELD.index = 4
CHARACTERDTO_JOB_FIELD.label = 2
CHARACTERDTO_JOB_FIELD.has_default_value = false
CHARACTERDTO_JOB_FIELD.default_value = 0
CHARACTERDTO_JOB_FIELD.type = 5
CHARACTERDTO_JOB_FIELD.cpp_type = 1

CHARACTERDTO_GENDER_FIELD.name = "gender"
CHARACTERDTO_GENDER_FIELD.full_name = ".common.CharacterDTO.gender"
CHARACTERDTO_GENDER_FIELD.number = 6
CHARACTERDTO_GENDER_FIELD.index = 5
CHARACTERDTO_GENDER_FIELD.label = 2
CHARACTERDTO_GENDER_FIELD.has_default_value = false
CHARACTERDTO_GENDER_FIELD.default_value = 0
CHARACTERDTO_GENDER_FIELD.type = 5
CHARACTERDTO_GENDER_FIELD.cpp_type = 1

CHARACTERDTO_LEVEL_FIELD.name = "level"
CHARACTERDTO_LEVEL_FIELD.full_name = ".common.CharacterDTO.level"
CHARACTERDTO_LEVEL_FIELD.number = 7
CHARACTERDTO_LEVEL_FIELD.index = 6
CHARACTERDTO_LEVEL_FIELD.label = 2
CHARACTERDTO_LEVEL_FIELD.has_default_value = false
CHARACTERDTO_LEVEL_FIELD.default_value = 0
CHARACTERDTO_LEVEL_FIELD.type = 5
CHARACTERDTO_LEVEL_FIELD.cpp_type = 1

CHARACTERDTO_EXP_FIELD.name = "exp"
CHARACTERDTO_EXP_FIELD.full_name = ".common.CharacterDTO.exp"
CHARACTERDTO_EXP_FIELD.number = 8
CHARACTERDTO_EXP_FIELD.index = 7
CHARACTERDTO_EXP_FIELD.label = 2
CHARACTERDTO_EXP_FIELD.has_default_value = false
CHARACTERDTO_EXP_FIELD.default_value = 0
CHARACTERDTO_EXP_FIELD.type = 5
CHARACTERDTO_EXP_FIELD.cpp_type = 1

CHARACTERDTO_DIAMOND_FIELD.name = "diamond"
CHARACTERDTO_DIAMOND_FIELD.full_name = ".common.CharacterDTO.diamond"
CHARACTERDTO_DIAMOND_FIELD.number = 9
CHARACTERDTO_DIAMOND_FIELD.index = 8
CHARACTERDTO_DIAMOND_FIELD.label = 2
CHARACTERDTO_DIAMOND_FIELD.has_default_value = false
CHARACTERDTO_DIAMOND_FIELD.default_value = 0
CHARACTERDTO_DIAMOND_FIELD.type = 5
CHARACTERDTO_DIAMOND_FIELD.cpp_type = 1

CHARACTERDTO_GOLD_FIELD.name = "gold"
CHARACTERDTO_GOLD_FIELD.full_name = ".common.CharacterDTO.gold"
CHARACTERDTO_GOLD_FIELD.number = 10
CHARACTERDTO_GOLD_FIELD.index = 9
CHARACTERDTO_GOLD_FIELD.label = 2
CHARACTERDTO_GOLD_FIELD.has_default_value = false
CHARACTERDTO_GOLD_FIELD.default_value = 0
CHARACTERDTO_GOLD_FIELD.type = 5
CHARACTERDTO_GOLD_FIELD.cpp_type = 1

CHARACTERDTO_POS_X_FIELD.name = "pos_x"
CHARACTERDTO_POS_X_FIELD.full_name = ".common.CharacterDTO.pos_x"
CHARACTERDTO_POS_X_FIELD.number = 11
CHARACTERDTO_POS_X_FIELD.index = 10
CHARACTERDTO_POS_X_FIELD.label = 2
CHARACTERDTO_POS_X_FIELD.has_default_value = false
CHARACTERDTO_POS_X_FIELD.default_value = 0.0
CHARACTERDTO_POS_X_FIELD.type = 2
CHARACTERDTO_POS_X_FIELD.cpp_type = 6

CHARACTERDTO_POS_Y_FIELD.name = "pos_y"
CHARACTERDTO_POS_Y_FIELD.full_name = ".common.CharacterDTO.pos_y"
CHARACTERDTO_POS_Y_FIELD.number = 12
CHARACTERDTO_POS_Y_FIELD.index = 11
CHARACTERDTO_POS_Y_FIELD.label = 2
CHARACTERDTO_POS_Y_FIELD.has_default_value = false
CHARACTERDTO_POS_Y_FIELD.default_value = 0.0
CHARACTERDTO_POS_Y_FIELD.type = 2
CHARACTERDTO_POS_Y_FIELD.cpp_type = 6

CHARACTERDTO_POS_Z_FIELD.name = "pos_z"
CHARACTERDTO_POS_Z_FIELD.full_name = ".common.CharacterDTO.pos_z"
CHARACTERDTO_POS_Z_FIELD.number = 13
CHARACTERDTO_POS_Z_FIELD.index = 12
CHARACTERDTO_POS_Z_FIELD.label = 2
CHARACTERDTO_POS_Z_FIELD.has_default_value = false
CHARACTERDTO_POS_Z_FIELD.default_value = 0.0
CHARACTERDTO_POS_Z_FIELD.type = 2
CHARACTERDTO_POS_Z_FIELD.cpp_type = 6

CHARACTERDTO_CFGID_FIELD.name = "cfgid"
CHARACTERDTO_CFGID_FIELD.full_name = ".common.CharacterDTO.cfgid"
CHARACTERDTO_CFGID_FIELD.number = 14
CHARACTERDTO_CFGID_FIELD.index = 13
CHARACTERDTO_CFGID_FIELD.label = 2
CHARACTERDTO_CFGID_FIELD.has_default_value = false
CHARACTERDTO_CFGID_FIELD.default_value = 0
CHARACTERDTO_CFGID_FIELD.type = 5
CHARACTERDTO_CFGID_FIELD.cpp_type = 1

CHARACTERDTO_MAPID_FIELD.name = "mapid"
CHARACTERDTO_MAPID_FIELD.full_name = ".common.CharacterDTO.mapid"
CHARACTERDTO_MAPID_FIELD.number = 15
CHARACTERDTO_MAPID_FIELD.index = 14
CHARACTERDTO_MAPID_FIELD.label = 2
CHARACTERDTO_MAPID_FIELD.has_default_value = false
CHARACTERDTO_MAPID_FIELD.default_value = 0
CHARACTERDTO_MAPID_FIELD.type = 5
CHARACTERDTO_MAPID_FIELD.cpp_type = 1

CHARACTERDTO.name = "CharacterDTO"
CHARACTERDTO.full_name = ".common.CharacterDTO"
CHARACTERDTO.nested_types = {}
CHARACTERDTO.enum_types = {}
CHARACTERDTO.fields = {CHARACTERDTO_ID_FIELD, CHARACTERDTO_ACCOUNTID_FIELD, CHARACTERDTO_NAME_FIELD, CHARACTERDTO_RACE_FIELD, CHARACTERDTO_JOB_FIELD, CHARACTERDTO_GENDER_FIELD, CHARACTERDTO_LEVEL_FIELD, CHARACTERDTO_EXP_FIELD, CHARACTERDTO_DIAMOND_FIELD, CHARACTERDTO_GOLD_FIELD, CHARACTERDTO_POS_X_FIELD, CHARACTERDTO_POS_Y_FIELD, CHARACTERDTO_POS_Z_FIELD, CHARACTERDTO_CFGID_FIELD, CHARACTERDTO_MAPID_FIELD}
CHARACTERDTO.is_extendable = false
CHARACTERDTO.extensions = {}
INVENTORYDTO_SLOT_FIELD.name = "slot"
INVENTORYDTO_SLOT_FIELD.full_name = ".common.InventoryDTO.slot"
INVENTORYDTO_SLOT_FIELD.number = 1
INVENTORYDTO_SLOT_FIELD.index = 0
INVENTORYDTO_SLOT_FIELD.label = 2
INVENTORYDTO_SLOT_FIELD.has_default_value = false
INVENTORYDTO_SLOT_FIELD.default_value = 0
INVENTORYDTO_SLOT_FIELD.type = 5
INVENTORYDTO_SLOT_FIELD.cpp_type = 1

INVENTORYDTO_ITEMID_FIELD.name = "itemid"
INVENTORYDTO_ITEMID_FIELD.full_name = ".common.InventoryDTO.itemid"
INVENTORYDTO_ITEMID_FIELD.number = 2
INVENTORYDTO_ITEMID_FIELD.index = 1
INVENTORYDTO_ITEMID_FIELD.label = 2
INVENTORYDTO_ITEMID_FIELD.has_default_value = false
INVENTORYDTO_ITEMID_FIELD.default_value = 0
INVENTORYDTO_ITEMID_FIELD.type = 5
INVENTORYDTO_ITEMID_FIELD.cpp_type = 1

INVENTORYDTO_NUM_FIELD.name = "num"
INVENTORYDTO_NUM_FIELD.full_name = ".common.InventoryDTO.num"
INVENTORYDTO_NUM_FIELD.number = 3
INVENTORYDTO_NUM_FIELD.index = 2
INVENTORYDTO_NUM_FIELD.label = 2
INVENTORYDTO_NUM_FIELD.has_default_value = false
INVENTORYDTO_NUM_FIELD.default_value = 0
INVENTORYDTO_NUM_FIELD.type = 5
INVENTORYDTO_NUM_FIELD.cpp_type = 1

INVENTORYDTO.name = "InventoryDTO"
INVENTORYDTO.full_name = ".common.InventoryDTO"
INVENTORYDTO.nested_types = {}
INVENTORYDTO.enum_types = {}
INVENTORYDTO.fields = {INVENTORYDTO_SLOT_FIELD, INVENTORYDTO_ITEMID_FIELD, INVENTORYDTO_NUM_FIELD}
INVENTORYDTO.is_extendable = false
INVENTORYDTO.extensions = {}
MAILDTO_ID_FIELD.name = "id"
MAILDTO_ID_FIELD.full_name = ".common.MailDTO.id"
MAILDTO_ID_FIELD.number = 1
MAILDTO_ID_FIELD.index = 0
MAILDTO_ID_FIELD.label = 2
MAILDTO_ID_FIELD.has_default_value = false
MAILDTO_ID_FIELD.default_value = 0
MAILDTO_ID_FIELD.type = 5
MAILDTO_ID_FIELD.cpp_type = 1

MAILDTO_SENDER_ID_FIELD.name = "sender_id"
MAILDTO_SENDER_ID_FIELD.full_name = ".common.MailDTO.sender_id"
MAILDTO_SENDER_ID_FIELD.number = 2
MAILDTO_SENDER_ID_FIELD.index = 1
MAILDTO_SENDER_ID_FIELD.label = 2
MAILDTO_SENDER_ID_FIELD.has_default_value = false
MAILDTO_SENDER_ID_FIELD.default_value = 0
MAILDTO_SENDER_ID_FIELD.type = 5
MAILDTO_SENDER_ID_FIELD.cpp_type = 1

MAILDTO_RECEIVER_ID_FIELD.name = "receiver_id"
MAILDTO_RECEIVER_ID_FIELD.full_name = ".common.MailDTO.receiver_id"
MAILDTO_RECEIVER_ID_FIELD.number = 3
MAILDTO_RECEIVER_ID_FIELD.index = 2
MAILDTO_RECEIVER_ID_FIELD.label = 2
MAILDTO_RECEIVER_ID_FIELD.has_default_value = false
MAILDTO_RECEIVER_ID_FIELD.default_value = 0
MAILDTO_RECEIVER_ID_FIELD.type = 5
MAILDTO_RECEIVER_ID_FIELD.cpp_type = 1

MAILDTO_SUBJECT_FIELD.name = "subject"
MAILDTO_SUBJECT_FIELD.full_name = ".common.MailDTO.subject"
MAILDTO_SUBJECT_FIELD.number = 4
MAILDTO_SUBJECT_FIELD.index = 3
MAILDTO_SUBJECT_FIELD.label = 2
MAILDTO_SUBJECT_FIELD.has_default_value = false
MAILDTO_SUBJECT_FIELD.default_value = ""
MAILDTO_SUBJECT_FIELD.type = 9
MAILDTO_SUBJECT_FIELD.cpp_type = 9

MAILDTO_BODY_FIELD.name = "body"
MAILDTO_BODY_FIELD.full_name = ".common.MailDTO.body"
MAILDTO_BODY_FIELD.number = 5
MAILDTO_BODY_FIELD.index = 4
MAILDTO_BODY_FIELD.label = 2
MAILDTO_BODY_FIELD.has_default_value = false
MAILDTO_BODY_FIELD.default_value = ""
MAILDTO_BODY_FIELD.type = 9
MAILDTO_BODY_FIELD.cpp_type = 9

MAILDTO_DELIVER_TIME_FIELD.name = "deliver_time"
MAILDTO_DELIVER_TIME_FIELD.full_name = ".common.MailDTO.deliver_time"
MAILDTO_DELIVER_TIME_FIELD.number = 6
MAILDTO_DELIVER_TIME_FIELD.index = 5
MAILDTO_DELIVER_TIME_FIELD.label = 2
MAILDTO_DELIVER_TIME_FIELD.has_default_value = false
MAILDTO_DELIVER_TIME_FIELD.default_value = ""
MAILDTO_DELIVER_TIME_FIELD.type = 9
MAILDTO_DELIVER_TIME_FIELD.cpp_type = 9

MAILDTO_MONEY_FIELD.name = "money"
MAILDTO_MONEY_FIELD.full_name = ".common.MailDTO.money"
MAILDTO_MONEY_FIELD.number = 7
MAILDTO_MONEY_FIELD.index = 6
MAILDTO_MONEY_FIELD.label = 2
MAILDTO_MONEY_FIELD.has_default_value = false
MAILDTO_MONEY_FIELD.default_value = 0
MAILDTO_MONEY_FIELD.type = 5
MAILDTO_MONEY_FIELD.cpp_type = 1

MAILDTO_HAS_ITEMS_FIELD.name = "has_items"
MAILDTO_HAS_ITEMS_FIELD.full_name = ".common.MailDTO.has_items"
MAILDTO_HAS_ITEMS_FIELD.number = 8
MAILDTO_HAS_ITEMS_FIELD.index = 7
MAILDTO_HAS_ITEMS_FIELD.label = 2
MAILDTO_HAS_ITEMS_FIELD.has_default_value = false
MAILDTO_HAS_ITEMS_FIELD.default_value = 0
MAILDTO_HAS_ITEMS_FIELD.type = 5
MAILDTO_HAS_ITEMS_FIELD.cpp_type = 1

MAILDTO_ITEMS_FIELD.name = "items"
MAILDTO_ITEMS_FIELD.full_name = ".common.MailDTO.items"
MAILDTO_ITEMS_FIELD.number = 9
MAILDTO_ITEMS_FIELD.index = 8
MAILDTO_ITEMS_FIELD.label = 3
MAILDTO_ITEMS_FIELD.has_default_value = false
MAILDTO_ITEMS_FIELD.default_value = {}
MAILDTO_ITEMS_FIELD.message_type = _MAIL_ITEMDTO
MAILDTO_ITEMS_FIELD.type = 11
MAILDTO_ITEMS_FIELD.cpp_type = 10

MAILDTO.name = "MailDTO"
MAILDTO.full_name = ".common.MailDTO"
MAILDTO.nested_types = {}
MAILDTO.enum_types = {}
MAILDTO.fields = {MAILDTO_ID_FIELD, MAILDTO_SENDER_ID_FIELD, MAILDTO_RECEIVER_ID_FIELD, MAILDTO_SUBJECT_FIELD, MAILDTO_BODY_FIELD, MAILDTO_DELIVER_TIME_FIELD, MAILDTO_MONEY_FIELD, MAILDTO_HAS_ITEMS_FIELD, MAILDTO_ITEMS_FIELD}
MAILDTO.is_extendable = false
MAILDTO.extensions = {}
MAIL_ITEMDTO_MAIL_ID_FIELD.name = "mail_id"
MAIL_ITEMDTO_MAIL_ID_FIELD.full_name = ".common.Mail_ItemDTO.mail_id"
MAIL_ITEMDTO_MAIL_ID_FIELD.number = 1
MAIL_ITEMDTO_MAIL_ID_FIELD.index = 0
MAIL_ITEMDTO_MAIL_ID_FIELD.label = 2
MAIL_ITEMDTO_MAIL_ID_FIELD.has_default_value = false
MAIL_ITEMDTO_MAIL_ID_FIELD.default_value = 0
MAIL_ITEMDTO_MAIL_ID_FIELD.type = 5
MAIL_ITEMDTO_MAIL_ID_FIELD.cpp_type = 1

MAIL_ITEMDTO_ITEM_ID_FIELD.name = "item_id"
MAIL_ITEMDTO_ITEM_ID_FIELD.full_name = ".common.Mail_ItemDTO.item_id"
MAIL_ITEMDTO_ITEM_ID_FIELD.number = 2
MAIL_ITEMDTO_ITEM_ID_FIELD.index = 1
MAIL_ITEMDTO_ITEM_ID_FIELD.label = 2
MAIL_ITEMDTO_ITEM_ID_FIELD.has_default_value = false
MAIL_ITEMDTO_ITEM_ID_FIELD.default_value = 0
MAIL_ITEMDTO_ITEM_ID_FIELD.type = 5
MAIL_ITEMDTO_ITEM_ID_FIELD.cpp_type = 1

MAIL_ITEMDTO_ITEM_NUM_FIELD.name = "item_num"
MAIL_ITEMDTO_ITEM_NUM_FIELD.full_name = ".common.Mail_ItemDTO.item_num"
MAIL_ITEMDTO_ITEM_NUM_FIELD.number = 3
MAIL_ITEMDTO_ITEM_NUM_FIELD.index = 2
MAIL_ITEMDTO_ITEM_NUM_FIELD.label = 2
MAIL_ITEMDTO_ITEM_NUM_FIELD.has_default_value = false
MAIL_ITEMDTO_ITEM_NUM_FIELD.default_value = 0
MAIL_ITEMDTO_ITEM_NUM_FIELD.type = 5
MAIL_ITEMDTO_ITEM_NUM_FIELD.cpp_type = 1

MAIL_ITEMDTO.name = "Mail_ItemDTO"
MAIL_ITEMDTO.full_name = ".common.Mail_ItemDTO"
MAIL_ITEMDTO.nested_types = {}
MAIL_ITEMDTO.enum_types = {}
MAIL_ITEMDTO.fields = {MAIL_ITEMDTO_MAIL_ID_FIELD, MAIL_ITEMDTO_ITEM_ID_FIELD, MAIL_ITEMDTO_ITEM_NUM_FIELD}
MAIL_ITEMDTO.is_extendable = false
MAIL_ITEMDTO.extensions = {}
FRIENDINFO_CHARACTERID_FIELD.name = "characterid"
FRIENDINFO_CHARACTERID_FIELD.full_name = ".common.FriendInfo.characterid"
FRIENDINFO_CHARACTERID_FIELD.number = 1
FRIENDINFO_CHARACTERID_FIELD.index = 0
FRIENDINFO_CHARACTERID_FIELD.label = 2
FRIENDINFO_CHARACTERID_FIELD.has_default_value = false
FRIENDINFO_CHARACTERID_FIELD.default_value = 0
FRIENDINFO_CHARACTERID_FIELD.type = 13
FRIENDINFO_CHARACTERID_FIELD.cpp_type = 3

FRIENDINFO_NAME_FIELD.name = "name"
FRIENDINFO_NAME_FIELD.full_name = ".common.FriendInfo.name"
FRIENDINFO_NAME_FIELD.number = 2
FRIENDINFO_NAME_FIELD.index = 1
FRIENDINFO_NAME_FIELD.label = 2
FRIENDINFO_NAME_FIELD.has_default_value = false
FRIENDINFO_NAME_FIELD.default_value = ""
FRIENDINFO_NAME_FIELD.type = 9
FRIENDINFO_NAME_FIELD.cpp_type = 9

FRIENDINFO_ISONLINE_FIELD.name = "isonline"
FRIENDINFO_ISONLINE_FIELD.full_name = ".common.FriendInfo.isonline"
FRIENDINFO_ISONLINE_FIELD.number = 3
FRIENDINFO_ISONLINE_FIELD.index = 2
FRIENDINFO_ISONLINE_FIELD.label = 2
FRIENDINFO_ISONLINE_FIELD.has_default_value = false
FRIENDINFO_ISONLINE_FIELD.default_value = false
FRIENDINFO_ISONLINE_FIELD.type = 8
FRIENDINFO_ISONLINE_FIELD.cpp_type = 7

FRIENDINFO.name = "FriendInfo"
FRIENDINFO.full_name = ".common.FriendInfo"
FRIENDINFO.nested_types = {}
FRIENDINFO.enum_types = {}
FRIENDINFO.fields = {FRIENDINFO_CHARACTERID_FIELD, FRIENDINFO_NAME_FIELD, FRIENDINFO_ISONLINE_FIELD}
FRIENDINFO.is_extendable = false
FRIENDINFO.extensions = {}

AccountHasOnline = 1002
AccountInvalid = 1008
AccountOffline = 1010
AccountRepeat = 1007
Alliance = 1
Arena = 1
Bandit = 4
Battleground = 2
Brave = 0
BuyGoodsSuccess = 1041
CharCreateSuccess = 1011
CharHasOnline = 1016
CharOfflineSuccess = 1014
CharOnlineSuccess = 1013
CharacterDTO = protobuf.Message(CHARACTERDTO)
DeleteCharSuccess = 1015
DeleteItemSuccess = 1023
DeleteMailSuccess = 1031
DiamondNotEnough = 1043
Dungeon = 3
EquipSuccess = 1021
FriendInfo = protobuf.Message(FRIENDINFO)
GoldNotEnough = 1042
Horde = 2
Hunter = 2
InputError = 1004
InventoryDTO = protobuf.Message(INVENTORYDTO)
LoginSuccess = 1005
Mage = 1
MailDTO = protobuf.Message(MAILDTO)
Mail_ItemDTO = protobuf.Message(MAIL_ITEMDTO)
Monster = 1
NameRepeat = 1012
Neutrality = 0
NoAccount = 1001
Npc = 2
PasswordError = 1003
PasswordInvalid = 1009
Player = 0
Priest = 3
RecvItemSuccess = 1032
RegisterSuccess = 1006
UnloadSuccess = 1022
Vector = protobuf.Message(VECTOR)
World = 0

