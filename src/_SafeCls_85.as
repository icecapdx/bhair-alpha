package
{
   public class _SafeCls_85
   {
      
      public static const _SafeStr_564:uint = 0;
      
      public static const _SafeStr_559:uint = 1;
      
      public static const _SafeStr_588:uint = 2;
      
      public static const _SafeStr_1740:uint = 3;
      
      internal var _SafeStr_2425:String;
      
      internal var mWeaponType:uint;
      
      internal var mDisplayName:String;
      
      internal var _SafeStr_978:String;
      
      internal var _SafeStr_2679:String;
      
      public function _SafeCls_85(param1:String = "", param2:uint = 0, param3:String = "", param4:String = null, param5:String = "")
      {
         super();
         this.mWeaponType = param2;
         this._SafeStr_2425 = param1;
         this.mDisplayName = param3;
         this._SafeStr_978 = param4;
         this._SafeStr_2679 = param5;
      }
      
      public static function _SafeStr_3200(param1:XML) : _SafeCls_85
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc2_:_SafeCls_85 = new _SafeCls_85();
         if(param1.children().length() <= 0)
         {
            return _loc2_;
         }
         for each(_loc3_ in param1.*)
         {
            _loc4_ = _loc3_.name();
            if(_loc4_ == "PowerName")
            {
               _loc2_._SafeStr_2425 = _loc3_.toString();
               continue;
            }
            if(_loc4_ == "DisplayName")
            {
               _loc2_.mDisplayName = _loc3_.toString();
               continue;
            }
            if(_loc4_ == "IconName")
            {
               _loc2_._SafeStr_978 = _loc3_.toString();
               continue;
            }
            if(_loc4_ == "PowerDescription")
            {
               _loc2_._SafeStr_2679 = _loc3_.toString();
               continue;
            }
            if(_loc4_ != "WeaponType")
            {
               continue;
            }
            switch(_loc3_.toString().toUpperCase())
            {
               case "SWORD":
                  _loc2_.mWeaponType = _SafeStr_564;
                  break;
               case "LANCE":
                  _loc2_.mWeaponType = _SafeStr_559;
                  break;
               case "HAMMER":
                  _loc2_.mWeaponType = _SafeStr_588;
                  break;
               case "PISTOL":
                  _loc2_.mWeaponType = _SafeStr_1740;
            }
         }
         return _loc2_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_85 = "_-Ud"
 * @identifier _SafeStr_559 = "_-h7"
 * @identifier _SafeStr_564 = "_-Uu"
 * @identifier _SafeStr_588 = "_-m5"
 * @identifier _SafeStr_978 = "_-Gs"
 * @identifier _SafeStr_1740 = "_-hO"
 * @identifier _SafeStr_2425 = "_-ZI"
 * @identifier _SafeStr_2679 = "_-lO"
 * @identifier _SafeStr_3200 = "_-ct"
 */
