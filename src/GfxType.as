package
{
   public class GfxType
   {
      
      internal static var _SafeStr_1220:Array;
      
      internal static var _SafeStr_1110:Boolean = false;
      
      internal var _SafeStr_228:String;
      
      internal var _SafeStr_180:String = "a__Animation";
      
      internal var animScale:Number = 1;
      
      internal var moveAnimSpeed:Number = 1;
      
      internal var _SafeStr_301:Vector.<CustomArt> = new Vector.<CustomArt>();
      
      internal var _SafeStr_254:Vector.<ColorSwap> = new Vector.<ColorSwap>();
      
      internal var _SafeStr_875:Boolean = false;
      
      internal var baseAnim:String = "Ready";
      
      internal var _SafeStr_1166:String = "Run";
      
      internal var _SafeStr_686:String;
      
      internal var _SafeStr_1755:Boolean = false;
      
      internal var _SafeStr_911:Boolean = false;
      
      internal var _SafeStr_290:Boolean = false;
      
      internal var _SafeStr_756:Boolean = false;
      
      internal var _SafeStr_1017:Boolean = false;
      
      internal var _SafeStr_1141:String = null;
      
      internal var _SafeStr_1113:Boolean = false;
      
      internal var _SafeStr_1768:Boolean = false;
      
      internal var _SafeStr_833:Boolean = false;
      
      internal var _SafeStr_789:uint = 0;
      
      internal var _SafeStr_639:Number = 1;
      
      internal var _SafeStr_802:String = null;
      
      internal var _SafeStr_975:Number = 0;
      
      public function GfxType()
      {
         super();
      }
      
      public static function _SafeStr_873(param1:Array, param2:Boolean = false) : void
      {
         _SafeStr_1220 = param1;
         _SafeStr_1110 = param2;
      }
      
      public static function _SafeStr_3604(param1:String) : Boolean
      {
         var _loc2_:Number = Number(_SafeStr_1220[param1]);
         return _loc2_ >= 0;
      }
      
      public static function _SafeStr_3513(param1:XML, param2:GfxType, param3:int) : GfxType
      {
         var _loc5_:XML = null;
         var _loc6_:String = null;
         var _loc7_:Number = NaN;
         var _loc8_:Array = null;
         var _loc9_:CustomArt = null;
         var _loc10_:String = null;
         var _loc11_:Array = null;
         var _loc12_:String = null;
         var _loc13_:uint = 0;
         var _loc14_:String = null;
         var _loc15_:uint = 0;
         var _loc4_:GfxType = param2;
         for each(_loc5_ in param1.*)
         {
            _loc6_ = _loc5_.name();
            if(_loc6_ == "AnimFile")
            {
               _loc4_._SafeStr_228 = _loc5_.toString();
            }
            else if(_loc6_ == "AnimClass")
            {
               _loc4_._SafeStr_180 = _loc5_.toString();
            }
            else if(_loc6_ == "AnimScale")
            {
               _loc7_ = Number(_loc5_);
               if(_loc7_ > 0)
               {
                  _loc4_.animScale *= _loc7_;
               }
               else
               {
                  _loc4_.animScale = _loc7_ * -1;
               }
            }
            else if(_loc6_ == "MoveAnimSpeed")
            {
               _loc4_.moveAnimSpeed = Number(_loc5_);
            }
            else if(_loc6_ == "BaseAnim")
            {
               _loc4_.baseAnim = _loc5_.toString();
            }
            else if(_loc6_ == "RunAnim")
            {
               _loc4_._SafeStr_1166 = _loc5_.toString();
            }
            else if(_loc6_ == "Shadow")
            {
               _loc4_._SafeStr_686 = _loc5_.toString();
            }
            else if(_loc6_ == "FlipAnim")
            {
               _loc4_._SafeStr_875 = _SafeCls_19._SafeStr_185(_loc5_);
            }
            else if(_loc6_ == "FireAndForget")
            {
               _loc4_._SafeStr_290 = _SafeCls_19._SafeStr_185(_loc5_);
            }
            else if(_loc6_ == "RandomFrameStart")
            {
               _loc4_._SafeStr_756 = _SafeCls_19._SafeStr_185(_loc5_);
            }
            else if(_loc6_ == "Desynch")
            {
               _loc4_._SafeStr_1017 = _SafeCls_19._SafeStr_185(_loc5_);
            }
            else if(_loc6_ == "Tint")
            {
               _loc4_._SafeStr_789 = uint(_loc5_);
            }
            else if(!_loc6_.indexOf("CustomArt"))
            {
               _loc8_ = _loc5_.toString().split("/");
               _loc9_ = new CustomArt(_loc8_[0],_loc8_[1]);
               _loc4_._SafeStr_301.push(_loc9_);
            }
            else if(!_loc6_.indexOf("ColorSwap"))
            {
               _loc10_ = _loc5_.toString();
               _loc11_ = _loc10_.split("=");
               if(_loc11_.length != 2)
               {
                  _SafeCls_22._SafeStr_135("Color not in format OLDCOLOR=NEWCOLOR : " + _loc10_ + " in file " + _loc4_._SafeStr_228);
               }
               _loc12_ = _loc11_[0];
               _loc13_ = _loc12_.charAt(0) != "0" ? uint(_SafeStr_1220[_loc12_]) : uint(_loc12_);
               _loc14_ = _loc11_[1];
               _loc15_ = _loc14_.charAt(0) != "0" ? uint(_SafeStr_1220[_loc14_]) : uint(_loc14_);
               _loc4_._SafeStr_254.push(new ColorSwap(_loc13_,_loc15_,param3));
            }
         }
         if(Boolean(_loc4_._SafeStr_686) && _loc4_._SafeStr_686.indexOf("a_ShadowSpirit") != -1)
         {
            _loc4_._SafeStr_1113 = true;
         }
         _loc4_._SafeStr_911 = Boolean(_loc4_._SafeStr_180) && !_loc4_._SafeStr_180.indexOf("a_Sign");
         return _loc4_;
      }
      
      public static function _SafeStr_299(param1:XML, param2:GfxType, param3:int = 0) : GfxType
      {
         if(param1.children().length() > 0)
         {
            if(!param2)
            {
               param2 = new GfxType();
            }
            return GfxType._SafeStr_3513(param1,param2,param3);
         }
         return param2;
      }
      
      public static function _SafeStr_1448(param1:GfxType, param2:XML) : Vector.<GfxType>
      {
         var _loc3_:Array = param1._SafeStr_180.split("_");
         var _loc4_:int = _loc3_.length - 3;
         if(_loc4_ < 0 || _loc3_[_loc4_] != "Random")
         {
            return null;
         }
         var _loc5_:uint = uint(_loc3_[_loc4_ + 1]);
         var _loc6_:uint = uint(_loc3_[_loc4_ + 2]);
         if(!_loc5_ || !_loc6_)
         {
            _SafeCls_22._SafeStr_135("Start and End Index of a Random Fire Gfx must be nonzero: " + param1._SafeStr_180);
         }
         if(_loc5_ >= _loc6_)
         {
            _SafeCls_22._SafeStr_135("Start Index must be less than the End Index of a Random Fire Gfx: " + param1._SafeStr_180);
         }
         _loc3_.splice(_loc4_,3);
         var _loc7_:Vector.<GfxType> = new Vector.<GfxType>();
         var _loc8_:String = _loc3_.join("_");
         while(_loc5_ <= _loc6_)
         {
            param1._SafeStr_180 = _loc8_ + (_loc5_ < 10 ? "0" : "") + _loc5_;
            _loc7_.push(param1);
            param1 = GfxType._SafeStr_299(param2,null);
            _loc5_++;
         }
         _loc7_.fixed = true;
         return _loc7_;
      }
      
      public static function _SafeStr_3518(param1:GfxType, param2:XML) : Vector.<GfxType>
      {
         var _loc3_:Array = param1._SafeStr_180.split("_");
         var _loc4_:int = _loc3_.length - 3;
         if(_loc4_ < 0 || _loc3_[_loc4_] != "Sequence")
         {
            return null;
         }
         var _loc5_:uint = uint(_loc3_[_loc4_ + 1]);
         var _loc6_:uint = uint(_loc3_[_loc4_ + 2]);
         if(!_loc5_ || !_loc6_)
         {
            _SafeCls_22._SafeStr_135("Start and End Index of a Sequence Fire Gfx must be nonzero: " + param1._SafeStr_180);
         }
         if(_loc5_ >= _loc6_)
         {
            _SafeCls_22._SafeStr_135("Start Index must be less than the End Index of a Sequence Fire Gfx: " + param1._SafeStr_180);
         }
         _loc3_.splice(_loc4_,3);
         var _loc7_:Vector.<GfxType> = new Vector.<GfxType>();
         var _loc8_:String = _loc3_.join("_");
         while(_loc5_ <= _loc6_)
         {
            param1._SafeStr_180 = _loc8_ + (_loc5_ < 10 ? "0" : "") + _loc5_;
            _loc7_.push(param1);
            param1 = GfxType._SafeStr_299(param2,null);
            _loc5_++;
         }
         _loc7_.fixed = true;
         return _loc7_;
      }
      
      public static function _SafeStr_3028(param1:GfxType, param2:XML) : GfxType
      {
         var _loc3_:Array = param1._SafeStr_180.split(",");
         if(_loc3_.length <= 1)
         {
            return null;
         }
         var _loc4_:GfxType = GfxType._SafeStr_299(param2,null);
         _loc4_._SafeStr_180 = _loc3_[1];
         param1._SafeStr_180 = _loc3_[0];
         return _loc4_;
      }
      
      public static function _SafeStr_1789(param1:GfxType, param2:XML) : GfxType
      {
         var _loc3_:Array = param1._SafeStr_180.split("_");
         var _loc4_:uint = _loc3_.length - 1;
         if(_loc3_[_loc4_] == "Both")
         {
            _loc3_.splice(_loc4_,1);
            var _loc5_:String = _loc3_.join("_");
            param1._SafeStr_180 = "null_Front";
            var _loc6_:GfxType = GfxType._SafeStr_299(param2,null);
            _loc6_._SafeStr_180 = "null_Rear";
            return null;
         }
         return null;
      }
      
      public function _SafeStr_3259() : String
      {
         var _loc2_:CustomArt = null;
         var _loc3_:ColorSwap = null;
         var _loc1_:String = this._SafeStr_228 + this._SafeStr_180 + this.animScale + this.moveAnimSpeed;
         for each(_loc2_ in this._SafeStr_301)
         {
            _loc1_ += _loc2_.fileName + _loc2_.setName;
         }
         for each(_loc3_ in this._SafeStr_254)
         {
            _loc1_ += _loc3_._SafeStr_1223 + ":" + _loc3_._SafeStr_1176 + ":" + _loc3_._SafeStr_966;
         }
         _loc1_ += this._SafeStr_875;
         _loc1_ += this.baseAnim;
         _loc1_ += this._SafeStr_1166;
         _loc1_ += this._SafeStr_686;
         _loc1_ += this._SafeStr_1755;
         _loc1_ += this._SafeStr_911;
         _loc1_ += this._SafeStr_290;
         _loc1_ += this._SafeStr_756;
         _loc1_ += this._SafeStr_1141;
         _loc1_ += this._SafeStr_1768;
         _loc1_ += this._SafeStr_789;
         return _loc1_ + this._SafeStr_802;
      }
      
      public function _SafeStr_3758() : void
      {
      }
      
      public function GetDuplicate() : GfxType
      {
         var _loc1_:GfxType = new GfxType();
         _loc1_._SafeStr_228 = this._SafeStr_228;
         _loc1_._SafeStr_180 = this._SafeStr_180;
         _loc1_.animScale = this.animScale;
         _loc1_.moveAnimSpeed = this.moveAnimSpeed;
         _loc1_._SafeStr_301 = this._SafeStr_301.slice();
         _loc1_._SafeStr_254 = this._SafeStr_254.slice();
         _loc1_._SafeStr_875 = this._SafeStr_875;
         _loc1_.baseAnim = this.baseAnim;
         _loc1_._SafeStr_1166 = this._SafeStr_1166;
         _loc1_._SafeStr_686 = this._SafeStr_686;
         _loc1_._SafeStr_1755 = this._SafeStr_1755;
         _loc1_._SafeStr_911 = this._SafeStr_911;
         _loc1_._SafeStr_290 = this._SafeStr_290;
         _loc1_._SafeStr_756 = this._SafeStr_756;
         _loc1_._SafeStr_1017 = this._SafeStr_1017;
         _loc1_._SafeStr_1141 = this._SafeStr_1141;
         _loc1_._SafeStr_1113 = this._SafeStr_1113;
         _loc1_._SafeStr_1768 = this._SafeStr_1768;
         _loc1_._SafeStr_833 = this._SafeStr_833;
         _loc1_._SafeStr_789 = this._SafeStr_789;
         _loc1_._SafeStr_639 = this._SafeStr_639;
         _loc1_._SafeStr_802 = this._SafeStr_802;
         return _loc1_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_180 = "_-az"
 * @identifier _SafeStr_185 = "_-im"
 * @identifier _SafeStr_228 = "_-QK"
 * @identifier _SafeStr_254 = "_-H5"
 * @identifier _SafeStr_290 = "_-lH"
 * @identifier _SafeStr_299 = "_-e3"
 * @identifier _SafeStr_301 = "_-4c"
 * @identifier _SafeStr_639 = "_-Rg"
 * @identifier _SafeStr_686 = "_-LF"
 * @identifier _SafeStr_756 = "_-Xc"
 * @identifier _SafeStr_789 = "_-72"
 * @identifier _SafeStr_802 = "_-Dw"
 * @identifier _SafeStr_833 = "_-05"
 * @identifier _SafeStr_873 = "_-VZ"
 * @identifier _SafeStr_875 = "_-cK"
 * @identifier _SafeStr_911 = "_-48"
 * @identifier _SafeStr_966 = "_-Cn"
 * @identifier _SafeStr_975 = "_-W3"
 * @identifier _SafeStr_1017 = "_-TI"
 * @identifier _SafeStr_1110 = "_-D4"
 * @identifier _SafeStr_1113 = "_-wI"
 * @identifier _SafeStr_1141 = "_-Vx"
 * @identifier _SafeStr_1166 = "_-sZ"
 * @identifier _SafeStr_1176 = "_-dT"
 * @identifier _SafeStr_1220 = "_-kk"
 * @identifier _SafeStr_1223 = "_-Ih"
 * @identifier _SafeStr_1448 = "_-4K"
 * @identifier _SafeStr_1755 = "_-67"
 * @identifier _SafeStr_1768 = "_-SM"
 * @identifier _SafeStr_1789 = "_-2O"
 * @identifier _SafeStr_3028 = "_-LL"
 * @identifier _SafeStr_3259 = "_-L5"
 * @identifier _SafeStr_3513 = "_-0p"
 * @identifier _SafeStr_3518 = "_-Sp"
 * @identifier _SafeStr_3604 = "_-nA"
 * @identifier _SafeStr_3758 = "dynamic"
 */
