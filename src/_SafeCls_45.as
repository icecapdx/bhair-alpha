package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class _SafeCls_45 extends _SafeCls_35
   {
      
      private var _SafeStr_650:_SafeCls_34;
      
      private var _SafeStr_350:_SafeCls_34;
      
      private var _SafeStr_412:_SafeCls_34;
      
      private var _SafeStr_393:_SafeCls_34;
      
      private var _SafeStr_1776:_SafeCls_62;
      
      private var _SafeStr_2282:_SafeCls_62;
      
      private var _SafeStr_2261:_SafeCls_62;
      
      private var _SafeStr_205:uint;
      
      private var _SafeStr_245:_SafeCls_34;
      
      private var _SafeStr_218:Vector.<_SafeCls_34>;
      
      private var _SafeStr_408:Vector.<_SafeCls_34>;
      
      private var _SafeStr_463:Boolean;
      
      public function _SafeCls_45(param1:Game)
      {
         super(param1,"a_ScreenGameOptions",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc1_:MovieClip = _SafeStr_123.am_Panel;
         this._SafeStr_650 = _SafeStr_124(_loc1_);
         var _loc2_:MovieClip = _loc1_.am_PanelInternal;
         this._SafeStr_350 = _SafeStr_130(_loc2_.am_GameMode,this._SafeStr_3400,this._SafeStr_376);
         this._SafeStr_412 = _SafeStr_130(_loc2_.am_UseBots,this._SafeStr_3072,this._SafeStr_376);
         this._SafeStr_393 = _SafeStr_130(_loc2_.am_UseKeyboard,this._SafeStr_3219,this._SafeStr_376);
         this._SafeStr_218 = new Vector.<_SafeCls_34>();
         this._SafeStr_218.push(_SafeStr_130(_loc2_.am_Close,this.OnClose,this._SafeStr_376));
         this._SafeStr_218.push(this._SafeStr_350);
         this._SafeStr_218.push(this._SafeStr_412);
         this._SafeStr_218.push(this._SafeStr_393);
         this._SafeStr_205 = 1;
         this._SafeStr_245 = this._SafeStr_350;
         this._SafeStr_408 = new Vector.<_SafeCls_34>();
         this._SafeStr_408.push(_SafeStr_124(_loc2_.am_Close.am_Highlighter));
         this._SafeStr_408.push(_SafeStr_124(this._SafeStr_350.mMovieClip.am_Highlighter));
         this._SafeStr_408.push(_SafeStr_124(this._SafeStr_412.mMovieClip.am_Highlighter));
         this._SafeStr_408.push(_SafeStr_124(this._SafeStr_393.mMovieClip.am_Highlighter));
         this._SafeStr_1776 = _SafeStr_145(this._SafeStr_350.mMovieClip.am_ButtonInternal.am_Text);
         this._SafeStr_2282 = _SafeStr_145(this._SafeStr_412.mMovieClip.am_ButtonInternal.am_Text);
         this._SafeStr_2261 = _SafeStr_145(this._SafeStr_393.mMovieClip.am_ButtonInternal.am_Text);
         _SafeStr_123.cacheAsBitmap = true;
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_350 = null;
         this._SafeStr_412 = null;
         this._SafeStr_393 = null;
         this._SafeStr_1776 = null;
         this._SafeStr_2282 = null;
         this._SafeStr_2261 = null;
         this._SafeStr_245 = null;
         this._SafeStr_650 = null;
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
      
      override public function OnRefreshScreen() : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:_SafeCls_34 = null;
         var _loc5_:_SafeCls_34 = null;
         if(this._SafeStr_245)
         {
            _loc3_ = this._SafeStr_218.length;
            _loc2_ = 0;
            while(_loc2_ < _loc3_)
            {
               _loc4_ = this._SafeStr_218[_loc2_];
               _loc5_ = this._SafeStr_408[_loc2_];
               if(_loc4_ == this._SafeStr_245)
               {
                  if(!_loc5_.mbVisible)
                  {
                     _loc5_.Show();
                  }
               }
               else if(_loc5_.mbVisible)
               {
                  _loc5_.Hide();
               }
               _loc2_++;
            }
         }
         var _loc1_:* = !(_SafeStr_118.screenSelectCharacter.mGameType == _SafeCls_41._SafeStr_278 && Boolean(_SafeStr_118.mbOverrideKeyboard) && _SafeStr_118.mControllerInputs.length > 0);
         this._SafeStr_2261.SetText(_loc1_ ? "ON" : "OFF");
         this._SafeStr_2282.SetText(_SafeStr_118.screenSelectCharacter.mbUseBots ? "ON" : "OFF");
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
         this._SafeStr_245 = this._SafeStr_350;
         this._SafeStr_1776.SetText(!_SafeStr_118.screenSelectCharacter.mbStockMode ? "TIMED" : "STOCK");
         if(_SafeStr_118.screenSelectCharacter.mGameType != _SafeCls_41._SafeStr_278)
         {
            this._SafeStr_412.DisableButton("Inactive");
         }
         else
         {
            this._SafeStr_412.EnableButton();
         }
         if(_SafeStr_118.screenSelectCharacter.mGameType != _SafeCls_41._SafeStr_278 || !_SafeStr_118.mControllerInputs.length)
         {
            this._SafeStr_393.DisableButton("Inactive");
         }
         else
         {
            this._SafeStr_393.EnableButton();
         }
      }
      
      public function _SafeStr_3116() : void
      {
         this._SafeStr_350.DisableButton("Inactive");
      }
      
      public function _SafeStr_3099() : void
      {
         this._SafeStr_350.EnableButton();
      }
      
      private function _SafeStr_3400(param1:MouseEvent) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:_SafeCls_77 = null;
         var _loc2_:uint = uint(_SafeStr_118.screenSelectCharacter.mGameType);
         switch(_loc2_)
         {
            case _SafeCls_41._SafeStr_231:
               if(!_SafeStr_118.mCustomGameData.mbLeader)
               {
                  return;
               }
               _SafeStr_118.screenSelectCharacter.mbStockMode = !_SafeStr_118.screenSelectCharacter.mbStockMode;
               this._SafeStr_3116();
               if(_SafeStr_118.screenSelectCharacter.mbStockMode)
               {
                  _loc3_ = _SafeCls_4._SafeStr_1301._SafeStr_577;
                  _SafeStr_118.mCustomGameData.SetGameMode(_loc3_);
                  _loc4_ = new _SafeCls_77(_SafeCls_73._SafeStr_1355);
                  _loc4_._SafeStr_146(_loc3_);
                  _SafeStr_118.serverConn.SendPacket(_loc4_);
               }
               else
               {
                  _loc3_ = _SafeCls_4._SafeStr_796._SafeStr_577;
                  _SafeStr_118.mCustomGameData.SetGameMode(_loc3_);
                  _loc4_ = new _SafeCls_77(_SafeCls_73._SafeStr_1355);
                  _loc4_._SafeStr_146(_loc3_);
                  _SafeStr_118.serverConn.SendPacket(_loc4_);
               }
               _SafeStr_141();
               break;
            case _SafeCls_41._SafeStr_278:
               _SafeStr_118.screenSelectCharacter.mbStockMode = !_SafeStr_118.screenSelectCharacter.mbStockMode;
               _SafeStr_141();
         }
         this._SafeStr_1776.SetText(!_SafeStr_118.screenSelectCharacter.mbStockMode ? "TIMED" : "STOCK");
         this._SafeStr_350.PlayAnimation("Click");
      }
      
      private function _SafeStr_3072(param1:MouseEvent) : void
      {
         _SafeStr_118.screenSelectCharacter.ToggleBots();
         _SafeStr_141();
         this._SafeStr_412.PlayAnimation("Click");
      }
      
      private function _SafeStr_3219(param1:MouseEvent) : void
      {
         _SafeStr_118.screenSelectCharacter.ToggleOverrideKeyboard();
         _SafeStr_141();
         this._SafeStr_393.PlayAnimation("Click");
      }
      
      public function OnClose(param1:MouseEvent = null) : void
      {
         if(this._SafeStr_463 || !this._SafeStr_650.mbCompleted)
         {
            return;
         }
         this._SafeStr_326();
         this._SafeStr_463 = true;
         this._SafeStr_650.PlayAnimation("Display",_SafeCls_34._SafeStr_286);
      }
      
      public function EnableButtons() : void
      {
         if(this._SafeStr_350)
         {
            this._SafeStr_350.EnableButton();
         }
         if(this._SafeStr_412)
         {
            this._SafeStr_412.EnableButton();
         }
         if(this._SafeStr_393)
         {
            this._SafeStr_393.EnableButton();
         }
      }
      
      public function _SafeStr_326() : void
      {
         if(this._SafeStr_350)
         {
            this._SafeStr_350.DisableButton("Ready");
         }
         if(this._SafeStr_412)
         {
            this._SafeStr_412.DisableButton("Ready");
         }
         if(this._SafeStr_393)
         {
            this._SafeStr_393.DisableButton("Ready");
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
            case Game._SafeStr_242:
            case Game._SafeStr_216:
               if(this._SafeStr_245)
               {
                  this._SafeStr_245.mMovieClip.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
               }
               break;
            case Game._SafeStr_208:
               this._SafeStr_205 = this._SafeStr_205 == 0 ? uint(this._SafeStr_218.length - 1) : uint(this._SafeStr_205 - 1);
               this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205];
               _SafeStr_118.PlaySound("Mouseover_Click");
               _SafeStr_141();
               break;
            case Game._SafeStr_207:
               this._SafeStr_205 = (this._SafeStr_205 + 1) % this._SafeStr_218.length;
               this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205];
               _SafeStr_118.PlaySound("Mouseover_Click");
               _SafeStr_141();
               break;
            case Game._SafeStr_316:
            case Game._SafeStr_247:
            case Game._SafeStr_288:
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
 * @identifier _SafeCls_4 = "_-Kq"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_41 = "_-tQ"
 * @identifier _SafeCls_45 = "_-rk"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_130 = "_-Ri"
 * @identifier _SafeStr_141 = "_-Ay"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_146 = "_-jy"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_205 = "_-Ht"
 * @identifier _SafeStr_207 = "_-wd"
 * @identifier _SafeStr_208 = "_-9P"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_218 = "_-6B"
 * @identifier _SafeStr_231 = "_-9A"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_245 = "_-7I"
 * @identifier _SafeStr_247 = "_-PM"
 * @identifier _SafeStr_278 = "_-kv"
 * @identifier _SafeStr_286 = "_-kZ"
 * @identifier _SafeStr_288 = "_-m2"
 * @identifier _SafeStr_316 = "_-cQ"
 * @identifier _SafeStr_326 = "_-IZ"
 * @identifier _SafeStr_350 = "_-DM"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_393 = "_-lj"
 * @identifier _SafeStr_408 = "_-ZL"
 * @identifier _SafeStr_412 = "_-Mv"
 * @identifier _SafeStr_463 = "_-45"
 * @identifier _SafeStr_577 = "_-RW"
 * @identifier _SafeStr_650 = "_-ed"
 * @identifier _SafeStr_796 = "_-3s"
 * @identifier _SafeStr_1301 = "_-2h"
 * @identifier _SafeStr_1355 = "_-Sj"
 * @identifier _SafeStr_1776 = "_-0B"
 * @identifier _SafeStr_2261 = "_-Lh"
 * @identifier _SafeStr_2282 = "_-rs"
 * @identifier _SafeStr_3072 = "_-qA"
 * @identifier _SafeStr_3099 = "_-U4"
 * @identifier _SafeStr_3116 = "_-ZG"
 * @identifier _SafeStr_3219 = "_-CJ"
 * @identifier _SafeStr_3400 = "_-CE"
 */
