package
{
   public class _SafeCls_1
   {
      
      public static var flags:uint;
      
      public static var _SafeStr_2154:String;
      
      public static var _SafeStr_3199:String;
      
      public static var _SafeStr_2872:String;
      
      public static const _SafeStr_1356:uint = 1;
      
      public static const _SafeStr_2585:uint = 2;
      
      public static const _SafeStr_1818:uint = 4;
      
      public static const _SafeStr_740:uint = 8;
      
      public static const _SafeStr_1377:uint = 16;
      
      public static const _SafeStr_1224:uint = 32;
      
      public static const _SafeStr_1022:uint = 64;
      
      public static const _SafeStr_2391:uint = 128;
      
      public static const _SafeStr_1934:uint = 256;
      
      public static const _SafeStr_1882:uint = 512;
      
      public static const _SafeStr_2400:uint = 1024;
      
      public static const _SafeStr_1908:uint = 2048;
      
      public static const _SafeStr_2777:uint = 4096;
      
      public static const _SafeStr_1221:uint = 8192;
      
      public static const _SafeStr_2788:uint = 16384;
      
      public static const _SafeStr_2660:uint = 32768;
      
      public static const _SafeStr_2202:uint = 65536;
      
      public static const _SafeStr_2163:uint = 131072;
      
      public static const _SafeStr_1864:uint = 262144;
      
      public static const _SafeStr_2853:uint = 524288;
      
      public static const _SafeStr_1491:uint = 1048576;
      
      public static const _SafeStr_1860:uint = 2097152;
      
      public static const _SafeStr_2090:uint = 4194304;
      
      public static var _SafeStr_1379:String = "127.0.0.1";
      
      public function _SafeCls_1()
      {
         super();
      }
      
      public static function _SafeStr_3470(param1:_SafeCls_21) : void
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc2_:XML = new XML(param1._SafeStr_520.data);
         for each(_loc3_ in _loc2_.*)
         {
            _loc4_ = _loc3_.name().toString().toUpperCase();
            if(_SafeCls_1[_loc4_])
            {
               _SafeCls_1.flags |= _SafeCls_1[_loc4_];
            }
            else if(_loc4_ == "DEFAULTLEVEL")
            {
               _SafeCls_1._SafeStr_2154 = _loc3_.attribute("value").toString();
            }
            else if(_loc4_ == "DEFAULTHERO")
            {
               _SafeCls_1._SafeStr_3199 = _loc3_.attribute("value").toString();
            }
            else if(_loc4_ == "DEFAULTGAMEMODE")
            {
               _SafeCls_1._SafeStr_2872 = _loc3_.attribute("value").toString();
            }
         }
      }
      
      public static function _SafeStr_2122() : void
      {
         if(flags)
         {
            _SafeCls_22._SafeStr_135("Cannot load this swf");
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_21 = "_-0r"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_520 = "_-ks"
 * @identifier _SafeStr_740 = "_-NB"
 * @identifier _SafeStr_1022 = "_-TA"
 * @identifier _SafeStr_1221 = "_-WY"
 * @identifier _SafeStr_1224 = "_-NJ"
 * @identifier _SafeStr_1356 = "_-4j"
 * @identifier _SafeStr_1377 = "_-DA"
 * @identifier _SafeStr_1379 = "_-1i"
 * @identifier _SafeStr_1491 = "else "
 * @identifier _SafeStr_1818 = "_-g4"
 * @identifier _SafeStr_1860 = "_-jz"
 * @identifier _SafeStr_1864 = "_-Ef"
 * @identifier _SafeStr_1882 = "_-BP"
 * @identifier _SafeStr_1908 = "_-Q2"
 * @identifier _SafeStr_1934 = "_-g3"
 * @identifier _SafeStr_2090 = "_-1P"
 * @identifier _SafeStr_2122 = "package"
 * @identifier _SafeStr_2154 = "_-3U"
 * @identifier _SafeStr_2163 = "_-my"
 * @identifier _SafeStr_2202 = "_-Px"
 * @identifier _SafeStr_2391 = "_-JN"
 * @identifier _SafeStr_2400 = "_-Lu"
 * @identifier _SafeStr_2585 = "throw"
 * @identifier _SafeStr_2660 = "_-qy"
 * @identifier _SafeStr_2777 = "_-uD"
 * @identifier _SafeStr_2788 = "_-Wa"
 * @identifier _SafeStr_2853 = "_-D1"
 * @identifier _SafeStr_2872 = "_-5F"
 * @identifier _SafeStr_3199 = "_-vh"
 * @identifier _SafeStr_3470 = "_-Gt"
 */
