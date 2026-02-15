package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _SafeCls_75 extends _SafeCls_35
   {
      
      private static const _SafeStr_892:uint = 0;
      
      private static const _SafeStr_1926:uint = 1;
      
      private static const _SafeStr_2292:uint = 2;
      
      private static const _SafeStr_1591:uint = 3;
      
      private static const _SafeStr_1037:uint = 0;
      
      private static const _SafeStr_426:uint = 1;
      
      private var _SafeStr_650:_SafeCls_34;
      
      private var _SafeStr_455:_SafeCls_34;
      
      private var _SafeStr_579:_SafeCls_34;
      
      private var _SafeStr_567:_SafeCls_34;
      
      private var _SafeStr_205:Point;
      
      private var _SafeStr_1163:uint;
      
      private var _SafeStr_245:_SafeCls_34;
      
      private var _SafeStr_218:Vector.<Vector.<_SafeCls_34>>;
      
      private var _SafeStr_408:Vector.<Vector.<_SafeCls_34>>;
      
      private var _SafeStr_463:Boolean;
      
      public function _SafeCls_75(param1:Game)
      {
         super(param1,"a_ScreenOnlineOptions",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc1_:MovieClip = _SafeStr_123.am_Panel;
         this._SafeStr_650 = _SafeStr_124(_loc1_);
         var _loc2_:MovieClip = _loc1_.am_PanelInternal;
         this._SafeStr_455 = _SafeStr_246(_loc2_.am_PlayNow,_SafeStr_892,this._SafeStr_3379,this._SafeStr_376);
         this._SafeStr_567 = _SafeStr_246(_loc2_.am_MakeGame,_SafeStr_1926,this._SafeStr_3242,this._SafeStr_376);
         this._SafeStr_579 = _SafeStr_246(_loc2_.am_JoinGame,_SafeStr_2292,this._SafeStr_2083,this._SafeStr_376);
         this._SafeStr_218 = new Vector.<Vector.<_SafeCls_34>>();
         this._SafeStr_218.push(new Vector.<_SafeCls_34>());
         this._SafeStr_218.push(new Vector.<_SafeCls_34>());
         this._SafeStr_218[_SafeStr_1037].push(_SafeStr_246(_loc2_.am_Close,_SafeStr_1591,this.OnClose,this._SafeStr_376));
         this._SafeStr_218[_SafeStr_426].push(this._SafeStr_455);
         this._SafeStr_218[_SafeStr_426].push(this._SafeStr_567);
         this._SafeStr_218[_SafeStr_426].push(this._SafeStr_579);
         this._SafeStr_205 = new Point(_SafeStr_426,_SafeStr_892);
         this._SafeStr_245 = this._SafeStr_455;
         this._SafeStr_408 = new Vector.<Vector.<_SafeCls_34>>();
         this._SafeStr_408.push(new Vector.<_SafeCls_34>());
         this._SafeStr_408.push(new Vector.<_SafeCls_34>());
         this._SafeStr_408[_SafeStr_1037].push(_SafeStr_124(_loc2_.am_Close.am_Highlighter));
         this._SafeStr_408[_SafeStr_426].push(_SafeStr_124(this._SafeStr_455.mMovieClip.am_Highlighter));
         this._SafeStr_408[_SafeStr_426].push(_SafeStr_124(this._SafeStr_567.mMovieClip.am_Highlighter));
         this._SafeStr_408[_SafeStr_426].push(_SafeStr_124(this._SafeStr_579.mMovieClip.am_Highlighter));
         _SafeStr_123.cacheAsBitmap = true;
      }
      
      override public function OnDestroyScreen() : void
      {
         var _loc1_:Vector.<_SafeCls_34> = null;
         this._SafeStr_455 = null;
         this._SafeStr_579 = null;
         this._SafeStr_567 = null;
         this._SafeStr_650 = null;
         this._SafeStr_245 = null;
         this._SafeStr_205 = null;
         if(this._SafeStr_218)
         {
            for each(_loc1_ in this._SafeStr_218)
            {
               _loc1_.length = 0;
               _loc1_ = null;
            }
            this._SafeStr_218 = null;
         }
         if(this._SafeStr_408)
         {
            for each(_loc1_ in this._SafeStr_408)
            {
               _loc1_.length = 0;
               _loc1_ = null;
            }
            this._SafeStr_408 = null;
         }
      }
      
      public function OnInitDisplay() : void
      {
         this._SafeStr_650.ClearAnimation();
         this._SafeStr_650.PlayAnimation("Display");
         this.EnableButtons();
         this._SafeStr_205.x = _SafeStr_426;
         this._SafeStr_205.y = _SafeStr_892;
         this._SafeStr_245 = this._SafeStr_455;
         this._SafeStr_463 = false;
         this._SafeStr_1163 = _SafeStr_892;
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
         if(_SafeStr_118.mbLostConnection)
         {
            this._SafeStr_567.DisableButton("Inactive");
            this._SafeStr_579.DisableButton("Inactive");
            this._SafeStr_455.DisableButton("Inactive");
            _SafeStr_118.screenError.Display(_SafeCls_79._SafeStr_997);
            this._SafeStr_463 = true;
         }
      }
      
      override public function OnRefreshScreen() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:_SafeCls_34 = null;
         var _loc6_:_SafeCls_34 = null;
         if(this._SafeStr_245)
         {
            _loc3_ = this._SafeStr_218.length;
            _loc1_ = 0;
            while(_loc1_ < _loc3_)
            {
               _loc4_ = this._SafeStr_218[_loc1_].length;
               _loc2_ = 0;
               while(_loc2_ < _loc4_)
               {
                  _loc5_ = this._SafeStr_218[_loc1_][_loc2_];
                  _loc6_ = this._SafeStr_408[_loc1_][_loc2_];
                  if(_loc6_)
                  {
                     if(_loc5_ == this._SafeStr_245)
                     {
                        if(!_loc6_.mbVisible)
                        {
                           _loc6_.Show();
                        }
                     }
                     else if(_loc6_.mbVisible)
                     {
                        _loc6_.Hide();
                     }
                  }
                  _loc2_++;
               }
               _loc1_++;
            }
         }
      }
      
      private function OnClose(param1:MouseEvent = null, param2:uint = 3) : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_326();
         this._SafeStr_463 = true;
         this._SafeStr_650.PlayAnimation("Display",_SafeCls_34._SafeStr_286);
      }
      
      private function _SafeStr_3379(param1:MouseEvent, param2:uint) : void
      {
         _SafeStr_118.screenSelectCharacter.Display(_SafeCls_41._SafeStr_445,0);
         this._SafeStr_326();
         Hide();
      }
      
      private function _SafeStr_2083(param1:MouseEvent, param2:uint) : void
      {
         _SafeStr_118.screenJoinGame.Display();
         this._SafeStr_326();
      }
      
      private function _SafeStr_3242(param1:MouseEvent, param2:uint) : void
      {
         if(!_SafeStr_118.serverConn || !_SafeStr_118.serverConn.SocketIsConnected())
         {
            return;
         }
         var _loc3_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_1679);
         _SafeStr_118.serverConn.SendPacket(_loc3_);
         this._SafeStr_326();
         Hide();
      }
      
      public function EnableButtons() : void
      {
         if(this._SafeStr_455)
         {
            this._SafeStr_455.EnableButton();
         }
         if(this._SafeStr_579)
         {
            this._SafeStr_579.EnableButton();
         }
         if(this._SafeStr_567)
         {
            this._SafeStr_567.EnableButton();
         }
      }
      
      public function _SafeStr_326() : void
      {
         if(this._SafeStr_455)
         {
            this._SafeStr_455.DisableButton("Ready");
         }
         if(this._SafeStr_579)
         {
            this._SafeStr_579.DisableButton("Ready");
         }
         if(this._SafeStr_567)
         {
            this._SafeStr_567.DisableButton("Ready");
         }
      }
      
      public function _SafeStr_191(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         if(!mbVisible || this._SafeStr_463)
         {
            return false;
         }
         switch(param1)
         {
            case Game._SafeStr_216:
            case Game._SafeStr_242:
               if(Boolean(this._SafeStr_245) && this._SafeStr_245 is _SafeCls_34)
               {
                  (this._SafeStr_245 as _SafeCls_34).mMovieClip.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
               }
               break;
            case Game._SafeStr_213:
               this._SafeStr_205.y = (this._SafeStr_205.y + 1) % this._SafeStr_218[this._SafeStr_205.x].length;
               _loc2_ = true;
               break;
            case Game._SafeStr_214:
               this._SafeStr_205.y = this._SafeStr_205.y == 0 ? this._SafeStr_218[this._SafeStr_205.x].length - 1 : this._SafeStr_205.y - 1;
               _loc2_ = true;
               break;
            case Game._SafeStr_208:
               if(this._SafeStr_205.x == _SafeStr_1037)
               {
                  this._SafeStr_205.y = this._SafeStr_1163;
               }
               else if(this._SafeStr_205.x == _SafeStr_426)
               {
                  this._SafeStr_1163 = this._SafeStr_205.y;
               }
               this._SafeStr_205.x = this._SafeStr_205.x == 0 ? this._SafeStr_218.length - 1 : this._SafeStr_205.x - 1;
               _loc2_ = true;
               break;
            case Game._SafeStr_207:
               if(this._SafeStr_205.x == _SafeStr_1037)
               {
                  this._SafeStr_205.y = this._SafeStr_1163;
               }
               else if(this._SafeStr_205.x == _SafeStr_426)
               {
                  this._SafeStr_1163 = this._SafeStr_205.y;
               }
               this._SafeStr_205.x = (this._SafeStr_205.x + 1) % this._SafeStr_218.length;
               _loc2_ = true;
               break;
            case Game._SafeStr_247:
            case Game._SafeStr_288:
               this.OnClose();
         }
         if(_loc2_)
         {
            if(this._SafeStr_205.y >= this._SafeStr_218[this._SafeStr_205.x].length)
            {
               this._SafeStr_205.y = this._SafeStr_218[this._SafeStr_205.x].length - 1;
            }
            this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205.x][this._SafeStr_205.y];
            _SafeStr_118.PlaySound("Mouseover_Click");
            _SafeStr_141();
         }
         return true;
      }
      
      private function _SafeStr_376(param1:MouseEvent, param2:uint) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this._SafeStr_463)
         {
            return;
         }
         if(this._SafeStr_3129(param2))
         {
            _loc4_ = 0;
            _loc3_ = 0;
         }
         else
         {
            _loc3_ = 1;
            _loc4_ = param2;
         }
         _SafeStr_118.PlaySound("Mouseover_Click");
         var _loc5_:_SafeCls_34 = this._SafeStr_218[_loc3_][_loc4_];
         if(_loc5_ == this._SafeStr_245)
         {
            return;
         }
         if(this._SafeStr_245)
         {
            this._SafeStr_245 = null;
         }
         this._SafeStr_245 = _loc5_;
         this._SafeStr_205.x = _loc3_;
         this._SafeStr_205.y = _loc4_;
         _SafeStr_141();
      }
      
      private function _SafeStr_3129(param1:uint) : Boolean
      {
         return param1 == _SafeStr_1591;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_41 = "_-tQ"
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_75 = "_-cy"
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeCls_79 = "_-gL"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_141 = "_-Ay"
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
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_408 = "_-ZL"
 * @identifier _SafeStr_426 = "_-qK"
 * @identifier _SafeStr_445 = "_-F4"
 * @identifier _SafeStr_455 = "_-eF"
 * @identifier _SafeStr_463 = "_-45"
 * @identifier _SafeStr_567 = "_-F"
 * @identifier _SafeStr_579 = "_-ky"
 * @identifier _SafeStr_650 = "_-ed"
 * @identifier _SafeStr_892 = "_-jx"
 * @identifier _SafeStr_997 = "_-5B"
 * @identifier _SafeStr_1037 = "_-hq"
 * @identifier _SafeStr_1163 = "_-Rw"
 * @identifier _SafeStr_1591 = "_-f"
 * @identifier _SafeStr_1679 = "_-I1"
 * @identifier _SafeStr_1926 = "_-Xx"
 * @identifier _SafeStr_2083 = "_-aC"
 * @identifier _SafeStr_2292 = "_-Kz"
 * @identifier _SafeStr_3129 = "_-2w"
 * @identifier _SafeStr_3242 = "_-aa"
 * @identifier _SafeStr_3379 = "_-t3"
 */
