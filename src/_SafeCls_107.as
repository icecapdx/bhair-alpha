package
{
   import flash.utils.ByteArray;
   
   public class _SafeCls_107
   {
      
      public static const _SafeStr_451:Array = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","+","/"];
      
      private static const _SafeStr_2225:Array = [1116352408,1899447441,3049323471,3921009573,961987163,1508970993,2453635748,2870763221,3624381080,310598401,607225278,1426881987,1925078388,2162078206,2614888103,3248222580,3835390401,4022224774,264347078,604807628,770255983,1249150122,1555081692,1996064986,2554220882,2821834349,2952996808,3210313671,3336571891,3584528711,113926993,338241895,666307205,773529912,1294757372,1396182291,1695183700,1986661051,2177026350,2456956037,2730485921,2820302411,3259730800,3345764771,3516065817,3600352804,4094571909,275423344,430227734,506948616,659060556,883997877,958139571,1322822218,1537002063,1747873779,1955562222,2024104815,2227730452,2361852424,2428436474,2756734187,3204031479,3329325298];
      
      private static const _SafeStr_1008:Array = [3614090360,3905402710,606105819,3250441966,4118548399,1200080426,2821735955,4249261313,1770035416,2336552879,4294925233,2304563134,1804603682,4254626195,2792965006,1236535329,4129170786,3225465664,643717713,3921069994,3593408605,38016083,3634488961,3889429448,568446438,3275163606,4107603335,1163531501,2850285829,4243563512,1735328473,2368359562,4294588738,2272392833,1839030562,4259657740,2763975236,1272893353,4139469664,3200236656,681279174,3936430074,3572445317,76029189,3654602809,3873151461,530742520,3299628645,4096336452,1126891415,2878612391,4237533241,1700485571,2399980690,4293915773,2240044497,1873313359,4264355552,2734768916,1309151649,4149444226,3174756917,718787259,3951481745];
      
      private static const MD5_SHIFT_COUNT:Array = [7,12,17,22,7,12,17,22,7,12,17,22,7,12,17,22,5,9,14,20,5,9,14,20,5,9,14,20,5,9,14,20,4,11,16,23,4,11,16,23,4,11,16,23,4,11,16,23,6,10,15,21,6,10,15,21,6,10,15,21,6,10,15,21];
      
      private static const _SafeStr_2133:Array = [24,16,8,0];
      
      private static const _SafeStr_2329:Array = [0,8,16,24];
      
      public function _SafeCls_107()
      {
         super();
      }
      
      private static function _SafeStr_271(param1:uint, param2:uint) : uint
      {
         return param1 << 32 - param2 | param1 >>> param2;
      }
      
      private static function _SafeStr_744(param1:uint, param2:uint) : uint
      {
         return param1 << param2 | param1 >>> 32 - param2;
      }
      
      private static function _SafeStr_1498(param1:String, param2:Boolean) : Array
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:Array = null;
         if(param2)
         {
            _loc6_ = 0;
            _loc7_ = 1;
            _loc8_ = _SafeStr_2329;
         }
         else
         {
            _loc6_ = 1;
            _loc7_ = 0;
            _loc8_ = _SafeStr_2133;
         }
         var _loc9_:uint = 0;
         var _loc10_:uint = uint(param1.length);
         var _loc11_:uint = _loc10_ + 1;
         var _loc12_:Array = new Array();
         param1 += String.fromCharCode(128);
         while(_loc9_ < _loc11_)
         {
            _loc5_ = uint(param1.charCodeAt(_loc9_) & 0xFF);
            _loc4_ = uint(_loc8_[_loc9_ & 3]);
            _loc3_ = uint(_loc9_ >>> 2);
            _loc12_[_loc3_] |= _loc5_ << _loc4_;
            _loc9_++;
         }
         var _loc13_:uint = uint((_loc9_ + 7 & -64) + 56 >>> 2);
         _loc3_ += 1;
         while(_loc3_ < _loc13_)
         {
            _loc12_[_loc3_] = 0;
            _loc3_++;
         }
         _loc12_[_loc13_ + _loc6_] = _loc10_ << 3;
         _loc12_[_loc13_ + _loc7_] = _loc10_ >> 29;
         return _loc12_;
      }
      
      public static function _SafeStr_2885(param1:String) : String
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc16_:Array = null;
         var _loc17_:uint = 0;
         var _loc18_:uint = 0;
         var _loc19_:uint = 0;
         var _loc20_:uint = 0;
         var _loc21_:uint = 0;
         var _loc22_:uint = 0;
         var _loc23_:uint = 0;
         var _loc24_:uint = 0;
         var _loc25_:uint = 0;
         var _loc26_:uint = 0;
         var _loc27_:uint = 0;
         var _loc28_:uint = 0;
         var _loc29_:uint = 0;
         var _loc30_:uint = 0;
         var _loc31_:uint = 0;
         var _loc32_:uint = 0;
         var _loc33_:String = null;
         var _loc34_:uint = 0;
         var _loc4_:uint = 1779033703;
         var _loc5_:uint = 3144134277;
         var _loc6_:uint = 1013904242;
         var _loc7_:uint = 2773480762;
         var _loc8_:uint = 1359893119;
         var _loc9_:uint = 2600822924;
         var _loc10_:uint = 528734635;
         var _loc11_:uint = 1541459225;
         var _loc12_:Array = _SafeStr_1498(param1,false);
         var _loc13_:uint = _loc12_.length;
         _loc2_ = 0;
         while(_loc2_ < _loc13_)
         {
            _loc16_ = new Array();
            _loc3_ = 0;
            while(_loc3_ < 16)
            {
               _loc16_[_loc3_] = _loc12_[_loc2_ + _loc3_];
               _loc3_++;
            }
            _loc3_ = 16;
            while(_loc3_ < 64)
            {
               _loc25_ = uint(_SafeStr_271(_loc16_[_loc3_ - 15],7) ^ _SafeStr_271(_loc16_[_loc3_ - 15],18) ^ _loc16_[_loc3_ - 15] >>> 3);
               _loc26_ = uint(_SafeStr_271(_loc16_[_loc3_ - 2],17) ^ _SafeStr_271(_loc16_[_loc3_ - 2],19) ^ _loc16_[_loc3_ - 2] >>> 10);
               _loc16_[_loc3_] = _loc16_[_loc3_ - 16] + _loc25_ + _loc16_[_loc3_ - 7] + _loc26_;
               _loc3_++;
            }
            _loc17_ = _loc4_;
            _loc18_ = _loc5_;
            _loc19_ = _loc6_;
            _loc20_ = _loc7_;
            _loc21_ = _loc8_;
            _loc22_ = _loc9_;
            _loc23_ = _loc10_;
            _loc24_ = _loc11_;
            _loc3_ = 0;
            while(_loc3_ < 64)
            {
               _loc27_ = uint(_SafeStr_271(_loc17_,2) ^ _SafeStr_271(_loc17_,13) ^ _SafeStr_271(_loc17_,22));
               _loc28_ = uint(_loc17_ & _loc18_ ^ _loc17_ & _loc19_ ^ _loc18_ & _loc19_);
               _loc29_ = _loc27_ + _loc28_;
               _loc30_ = uint(_SafeStr_271(_loc21_,6) ^ _SafeStr_271(_loc21_,11) ^ _SafeStr_271(_loc21_,25));
               _loc31_ = uint(_loc21_ & _loc22_ ^ ~_loc21_ & _loc23_);
               _loc32_ = _loc24_ + _loc30_ + _loc31_ + _SafeStr_2225[_loc3_] + _loc16_[_loc3_];
               _loc24_ = _loc23_;
               _loc23_ = _loc22_;
               _loc22_ = _loc21_;
               _loc21_ = _loc20_ + _loc32_;
               _loc20_ = _loc19_;
               _loc19_ = _loc18_;
               _loc18_ = _loc17_;
               _loc17_ = _loc32_ + _loc29_;
               _loc3_++;
            }
            _loc4_ += _loc17_;
            _loc5_ += _loc18_;
            _loc6_ += _loc19_;
            _loc7_ += _loc20_;
            _loc8_ += _loc21_;
            _loc9_ += _loc22_;
            _loc10_ += _loc23_;
            _loc11_ += _loc24_;
            _loc2_ += 16;
         }
         var _loc14_:* = "";
         var _loc15_:Array = [_loc4_.toString(16),_loc5_.toString(16),_loc6_.toString(16),_loc7_.toString(16),_loc8_.toString(16),_loc9_.toString(16),_loc10_.toString(16),_loc11_.toString(16)];
         _loc2_ = 0;
         while(_loc2_ < 8)
         {
            _loc33_ = _loc15_[_loc2_];
            _loc34_ = 8 - _loc33_.length;
            _loc3_ = 0;
            while(_loc3_ < _loc34_)
            {
               _loc14_ += "0";
               _loc3_++;
            }
            _loc14_ += _loc33_;
            _loc2_++;
         }
         return _loc14_;
      }
      
      public static function MD5(param1:String) : String
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc15_:uint = 0;
         var _loc16_:uint = 0;
         var _loc17_:uint = 0;
         var _loc18_:uint = 0;
         var _loc19_:String = null;
         var _loc20_:uint = 0;
         var _loc7_:uint = 1732584193;
         var _loc8_:uint = 4023233417;
         var _loc9_:uint = 2562383102;
         var _loc10_:uint = 271733878;
         var _loc11_:Array = _SafeStr_1498(param1,true);
         var _loc12_:uint = _loc11_.length;
         _loc2_ = 0;
         while(_loc2_ < _loc12_)
         {
            _loc15_ = _loc7_;
            _loc16_ = _loc8_;
            _loc17_ = _loc9_;
            _loc18_ = _loc10_;
            _loc3_ = 0;
            while(_loc3_ < 16)
            {
               _loc4_ = uint(_loc16_ & _loc17_ | ~_loc16_ & _loc18_);
               _loc5_ = _loc3_;
               _loc6_ = _loc18_;
               _loc18_ = _loc17_;
               _loc17_ = _loc16_;
               _loc16_ += _SafeStr_744(_loc15_ + _loc4_ + _SafeStr_1008[_loc3_] + _loc11_[_loc5_ + _loc2_],MD5_SHIFT_COUNT[_loc3_]);
               _loc15_ = _loc6_;
               _loc3_++;
            }
            _loc3_ = 16;
            while(_loc3_ < 32)
            {
               _loc4_ = uint(_loc18_ & _loc16_ | ~_loc18_ & _loc17_);
               _loc5_ = uint(5 * _loc3_ + 1 & 0x0F);
               _loc6_ = _loc18_;
               _loc18_ = _loc17_;
               _loc17_ = _loc16_;
               _loc16_ += _SafeStr_744(_loc15_ + _loc4_ + _SafeStr_1008[_loc3_] + _loc11_[_loc5_ + _loc2_],MD5_SHIFT_COUNT[_loc3_]);
               _loc15_ = _loc6_;
               _loc3_++;
            }
            _loc3_ = 32;
            while(_loc3_ < 48)
            {
               _loc4_ = uint(_loc16_ ^ _loc17_ ^ _loc18_);
               _loc5_ = uint(3 * _loc3_ + 5 & 0x0F);
               _loc6_ = _loc18_;
               _loc18_ = _loc17_;
               _loc17_ = _loc16_;
               _loc16_ += _SafeStr_744(_loc15_ + _loc4_ + _SafeStr_1008[_loc3_] + _loc11_[_loc5_ + _loc2_],MD5_SHIFT_COUNT[_loc3_]);
               _loc15_ = _loc6_;
               _loc3_++;
            }
            _loc3_ = 48;
            while(_loc3_ < 64)
            {
               _loc4_ = uint(_loc17_ ^ (_loc16_ | ~_loc18_));
               _loc5_ = uint(7 * _loc3_ & 0x0F);
               _loc6_ = _loc18_;
               _loc18_ = _loc17_;
               _loc17_ = _loc16_;
               _loc16_ += _SafeStr_744(_loc15_ + _loc4_ + _SafeStr_1008[_loc3_] + _loc11_[_loc5_ + _loc2_],MD5_SHIFT_COUNT[_loc3_]);
               _loc15_ = _loc6_;
               _loc3_++;
            }
            _loc7_ += _loc15_;
            _loc8_ += _loc16_;
            _loc9_ += _loc17_;
            _loc10_ += _loc18_;
            _loc2_ += 16;
         }
         var _loc14_:Array = [_loc7_.toString(16),_loc8_.toString(16),_loc9_.toString(16),_loc10_.toString(16)];
         _loc2_ = 0;
         while(_loc2_ < 4)
         {
            _loc19_ = _loc14_[_loc2_];
            _loc20_ = 8 - _loc19_.length;
            _loc3_ = 0;
            while(_loc3_ < _loc20_)
            {
               _loc19_ = "0" + _loc19_;
               _loc3_++;
            }
            var _loc13_:String = "" + (_loc19_.substr(6,2) + _loc19_.substr(4,2) + _loc19_.substr(2,2) + _loc19_.substr(0,2));
            _loc2_++;
         }
         return "";
      }
      
      public static function _SafeStr_3717(param1:ByteArray) : String
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc2_:String = "";
         var _loc10_:uint = param1.length;
         var _loc11_:uint = _loc10_ / 3;
         _loc4_ = 0;
         while(_loc4_ < _loc11_)
         {
            _loc3_ = uint(param1[_loc5_] << 16);
            _loc3_ += param1[_loc5_ + 1] << 8;
            _loc3_ += param1[_loc5_ + 2];
            _loc6_ = uint(_loc3_ >> 18 & 0x3F);
            _loc7_ = uint(_loc3_ >> 12 & 0x3F);
            _loc8_ = uint(_loc3_ >> 6 & 0x3F);
            _loc9_ = uint(_loc3_ & 0x3F);
            _loc2_ += _SafeStr_451[_loc6_] + _SafeStr_451[_loc7_] + _SafeStr_451[_loc8_] + _SafeStr_451[_loc9_];
            _loc4_++;
            _loc5_ += 3;
         }
         var _loc12_:uint = _loc10_ - _loc11_ * 3;
         if(_loc12_ == 2)
         {
            _loc3_ = uint(param1[_loc5_] << 16);
            _loc3_ += param1[_loc5_ + 1] << 8;
            _loc6_ = uint(_loc3_ >> 18 & 0xFF);
            _loc7_ = uint(_loc3_ >> 12 & 0xFF);
            _loc8_ = uint(_loc3_ >> 6 & 0xFF);
            _loc2_ += _SafeStr_451[_loc6_] + _SafeStr_451[_loc7_] + _SafeStr_451[_loc8_] + "=";
         }
         else if(_loc12_ == 1)
         {
            _loc3_ = uint(param1[_loc5_] << 16);
            _loc6_ = uint(_loc3_ >> 18 & 0xFF);
            _loc7_ = uint(_loc3_ >> 12 & 0xFF);
            _loc2_ += _SafeStr_451[_loc6_] + _SafeStr_451[_loc7_] + "==";
         }
         return _loc2_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_107 = "_-Rz"
 * @identifier _SafeStr_271 = "_-HG"
 * @identifier _SafeStr_451 = "_-Qf"
 * @identifier _SafeStr_744 = "_-gc"
 * @identifier _SafeStr_1008 = "_-X5"
 * @identifier _SafeStr_1498 = "_-Wj"
 * @identifier _SafeStr_2133 = "_-N9"
 * @identifier _SafeStr_2225 = "_-LY"
 * @identifier _SafeStr_2329 = "_-Xi"
 * @identifier _SafeStr_2885 = "_-8w"
 * @identifier _SafeStr_3717 = "_-4W"
 */
