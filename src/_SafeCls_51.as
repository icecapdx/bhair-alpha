package
{
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class _SafeCls_51 extends _SafeCls_35
   {
      
      private var _SafeStr_650:_SafeCls_34;
      
      private var mBackground:_SafeCls_34;
      
      private var _SafeStr_548:_SafeCls_34;
      
      private var _SafeStr_682:_SafeCls_34;
      
      private var _SafeStr_732:_SafeCls_34;
      
      private var _SafeStr_447:_SafeCls_34;
      
      private var _SafeStr_941:_SafeCls_34;
      
      private var _SafeStr_1622:_SafeCls_34;
      
      private var _SafeStr_205:uint;
      
      private var _SafeStr_245:_SafeCls_34;
      
      private var _SafeStr_218:Vector.<_SafeCls_34>;
      
      private var _SafeStr_408:Vector.<_SafeCls_34>;
      
      private var _SafeStr_463:Boolean;
      
      private var _SafeStr_670:String;
      
      private var _SafeStr_1969:_SafeCls_62;
      
      private var _SafeStr_1847:_SafeCls_62;
      
      private var _SafeStr_2308:_SafeCls_62;
      
      public function _SafeCls_51(param1:Game)
      {
         super(param1,"a_ScreenPause",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc1_:MovieClip = _SafeStr_123.am_Panel;
         this._SafeStr_650 = _SafeStr_124(_loc1_);
         var _loc2_:MovieClip = _loc1_.am_PanelInternal;
         this._SafeStr_548 = _SafeStr_130(_loc2_.am_ResumeButton,this._SafeStr_3335,this._SafeStr_376);
         this._SafeStr_732 = _SafeStr_130(_loc2_.am_MusicButton,this._SafeStr_3085,this._SafeStr_376);
         this._SafeStr_682 = _SafeStr_130(_loc2_.am_SoundButton,this._SafeStr_3571,this._SafeStr_376);
         this._SafeStr_1622 = _SafeStr_130(_loc2_.am_FullScreenButton,this._SafeStr_3130,this._SafeStr_376);
         this._SafeStr_941 = _SafeStr_130(_loc2_.am_KeybindButton,this._SafeStr_3459,this._SafeStr_376,this._SafeStr_3436);
         this._SafeStr_447 = _SafeStr_130(_loc2_.am_QuitButton,this._SafeStr_3429,this._SafeStr_376);
         this._SafeStr_1969 = _SafeStr_145(_loc2_.am_MusicButton.am_MusicButtonInternal.am_Text);
         this._SafeStr_1847 = _SafeStr_145(_loc2_.am_SoundButton.am_SoundButtonInternal.am_Text);
         this._SafeStr_2308 = _SafeStr_145(_loc2_.am_FullScreenButton.am_FullScreenButtonInternal.am_Text);
         this.mBackground = _SafeStr_124(_loc2_.am_Background);
         this._SafeStr_218 = new Vector.<_SafeCls_34>();
         this._SafeStr_218.push(_SafeStr_130(_loc2_.am_Close,this.OnClose,this._SafeStr_376));
         this._SafeStr_218.push(this._SafeStr_548);
         this._SafeStr_218.push(this._SafeStr_732);
         this._SafeStr_218.push(this._SafeStr_682);
         this._SafeStr_218.push(this._SafeStr_1622);
         this._SafeStr_218.push(this._SafeStr_941);
         this._SafeStr_218.push(this._SafeStr_447);
         this._SafeStr_245 = this._SafeStr_548;
         this._SafeStr_408 = new Vector.<_SafeCls_34>();
         this._SafeStr_408.push(_SafeStr_124(_loc2_.am_Close.am_Highlighter));
         this._SafeStr_408.push(_SafeStr_124(this._SafeStr_548.mMovieClip.am_Highlighter));
         this._SafeStr_408.push(_SafeStr_124(this._SafeStr_732.mMovieClip.am_Highlighter));
         this._SafeStr_408.push(_SafeStr_124(this._SafeStr_682.mMovieClip.am_Highlighter));
         this._SafeStr_408.push(_SafeStr_124(this._SafeStr_1622.mMovieClip.am_Highlighter));
         this._SafeStr_408.push(_SafeStr_124(this._SafeStr_941.mMovieClip.am_Highlighter));
         this._SafeStr_408.push(_SafeStr_124(this._SafeStr_447.mMovieClip.am_Highlighter));
         _SafeStr_123.cacheAsBitmap = true;
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_548 = null;
         this._SafeStr_682 = null;
         this._SafeStr_732 = null;
         this._SafeStr_1622 = null;
         this._SafeStr_941 = null;
         this._SafeStr_447 = null;
         this._SafeStr_245 = null;
         this._SafeStr_650 = null;
         this.mBackground = null;
         if(this._SafeStr_218)
         {
            this._SafeStr_218.length = 0;
         }
         this._SafeStr_218 = null;
         if(this._SafeStr_408)
         {
            this._SafeStr_408.length = 0;
         }
         this._SafeStr_408 = null;
         this._SafeStr_1969 = null;
         this._SafeStr_1847 = null;
         this._SafeStr_2308 = null;
      }
      
      override public function OnTickScreen() : void
      {
         if(this._SafeStr_463)
         {
            if(this._SafeStr_650.mbCompleted)
            {
               this._SafeStr_463 = false;
               _SafeStr_118.screenOnlineOptions.EnableButtons();
               Hide();
            }
         }
      }
      
      override public function OnRefreshScreen() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         var _loc3_:_SafeCls_34 = null;
         var _loc4_:_SafeCls_34 = null;
         if(this._SafeStr_245)
         {
            _loc2_ = this._SafeStr_218.length;
            _loc1_ = 0;
            while(_loc1_ < _loc2_)
            {
               _loc3_ = this._SafeStr_218[_loc1_];
               _loc4_ = this._SafeStr_408[_loc1_];
               if(_loc3_ == this._SafeStr_245)
               {
                  if(!_loc4_.mbVisible)
                  {
                     _loc4_.Show();
                  }
               }
               else if(_loc4_.mbVisible)
               {
                  _loc4_.Hide();
               }
               _loc1_++;
            }
         }
      }
      
      public function OnInitDisplay() : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_650.ClearAnimation();
         this._SafeStr_650.PlayAnimation("Display");
         this.EnableButtons();
         this._SafeStr_205 = 1;
         this._SafeStr_245 = this._SafeStr_548;
         this._SafeStr_670 = _SafeStr_118.gameState;
         if(_SafeStr_118.IsPlayingWithoutServer())
         {
            _SafeStr_118.gameState = Game._SafeStr_543;
            this.mBackground.PlayAnimation("Offline");
            this._SafeStr_447.Show();
         }
         else
         {
            this.mBackground.PlayAnimation("Online");
            this._SafeStr_447.Hide();
         }
         this._SafeStr_2000();
         this._SafeStr_2592();
         this._SafeStr_2717();
      }
      
      private function _SafeStr_3335(param1:MouseEvent) : void
      {
         this.OnClose();
      }
      
      private function _SafeStr_3085(param1:MouseEvent) : void
      {
         var _loc2_:Number = _SafeCls_13._SafeStr_2043(_SafeCls_5._SafeStr_427) ? 0 : 1;
         _SafeCls_13._SafeStr_2903(_SafeCls_5._SafeStr_427,_loc2_);
         Brawlhalla._SafeStr_2240();
         this._SafeStr_2000();
      }
      
      private function _SafeStr_3571(param1:MouseEvent) : void
      {
         var _loc2_:Number = _SafeCls_13._SafeStr_526 ? 0 : 1;
         _SafeCls_13._SafeStr_2677(_loc2_);
         Brawlhalla._SafeStr_2240();
         this._SafeStr_2000();
      }
      
      private function _SafeStr_2000() : void
      {
         this._SafeStr_1969.SetText("MUSIC: " + (_SafeCls_13._SafeStr_2043(_SafeCls_5._SafeStr_427) ? "ON" : "OFF"));
         this._SafeStr_1847.SetText("SOUND: " + (_SafeCls_13._SafeStr_526 ? "ON" : "OFF"));
      }
      
      private function _SafeStr_3130(param1:MouseEvent) : void
      {
         var _loc2_:* = !Brawlhalla._SafeStr_801;
         _SafeStr_118.main.stage.displayState = _loc2_ ? StageDisplayState.NORMAL : StageDisplayState.FULL_SCREEN_INTERACTIVE;
         Brawlhalla._SafeStr_801 = _loc2_;
         Brawlhalla._SafeStr_2240();
         this._SafeStr_2592();
      }
      
      private function _SafeStr_2592() : void
      {
         this._SafeStr_2308.SetText("FULL SCREEN: " + (Brawlhalla._SafeStr_801 ? "OFF" : "ON"));
      }
      
      private function _SafeStr_3459(param1:MouseEvent) : void
      {
         if(this._SafeStr_670 != Game._SafeStr_348)
         {
            return;
         }
         _SafeStr_118.screenKeybinds.Display();
      }
      
      private function _SafeStr_3436(param1:MouseEvent) : void
      {
         this._SafeStr_2717();
      }
      
      private function _SafeStr_2717() : void
      {
         if(this._SafeStr_670 == Game._SafeStr_348)
         {
            this._SafeStr_941.PlayAnimation("Ready");
         }
         else
         {
            this._SafeStr_941.PlayAnimation("Inactive");
         }
      }
      
      private function _SafeStr_3429(param1:MouseEvent) : void
      {
         this.OnClose();
         switch(_SafeStr_118.gameState)
         {
            case Game._SafeStr_513:
               _SafeStr_118.EndStateCouch();
               if(_SafeStr_118.IsStandaloneClient())
               {
                  _SafeStr_118.RestartLocalGame();
               }
               this._SafeStr_463 = false;
               break;
            case Game._SafeStr_417:
               _SafeStr_118.EndStatePractice();
               if(_SafeStr_118.mMatchMakerData)
               {
                  _SafeStr_118.mMatchMakerData.LeaveQueue();
               }
               _SafeStr_118.screenSelectCharacter.Reopen();
               this._SafeStr_463 = false;
         }
      }
      
      public function OnClose(param1:MouseEvent = null) : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_326();
         this._SafeStr_463 = true;
         this._SafeStr_650.PlayAnimation("Display",_SafeCls_34._SafeStr_286);
         _SafeStr_118.gameState = this._SafeStr_670;
      }
      
      public function EnableButtons() : void
      {
         if(this._SafeStr_548)
         {
            this._SafeStr_548.EnableButton();
         }
         if(this._SafeStr_682)
         {
            this._SafeStr_682.EnableButton();
         }
         if(this._SafeStr_732)
         {
            this._SafeStr_732.EnableButton();
         }
         if(this._SafeStr_447)
         {
            if(_SafeStr_118.IsPlayingWithoutServer())
            {
               this._SafeStr_447.EnableButton();
            }
            else
            {
               this._SafeStr_447.DisableButton("Ready");
            }
         }
      }
      
      public function _SafeStr_326() : void
      {
         if(this._SafeStr_548)
         {
            this._SafeStr_548.DisableButton("Ready");
         }
         if(this._SafeStr_682)
         {
            this._SafeStr_682.DisableButton("Ready");
         }
         if(this._SafeStr_732)
         {
            this._SafeStr_732.DisableButton("Ready");
         }
         if(this._SafeStr_447)
         {
            this._SafeStr_447.DisableButton("Ready");
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
            case Game._SafeStr_305:
               if(this._SafeStr_245)
               {
                  this._SafeStr_245.mMovieClip.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
               }
               break;
            case Game._SafeStr_208:
               this._SafeStr_205 = this._SafeStr_205 <= 1 ? uint(this._SafeStr_218.length - 1) : uint(this._SafeStr_205 - 1);
               if((this._SafeStr_670 == Game._SafeStr_464 || this._SafeStr_670 == Game._SafeStr_348) && this._SafeStr_205 == this._SafeStr_218.length - 1)
               {
                  this._SafeStr_205 = this._SafeStr_218.length - 2;
               }
               this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205];
               _SafeStr_118.PlaySound("Mouseover_Click");
               _SafeStr_141();
               break;
            case Game._SafeStr_207:
               this._SafeStr_205 = (this._SafeStr_205 + 1) % this._SafeStr_218.length;
               if(!this._SafeStr_205 || (this._SafeStr_670 == Game._SafeStr_464 || this._SafeStr_670 == Game._SafeStr_348) && this._SafeStr_205 == this._SafeStr_218.length - 1)
               {
                  this._SafeStr_205 = 1;
               }
               this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205];
               _SafeStr_118.PlaySound("Mouseover_Click");
               _SafeStr_141();
               break;
            case Game._SafeStr_242:
            case Game._SafeStr_247:
            case Game._SafeStr_288:
            case Game._SafeStr_293:
               this.OnClose();
         }
         return true;
      }
      
      private function _SafeStr_376(param1:MouseEvent) : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         var _loc2_:* = int(this._SafeStr_218.length - 1);
         while(_loc2_ >= 0)
         {
            if(this._SafeStr_218[_loc2_].mMovieClip == param1.currentTarget)
            {
               this._SafeStr_245 = this._SafeStr_218[_loc2_];
               this._SafeStr_205 = _loc2_;
               break;
            }
            _loc2_--;
         }
         _SafeStr_118.PlaySound("Mouseover_Click");
         _SafeStr_141();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_5 = "_-N0"
 * @identifier _SafeCls_13 = "_-Mg"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_51 = "_-WC"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_130 = "_-Ri"
 * @identifier _SafeStr_141 = "_-Ay"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_205 = "_-Ht"
 * @identifier _SafeStr_207 = "_-wd"
 * @identifier _SafeStr_208 = "_-9P"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_218 = "_-6B"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_245 = "_-7I"
 * @identifier _SafeStr_247 = "_-PM"
 * @identifier _SafeStr_286 = "_-kZ"
 * @identifier _SafeStr_288 = "_-m2"
 * @identifier _SafeStr_293 = "_-tr"
 * @identifier _SafeStr_305 = "_-2J"
 * @identifier _SafeStr_326 = "_-IZ"
 * @identifier _SafeStr_348 = "_-1E"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_408 = "_-ZL"
 * @identifier _SafeStr_417 = "_-pJ"
 * @identifier _SafeStr_427 = "_-fv"
 * @identifier _SafeStr_447 = "_-5J"
 * @identifier _SafeStr_463 = "_-45"
 * @identifier _SafeStr_464 = "_-28"
 * @identifier _SafeStr_513 = "_-VF"
 * @identifier _SafeStr_526 = "_-Pa"
 * @identifier _SafeStr_543 = "_-2R"
 * @identifier _SafeStr_548 = "_-a8"
 * @identifier _SafeStr_650 = "_-ed"
 * @identifier _SafeStr_670 = "_-7C"
 * @identifier _SafeStr_682 = "_-rd"
 * @identifier _SafeStr_732 = "_-L2"
 * @identifier _SafeStr_801 = "_-qc"
 * @identifier _SafeStr_941 = "_-0z"
 * @identifier _SafeStr_1622 = "while"
 * @identifier _SafeStr_1847 = "_-bN"
 * @identifier _SafeStr_1969 = "_-eM"
 * @identifier _SafeStr_2000 = "_-6t"
 * @identifier _SafeStr_2043 = "_-lp"
 * @identifier _SafeStr_2240 = "_-J6"
 * @identifier _SafeStr_2308 = "_-BL"
 * @identifier _SafeStr_2592 = "_-Dl"
 * @identifier _SafeStr_2677 = "_-se"
 * @identifier _SafeStr_2717 = "_-aD"
 * @identifier _SafeStr_2903 = "_-Js"
 * @identifier _SafeStr_3085 = "_-h9"
 * @identifier _SafeStr_3130 = "_-et"
 * @identifier _SafeStr_3335 = "_-0y"
 * @identifier _SafeStr_3429 = "_-WT"
 * @identifier _SafeStr_3436 = "_-qx"
 * @identifier _SafeStr_3459 = "_-oS"
 * @identifier _SafeStr_3571 = "_-Vf"
 */
