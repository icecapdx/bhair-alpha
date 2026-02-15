package
{
   public class _SafeCls_64 extends _SafeCls_35
   {
      
      private static const _SafeStr_2073:uint = 3000;
      
      private var _SafeStr_1655:_SafeCls_62;
      
      private var _SafeStr_2680:uint;
      
      private var _SafeStr_463:Boolean;
      
      public function _SafeCls_64(param1:Game)
      {
         super(param1,"a_ScreenServerNotification",null);
         _SafeStr_158 = true;
         _SafeStr_690 = false;
      }
      
      override public function OnCreateScreen() : void
      {
         this._SafeStr_1655 = _SafeStr_145(_SafeStr_123.am_Panel.am_Message);
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_1655 = null;
      }
      
      override public function OnTickScreen() : void
      {
         if(this._SafeStr_463 && Boolean(_SafeStr_176.mbCompleted))
         {
            Hide();
         }
         if(this._SafeStr_463)
         {
            return;
         }
         if(_SafeStr_118.mTimeThisTick > _SafeStr_2073 + this._SafeStr_2680)
         {
            this._SafeStr_463 = true;
            _SafeStr_176.PlayAnimation("Hide");
         }
      }
      
      public function OnInitDisplay(param1:String) : void
      {
         _SafeStr_176.ClearAnimation();
         _SafeStr_176.PlayAnimation("Display");
         this._SafeStr_1655.SetText(param1.toUpperCase());
         this._SafeStr_2680 = _SafeStr_118.mTimeThisTick;
         this._SafeStr_463 = false;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_64 = "_-8j"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_176 = "_-mN"
 * @identifier _SafeStr_463 = "_-45"
 * @identifier _SafeStr_690 = "_-pK"
 * @identifier _SafeStr_1655 = "_-PP"
 * @identifier _SafeStr_2073 = "_-XR"
 * @identifier _SafeStr_2680 = "_-pY"
 */
