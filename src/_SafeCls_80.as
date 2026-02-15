package
{
   import flash.display.MovieClip;
   
   public class _SafeCls_80 extends _SafeCls_35
   {
      
      private var _SafeStr_829:_SafeCls_34;
      
      private var _SafeStr_650:_SafeCls_34;
      
      public function _SafeCls_80(param1:Game)
      {
         super(param1,"a_ScreenAuthentication",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc1_:MovieClip = _SafeStr_123.am_Panel;
         this._SafeStr_650 = _SafeStr_124(_loc1_);
         this._SafeStr_829 = _SafeStr_124(_loc1_ ? _loc1_.am_LoopAnim : null);
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_650 = null;
         this._SafeStr_829 = null;
      }
      
      override public function OnTickScreen() : void
      {
         if(this._SafeStr_650.mbCompleted && !this._SafeStr_829.mbVisible)
         {
            this._SafeStr_829.Show();
            this._SafeStr_829.PlayAnimation("Loop",_SafeCls_34._SafeStr_477);
         }
      }
      
      public function OnInitDisplay() : void
      {
         this._SafeStr_829.ClearAnimation();
         this._SafeStr_829.Hide();
         this._SafeStr_650.ClearAnimation();
         this._SafeStr_650.PlayAnimation("Display");
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_80 = "_-RB"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_477 = "_-jO"
 * @identifier _SafeStr_650 = "_-ed"
 * @identifier _SafeStr_829 = "_-7F"
 */
