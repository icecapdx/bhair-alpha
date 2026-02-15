package
{
   public class _SafeCls_87
   {
      
      public static const _SafeStr_2450:uint = 20;
      
      public var _SafeStr_151:_SafeCls_6;
      
      public var _SafeStr_284:int;
      
      public var _SafeStr_1809:uint;
      
      public var _SafeStr_2876:Boolean;
      
      public var _SafeStr_173:uint;
      
      public var _SafeStr_972:Number;
      
      public var _SafeStr_1405:uint;
      
      public var _SafeStr_140:Vector.<ColorSwap>;
      
      public function _SafeCls_87(param1:_SafeCls_6, param2:uint, param3:uint = 0, param4:uint = 0)
      {
         super();
         this._SafeStr_151 = param1;
         this._SafeStr_284 = param1._SafeStr_2889;
         this._SafeStr_1809 = param2;
         this._SafeStr_173 = param3;
         this._SafeStr_2876 = Boolean(param1._SafeStr_1715);
         this._SafeStr_972 = 0;
         this._SafeStr_1405 = param4;
      }
      
      public function _SafeStr_3460() : void
      {
         this._SafeStr_140 = null;
         this._SafeStr_151 = null;
      }
      
      public function _SafeStr_3551(param1:_SafeCls_25) : void
      {
         var _loc4_:_SafeCls_6 = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:String = this._SafeStr_151._SafeStr_2943;
         var _loc3_:String = param1._SafeStr_144._SafeStr_2483;
         if(Boolean(_loc2_) && Boolean(_loc3_))
         {
            _loc4_ = _SafeCls_6._SafeStr_416[_loc2_ + _loc3_];
            if(_loc4_)
            {
               this._SafeStr_151 = _loc4_;
            }
         }
         this._SafeStr_140 = param1._SafeStr_140;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_6 = "_-0u"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_87 = "_-CY"
 * @identifier _SafeStr_140 = "_-qo"
 * @identifier _SafeStr_144 = "_-Z"
 * @identifier _SafeStr_151 = "_-0w"
 * @identifier _SafeStr_173 = "_-KG"
 * @identifier _SafeStr_284 = "_-Ak"
 * @identifier _SafeStr_416 = "_-DY"
 * @identifier _SafeStr_972 = "_-f3"
 * @identifier _SafeStr_1405 = "_-wK"
 * @identifier _SafeStr_1715 = "_-dw"
 * @identifier _SafeStr_1809 = "_-cb"
 * @identifier _SafeStr_2450 = "_-IE"
 * @identifier _SafeStr_2483 = "_-7b"
 * @identifier _SafeStr_2876 = "_-Q8"
 * @identifier _SafeStr_2889 = "_-YA"
 * @identifier _SafeStr_2943 = "_-VJ"
 * @identifier _SafeStr_3460 = "_-Mo"
 * @identifier _SafeStr_3551 = "_-G6"
 */
