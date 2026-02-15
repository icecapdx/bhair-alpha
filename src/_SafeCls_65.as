package
{
   public class _SafeCls_65 extends _SafeCls_35
   {
      
      private static const _SafeStr_2099:uint = 4500;
      
      private var _SafeStr_561:_SafeCls_34;
      
      private var _SafeStr_1306:uint;
      
      public function _SafeCls_65(param1:Game)
      {
         super(param1,"a_ScreenMatchBegins",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         this._SafeStr_561 = _SafeStr_124(_SafeStr_123.am_CountDownAnimation);
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_561 = null;
      }
      
      override public function OnTickScreen() : void
      {
         if(this._SafeStr_561.mbVisible && this._SafeStr_561.mbCompleted)
         {
            _SafeStr_118.mbGlobalInputLock = false;
            this._SafeStr_561.Hide();
            Hide();
            this._SafeStr_1306 = 0;
         }
         else if(this._SafeStr_1306 && this._SafeStr_561.mbVisible && this._SafeStr_1306 + _SafeStr_2099 < _SafeStr_118.mTimeThisTick)
         {
            _SafeStr_118.PlaySoundAtPosition(0,"brawlcountdown",0,0);
            this._SafeStr_1306 = 0;
         }
      }
      
      public function OnInitDisplay() : void
      {
         _SafeStr_118.mbGlobalInputLock = true;
         if(!this._SafeStr_561.mbVisible)
         {
            this._SafeStr_561.Show();
         }
         this._SafeStr_561.PlayAnimation("CountDown");
         this._SafeStr_1306 = _SafeStr_118.mTimeThisTick;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_65 = "_-Q5"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_561 = "_-pP"
 * @identifier _SafeStr_1306 = "_-es"
 * @identifier _SafeStr_2099 = "_-7O"
 */
