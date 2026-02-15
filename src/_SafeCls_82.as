package
{
   import flash.events.MouseEvent;
   
   public class _SafeCls_82 extends _SafeCls_35
   {
      
      internal var _SafeStr_650:_SafeCls_34;
      
      private var _SafeStr_463:Boolean;
      
      public function _SafeCls_82(param1:Game)
      {
         super(param1,"a_ScreenControls",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         this._SafeStr_650 = _SafeStr_124(_SafeStr_123.am_Panel);
         _SafeStr_130(_SafeStr_123.am_Panel.am_PanelInternal.am_Close,this.OnClose,this._SafeStr_376);
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_650 = null;
      }
      
      public function OnInitDisplay() : void
      {
         this._SafeStr_650.ClearAnimation();
         this._SafeStr_650.PlayAnimation("Display");
         this._SafeStr_463 = false;
      }
      
      override public function OnTickScreen() : void
      {
         if(this._SafeStr_463)
         {
            if(this._SafeStr_650.mbCompleted)
            {
               this._SafeStr_463 = false;
               Hide();
            }
         }
      }
      
      public function _SafeStr_191(param1:int) : Boolean
      {
         if(!mbVisible || this._SafeStr_463)
         {
            return false;
         }
         switch(param1)
         {
            case Game._SafeStr_216:
            case Game._SafeStr_242:
            case Game._SafeStr_316:
            case Game._SafeStr_247:
            case Game._SafeStr_288:
               this.OnClose();
         }
         return true;
      }
      
      private function OnClose(param1:MouseEvent = null) : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_463 = true;
         this._SafeStr_650.PlayAnimation("Display",_SafeCls_34._SafeStr_286);
      }
      
      private function _SafeStr_376(param1:MouseEvent = null) : void
      {
         _SafeStr_118.PlaySound("Mouseover_Click");
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_82 = "_-6G"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_130 = "_-Ri"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_247 = "_-PM"
 * @identifier _SafeStr_286 = "_-kZ"
 * @identifier _SafeStr_288 = "_-m2"
 * @identifier _SafeStr_316 = "_-cQ"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_463 = "_-45"
 * @identifier _SafeStr_650 = "_-ed"
 */
