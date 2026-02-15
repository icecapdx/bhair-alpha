package
{
   public class _SafeCls_67
   {
      
      private static var _SafeStr_171:uint = 0;
      
      public static const _SafeStr_2974:uint = ++_SafeStr_171;
      
      public static const _SafeStr_2523:uint = ++_SafeStr_171;
      
      public static const _SafeStr_2010:uint = ++_SafeStr_171;
      
      public static const _SafeStr_2161:uint = ++_SafeStr_171;
      
      public static const _SafeStr_2501:uint = ++_SafeStr_171;
      
      public static const _SafeStr_2516:uint = ++_SafeStr_171;
      
      public static const _SafeStr_2575:uint = ++_SafeStr_171;
      
      public static const _SafeStr_2665:uint = ++_SafeStr_171;
      
      public static const _SafeStr_2958:uint = ++_SafeStr_171;
      
      public static const _SafeStr_2495:uint = ++_SafeStr_171;
      
      public static const _SafeStr_2551:uint = ++_SafeStr_171;
      
      public static const _SafeStr_2636:uint = ++_SafeStr_171;
      
      public static const _SafeStr_2601:uint = ++_SafeStr_171;
      
      public static const _SafeStr_1189:uint = _SafeStr_171;
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_554:Vector.<Object>;
      
      internal var _SafeStr_2754:Array;
      
      public function _SafeCls_67(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_554 = new Vector.<Object>(_SafeStr_1189 + 1);
         this._SafeStr_2754 = new Array();
      }
      
      public static function _SafeStr_3022(param1:uint) : Boolean
      {
         if(param1 == _SafeStr_2010)
         {
            return true;
         }
         if(param1 == _SafeStr_2161)
         {
            return true;
         }
         return false;
      }
      
      public function _SafeStr_2874(param1:uint, param2:Object) : void
      {
         if(param1 > this._SafeStr_554.length)
         {
            return;
         }
         this._SafeStr_554[param1] = param2;
      }
      
      public function _SafeStr_3093(param1:uint, param2:uint) : void
      {
         this._SafeStr_2754[param1] = param2;
      }
      
      public function _SafeStr_3741(param1:uint) : String
      {
         var _loc3_:String = null;
         var _loc4_:Array = null;
         if(param1 > _SafeStr_1189)
         {
            return "";
         }
         var _loc2_:Object = this._SafeStr_554[param1];
         if(!isNaN(int(_loc2_)))
         {
            return String(_loc2_);
         }
         _loc3_ = String(_loc2_);
         _loc4_ = _loc3_.split(":");
         if(_loc4_.length == 3)
         {
            return _loc4_[2];
         }
         return "";
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_67 = "_-Pj"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_171 = "_-7e"
 * @identifier _SafeStr_554 = "_-4g"
 * @identifier _SafeStr_1189 = "_-Vq"
 * @identifier _SafeStr_2010 = "function"
 * @identifier _SafeStr_2161 = "_-Hh"
 * @identifier _SafeStr_2495 = "_-LB"
 * @identifier _SafeStr_2501 = "_-O8"
 * @identifier _SafeStr_2516 = " case"
 * @identifier _SafeStr_2523 = "_-9B"
 * @identifier _SafeStr_2551 = "_-RE"
 * @identifier _SafeStr_2575 = "_-hs"
 * @identifier _SafeStr_2601 = "_-83"
 * @identifier _SafeStr_2636 = "_-Ty"
 * @identifier _SafeStr_2665 = "_-jU"
 * @identifier _SafeStr_2754 = "_-Zm"
 * @identifier _SafeStr_2874 = "_-aT"
 * @identifier _SafeStr_2958 = "_-An"
 * @identifier _SafeStr_2974 = "_-r0"
 * @identifier _SafeStr_3022 = "_-8Q"
 * @identifier _SafeStr_3093 = "_-hp"
 * @identifier _SafeStr_3741 = "_-V5"
 */
