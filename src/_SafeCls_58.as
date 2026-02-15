package
{
   import flash.events.MouseEvent;
   
   public class _SafeCls_58 extends _SafeCls_35
   {
      
      private static const _SafeStr_2959:String = "ScreenWaitingForPlayers_StartButton";
      
      private static const _SafeStr_1912:String = "WAITING FOR PLAYERS...";
      
      private static const _SafeStr_2335:String = "MATCH BEGINS IN... ";
      
      private var _SafeStr_1637:_SafeCls_34;
      
      private var _SafeStr_1409:_SafeCls_34;
      
      private var _SafeStr_1655:_SafeCls_62;
      
      private var _SafeStr_3751:_SafeCls_34;
      
      private var _SafeStr_3650:Vector.<_SafeCls_34>;
      
      private var _SafeStr_3671:_SafeCls_34;
      
      public function _SafeCls_58(param1:Game)
      {
         super(param1,"a_InQueue",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         this._SafeStr_1637 = _SafeStr_177(_SafeStr_123.am_LeaveQueue,this.LeaveQueue,this._SafeStr_376);
         this._SafeStr_1409 = _SafeStr_177(_SafeStr_123.am_ForceStart,this._SafeStr_3347,this._SafeStr_376);
         this._SafeStr_1637.Hide();
         this._SafeStr_1409.Hide();
         this._SafeStr_1655 = _SafeStr_145(_SafeStr_123.am_Msg);
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_1655 = null;
         this._SafeStr_1637 = null;
         this._SafeStr_1409 = null;
      }
      
      public function LeaveQueue(param1:MouseEvent) : void
      {
         Hide();
         _SafeStr_118.EndStatePractice();
         _SafeStr_118.mMatchMakerData.LeaveQueue();
         _SafeStr_118.screenSelectCharacter.Reopen();
      }
      
      override public function OnRefreshScreen() : void
      {
         this._SafeStr_1655.SetText(_SafeStr_1912);
         if(_SafeStr_118.mMatchMakerData.mbStartMatch)
         {
            this._SafeStr_1637.Hide();
            this._SafeStr_1409.Hide();
         }
      }
      
      override public function OnTickScreen() : void
      {
         var _loc1_:int = 0;
         var _loc2_:uint = 0;
         if(_SafeStr_118.mMatchMakerData.mbStartMatch)
         {
            _loc1_ = _SafeCls_76._SafeStr_2057 - (_SafeStr_118.mServerGameTime - _SafeStr_118.mMatchMakerData.mCountDownBeginTimer);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            _loc2_ = Math.round(_loc1_ / 1000);
            this._SafeStr_1655.SetText(_SafeStr_2335 + _loc2_);
            if(_SafeStr_118.gameState == Game._SafeStr_543)
            {
               _SafeStr_118.screenPause.OnClose();
               _SafeStr_118.gameState = Game._SafeStr_417;
            }
         }
      }
      
      private function _SafeStr_376(param1:MouseEvent) : void
      {
         _SafeStr_118.PlaySound("Mouseover_Click");
      }
      
      public function _SafeStr_3347(param1:MouseEvent) : void
      {
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_58 = "_-4f"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_76 = "_-ln"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_177 = "_-eJ"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_417 = "_-pJ"
 * @identifier _SafeStr_543 = "_-2R"
 * @identifier _SafeStr_1409 = "_-ca"
 * @identifier _SafeStr_1637 = "_-Kb"
 * @identifier _SafeStr_1655 = "_-PP"
 * @identifier _SafeStr_1912 = "_-Qk"
 * @identifier _SafeStr_2057 = "_-YT"
 * @identifier _SafeStr_2335 = "_-Xs"
 * @identifier _SafeStr_2959 = "_-Vb"
 * @identifier _SafeStr_3347 = "_-Bo"
 * @identifier _SafeStr_3650 = "_-io"
 * @identifier _SafeStr_3671 = "_-P0"
 * @identifier _SafeStr_3751 = "_-RC"
 */
