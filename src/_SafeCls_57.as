package
{
   public class _SafeCls_57 extends _SafeCls_35
   {
      
      private var _SafeStr_645:_SafeCls_34;
      
      public function _SafeCls_57(param1:Game)
      {
         super(param1,"a_ScreenTieBreaker",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         this._SafeStr_645 = _SafeStr_124(_SafeStr_123.am_TieBreakerAnimation);
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_645 = null;
      }
      
      override public function OnTickScreen() : void
      {
         if(this._SafeStr_645.mbVisible && this._SafeStr_645.mbCompleted)
         {
            _SafeStr_118.mbGlobalInputLock = false;
            this._SafeStr_645.Hide();
            Hide();
         }
      }
      
      public function OnInitDisplay() : void
      {
         if(!this._SafeStr_645.mbVisible)
         {
            this._SafeStr_645.Show();
         }
         this._SafeStr_645.PlayAnimation("Display");
         _SafeStr_118.PlaySoundAtPosition(0,"SuddenDeath",0,0);
         _SafeStr_118.StartSuddenDeathMusic();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_57 = "_-Fi"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_645 = "_-JD"
 */
