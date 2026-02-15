package
{
   public class _SafeCls_99
   {
      
      internal var _SafeStr_1361:String;
      
      internal var mCharID:uint;
      
      internal var mSelectedHeroID:uint;
      
      internal var mCostumeID:uint;
      
      public function _SafeCls_99(param1:String, param2:uint)
      {
         super();
         this._SafeStr_1361 = param1;
         this.mCharID = param2;
      }
      
      public function SetCharacter(param1:uint) : void
      {
         this.mSelectedHeroID = param1;
      }
      
      public function SetCostume(param1:uint) : void
      {
         this.mCostumeID = param1;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_99 = "_-X9"
 * @identifier _SafeStr_1361 = "_-mk"
 */
