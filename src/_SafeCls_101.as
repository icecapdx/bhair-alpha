package
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class _SafeCls_101
   {
      
      internal var _SafeStr_204:Bitmap;
      
      internal var _SafeStr_800:DisplayObject;
      
      internal var _SafeStr_2723:uint;
      
      internal var _SafeStr_2164:Boolean;
      
      internal var _SafeStr_746:Matrix;
      
      internal var _SafeStr_1673:Boolean;
      
      internal var _SafeStr_3243:Boolean;
      
      internal var _SafeStr_2448:Boolean;
      
      internal var _SafeStr_646:Rectangle;
      
      internal var _SafeStr_3719:Boolean;
      
      internal var _SafeStr_1699:String = null;
      
      internal var _SafeStr_2698:String;
      
      public function _SafeCls_101()
      {
         super();
      }
      
      public function _SafeStr_3267() : void
      {
         if(this._SafeStr_204)
         {
            if(this._SafeStr_204.bitmapData)
            {
               this._SafeStr_204.bitmapData.dispose();
               this._SafeStr_204.bitmapData = null;
            }
            if(this._SafeStr_204.parent)
            {
               this._SafeStr_204.parent.removeChild(this._SafeStr_204);
            }
            this._SafeStr_204 = null;
         }
         this._SafeStr_800 = null;
         this._SafeStr_646 = null;
         this._SafeStr_204 = null;
         this._SafeStr_746 = null;
         this._SafeStr_2698 = null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_101 = "_-Hb"
 * @identifier _SafeStr_204 = "_-pH"
 * @identifier _SafeStr_646 = "_-aN"
 * @identifier _SafeStr_746 = "_-TK"
 * @identifier _SafeStr_800 = "_-YU"
 * @identifier _SafeStr_1673 = "_-tI"
 * @identifier _SafeStr_1699 = "_-L9"
 * @identifier _SafeStr_2164 = "_-jw"
 * @identifier _SafeStr_2448 = "_-2e"
 * @identifier _SafeStr_2698 = "_-vF"
 * @identifier _SafeStr_2723 = "_-v4"
 * @identifier _SafeStr_3243 = "_-nX"
 * @identifier _SafeStr_3267 = "_-Bk"
 * @identifier _SafeStr_3719 = "_-bT"
 */
