package
{
   import flash.utils.Dictionary;
   
   public class _SafeCls_3
   {
      
      public static var _SafeStr_343:Dictionary;
      
      public function _SafeCls_3()
      {
         super();
      }
      
      public static function _SafeStr_280(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         _SafeStr_343 = new Dictionary();
         var _loc2_:XMLList = param1.children();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = _loc3_.attribute("SoundName");
            _loc5_ = Number(_loc3_.attribute("Volume"));
            if(Boolean(_loc4_) && Boolean(_loc5_))
            {
               _SafeStr_343[_loc4_] = _loc5_;
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_3 = "_-nK"
 * @identifier _SafeStr_280 = "_-4e"
 * @identifier _SafeStr_343 = "_-i8"
 */
