//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// Generated from: proto/common.proto
namespace common
{
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"Vector")]
  public partial class Vector : global::ProtoBuf.IExtensible
  {
    public Vector() {}
    
    private float _x;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"x", DataFormat = global::ProtoBuf.DataFormat.FixedSize)]
    public float x
    {
      get { return _x; }
      set { _x = value; }
    }
    private float _y;
    [global::ProtoBuf.ProtoMember(2, IsRequired = true, Name=@"y", DataFormat = global::ProtoBuf.DataFormat.FixedSize)]
    public float y
    {
      get { return _y; }
      set { _y = value; }
    }
    private float _z;
    [global::ProtoBuf.ProtoMember(3, IsRequired = true, Name=@"z", DataFormat = global::ProtoBuf.DataFormat.FixedSize)]
    public float z
    {
      get { return _z; }
      set { _z = value; }
    }
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"CharacterDTO")]
  public partial class CharacterDTO : global::ProtoBuf.IExtensible
  {
    public CharacterDTO() {}
    
    private int _id;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"id", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int id
    {
      get { return _id; }
      set { _id = value; }
    }
    private int _accountid;
    [global::ProtoBuf.ProtoMember(2, IsRequired = true, Name=@"accountid", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int accountid
    {
      get { return _accountid; }
      set { _accountid = value; }
    }
    private string _name;
    [global::ProtoBuf.ProtoMember(3, IsRequired = true, Name=@"name", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string name
    {
      get { return _name; }
      set { _name = value; }
    }
    private int _race;
    [global::ProtoBuf.ProtoMember(4, IsRequired = true, Name=@"race", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int race
    {
      get { return _race; }
      set { _race = value; }
    }
    private int _job;
    [global::ProtoBuf.ProtoMember(5, IsRequired = true, Name=@"job", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int job
    {
      get { return _job; }
      set { _job = value; }
    }
    private int _gender;
    [global::ProtoBuf.ProtoMember(6, IsRequired = true, Name=@"gender", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int gender
    {
      get { return _gender; }
      set { _gender = value; }
    }
    private int _level;
    [global::ProtoBuf.ProtoMember(7, IsRequired = true, Name=@"level", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int level
    {
      get { return _level; }
      set { _level = value; }
    }
    private int _exp;
    [global::ProtoBuf.ProtoMember(8, IsRequired = true, Name=@"exp", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int exp
    {
      get { return _exp; }
      set { _exp = value; }
    }
    private int _diamond;
    [global::ProtoBuf.ProtoMember(9, IsRequired = true, Name=@"diamond", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int diamond
    {
      get { return _diamond; }
      set { _diamond = value; }
    }
    private int _gold;
    [global::ProtoBuf.ProtoMember(10, IsRequired = true, Name=@"gold", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int gold
    {
      get { return _gold; }
      set { _gold = value; }
    }
    private float _pos_x;
    [global::ProtoBuf.ProtoMember(11, IsRequired = true, Name=@"pos_x", DataFormat = global::ProtoBuf.DataFormat.FixedSize)]
    public float pos_x
    {
      get { return _pos_x; }
      set { _pos_x = value; }
    }
    private float _pos_y;
    [global::ProtoBuf.ProtoMember(12, IsRequired = true, Name=@"pos_y", DataFormat = global::ProtoBuf.DataFormat.FixedSize)]
    public float pos_y
    {
      get { return _pos_y; }
      set { _pos_y = value; }
    }
    private float _pos_z;
    [global::ProtoBuf.ProtoMember(13, IsRequired = true, Name=@"pos_z", DataFormat = global::ProtoBuf.DataFormat.FixedSize)]
    public float pos_z
    {
      get { return _pos_z; }
      set { _pos_z = value; }
    }
    private int _cfgid;
    [global::ProtoBuf.ProtoMember(14, IsRequired = true, Name=@"cfgid", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int cfgid
    {
      get { return _cfgid; }
      set { _cfgid = value; }
    }
    private int _mapid;
    [global::ProtoBuf.ProtoMember(15, IsRequired = true, Name=@"mapid", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int mapid
    {
      get { return _mapid; }
      set { _mapid = value; }
    }
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"InventoryDTO")]
  public partial class InventoryDTO : global::ProtoBuf.IExtensible
  {
    public InventoryDTO() {}
    
    private int _slot;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"slot", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int slot
    {
      get { return _slot; }
      set { _slot = value; }
    }
    private int _itemid;
    [global::ProtoBuf.ProtoMember(2, IsRequired = true, Name=@"itemid", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int itemid
    {
      get { return _itemid; }
      set { _itemid = value; }
    }
    private int _num;
    [global::ProtoBuf.ProtoMember(3, IsRequired = true, Name=@"num", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int num
    {
      get { return _num; }
      set { _num = value; }
    }
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"MailDTO")]
  public partial class MailDTO : global::ProtoBuf.IExtensible
  {
    public MailDTO() {}
    
    private int _id;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"id", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int id
    {
      get { return _id; }
      set { _id = value; }
    }
    private int _sender_id;
    [global::ProtoBuf.ProtoMember(2, IsRequired = true, Name=@"sender_id", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int sender_id
    {
      get { return _sender_id; }
      set { _sender_id = value; }
    }
    private int _receiver_id;
    [global::ProtoBuf.ProtoMember(3, IsRequired = true, Name=@"receiver_id", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int receiver_id
    {
      get { return _receiver_id; }
      set { _receiver_id = value; }
    }
    private string _subject;
    [global::ProtoBuf.ProtoMember(4, IsRequired = true, Name=@"subject", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string subject
    {
      get { return _subject; }
      set { _subject = value; }
    }
    private string _body;
    [global::ProtoBuf.ProtoMember(5, IsRequired = true, Name=@"body", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string body
    {
      get { return _body; }
      set { _body = value; }
    }
    private string _deliver_time;
    [global::ProtoBuf.ProtoMember(6, IsRequired = true, Name=@"deliver_time", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string deliver_time
    {
      get { return _deliver_time; }
      set { _deliver_time = value; }
    }
    private int _money;
    [global::ProtoBuf.ProtoMember(7, IsRequired = true, Name=@"money", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int money
    {
      get { return _money; }
      set { _money = value; }
    }
    private int _has_items;
    [global::ProtoBuf.ProtoMember(8, IsRequired = true, Name=@"has_items", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int has_items
    {
      get { return _has_items; }
      set { _has_items = value; }
    }
    private readonly global::System.Collections.Generic.List<common.Mail_ItemDTO> _items = new global::System.Collections.Generic.List<common.Mail_ItemDTO>();
    [global::ProtoBuf.ProtoMember(9, Name=@"items", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public global::System.Collections.Generic.List<common.Mail_ItemDTO> items
    {
      get { return _items; }
    }
  
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"Mail_ItemDTO")]
  public partial class Mail_ItemDTO : global::ProtoBuf.IExtensible
  {
    public Mail_ItemDTO() {}
    
    private int _mail_id;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"mail_id", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int mail_id
    {
      get { return _mail_id; }
      set { _mail_id = value; }
    }
    private int _item_id;
    [global::ProtoBuf.ProtoMember(2, IsRequired = true, Name=@"item_id", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int item_id
    {
      get { return _item_id; }
      set { _item_id = value; }
    }
    private int _item_num;
    [global::ProtoBuf.ProtoMember(3, IsRequired = true, Name=@"item_num", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int item_num
    {
      get { return _item_num; }
      set { _item_num = value; }
    }
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"FriendInfo")]
  public partial class FriendInfo : global::ProtoBuf.IExtensible
  {
    public FriendInfo() {}
    
    private uint _characterid;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"characterid", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public uint characterid
    {
      get { return _characterid; }
      set { _characterid = value; }
    }
    private string _name;
    [global::ProtoBuf.ProtoMember(2, IsRequired = true, Name=@"name", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string name
    {
      get { return _name; }
      set { _name = value; }
    }
    private bool _isonline;
    [global::ProtoBuf.ProtoMember(3, IsRequired = true, Name=@"isonline", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public bool isonline
    {
      get { return _isonline; }
      set { _isonline = value; }
    }
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
    [global::ProtoBuf.ProtoContract(Name=@"BattleType")]
    public enum BattleType
    {
            
      [global::ProtoBuf.ProtoEnum(Name=@"World", Value=0)]
      World = 0,
            
      [global::ProtoBuf.ProtoEnum(Name=@"Arena", Value=1)]
      Arena = 1,
            
      [global::ProtoBuf.ProtoEnum(Name=@"Battleground", Value=2)]
      Battleground = 2,
            
      [global::ProtoBuf.ProtoEnum(Name=@"Dungeon", Value=3)]
      Dungeon = 3
    }
  
    [global::ProtoBuf.ProtoContract(Name=@"Race")]
    public enum Race
    {
            
      [global::ProtoBuf.ProtoEnum(Name=@"Neutrality", Value=0)]
      Neutrality = 0,
            
      [global::ProtoBuf.ProtoEnum(Name=@"Alliance", Value=1)]
      Alliance = 1,
            
      [global::ProtoBuf.ProtoEnum(Name=@"Horde", Value=2)]
      Horde = 2
    }
  
    [global::ProtoBuf.ProtoContract(Name=@"CharacterType")]
    public enum CharacterType
    {
            
      [global::ProtoBuf.ProtoEnum(Name=@"Player", Value=0)]
      Player = 0,
            
      [global::ProtoBuf.ProtoEnum(Name=@"Monster", Value=1)]
      Monster = 1,
            
      [global::ProtoBuf.ProtoEnum(Name=@"Npc", Value=2)]
      Npc = 2
    }
  
    [global::ProtoBuf.ProtoContract(Name=@"Job")]
    public enum Job
    {
            
      [global::ProtoBuf.ProtoEnum(Name=@"Brave", Value=0)]
      Brave = 0,
            
      [global::ProtoBuf.ProtoEnum(Name=@"Mage", Value=1)]
      Mage = 1,
            
      [global::ProtoBuf.ProtoEnum(Name=@"Hunter", Value=2)]
      Hunter = 2,
            
      [global::ProtoBuf.ProtoEnum(Name=@"Priest", Value=3)]
      Priest = 3,
            
      [global::ProtoBuf.ProtoEnum(Name=@"Bandit", Value=4)]
      Bandit = 4
    }
  
    [global::ProtoBuf.ProtoContract(Name=@"MsgTips")]
    public enum MsgTips
    {
            
      [global::ProtoBuf.ProtoEnum(Name=@"NoAccount", Value=1001)]
      NoAccount = 1001,
            
      [global::ProtoBuf.ProtoEnum(Name=@"AccountHasOnline", Value=1002)]
      AccountHasOnline = 1002,
            
      [global::ProtoBuf.ProtoEnum(Name=@"PasswordError", Value=1003)]
      PasswordError = 1003,
            
      [global::ProtoBuf.ProtoEnum(Name=@"InputError", Value=1004)]
      InputError = 1004,
            
      [global::ProtoBuf.ProtoEnum(Name=@"LoginSuccess", Value=1005)]
      LoginSuccess = 1005,
            
      [global::ProtoBuf.ProtoEnum(Name=@"RegisterSuccess", Value=1006)]
      RegisterSuccess = 1006,
            
      [global::ProtoBuf.ProtoEnum(Name=@"AccountRepeat", Value=1007)]
      AccountRepeat = 1007,
            
      [global::ProtoBuf.ProtoEnum(Name=@"AccountInvalid", Value=1008)]
      AccountInvalid = 1008,
            
      [global::ProtoBuf.ProtoEnum(Name=@"PasswordInvalid", Value=1009)]
      PasswordInvalid = 1009,
            
      [global::ProtoBuf.ProtoEnum(Name=@"AccountOffline", Value=1010)]
      AccountOffline = 1010,
            
      [global::ProtoBuf.ProtoEnum(Name=@"CharCreateSuccess", Value=1011)]
      CharCreateSuccess = 1011,
            
      [global::ProtoBuf.ProtoEnum(Name=@"NameRepeat", Value=1012)]
      NameRepeat = 1012,
            
      [global::ProtoBuf.ProtoEnum(Name=@"CharOnlineSuccess", Value=1013)]
      CharOnlineSuccess = 1013,
            
      [global::ProtoBuf.ProtoEnum(Name=@"CharOfflineSuccess", Value=1014)]
      CharOfflineSuccess = 1014,
            
      [global::ProtoBuf.ProtoEnum(Name=@"DeleteCharSuccess", Value=1015)]
      DeleteCharSuccess = 1015,
            
      [global::ProtoBuf.ProtoEnum(Name=@"CharHasOnline", Value=1016)]
      CharHasOnline = 1016,
            
      [global::ProtoBuf.ProtoEnum(Name=@"EquipSuccess", Value=1021)]
      EquipSuccess = 1021,
            
      [global::ProtoBuf.ProtoEnum(Name=@"UnloadSuccess", Value=1022)]
      UnloadSuccess = 1022,
            
      [global::ProtoBuf.ProtoEnum(Name=@"DeleteItemSuccess", Value=1023)]
      DeleteItemSuccess = 1023,
            
      [global::ProtoBuf.ProtoEnum(Name=@"DeleteMailSuccess", Value=1031)]
      DeleteMailSuccess = 1031,
            
      [global::ProtoBuf.ProtoEnum(Name=@"RecvItemSuccess", Value=1032)]
      RecvItemSuccess = 1032,
            
      [global::ProtoBuf.ProtoEnum(Name=@"BuyGoodsSuccess", Value=1041)]
      BuyGoodsSuccess = 1041,
            
      [global::ProtoBuf.ProtoEnum(Name=@"GoldNotEnough", Value=1042)]
      GoldNotEnough = 1042,
            
      [global::ProtoBuf.ProtoEnum(Name=@"DiamondNotEnough", Value=1043)]
      DiamondNotEnough = 1043
    }
  
}