package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class _SafeCls_29
   {
      
      internal var _SafeStr_1633:_SafeCls_31;
      
      internal var _SafeStr_831:Vector.<Sprite>;
      
      internal var _SafeStr_511:Vector.<Bitmap>;
      
      public function _SafeCls_29(param1:_SafeCls_31)
      {
         super();
         this._SafeStr_1633 = param1;
         this._SafeStr_511 = new Vector.<Bitmap>(this._SafeStr_1633._SafeStr_1326,true);
         this._SafeStr_831 = new Vector.<Sprite>(this._SafeStr_1633._SafeStr_1326,true);
      }
      
      public function _SafeStr_3748() : void
      {
         this._SafeStr_2769();
         this._SafeStr_2825();
         this._SafeStr_1633 = null;
         this._SafeStr_831 = null;
         this._SafeStr_511 = null;
      }
      
      public function _SafeStr_3123(param1:uint) : uint
      {
         var _loc2_:Bitmap = this._SafeStr_511[param1];
         if(!_loc2_)
         {
            return 0;
         }
         var _loc3_:BitmapData = _loc2_.bitmapData;
         var _loc4_:uint = _loc3_.height * _loc3_.width;
         _loc3_.dispose();
         _loc2_.bitmapData = null;
         this._SafeStr_511[param1] = null;
         return _loc4_;
      }
      
      public function _SafeStr_2769() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         var _loc3_:Bitmap = null;
         _loc2_ = this._SafeStr_511.length;
         _loc1_ = 0;
         while(_loc1_ < _loc2_)
         {
            _loc3_ = this._SafeStr_511[_loc1_];
            if(_loc3_)
            {
               if(_loc3_.bitmapData)
               {
                  _loc3_.bitmapData.dispose();
                  _loc3_.bitmapData = null;
               }
               this._SafeStr_511[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      public function _SafeStr_2825() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         var _loc3_:Sprite = null;
         _loc2_ = this._SafeStr_831.length;
         _loc1_ = 0;
         while(_loc1_ < _loc2_)
         {
            _loc3_ = this._SafeStr_831[_loc1_];
            if(_loc3_)
            {
               if(_loc3_.parent)
               {
                  _loc3_.parent.removeChild(_loc3_);
               }
               this._SafeStr_831[_loc1_] = null;
            }
            _loc1_++;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-LV"
 * @identifier _SafeCls_31 = "_-iH"
 * @identifier _SafeStr_511 = "_-LZ"
 * @identifier _SafeStr_831 = "_-3n"
 * @identifier _SafeStr_1326 = " do"
 * @identifier _SafeStr_1633 = "_-Kd"
 * @identifier _SafeStr_2769 = "_-Wh"
 * @identifier _SafeStr_2825 = "_-Jf"
 * @identifier _SafeStr_3123 = "_-9"
 * @identifier _SafeStr_3748 = "_-1h"
 */
