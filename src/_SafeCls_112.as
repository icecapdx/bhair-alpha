package
{
   public class _SafeCls_112
   {
      
      public static const _SafeStr_2914:uint = 0;
      
      public static const _SafeStr_1120:uint = 1;
      
      public static const _SafeStr_482:uint = 2;
      
      public static const _SafeStr_1317:uint = 3;
      
      public static const _SafeStr_1681:uint = 4;
      
      public static const _SafeStr_1111:uint = 65535;
      
      public static const _SafeStr_2353:uint = 16;
      
      public static const _SafeStr_2127:uint = 17;
      
      public static const _SafeStr_2193:uint = 18;
      
      public var _SafeStr_2407:uint;
      
      public var mPosX:Number;
      
      public var mPosY:Number;
      
      public var _SafeStr_1001:Vector.<uint>;
      
      public var mNodeType:uint;
      
      public var _SafeStr_1806:uint;
      
      public function _SafeCls_112(param1:uint, param2:Number, param3:Number, param4:uint)
      {
         super();
         this._SafeStr_2407 = param1;
         this.mPosX = param2;
         this.mPosY = param3;
         this.mNodeType = param4;
         this._SafeStr_1001 = new Vector.<uint>();
      }
      
      public function _SafeStr_3017() : void
      {
         this._SafeStr_1001 = null;
      }
      
      public function _SafeStr_3291(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:uint = uint(param1 | uint(param2) << _SafeStr_2353 | uint(param3) << _SafeStr_2127 | uint(param4) << _SafeStr_2193);
         this._SafeStr_1001.push(_loc5_);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_112 = "_-Pl"
 * @identifier _SafeStr_482 = "_-wA"
 * @identifier _SafeStr_1001 = "_-dv"
 * @identifier _SafeStr_1111 = "_-5R"
 * @identifier _SafeStr_1120 = "true "
 * @identifier _SafeStr_1317 = "_-To"
 * @identifier _SafeStr_1681 = "_-AN"
 * @identifier _SafeStr_1806 = "_-pB"
 * @identifier _SafeStr_2127 = "_-Ll"
 * @identifier _SafeStr_2193 = "_-ZX"
 * @identifier _SafeStr_2353 = "_-Lv"
 * @identifier _SafeStr_2407 = "_-Pf"
 * @identifier _SafeStr_2914 = "_-iY"
 * @identifier _SafeStr_3017 = "_-oD"
 * @identifier _SafeStr_3291 = "_-v7"
 */
