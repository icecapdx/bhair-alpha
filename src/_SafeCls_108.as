package
{
   import flash.utils.ByteArray;
   
   public class _SafeCls_108
   {
      
      public static const _SafeStr_1800:Vector.<uint> = Vector.<uint>([0,1,3,7,15,31,63,127,255,511,1023,2047,4095,8191,16383,32767,65535,131071,262143,524287,1048575,2097151,4194303,8388607,16777215,33554431,67108863,134217727,268435455,536870911,1073741823,2147483647,4294967295]);
      
      internal var _SafeStr_384:ByteArray;
      
      internal var _SafeStr_677:uint = 0;
      
      internal var _SafeStr_611:uint = 0;
      
      public function _SafeCls_108(param1:ByteArray = null)
      {
         super();
         this._SafeStr_384 = param1 ? param1 : new ByteArray();
      }
      
      public function _SafeStr_2956() : uint
      {
         return this._SafeStr_611 + 7 >>> 3;
      }
      
      public function _SafeStr_309(param1:uint, param2:uint) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         while(param1)
         {
            _loc3_ = uint(this._SafeStr_611 >>> 3);
            _loc4_ = uint(this._SafeStr_611 & 7);
            _loc5_ = 8 - _loc4_;
            _loc6_ = param1 < _loc5_ ? param1 : _loc5_;
            _loc7_ = uint((param2 & _SafeStr_1800[param1]) >>> param1 - _loc6_);
            this._SafeStr_384[_loc3_] |= _loc7_ << _loc5_ - _loc6_;
            param1 -= _loc6_;
            this._SafeStr_611 += _loc6_;
         }
      }
      
      public function _SafeStr_362(param1:uint) : uint
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         while(param1)
         {
            _loc2_ = uint(this._SafeStr_677 >>> 3);
            _loc3_ = uint(this._SafeStr_677 & 7);
            _loc4_ = 8 - _loc3_;
            _loc5_ = param1 < _loc4_ ? param1 : _loc4_;
            _loc6_ = uint((this._SafeStr_384[_loc2_] & _SafeStr_1800[_loc4_]) >>> _loc4_ - _loc5_);
            _loc7_ |= _loc6_ << param1 - _loc5_;
            param1 -= _loc5_;
            this._SafeStr_677 += _loc5_;
         }
         return _loc7_;
      }
      
      public function _SafeStr_1364(param1:ByteArray) : void
      {
         var _loc2_:uint = 0;
         var _loc7_:uint = 0;
         var _loc3_:uint = param1.length;
         var _loc4_:uint = uint(_loc3_ << 3);
         var _loc5_:uint = uint(this._SafeStr_611 >>> 3);
         var _loc6_:uint = uint(this._SafeStr_611 & 7);
         if(!_loc6_)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc3_)
            {
               var _loc8_:*;
               this._SafeStr_384[_loc8_ = _loc5_++] = param1[_loc2_];
               _loc2_++;
            }
         }
         else
         {
            _loc7_ = 8 - _loc6_;
            _loc2_ = 0;
            while(_loc2_ < _loc3_)
            {
               this._SafeStr_384[_loc8_ = _loc5_++] = this._SafeStr_384[_loc8_] | param1[_loc2_] >>> _loc6_;
               this._SafeStr_384[_loc5_] |= param1[_loc2_] << _loc7_;
               _loc2_++;
            }
         }
         this._SafeStr_611 += _loc4_;
      }
      
      public function _SafeStr_1408(param1:uint) : ByteArray
      {
         var _loc3_:uint = 0;
         var _loc7_:uint = 0;
         var _loc2_:ByteArray = new ByteArray();
         var _loc4_:uint = uint(param1 << 3);
         var _loc5_:uint = uint(this._SafeStr_677 >>> 3);
         var _loc6_:uint = uint(this._SafeStr_677 & 7);
         if(!_loc6_)
         {
            _loc3_ = 0;
            while(_loc3_ < param1)
            {
               _loc2_[_loc3_] = this._SafeStr_384[_loc5_++];
               _loc3_++;
            }
         }
         else
         {
            _loc7_ = 8 - _loc6_;
            _loc3_ = 0;
            while(_loc3_ < param1)
            {
               _loc2_[_loc3_] = this._SafeStr_384[_loc5_++] << _loc6_;
               _loc2_[_loc3_] |= this._SafeStr_384[_loc5_] >>> _loc7_;
               _loc3_++;
            }
         }
         this._SafeStr_677 += _loc4_;
         return _loc2_;
      }
      
      public function _SafeStr_3482(param1:String) : void
      {
         this._SafeStr_309(8,param1.charCodeAt(0));
      }
      
      public function _SafeStr_3258(param1:uint) : void
      {
         this._SafeStr_309(8,param1);
      }
      
      public function _SafeStr_3253(param1:uint) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeShort(param1);
         this._SafeStr_1364(_loc2_);
      }
      
      public function _SafeStr_3611(param1:uint) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeInt(param1);
         this._SafeStr_1364(_loc2_);
      }
      
      public function _SafeStr_3273(param1:Number) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeFloat(param1);
         this._SafeStr_1364(_loc2_);
      }
      
      public function _SafeStr_3437(param1:String) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(param1);
         var _loc3_:uint = _loc2_.length;
         if(_loc3_ > 65535)
         {
            _loc3_ = 65535;
         }
         this._SafeStr_3253(_loc3_);
         this._SafeStr_1364(_loc2_);
      }
      
      public function _SafeStr_3349() : String
      {
         return String.fromCharCode(this._SafeStr_362(8));
      }
      
      public function _SafeStr_3264() : uint
      {
         return this._SafeStr_362(8);
      }
      
      public function _SafeStr_3462() : uint
      {
         var _loc1_:ByteArray = this._SafeStr_1408(2);
         return _loc1_.readShort();
      }
      
      public function _SafeStr_3703() : uint
      {
         var _loc1_:ByteArray = this._SafeStr_1408(4);
         return _loc1_.readInt();
      }
      
      public function _SafeStr_3545() : Number
      {
         var _loc1_:ByteArray = this._SafeStr_1408(4);
         return _loc1_.readFloat();
      }
      
      public function _SafeStr_3515() : String
      {
         var _loc1_:uint = this._SafeStr_3462();
         var _loc2_:ByteArray = this._SafeStr_1408(_loc1_);
         return _loc2_.readUTFBytes(_loc1_);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_108 = "_-lL"
 * @identifier _SafeStr_309 = "_-Ap"
 * @identifier _SafeStr_362 = "_-3J"
 * @identifier _SafeStr_384 = "_-ea"
 * @identifier _SafeStr_611 = "_-qL"
 * @identifier _SafeStr_677 = "_-UB"
 * @identifier _SafeStr_1364 = "_-9M"
 * @identifier _SafeStr_1408 = "_-Nw"
 * @identifier _SafeStr_1800 = "_-V"
 * @identifier _SafeStr_2956 = "_-Mu"
 * @identifier _SafeStr_3253 = "_-rf"
 * @identifier _SafeStr_3258 = "_-C0"
 * @identifier _SafeStr_3264 = "_-oH"
 * @identifier _SafeStr_3273 = "_-JY"
 * @identifier _SafeStr_3349 = "_-fr"
 * @identifier _SafeStr_3437 = "_-Dh"
 * @identifier _SafeStr_3462 = "_-0x"
 * @identifier _SafeStr_3482 = "_-jg"
 * @identifier _SafeStr_3515 = "_-ee"
 * @identifier _SafeStr_3545 = "_-Tz"
 * @identifier _SafeStr_3611 = "_-Jq"
 * @identifier _SafeStr_3703 = "_-GX"
 */
