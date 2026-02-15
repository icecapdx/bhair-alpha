package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class _SafeCls_70 extends _SafeCls_35
   {
      
      private static const _SafeStr_2564:uint = 8;
      
      private static const _SafeStr_2591:uint = 2;
      
      private static const _SafeStr_2633:uint = 16;
      
      private static const _SafeStr_2821:uint = 17;
      
      private static const _SafeStr_317:uint = 16;
      
      private static const _SafeStr_1230:uint = 16382457;
      
      private static const _SafeStr_2104:uint = 15204352;
      
      private static const _SafeStr_1154:uint = 2652034;
      
      private static const _SafeStr_2323:uint = 6160384;
      
      private var _SafeStr_898:_SafeCls_34;
      
      private var _SafeStr_614:Vector.<_SafeCls_62>;
      
      private var _SafeStr_339:Vector.<_SafeCls_34>;
      
      private var _SafeStr_741:_SafeCls_34;
      
      private var _SafeStr_713:_SafeCls_34;
      
      private var _SafeStr_571:_SafeCls_34;
      
      private var _SafeStr_463:Boolean;
      
      private var _SafeStr_2588:Boolean = false;
      
      private var _SafeStr_2113:Boolean;
      
      private var _SafeStr_1016:Boolean;
      
      private var _SafeStr_1640:Boolean;
      
      private var _SafeStr_1118:_SafeCls_34;
      
      private var _SafeStr_486:Array;
      
      private var _SafeStr_264:Array;
      
      private const _SafeStr_3367:String = "---";
      
      public function _SafeCls_70(param1:Game)
      {
         super(param1,"a_ScreenKeybind",null);
         _SafeStr_158 = true;
         this._SafeStr_486 = new Array(_SafeStr_317);
         this._SafeStr_486[Game._SafeStr_214] = 0;
         this._SafeStr_486[Game._SafeStr_213] = 2;
         this._SafeStr_486[Game._SafeStr_208] = 4;
         this._SafeStr_486[Game._SafeStr_207] = 6;
         this._SafeStr_486[Game._SafeStr_305] = 8;
         this._SafeStr_486[Game._SafeStr_342] = 10;
         this._SafeStr_486[Game._SafeStr_293] = 12;
         this._SafeStr_486[Game._SafeStr_378] = 14;
         this._SafeStr_264 = new Array(_SafeStr_317);
         this._SafeStr_264[0] = Game._SafeStr_214;
         this._SafeStr_264[1] = Game._SafeStr_214;
         this._SafeStr_264[2] = Game._SafeStr_213;
         this._SafeStr_264[3] = Game._SafeStr_213;
         this._SafeStr_264[4] = Game._SafeStr_208;
         this._SafeStr_264[5] = Game._SafeStr_208;
         this._SafeStr_264[6] = Game._SafeStr_207;
         this._SafeStr_264[7] = Game._SafeStr_207;
         this._SafeStr_264[8] = Game._SafeStr_305;
         this._SafeStr_264[9] = Game._SafeStr_305;
         this._SafeStr_264[10] = Game._SafeStr_342;
         this._SafeStr_264[11] = Game._SafeStr_342;
         this._SafeStr_264[12] = Game._SafeStr_293;
         this._SafeStr_264[13] = Game._SafeStr_293;
         this._SafeStr_264[14] = Game._SafeStr_378;
         this._SafeStr_264[15] = Game._SafeStr_378;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc4_:MovieClip = null;
         var _loc1_:MovieClip = _SafeStr_123.am_Panel;
         this._SafeStr_898 = _SafeStr_124(_loc1_);
         var _loc2_:MovieClip = _loc1_.am_PanelInternal;
         this._SafeStr_339 = new Vector.<_SafeCls_34>();
         this._SafeStr_614 = new Vector.<_SafeCls_62>();
         var _loc3_:uint = 0;
         while(_loc3_ < _SafeStr_317)
         {
            _loc4_ = _loc2_["am_Binding" + _loc3_];
            this._SafeStr_339.push(_SafeStr_246(_loc4_,_loc3_,this._SafeStr_3465,this._SafeStr_376,this._SafeStr_2119));
            this._SafeStr_614.push(_SafeStr_145(_loc4_.am_ButtonInternal.am_Text));
            _loc3_++;
         }
         this._SafeStr_1118 = _SafeStr_124(_loc2_.am_NoticeToken);
         this._SafeStr_713 = _SafeStr_246(_loc2_.am_Apply,_SafeStr_317,this._SafeStr_3317,this._SafeStr_376,this._SafeStr_2119);
         this._SafeStr_741 = _SafeStr_246(_loc2_.am_Default,_SafeStr_317 + 1,this._SafeStr_3310,this._SafeStr_376,this._SafeStr_2119);
         this._SafeStr_571 = _SafeStr_130(_loc2_.am_Close,this.OnClose);
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_898 = null;
         var _loc1_:uint = 0;
         while(_loc1_ < this._SafeStr_614.length)
         {
            this._SafeStr_614[_loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_339.length)
         {
            this._SafeStr_339[_loc1_] = null;
            _loc1_++;
         }
         this._SafeStr_741 = null;
         this._SafeStr_713 = null;
         this._SafeStr_571 = null;
         this._SafeStr_1118 = null;
      }
      
      override public function OnClearScreen() : void
      {
         _SafeStr_118.mKeybindManager.mbStatePickKey = false;
         _SafeStr_118.mKeybindManager.mActiveCommand = 0;
         if(this._SafeStr_2588)
         {
            _SafeStr_118.mKeybindManager.ClearBuffer();
         }
      }
      
      override public function OnRefreshScreen() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:_SafeCls_62 = null;
         var _loc3_:uint = 0;
         var _loc4_:* = false;
         var _loc5_:uint = 0;
         var _loc6_:String = null;
         _SafeStr_118.mKeybindManager.SetContext(_SafeStr_118.CONTEXT_GAMEPLAY);
         if(this._SafeStr_463)
         {
            return;
         }
         _SafeStr_118.mKeybindManager.SetContext(_SafeStr_118.CONTEXT_GAMEPLAY);
         if(this._SafeStr_1640)
         {
            _loc3_ = 0;
            while(_loc3_ < _SafeStr_317)
            {
               _loc4_ = _loc3_ % 2 == 1;
               _loc2_ = this._SafeStr_614[_loc3_];
               _loc1_ = _loc2_.mTextField;
               this._SafeStr_1690(_loc1_,_SafeStr_1230,_SafeStr_1154);
               _loc5_ = uint(this._SafeStr_264[_loc3_]);
               _loc6_ = _SafeStr_118.mKeybindManager.FetchKeyFromCommand(_loc5_,true,_loc4_);
               _loc2_.SetText(_loc6_);
               _loc3_++;
            }
            this._SafeStr_1832();
            this._SafeStr_1640 = false;
         }
      }
      
      override public function OnTickScreen() : void
      {
         if(this._SafeStr_463)
         {
            if(this._SafeStr_898.mbCompleted)
            {
               this._SafeStr_463 = false;
               this.Hide();
            }
         }
      }
      
      override public function Hide() : void
      {
         _SafeStr_118.mKeybindManager.SetContext(_SafeStr_118.CONTEXT_NORMAL);
         super.Hide();
      }
      
      public function OnInitDisplay() : void
      {
         _SafeStr_118.mKeybindManager.SetContext(_SafeStr_118.CONTEXT_GAMEPLAY);
         this._SafeStr_898.ClearAnimation();
         this._SafeStr_898.PlayAnimation("Display");
         _SafeCls_19._SafeStr_374(_SafeStr_123.am_Panel.am_PanelInternal.am_Message,"");
         this._SafeStr_1118.Hide();
         this._SafeStr_2905();
         _SafeStr_118.mKeybindManager.WriteIntoBuffer();
         this._SafeStr_2588 = true;
         this._SafeStr_2113 = false;
         this._SafeStr_1016 = false;
         this._SafeStr_1640 = true;
      }
      
      public function OnClose(param1:MouseEvent = null) : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_463 = true;
         this._SafeStr_898.PlayAnimation("Display",_SafeCls_34._SafeStr_286);
      }
      
      public function _SafeStr_191(param1:int) : Boolean
      {
         if(!mbVisible || this._SafeStr_463)
         {
            return false;
         }
         switch(param1)
         {
            case Game._SafeStr_242:
            case Game._SafeStr_247:
            case Game._SafeStr_288:
               this.OnClose();
         }
         return true;
      }
      
      public function _SafeStr_3048(param1:int) : Boolean
      {
         if(!mbVisible || this._SafeStr_463)
         {
            return false;
         }
         if(!_SafeStr_118.mKeybindManager.mbStatePickKey)
         {
            return true;
         }
         if(param1 == Keyboard.ESCAPE)
         {
            param1 = 255;
         }
         var _loc2_:uint = uint(_SafeStr_118.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_118.mKeybindManager.mActiveCommand,true,_SafeStr_118.mKeybindManager.mbUseAlternate));
         if(_SafeStr_118.mKeybindManager.IsValidKey(param1))
         {
            _SafeStr_118.mKeybindManager.RemoveKeyBindForMap(_loc2_,true,false);
            _SafeStr_118.mKeybindManager.RemoveKeyBindForMap(_loc2_,true,true);
            _SafeStr_118.mKeybindManager.RemoveKeyBindForMap(param1,true,false);
            _SafeStr_118.mKeybindManager.RemoveKeyBindForMap(param1,true,true);
            if(!_SafeStr_118.mKeybindManager.mbUseAlternate)
            {
               _SafeStr_118.mKeybindManager.SetKeys(_SafeStr_118.mKeybindManager.mActiveCommand,param1,true,true);
            }
            else
            {
               _SafeStr_118.mKeybindManager.SetKeysAlt(_SafeStr_118.mKeybindManager.mActiveCommand,param1,true,true);
            }
            _SafeStr_118.screenKeybinds.UpdateSingleKey(param1);
            _SafeStr_118.screenKeybinds.DoneRebindCommand(_SafeStr_118.mKeybindManager.mActiveCommand,param1,_SafeStr_118.mKeybindManager.mbUseAlternate);
            _SafeStr_118.mKeybindManager.mbStatePickKey = false;
            _SafeStr_118.mKeybindManager.mActiveCommand = 0;
            _SafeStr_118.mKeybindManager.mbUseAlternate = false;
            this._SafeStr_2905();
         }
         else
         {
            _SafeStr_118.screenKeybinds.SetStatus("Pick Another Key");
         }
         return true;
      }
      
      private function _SafeStr_376(param1:MouseEvent, param2:uint) : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         _SafeStr_118.PlaySound("Mouseover_Click");
         if(param2 < _SafeStr_317)
         {
            this._SafeStr_339[param2].mMovieClip.am_Highlighter.visible = true;
         }
         else if(param2 == _SafeStr_317)
         {
            this._SafeStr_713.mMovieClip.am_Highlighter.visible = true;
         }
         else if(param2 == _SafeStr_317 + 1)
         {
            this._SafeStr_741.mMovieClip.am_Highlighter.visible = true;
         }
      }
      
      private function _SafeStr_2119(param1:MouseEvent, param2:uint) : void
      {
         if(param2 < _SafeStr_317)
         {
            this._SafeStr_339[param2].mMovieClip.am_Highlighter.visible = false;
         }
         else if(param2 == _SafeStr_317)
         {
            this._SafeStr_713.mMovieClip.am_Highlighter.visible = false;
         }
         else if(param2 == _SafeStr_317 + 1)
         {
            this._SafeStr_741.mMovieClip.am_Highlighter.visible = false;
         }
      }
      
      private function _SafeStr_3465(param1:MouseEvent, param2:uint) : void
      {
         if(this._SafeStr_463 || this._SafeStr_1016)
         {
            return;
         }
         this._SafeStr_339[param2].mMovieClip.am_Highlighter.visible = true;
         var _loc3_:* = param2 % 2 == 1;
         var _loc4_:_SafeCls_62 = this._SafeStr_614[param2];
         var _loc5_:TextField = _loc4_.mTextField;
         this._SafeStr_1690(_loc5_,_SafeStr_2104,_SafeStr_2323);
         _loc4_.SetText("??");
         var _loc6_:int = int(this._SafeStr_264[param2]);
         this.SetStatus("Press Key for " + _SafeStr_118.mKeybindManager.GetReadableCommands(_loc6_));
         this._SafeStr_3026();
         this._SafeStr_3113(param2);
         _SafeStr_118.mKeybindManager.mbStatePickKey = true;
         _SafeStr_118.mKeybindManager.mActiveCommand = _loc6_;
         _SafeStr_118.mKeybindManager.mbUseAlternate = _loc3_;
         this._SafeStr_1640 = true;
      }
      
      private function _SafeStr_3026() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < this._SafeStr_339.length)
         {
            this._SafeStr_339[_loc1_].DisableButton("Inactive");
            _loc1_++;
         }
         this._SafeStr_713.DisableButton("Inactive");
         this._SafeStr_741.DisableButton("Inactive");
         this._SafeStr_571.DisableButton("Inactive");
         this._SafeStr_1016 = true;
      }
      
      public function _SafeStr_1832() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < this._SafeStr_339.length)
         {
            this._SafeStr_339[_loc1_].EnableButton();
            _loc1_++;
         }
         this._SafeStr_713.EnableButton();
         this._SafeStr_741.EnableButton();
         this._SafeStr_571.EnableButton();
         this._SafeStr_1016 = false;
      }
      
      public function DoneRebindCommand(param1:int, param2:int, param3:Boolean) : void
      {
         var _loc4_:uint = param3 ? uint(1) : uint(0);
         var _loc5_:int = this._SafeStr_486[param1] + _loc4_;
         var _loc6_:_SafeCls_62 = this._SafeStr_614[_loc5_];
         var _loc7_:TextField = _loc6_.mTextField;
         this._SafeStr_1690(_loc7_,_SafeStr_1230,_SafeStr_1154);
         _loc6_.SetText(_SafeStr_118.mKeybindManager.GetReadableKey(param2));
         this.SetStatus(param2 == 255 ? "Keybind Erased" : "Key Rebound");
         this._SafeStr_2113 = true;
         this._SafeStr_1832();
      }
      
      private function _SafeStr_3317(param1:MouseEvent, param2:uint) : void
      {
         if(this._SafeStr_463 || this._SafeStr_1016)
         {
            return;
         }
         this._SafeStr_713.PlayAnimation("Press");
         _SafeStr_118.mKeybindManager.saveBufferIntoReal();
         _SafeStr_118.SaveKeyBindsLocally();
         _SafeStr_118.MirrorNormalContextToGamePlay();
         this.OnClose();
      }
      
      private function _SafeStr_3310(param1:MouseEvent, param2:uint) : void
      {
         var _loc4_:* = false;
         var _loc5_:_SafeCls_62 = null;
         var _loc6_:TextField = null;
         var _loc7_:uint = 0;
         var _loc8_:String = null;
         if(this._SafeStr_463 || this._SafeStr_1016)
         {
            return;
         }
         this._SafeStr_741.PlayAnimation("Press");
         _SafeStr_118.mKeybindManager.WriteDefaultsIntoBuffer();
         var _loc3_:uint = 0;
         while(_loc3_ < _SafeStr_317)
         {
            _loc4_ = _loc3_ % 2 == 1;
            _loc5_ = this._SafeStr_614[_loc3_];
            _loc6_ = _loc5_.mTextField;
            this._SafeStr_1690(_loc6_,_SafeStr_1230,_SafeStr_1154);
            _loc7_ = uint(this._SafeStr_264[_loc3_]);
            _loc8_ = _SafeStr_118.mKeybindManager.FetchKeyFromCommand(_loc7_,true,_loc4_);
            _loc5_.SetText(_loc8_);
            _loc3_++;
         }
         this._SafeStr_2113 = true;
         this._SafeStr_1832();
      }
      
      private function _SafeStr_3646(param1:MouseEvent) : void
      {
      }
      
      public function SetStatus(param1:String) : void
      {
         if(!this._SafeStr_1118.mbVisible)
         {
            this._SafeStr_1118.Show();
         }
         _SafeCls_19._SafeStr_374(_SafeStr_123.am_Panel.am_PanelInternal.am_Message,param1);
      }
      
      public function UpdateSingleKey(param1:int) : void
      {
         var _loc3_:_SafeCls_62 = null;
         var _loc4_:TextField = null;
         var _loc2_:uint = 0;
         while(_loc2_ < _SafeStr_317)
         {
            _loc3_ = this._SafeStr_614[_loc2_];
            _loc4_ = _loc3_.mTextField;
            if(_loc4_.text == _SafeStr_118.mKeybindManager.GetReadableKey(param1))
            {
               _loc3_.SetText(this._SafeStr_3367);
            }
            _loc2_++;
         }
      }
      
      private function _SafeStr_2905() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < this._SafeStr_339.length)
         {
            this._SafeStr_339[_loc1_].mMovieClip.am_Highlighter.visible = false;
            _loc1_++;
         }
         this._SafeStr_713.mMovieClip.am_Highlighter.visible = false;
         this._SafeStr_741.mMovieClip.am_Highlighter.visible = false;
      }
      
      private function _SafeStr_3113(param1:uint) : void
      {
         var _loc2_:_SafeCls_34 = this._SafeStr_339[param1];
         _loc2_.PlayAnimation("Press");
      }
      
      private function _SafeStr_1690(param1:TextField, param2:uint, param3:uint) : void
      {
         param1.textColor = param2;
         var _loc4_:GlowFilter = param1.filters[0];
         _loc4_.color = param3;
         param1.filters = [_loc4_];
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_70 = "_-JA"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_130 = "_-Ri"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_207 = "_-wd"
 * @identifier _SafeStr_208 = "_-9P"
 * @identifier _SafeStr_213 = "_-Rl"
 * @identifier _SafeStr_214 = "_-W1"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_246 = "_-L0"
 * @identifier _SafeStr_247 = "_-PM"
 * @identifier _SafeStr_264 = "else"
 * @identifier _SafeStr_286 = "_-kZ"
 * @identifier _SafeStr_288 = "_-m2"
 * @identifier _SafeStr_293 = "_-tr"
 * @identifier _SafeStr_305 = "_-2J"
 * @identifier _SafeStr_317 = "_-bA"
 * @identifier _SafeStr_339 = "_-eu"
 * @identifier _SafeStr_342 = "_-Dr"
 * @identifier _SafeStr_374 = "_-ws"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_378 = "_-22"
 * @identifier _SafeStr_463 = "_-45"
 * @identifier _SafeStr_486 = "_-jF"
 * @identifier _SafeStr_571 = "_-wn"
 * @identifier _SafeStr_614 = "_-U-"
 * @identifier _SafeStr_713 = "_-5t"
 * @identifier _SafeStr_741 = "_-cq"
 * @identifier _SafeStr_898 = "_-bZ"
 * @identifier _SafeStr_1016 = "_-V9"
 * @identifier _SafeStr_1118 = "_-pU"
 * @identifier _SafeStr_1154 = "_-B1"
 * @identifier _SafeStr_1230 = "_-uk"
 * @identifier _SafeStr_1640 = "_-1"
 * @identifier _SafeStr_1690 = "_-33"
 * @identifier _SafeStr_1832 = "_-X4"
 * @identifier _SafeStr_2104 = "_-1c"
 * @identifier _SafeStr_2113 = "_-Zl"
 * @identifier _SafeStr_2119 = "_-CI"
 * @identifier _SafeStr_2323 = "_-k8"
 * @identifier _SafeStr_2564 = "_-Ec"
 * @identifier _SafeStr_2588 = "_-js"
 * @identifier _SafeStr_2591 = "_-3j"
 * @identifier _SafeStr_2633 = "_-Ei"
 * @identifier _SafeStr_2821 = "_-RT"
 * @identifier _SafeStr_2905 = "_-vr"
 * @identifier _SafeStr_3026 = "_-K4"
 * @identifier _SafeStr_3048 = "_-d1"
 * @identifier _SafeStr_3113 = "_-ue"
 * @identifier _SafeStr_3310 = "_-Tx"
 * @identifier _SafeStr_3317 = "_-p3"
 * @identifier _SafeStr_3367 = "_-gj"
 * @identifier _SafeStr_3465 = "_-o5"
 * @identifier _SafeStr_3646 = "_-eT"
 */
