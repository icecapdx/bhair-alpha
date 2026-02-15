package
{
   import flash.desktop.NativeApplication;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _SafeCls_68 extends _SafeCls_35
   {
      
      private static const _SafeStr_1576:uint = 1;
      
      private static const _SafeStr_1720:uint = 2;
      
      private var mNewsText:_SafeCls_62;
      
      private var _SafeStr_1486:_SafeCls_62;
      
      private var _SafeStr_1472:_SafeCls_34;
      
      private var _SafeStr_205:Point;
      
      private var _SafeStr_2368:uint;
      
      private var _SafeStr_1362:_SafeCls_34;
      
      private var _SafeStr_245:_SafeCls_34;
      
      private var _SafeStr_218:Vector.<Vector.<_SafeCls_34>>;
      
      private var _SafeStr_487:Boolean = false;
      
      private var _SafeStr_570:_SafeCls_34;
      
      private var _SafeStr_459:_SafeCls_34;
      
      public function _SafeCls_68(param1:Game)
      {
         super(param1,"a_ScreenCentralHUB",null);
      }
      
      public static function _SafeStr_3591(param1:_SafeCls_34, param2:String, param3:Boolean) : void
      {
         var _loc4_:uint = 0;
         if(param3)
         {
            _loc4_ = param1.mMovieClip.currentFrame + 1;
            param1.PlayAnimation(param2);
            param1._SafeStr_324 = _loc4_ > param1._SafeStr_499 ? param1._SafeStr_499 : _loc4_;
         }
         else
         {
            _loc4_ = param1.mMovieClip.currentFrame - 1;
            param1.PlayAnimation(param2,_SafeCls_34._SafeStr_286);
            param1._SafeStr_324 = _loc4_ < 1 ? 1 : _loc4_;
         }
      }
      
      override public function OnCreateScreen() : void
      {
         this._SafeStr_1486 = _SafeStr_145(_SafeStr_123.am_NewsHeader);
         this.mNewsText = _SafeStr_145(_SafeStr_123.am_NewsText);
         this._SafeStr_1472 = _SafeStr_124(_SafeStr_123.am_ServerStatus);
         this._SafeStr_218 = new Vector.<Vector.<_SafeCls_34>>();
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            this._SafeStr_218.push(new Vector.<_SafeCls_34>());
            _loc1_++;
         }
         this._SafeStr_218[0].push(_SafeStr_130(_SafeStr_123.am_Profile,this._SafeStr_3210,this._SafeStr_376));
         this._SafeStr_218[0].push(_SafeStr_130(_SafeStr_123.am_Warriors,this._SafeStr_3558,this._SafeStr_376));
         this._SafeStr_218[0].push(_SafeStr_130(_SafeStr_123.am_Talents,this._SafeStr_3118,this._SafeStr_376));
         this._SafeStr_218[0].push(_SafeStr_130(_SafeStr_123.am_Social,this._SafeStr_3430,this._SafeStr_376));
         this._SafeStr_218[0].push(_SafeStr_130(_SafeStr_123.am_Trophies,this._SafeStr_3507,this._SafeStr_376));
         this._SafeStr_218[0].push(_SafeStr_130(_SafeStr_123.am_Options,this._SafeStr_3458,this._SafeStr_376));
         this._SafeStr_218[1].push(_SafeStr_130(_SafeStr_123.am_ExitButton,this._SafeStr_2850,this._SafeStr_376));
         this._SafeStr_218[1].push(_SafeStr_130(_SafeStr_123.am_ControlButton,this._SafeStr_2481,this._SafeStr_376));
         this._SafeStr_218[1].push(_SafeStr_130(_SafeStr_123.am_LocalMatchButton,this._SafeStr_3233,this._SafeStr_376));
         this._SafeStr_218[2].push(_SafeStr_130(_SafeStr_123.am_ExitButton,this._SafeStr_2850,this._SafeStr_376));
         this._SafeStr_218[2].push(_SafeStr_130(_SafeStr_123.am_ControlButton,this._SafeStr_2481,this._SafeStr_376));
         this._SafeStr_218[2].push(this._SafeStr_1362 = _SafeStr_130(_SafeStr_123.am_PlayOnlineButton,this._SafeStr_3548,this._SafeStr_376,this._SafeStr_3030));
         this._SafeStr_570 = _SafeStr_177(_SafeStr_123.am_Reconnect,this._SafeStr_3529,this._SafeStr_376);
         this._SafeStr_459 = _SafeStr_124(_SafeStr_123.am_Connecting);
         this._SafeStr_205 = new Point(_SafeStr_1576,_SafeStr_1720);
         this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205.x][this._SafeStr_205.y];
      }
      
      override public function OnDestroyScreen() : void
      {
         var _loc1_:Vector.<_SafeCls_34> = null;
         this._SafeStr_570 = null;
         this._SafeStr_459 = null;
         this.mNewsText = null;
         this._SafeStr_1486 = null;
         this._SafeStr_245 = null;
         this._SafeStr_1472 = null;
         if(this._SafeStr_218)
         {
            for each(_loc1_ in this._SafeStr_218)
            {
               _loc1_.length = 0;
               _loc1_ = null;
            }
            this._SafeStr_218 = null;
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
               this._SafeStr_218[_loc1_][_loc2_].mMovieClip.am_Highlighter.visible = false;
               _loc2_--;
            }
            _loc1_--;
         }
         if(this._SafeStr_245)
         {
            this._SafeStr_245.mMovieClip.am_Highlighter.visible = true;
         }
      }
      
      override public function OnTickScreen() : void
      {
         if(Boolean(_SafeStr_118.mbLostConnection) && !this._SafeStr_487)
         {
            this._SafeStr_487 = true;
            this._SafeStr_1362.PlayAnimation("Inactive");
            this._SafeStr_2624(!this._SafeStr_487);
            this._SafeStr_570.Show();
            this._SafeStr_459.Hide();
         }
         else if(!_SafeStr_118.mbLostConnection && this._SafeStr_487)
         {
            this._SafeStr_487 = false;
            this._SafeStr_1362.PlayAnimation("Ready");
            this._SafeStr_2624(!this._SafeStr_487);
            this._SafeStr_570.Hide();
            this._SafeStr_459.Hide();
         }
         if(!this._SafeStr_487 && this._SafeStr_570.mbVisible)
         {
            this._SafeStr_570.Hide();
         }
         if(!_SafeStr_118.bShouldBeginLoginProcess && this._SafeStr_459.mbVisible)
         {
            this._SafeStr_459.Hide();
            if(this._SafeStr_487)
            {
               this._SafeStr_570.Show();
            }
         }
         if(Boolean(_SafeStr_118.bShouldBeginLoginProcess) && !this._SafeStr_459.mbVisible)
         {
            this._SafeStr_570.Hide();
            this._SafeStr_459.PlayAnimation("Ready",_SafeCls_34._SafeStr_477);
            this._SafeStr_459.Show();
         }
      }
      
      private function _SafeStr_3030(param1:MouseEvent) : void
      {
         this._SafeStr_1362.PlayAnimation(this._SafeStr_487 ? "Inactive" : "Ready");
      }
      
      public function OnInitDisplay() : void
      {
         _SafeStr_118.mbOverrideKeyboard = true;
         this._SafeStr_205.x = _SafeStr_1576;
         this._SafeStr_205.y = _SafeStr_1720;
         this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205.x][this._SafeStr_205.y];
         this._SafeStr_2368 = 1;
         if(_SafeStr_118.mNewsText)
         {
            this._SafeStr_1895("WELCOME TO BRAWLHALLA",_SafeStr_118.mNewsText);
         }
         else if(_SafeStr_118.mbLostConnection)
         {
            this._SafeStr_1895("NEWS SERVER OFFLINE"," ");
         }
         else
         {
            this._SafeStr_1895("LOADING NEWS..."," ");
         }
      }
      
      private function _SafeStr_3548(param1:Event) : void
      {
         if(this._SafeStr_487)
         {
            return;
         }
         this._SafeStr_3394(param1);
         _SafeStr_118.screenOnlineOptions.Display();
         _SafeStr_118.mbOverrideKeyboard = true;
         _SafeStr_118.PlaySoundAtPosition(0,"Online",0,0);
      }
      
      private function _SafeStr_3233(param1:Event) : void
      {
         var _loc2_:uint = 0;
         if(param1 is _SafeCls_100)
         {
            _loc2_ = (param1 as _SafeCls_100)._SafeStr_1670 + (_SafeStr_118.mbOverrideKeyboard ? 0 : 1);
         }
         _SafeStr_118.screenSelectCharacter.Display(_SafeCls_41._SafeStr_278,_loc2_);
         Hide();
         _SafeStr_118.PlaySoundAtPosition(0,"Local",0,0);
      }
      
      private function _SafeStr_3210(param1:Event) : void
      {
      }
      
      private function _SafeStr_3558(param1:Event) : void
      {
         _SafeStr_118.screenHeroList.Display();
      }
      
      private function _SafeStr_3118(param1:Event) : void
      {
      }
      
      private function _SafeStr_3430(param1:Event) : void
      {
      }
      
      private function _SafeStr_3507(param1:Event) : void
      {
      }
      
      private function _SafeStr_3458(param1:Event) : void
      {
         _SafeStr_118.screenPause.Display();
      }
      
      private function _SafeStr_2850(param1:Event) : void
      {
         NativeApplication.nativeApplication.exit();
      }
      
      private function _SafeStr_2481(param1:Event) : void
      {
         _SafeStr_118.screenControls.Display();
      }
      
      private function _SafeStr_3394(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:ControllerInput = null;
         if(param1 is _SafeCls_100)
         {
            _loc2_ = (param1 as _SafeCls_100)._SafeStr_1670;
            if(_loc2_ > 0)
            {
               _loc3_ = _SafeStr_118.mControllerInputs[_loc2_];
               _SafeStr_118.mControllerInputs[_loc2_] = _SafeStr_118.mControllerInputs[0];
               _SafeStr_118.mControllerInputs[0] = _loc3_;
            }
         }
      }
      
      private function _SafeStr_376(param1:MouseEvent) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _SafeStr_118.PlaySound("Mouseover_Click");
         _loc2_ = this._SafeStr_218.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this._SafeStr_218[_loc2_].length - 1;
            while(_loc3_ >= 0)
            {
               if(this._SafeStr_218[_loc2_][_loc3_].mMovieClip == param1.currentTarget)
               {
                  this._SafeStr_205.x = _loc2_;
                  this._SafeStr_205.y = _loc3_;
                  this._SafeStr_245 = this._SafeStr_218[_loc2_][_loc3_];
                  _SafeStr_141();
                  return;
               }
               _loc3_--;
            }
            _loc2_--;
         }
      }
      
      private function _SafeStr_3529(param1:MouseEvent) : void
      {
         if(Boolean(_SafeStr_118.serverConn) && Boolean(_SafeStr_118.serverConn.SocketIsConnected()))
         {
            return;
         }
         if(_SafeStr_118.serverConn)
         {
            _SafeStr_118.serverConn.DestroyConnection();
            _SafeStr_118.serverConn = null;
         }
         this._SafeStr_570.Hide();
         this._SafeStr_459.Show();
         this._SafeStr_459.PlayAnimation("Ready",_SafeCls_34._SafeStr_477);
         if(!_SafeStr_118.mbAirClient)
         {
            _SafeStr_118.screenLogin.Display();
         }
         else
         {
            _SafeStr_118.bRequestLoginConnect = true;
            _SafeStr_118.mbCanLogInWithSteam = true;
            _SafeStr_118.bShouldBeginLoginProcess = true;
         }
      }
      
      public function _SafeStr_191(param1:int, param2:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         if(!mbVisible)
         {
            return false;
         }
         if(param2 == uint.MAX_VALUE)
         {
            param2 = 0;
         }
         switch(param1)
         {
            case Game._SafeStr_242:
            case Game._SafeStr_216:
               if(this._SafeStr_245)
               {
                  this._SafeStr_245.mMovieClip.dispatchEvent(new _SafeCls_100(MouseEvent.CLICK,param2));
               }
               break;
            case Game._SafeStr_213:
               if(this._SafeStr_205.y < this._SafeStr_218[this._SafeStr_205.x].length - 1)
               {
                  ++this._SafeStr_205.y;
                  _loc3_ = true;
               }
               break;
            case Game._SafeStr_214:
               if(this._SafeStr_205.y)
               {
                  --this._SafeStr_205.y;
                  _loc3_ = true;
               }
               break;
            case Game._SafeStr_208:
               if(Boolean(this._SafeStr_205.x) && !(this._SafeStr_205.x == 1 && this._SafeStr_205.y != 2))
               {
                  --this._SafeStr_205.x;
                  _loc3_ = true;
                  if(!this._SafeStr_205.x)
                  {
                     this._SafeStr_205.y = this._SafeStr_2368;
                  }
               }
               break;
            case Game._SafeStr_207:
               if(!this._SafeStr_205.x)
               {
                  this._SafeStr_205.y = 2;
               }
               if(this._SafeStr_205.x < this._SafeStr_218.length - 1)
               {
                  ++this._SafeStr_205.x;
                  _loc3_ = true;
               }
         }
         if(_loc3_)
         {
            if(!this._SafeStr_205.x)
            {
               this._SafeStr_2368 = this._SafeStr_205.y;
            }
            this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205.x][this._SafeStr_205.y];
            _SafeStr_118.PlaySound("Mouseover_Click");
            _SafeStr_141();
         }
         return true;
      }
      
      public function _SafeStr_1895(param1:String, param2:String) : void
      {
         if(!this._SafeStr_1486 || !this.mNewsText)
         {
            return;
         }
         this._SafeStr_1486.SetText(param1.toUpperCase());
         this.mNewsText.mTextField.htmlText = param2;
      }
      
      public function _SafeStr_2624(param1:Boolean) : void
      {
         if(!this._SafeStr_1472)
         {
            return;
         }
         this._SafeStr_1472.PlayAnimation(param1 ? "Online" : "Offline");
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_41 = "_-tQ"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_68 = "_-ON"
 * @identifier _SafeCls_100 = "_-Jc"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_130 = "_-Ri"
 * @identifier _SafeStr_141 = "_-Ay"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_177 = "_-eJ"
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
 * @identifier _SafeStr_278 = "_-kv"
 * @identifier _SafeStr_286 = "_-kZ"
 * @identifier _SafeStr_324 = "_-Fg"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_459 = "_-qI"
 * @identifier _SafeStr_477 = "_-jO"
 * @identifier _SafeStr_487 = "_-64"
 * @identifier _SafeStr_499 = "_-kS"
 * @identifier _SafeStr_570 = "_-iE"
 * @identifier _SafeStr_1362 = "_-ID"
 * @identifier _SafeStr_1472 = "_-O6"
 * @identifier _SafeStr_1486 = "_-Wv"
 * @identifier _SafeStr_1576 = "_-8q"
 * @identifier _SafeStr_1670 = "_-Zh"
 * @identifier _SafeStr_1720 = "_-nW"
 * @identifier _SafeStr_1895 = "_-hH"
 * @identifier _SafeStr_2368 = "_-6o"
 * @identifier _SafeStr_2481 = "_-OI"
 * @identifier _SafeStr_2624 = "_-uR"
 * @identifier _SafeStr_2850 = "_-Wn"
 * @identifier _SafeStr_3030 = "_-PQ"
 * @identifier _SafeStr_3118 = "_-g6"
 * @identifier _SafeStr_3210 = "_-07"
 * @identifier _SafeStr_3233 = "_-wp"
 * @identifier _SafeStr_3394 = "_-LD"
 * @identifier _SafeStr_3430 = "_-Nt"
 * @identifier _SafeStr_3458 = "_-DR"
 * @identifier _SafeStr_3507 = "_-wG"
 * @identifier _SafeStr_3529 = "_-ZY"
 * @identifier _SafeStr_3548 = "_-hP"
 * @identifier _SafeStr_3558 = "_-Y1"
 * @identifier _SafeStr_3591 = "_-Qt"
 */
