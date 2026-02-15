package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _SafeCls_54 extends _SafeCls_35
   {
      
      private var _SafeStr_650:_SafeCls_34;
      
      private var _SafeStr_361:TextField;
      
      private var _SafeStr_579:_SafeCls_34;
      
      private var _SafeStr_1658:_SafeCls_34;
      
      private var _SafeStr_205:Point;
      
      private var _SafeStr_245:Object;
      
      private var _SafeStr_218:Vector.<Array>;
      
      private var _SafeStr_745:Vector.<_SafeCls_34>;
      
      private var _SafeStr_463:Boolean;
      
      private var _SafeStr_2096:Boolean;
      
      private var _SafeStr_2413:Boolean;
      
      public function _SafeCls_54(param1:Game)
      {
         super(param1,"a_ScreenJoinGame",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc1_:MovieClip = _SafeStr_123.am_Panel;
         this._SafeStr_650 = _SafeStr_124(_loc1_);
         var _loc2_:MovieClip = _loc1_.am_PanelInternal;
         this._SafeStr_218 = new Vector.<Array>();
         var _loc3_:uint = 0;
         while(_loc3_ < 6)
         {
            this._SafeStr_218.push(new Array());
            _loc3_++;
         }
         this._SafeStr_218[0].push(_SafeStr_130(_loc2_.am_Close,this.OnClose,this._SafeStr_376).mMovieClip);
         this._SafeStr_361 = _loc2_.am_JoinInputField;
         this._SafeStr_361.restrict = "0-9";
         this._SafeStr_361.addEventListener(MouseEvent.ROLL_OVER,this._SafeStr_3077);
         this._SafeStr_218[1].push(this._SafeStr_361);
         this._SafeStr_245 = this._SafeStr_361;
         this._SafeStr_205 = new Point(1,0);
         this._SafeStr_745 = new Vector.<_SafeCls_34>();
         _loc3_ = 0;
         while(_loc3_ < 10)
         {
            this._SafeStr_745.push(_SafeStr_246(_loc2_["am_Numpad" + _loc3_],_loc3_,this._SafeStr_3466,this._SafeStr_376));
            if(_loc3_)
            {
               this._SafeStr_218[uint((_loc3_ - 1) / 3) + 2].push(this._SafeStr_745[_loc3_].mMovieClip);
            }
            _loc3_++;
         }
         this._SafeStr_1658 = _SafeStr_130(_loc2_.am_NumpadBack,this._SafeStr_2942,this._SafeStr_376);
         this._SafeStr_218[5].push(this._SafeStr_1658.mMovieClip);
         this._SafeStr_218[5].push(this._SafeStr_745[0].mMovieClip);
         this._SafeStr_579 = _SafeStr_130(_loc2_.am_NumpadEnter,this._SafeStr_2083,this._SafeStr_376);
         this._SafeStr_218[5].push(this._SafeStr_579.mMovieClip);
         _SafeStr_123.cacheAsBitmap = true;
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_579 = null;
         this._SafeStr_650 = null;
         this._SafeStr_245 = null;
         this._SafeStr_361 = null;
         this._SafeStr_361.removeEventListener(MouseEvent.ROLL_OVER,this._SafeStr_376);
         if(this._SafeStr_218)
         {
            this._SafeStr_218.length = 0;
         }
         this._SafeStr_218 = null;
         if(this._SafeStr_745)
         {
            this._SafeStr_745.length = 0;
         }
         this._SafeStr_745 = null;
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
         if(!this._SafeStr_2413)
         {
            _SafeStr_141();
         }
         this._SafeStr_2413 = true;
         if(_SafeStr_118.mbLostConnection)
         {
            if(_SafeStr_118.mbLostConnection)
            {
               this._SafeStr_579.DisableButton("Inactive");
               _SafeStr_118.screenError.Display(_SafeCls_79._SafeStr_997);
               this._SafeStr_463 = true;
            }
         }
      }
      
      override public function OnRefreshScreen() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc1_ = this._SafeStr_218.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this._SafeStr_218[_loc1_].length - 1;
            while(_loc2_ >= 0)
            {
               if(this._SafeStr_218[_loc1_][_loc2_] is MovieClip)
               {
                  this._SafeStr_218[_loc1_][_loc2_].am_Highlighter.visible = false;
               }
               _loc2_--;
            }
            _loc1_--;
         }
         _SafeStr_123.am_Panel.am_PanelInternal.am_Highlighter.visible = false;
         if(_SafeStr_123.stage)
         {
            _SafeStr_123.stage.focus = _SafeStr_123.stage;
         }
         if(this._SafeStr_245)
         {
            if(this._SafeStr_245 is TextField)
            {
               if(this._SafeStr_245.stage)
               {
                  this._SafeStr_245.stage.focus = this._SafeStr_245;
               }
               _SafeStr_123.am_Panel.am_PanelInternal.am_Highlighter.visible = true;
            }
            else
            {
               this._SafeStr_245.am_Highlighter.visible = true;
            }
         }
      }
      
      public function OnInitDisplay() : void
      {
         this._SafeStr_650.ClearAnimation();
         this._SafeStr_650.PlayAnimation("Display");
         this.EnableButtons();
         this._SafeStr_205.x = 1;
         this._SafeStr_205.y = 0;
         this._SafeStr_245 = this._SafeStr_361;
         this._SafeStr_361.text = "";
         this._SafeStr_2413 = false;
      }
      
      private function _SafeStr_2083(param1:MouseEvent = null) : void
      {
         this._SafeStr_579.PlayAnimation("Click");
         var _loc2_:String = this._SafeStr_361.text;
         var _loc3_:String = _loc2_.replace(/#/,"");
         if(!_loc3_ || _loc3_ == "")
         {
            _SafeStr_118.screenError.Display("Please enter a game ID");
            return;
         }
         var _loc4_:uint = uint(_loc3_);
         if(!_loc4_)
         {
            _SafeStr_118.screenError.Display("Cannot find game " + _loc3_);
            return;
         }
         if(!_SafeStr_118.serverConn || !_SafeStr_118.serverConn.SocketIsConnected())
         {
            return;
         }
         var _loc5_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_1425);
         _loc5_._SafeStr_146(_loc4_);
         _SafeStr_118.serverConn.SendPacket(_loc5_);
         this._SafeStr_326();
      }
      
      private function OnClose(param1:MouseEvent = null) : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_326();
         this._SafeStr_463 = true;
         this._SafeStr_650.PlayAnimation("Display",_SafeCls_34._SafeStr_286);
      }
      
      private function _SafeStr_3466(param1:MouseEvent, param2:uint) : void
      {
         this._SafeStr_361.appendText(String(param2));
         this._SafeStr_745[param2].PlayAnimation("Click");
      }
      
      private function _SafeStr_2942(param1:MouseEvent = null) : void
      {
         this._SafeStr_361.text = this._SafeStr_361.text.substring(0,this._SafeStr_361.text.length - 1);
         this._SafeStr_1658.PlayAnimation("Click");
      }
      
      public function EnableButtons() : void
      {
         if(this._SafeStr_579)
         {
            this._SafeStr_579.EnableButton();
         }
         this._SafeStr_2096 = false;
      }
      
      public function _SafeStr_326() : void
      {
         if(this._SafeStr_579)
         {
            this._SafeStr_579.DisableButton("Ready");
         }
         this._SafeStr_2096 = true;
      }
      
      public function _SafeStr_191(param1:int) : Boolean
      {
         if(!mbVisible || this._SafeStr_463 || this._SafeStr_2096)
         {
            return false;
         }
         switch(param1)
         {
            case Game._SafeStr_213:
               _SafeStr_118.PlaySound("Mouseover_Click");
               this._SafeStr_205.y = (this._SafeStr_205.y + 1) % this._SafeStr_218[this._SafeStr_205.x].length;
               break;
            case Game._SafeStr_214:
               _SafeStr_118.PlaySound("Mouseover_Click");
               this._SafeStr_205.y = this._SafeStr_205.y == 0 ? this._SafeStr_218[this._SafeStr_205.x].length - 1 : this._SafeStr_205.y - 1;
               break;
            case Game._SafeStr_208:
               _SafeStr_118.PlaySound("Mouseover_Click");
               this._SafeStr_205.x = this._SafeStr_205.x == 0 ? this._SafeStr_218.length - 1 : this._SafeStr_205.x - 1;
               break;
            case Game._SafeStr_207:
               _SafeStr_118.PlaySound("Mouseover_Click");
               this._SafeStr_205.x = (this._SafeStr_205.x + 1) % this._SafeStr_218.length;
               break;
            case Game._SafeStr_247:
            case Game._SafeStr_288:
               this.OnClose();
               break;
            case Game._SafeStr_242:
               this._SafeStr_2083();
               break;
            case Game._SafeStr_216:
               if(this._SafeStr_245)
               {
                  if(this._SafeStr_245 is TextField && Boolean(this._SafeStr_245.stage.focus))
                  {
                     this._SafeStr_2083();
                     break;
                  }
                  this._SafeStr_245.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
               }
               break;
            case Game._SafeStr_1519:
               this._SafeStr_2942();
         }
         if(this._SafeStr_205.y >= this._SafeStr_218[this._SafeStr_205.x].length)
         {
            this._SafeStr_205.y = this._SafeStr_218[this._SafeStr_205.x].length - 1;
         }
         this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205.x][this._SafeStr_205.y];
         _SafeStr_141();
         return true;
      }
      
      private function _SafeStr_376(param1:MouseEvent, param2:uint = 4294967295) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(this._SafeStr_463)
         {
            return;
         }
         _SafeStr_118.PlaySound("Mouseover_Click");
         _loc3_ = this._SafeStr_218.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this._SafeStr_218[_loc3_].length - 1;
            while(_loc4_ >= 0)
            {
               if(this._SafeStr_218[_loc3_][_loc4_] == param1.currentTarget)
               {
                  this._SafeStr_205.x = _loc3_;
                  this._SafeStr_205.y = _loc4_;
                  this._SafeStr_245 = this._SafeStr_218[_loc3_][_loc4_];
                  _SafeStr_141();
                  return;
               }
               _loc4_--;
            }
            _loc3_--;
         }
      }
      
      private function _SafeStr_3077(param1:MouseEvent) : void
      {
         this._SafeStr_376(param1);
         param1.stopPropagation();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_54 = "_-0l"
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeCls_79 = "_-gL"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_130 = "_-Ri"
 * @identifier _SafeStr_141 = "_-Ay"
 * @identifier _SafeStr_146 = "_-jy"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_205 = "_-Ht"
 * @identifier _SafeStr_207 = "_-wd"
 * @identifier _SafeStr_208 = "_-9P"
 * @identifier _SafeStr_213 = "_-Rl"
 * @identifier _SafeStr_214 = "_-W1"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_218 = "_-6B"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_245 = "_-7I"
 * @identifier _SafeStr_246 = "_-L0"
 * @identifier _SafeStr_247 = "_-PM"
 * @identifier _SafeStr_286 = "_-kZ"
 * @identifier _SafeStr_288 = "_-m2"
 * @identifier _SafeStr_326 = "_-IZ"
 * @identifier _SafeStr_361 = "_-Uv"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_463 = "_-45"
 * @identifier _SafeStr_579 = "_-ky"
 * @identifier _SafeStr_650 = "_-ed"
 * @identifier _SafeStr_745 = "_-CQ"
 * @identifier _SafeStr_997 = "_-5B"
 * @identifier _SafeStr_1425 = "_-TP"
 * @identifier _SafeStr_1519 = "_-95"
 * @identifier _SafeStr_1658 = "_-Ls"
 * @identifier _SafeStr_2083 = "_-aC"
 * @identifier _SafeStr_2096 = "_-2Q"
 * @identifier _SafeStr_2413 = "_-Gk"
 * @identifier _SafeStr_2942 = "_-Z8"
 * @identifier _SafeStr_3077 = "_-k0"
 * @identifier _SafeStr_3466 = "_-fm"
 */
