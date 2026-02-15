package
{
   import flash.utils.ByteArray;
   
   public class _SafeCls_77
   {
      
      internal var type:int;
      
      internal var _SafeStr_183:_SafeCls_108;
      
      public function _SafeCls_77(param1:int, param2:ByteArray = null)
      {
         super();
         this.type = param1;
         this._SafeStr_183 = new _SafeCls_108(param2);
      }
      
      public static function _SafeStr_1602(param1:uint) : uint
      {
         var _loc2_:uint = 1;
         while(true)
         {
            param1 = uint(param1 >>> 1);
            if(!param1)
            {
               break;
            }
            _loc2_++;
         }
         return _loc2_;
      }
      
      public function _SafeStr_3618() : uint
      {
         return this._SafeStr_183._SafeStr_2956();
      }
      
      public function _SafeStr_187() : Boolean
      {
         return !!this._SafeStr_183._SafeStr_362(1);
      }
      
      public function _SafeStr_3589() : String
      {
         return this._SafeStr_183._SafeStr_3349();
      }
      
      public function _SafeStr_3644() : uint
      {
         return this._SafeStr_183._SafeStr_3264();
      }
      
      public function _SafeStr_3727() : int
      {
         if(this._SafeStr_183._SafeStr_362(1))
         {
            return -this._SafeStr_320();
         }
         return this._SafeStr_320();
      }
      
      public function _SafeStr_777() : int
      {
         if(this._SafeStr_183._SafeStr_362(1))
         {
            return -this._SafeStr_128();
         }
         return this._SafeStr_128();
      }
      
      public function _SafeStr_320() : uint
      {
         var _loc1_:uint = this._SafeStr_183._SafeStr_362(3);
         var _loc2_:uint = uint(_loc1_ + 1 << 1);
         return this._SafeStr_183._SafeStr_362(_loc2_);
      }
      
      public function _SafeStr_128() : uint
      {
         var _loc1_:uint = this._SafeStr_183._SafeStr_362(4);
         var _loc2_:uint = uint(_loc1_ + 1 << 1);
         return this._SafeStr_183._SafeStr_362(_loc2_);
      }
      
      public function ReceiveUnsignedInt64() : String
      {
         var _loc1_:uint = this._SafeStr_183._SafeStr_362(5);
         var _loc2_:uint = uint(_loc1_ + 1 << 1);
         var _loc3_:* = _loc2_.toString() + ":";
         if(_loc2_ <= 32)
         {
            _loc3_ += "0:" + this._SafeStr_183._SafeStr_362(_loc2_).toString();
         }
         else
         {
            _loc3_ += this._SafeStr_183._SafeStr_362(_loc2_ - 32).toString() + ":";
            _loc3_ += this._SafeStr_183._SafeStr_362(32).toString();
         }
         return _loc3_;
      }
      
      public function _SafeStr_167() : Number
      {
         return this._SafeStr_183._SafeStr_3545();
      }
      
      public function _SafeStr_210() : String
      {
         return this._SafeStr_183._SafeStr_3515();
      }
      
      public function _SafeStr_1169(param1:uint) : uint
      {
         return this._SafeStr_183._SafeStr_362(param1);
      }
      
      public function _SafeStr_206(param1:Boolean) : void
      {
         this._SafeStr_183._SafeStr_309(1,param1 ? uint(1) : 0);
      }
      
      public function _SafeStr_3735(param1:String) : void
      {
         this._SafeStr_183._SafeStr_3482(param1);
      }
      
      public function _SafeStr_3364(param1:uint) : void
      {
         this._SafeStr_183._SafeStr_3258(param1);
      }
      
      public function _SafeStr_3020(param1:int) : void
      {
         if(param1 < 0)
         {
            this._SafeStr_183._SafeStr_309(1,1);
            this._SafeStr_784(-param1);
         }
         else
         {
            this._SafeStr_183._SafeStr_309(1,0);
            this._SafeStr_784(param1);
         }
      }
      
      public function _SafeStr_1045(param1:int) : void
      {
         if(param1 < 0)
         {
            this._SafeStr_183._SafeStr_309(1,1);
            this._SafeStr_146(-param1);
         }
         else
         {
            this._SafeStr_183._SafeStr_309(1,0);
            this._SafeStr_146(param1);
         }
      }
      
      public function _SafeStr_784(param1:uint) : void
      {
         var _loc2_:uint = _SafeStr_1602(param1);
         var _loc3_:uint = _loc2_ + (_loc2_ & 1);
         var _loc4_:uint = (_loc3_ >>> 1) - 1;
         this._SafeStr_183._SafeStr_309(3,_loc4_);
         this._SafeStr_183._SafeStr_309(_loc3_,param1);
      }
      
      public function _SafeStr_146(param1:uint) : void
      {
         var _loc2_:uint = _SafeStr_1602(param1);
         var _loc3_:uint = _loc2_ + (_loc2_ & 1);
         var _loc4_:uint = (_loc3_ >>> 1) - 1;
         this._SafeStr_183._SafeStr_309(4,_loc4_);
         this._SafeStr_183._SafeStr_309(_loc3_,param1);
      }
      
      public function SendUnsignedInt64(param1:String) : void
      {
         var _loc2_:Array = param1.split(":");
         var _loc3_:uint = uint(_loc2_[0]);
         var _loc4_:uint = (_loc3_ >>> 1) - 1;
         var _loc5_:uint = uint(_loc2_[1]);
         var _loc6_:uint = uint(_loc2_[2]);
         this._SafeStr_183._SafeStr_309(5,_loc4_);
         if(_loc3_ <= 32)
         {
            this._SafeStr_183._SafeStr_309(_loc3_,_loc6_);
         }
         else
         {
            this._SafeStr_183._SafeStr_309(_loc3_ - 32,_loc5_);
            this._SafeStr_183._SafeStr_309(32,_loc6_);
         }
      }
      
      public function _SafeStr_172(param1:Number) : void
      {
         this._SafeStr_183._SafeStr_3273(param1);
      }
      
      public function _SafeStr_279(param1:String) : void
      {
         this._SafeStr_183._SafeStr_3437(param1 ? param1 : "");
      }
      
      public function _SafeStr_2940(param1:uint, param2:uint) : void
      {
         this._SafeStr_183._SafeStr_309(param1,param2);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeCls_108 = "_-lL"
 * @identifier _SafeStr_128 = "_-wc"
 * @identifier _SafeStr_146 = "_-jy"
 * @identifier _SafeStr_167 = "_-BC"
 * @identifier _SafeStr_172 = "_-25"
 * @identifier _SafeStr_183 = "_-DI"
 * @identifier _SafeStr_187 = "_-Jn"
 * @identifier _SafeStr_206 = "_-pe"
 * @identifier _SafeStr_210 = "_-PN"
 * @identifier _SafeStr_279 = "_-CT"
 * @identifier _SafeStr_309 = "_-Ap"
 * @identifier _SafeStr_320 = "_-9b"
 * @identifier _SafeStr_362 = "_-3J"
 * @identifier _SafeStr_777 = "_-iN"
 * @identifier _SafeStr_784 = "_-Tk"
 * @identifier _SafeStr_1045 = "_-AQ"
 * @identifier _SafeStr_1169 = "_-Mx"
 * @identifier _SafeStr_1602 = "_-80"
 * @identifier _SafeStr_2940 = "_-ri"
 * @identifier _SafeStr_2956 = "_-Mu"
 * @identifier _SafeStr_3020 = "_-C-"
 * @identifier _SafeStr_3258 = "_-C0"
 * @identifier _SafeStr_3264 = "_-oH"
 * @identifier _SafeStr_3273 = "_-JY"
 * @identifier _SafeStr_3349 = "_-fr"
 * @identifier _SafeStr_3364 = "_-hC"
 * @identifier _SafeStr_3437 = "_-Dh"
 * @identifier _SafeStr_3482 = "_-jg"
 * @identifier _SafeStr_3515 = "_-ee"
 * @identifier _SafeStr_3545 = "_-Tz"
 * @identifier _SafeStr_3589 = "_-3X"
 * @identifier _SafeStr_3618 = "_-4l"
 * @identifier _SafeStr_3644 = "_-Ew"
 * @identifier _SafeStr_3727 = "_-y"
 * @identifier _SafeStr_3735 = "_-K8"
 */
