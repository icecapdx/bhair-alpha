package
{
   public class _SafeCls_48 extends _SafeCls_35
   {
      
      private var _SafeStr_462:_SafeCls_92;
      
      private var _SafeStr_636:Vector.<_SafeCls_92>;
      
      public function _SafeCls_48(param1:Game)
      {
         super(param1,"a_ScreenBroadcast",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         this._SafeStr_636 = new Vector.<_SafeCls_92>();
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_462 = null;
         this._SafeStr_636 = null;
      }
      
      override public function Hide() : void
      {
         var _loc2_:uint = 0;
         var _loc3_:_SafeCls_92 = null;
         var _loc1_:uint = this._SafeStr_636.length;
         if(_loc1_)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc3_ = this._SafeStr_636.shift();
               _loc3_._SafeStr_1446();
               _loc3_ = null;
               _loc2_++;
            }
         }
         if(this._SafeStr_462)
         {
            this._SafeStr_462._SafeStr_1446();
            this._SafeStr_462 = null;
         }
         super.Hide();
      }
      
      override public function OnTickScreen() : void
      {
         var _loc1_:Boolean = false;
         if(!this._SafeStr_462)
         {
            if(this._SafeStr_636.length)
            {
               this._SafeStr_462 = this._SafeStr_636.shift();
            }
         }
         if(this._SafeStr_462)
         {
            _loc1_ = this._SafeStr_462._SafeStr_3100();
            if(!_loc1_)
            {
               this._SafeStr_462 = null;
            }
         }
      }
      
      public function OnInitDisplay() : void
      {
         this._SafeStr_636.length = 0;
         this._SafeStr_462 = null;
      }
      
      public function _SafeStr_3098(param1:_SafeCls_92) : void
      {
         this._SafeStr_636.push(param1);
      }
      
      public function _SafeStr_3531(param1:_SafeCls_92) : Boolean
      {
         return param1 == this._SafeStr_462;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_48 = "_-kT"
 * @identifier _SafeCls_92 = "_-JZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_462 = "_-WD"
 * @identifier _SafeStr_636 = "_-1t"
 * @identifier _SafeStr_1446 = "_-M3"
 * @identifier _SafeStr_3098 = "_-St"
 * @identifier _SafeStr_3100 = "_-ur"
 * @identifier _SafeStr_3531 = "_-3l"
 */
