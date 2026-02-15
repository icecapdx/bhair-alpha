package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class _SafeCls_41 extends _SafeCls_35
   {
      
      private static var _SafeStr_693:Dictionary;
      
      public static const _SafeStr_170:uint = 4;
      
      private static const _SafeStr_813:uint = 21;
      
      private static const _SafeStr_1954:uint = 3;
      
      private static const _SafeStr_1631:uint = _SafeStr_813 / _SafeStr_1954;
      
      private static const _SafeStr_2082:ColorMatrixFilter = new ColorMatrixFilter([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0]);
      
      public static const _SafeStr_445:uint = 1;
      
      public static const _SafeStr_278:uint = 2;
      
      public static const _SafeStr_231:uint = 3;
      
      private static const _SafeStr_1951:uint = 100;
      
      public var mGameType:uint;
      
      public var mbStockMode:Boolean;
      
      private var _SafeStr_1308:_SafeCls_62;
      
      private var _SafeStr_3704:uint;
      
      private var _SafeStr_3730:uint;
      
      private var _SafeStr_953:Vector.<_SafeCls_34>;
      
      private var _SafeStr_1029:Vector.<_SafeCls_34>;
      
      private var _SafeStr_618:Vector.<_SafeCls_62>;
      
      private var _SafeStr_538:Vector.<_SafeCls_62>;
      
      private var _SafeStr_727:Vector.<_SafeCls_34>;
      
      private var _SafeStr_643:Vector.<_SafeCls_34>;
      
      private var _SafeStr_1059:Vector.<_SafeCls_34>;
      
      private var _SafeStr_619:Vector.<_SafeCls_98>;
      
      private var _SafeStr_2381:Vector.<GfxType>;
      
      private var _SafeStr_178:Vector.<_SafeCls_16>;
      
      public var _SafeStr_217:Vector.<_SafeCls_17>;
      
      public var _SafeStr_184:Vector.<Boolean>;
      
      private var _SafeStr_330:Vector.<Boolean>;
      
      private var _SafeStr_345:Vector.<Boolean>;
      
      private var _SafeStr_887:_SafeCls_34;
      
      private var _SafeStr_1312:_SafeCls_34;
      
      private var _SafeStr_558:_SafeCls_34;
      
      private var _SafeStr_1658:_SafeCls_34;
      
      private var _SafeStr_1062:Vector.<_SafeCls_34>;
      
      private var _SafeStr_1726:Vector.<_SafeCls_62>;
      
      private var _SafeStr_607:Vector.<_SafeCls_34>;
      
      private var _SafeStr_212:Vector.<_SafeCls_34>;
      
      private var _SafeStr_853:Vector.<_SafeCls_34>;
      
      private var _SafeStr_1216:Array;
      
      internal var mbUseBots:Boolean;
      
      private var _SafeStr_245:Vector.<_SafeCls_34>;
      
      private var _SafeStr_205:Vector.<Point>;
      
      private var _SafeStr_218:Vector.<Vector.<_SafeCls_34>>;
      
      private var _SafeStr_239:Vector.<Boolean>;
      
      private var _SafeStr_656:_SafeCls_16;
      
      private var _SafeStr_839:_SafeCls_17;
      
      private var _SafeStr_655:Point;
      
      private var _SafeStr_2468:uint;
      
      public function _SafeCls_41(param1:Game)
      {
         super(param1,"a_ScreenSelectCharacter",null);
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:_SafeCls_16 = null;
         var _loc4_:uint = 0;
         var _loc5_:_SafeCls_98 = null;
         var _loc6_:GfxType = null;
         var _loc7_:MovieClip = null;
         this._SafeStr_218 = new Vector.<Vector.<_SafeCls_34>>();
         this._SafeStr_239 = new Vector.<Boolean>();
         this._SafeStr_953 = new Vector.<_SafeCls_34>(_SafeStr_813,true);
         this._SafeStr_1029 = new Vector.<_SafeCls_34>(_SafeStr_813,true);
         this._SafeStr_1216 = new Array();
         this._SafeStr_218 = new Vector.<Vector.<_SafeCls_34>>();
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_813)
         {
            _loc2_ = _SafeStr_123["am_Holder" + _loc1_] as MovieClip;
            this._SafeStr_1029[_loc1_] = _SafeStr_124(_loc2_.am_Holder);
            _loc3_ = _loc1_ < _SafeCls_16._SafeStr_389.length ? _SafeCls_16._SafeStr_389[_loc1_] : null;
            this._SafeStr_953[_loc1_] = _SafeStr_246(_loc2_,_loc3_ ? _loc3_.mHeroID : 0,this._SafeStr_3216,this._SafeStr_3330);
            if(_loc3_)
            {
               this._SafeStr_1216[_loc3_.mHeroID] = _SafeStr_124(_SafeStr_123["am_SelectorAnim" + _loc1_] as MovieClip);
               this._SafeStr_1029[_loc1_].mMovieClip.addChild(_SafeCls_12._SafeStr_294(_loc3_._SafeStr_1279));
               _loc4_ = _loc1_ / _SafeStr_1631;
               if(_loc4_ >= this._SafeStr_218.length)
               {
                  this._SafeStr_218.push(new Vector.<_SafeCls_34>());
               }
               this._SafeStr_218[_loc4_].push(this._SafeStr_953[_loc1_]);
            }
            else
            {
               _SafeStr_124(_SafeStr_123["am_SelectorAnim" + _loc1_] as MovieClip);
               this._SafeStr_953[_loc1_].DisableButton("Ready");
            }
            _loc1_++;
         }
         this._SafeStr_619 = new Vector.<_SafeCls_98>(_SafeStr_170,true);
         this._SafeStr_2381 = new Vector.<GfxType>(_SafeStr_170,true);
         this._SafeStr_212 = new Vector.<_SafeCls_34>(_SafeStr_170,true);
         this._SafeStr_1059 = new Vector.<_SafeCls_34>(_SafeStr_170,true);
         this._SafeStr_618 = new Vector.<_SafeCls_62>(_SafeStr_170,true);
         this._SafeStr_538 = new Vector.<_SafeCls_62>(_SafeStr_170,true);
         this._SafeStr_1062 = new Vector.<_SafeCls_34>(_SafeStr_170,true);
         this._SafeStr_1726 = new Vector.<_SafeCls_62>(_SafeStr_170,true);
         this._SafeStr_607 = new Vector.<_SafeCls_34>(_SafeStr_170,true);
         this._SafeStr_727 = new Vector.<_SafeCls_34>(_SafeStr_170,true);
         this._SafeStr_643 = new Vector.<_SafeCls_34>(_SafeStr_170,true);
         this._SafeStr_853 = new Vector.<_SafeCls_34>(_SafeStr_170,true);
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_170)
         {
            _loc5_ = new _SafeCls_98(_SafeStr_118,_SafeStr_123["am_Paperdoll" + _loc1_] as MovieClip,null);
            _loc6_ = new GfxType();
            _loc6_._SafeStr_228 = "Animation_Player.swf";
            _loc6_._SafeStr_180 = "a__KickAnimation";
            _loc6_.baseAnim = "Ready";
            this._SafeStr_619[_loc1_] = _loc5_;
            this._SafeStr_2381[_loc1_] = _loc6_;
            this._SafeStr_212[_loc1_] = _SafeStr_124(_SafeStr_123["am_Cursor" + _loc1_]);
            this._SafeStr_618[_loc1_] = _SafeStr_145(_SafeStr_123["am_Name" + _loc1_]);
            this._SafeStr_538[_loc1_] = _SafeStr_145(_SafeStr_123["am_AccountName" + _loc1_]);
            this._SafeStr_1059[_loc1_] = _SafeStr_124(_SafeStr_123["am_Pedastel" + _loc1_]);
            this._SafeStr_727[_loc1_] = _SafeStr_246(_SafeStr_123["am_KickButton" + _loc1_],_loc1_,this._SafeStr_3038,this._SafeStr_376);
            this._SafeStr_643[_loc1_] = _SafeStr_246(_SafeStr_123["am_BanButton" + _loc1_],_loc1_,this._SafeStr_3552,this._SafeStr_376);
            this._SafeStr_607[_loc1_] = _SafeStr_124(_SafeStr_123["am_NamePlate" + _loc1_]);
            this._SafeStr_853[_loc1_] = _SafeStr_124(_SafeStr_123["am_JoinPrompt" + _loc1_]);
            _loc7_ = _SafeStr_123["am_Notice" + _loc1_] as MovieClip;
            this._SafeStr_1062[_loc1_] = _SafeStr_124(_loc7_);
            this._SafeStr_1726[_loc1_] = _SafeStr_145(_loc7_.am_PanelInternal.am_Text);
            _loc1_++;
         }
         this._SafeStr_887 = _SafeStr_130(_SafeStr_123.am_StartMatchButton,this._SafeStr_2361,this._SafeStr_376);
         this._SafeStr_1312 = _SafeStr_124(this._SafeStr_887.mMovieClip.am_ButtonIcon);
         this._SafeStr_558 = _SafeStr_130(_SafeStr_123.am_OptionsButton,this._SafeStr_3050,this._SafeStr_376);
         this._SafeStr_1658 = _SafeStr_130(_SafeStr_123.am_BackButton,this._SafeStr_1114,this._SafeStr_376);
         this._SafeStr_1308 = _SafeStr_145(_SafeStr_123.am_Header);
         this._SafeStr_245 = new Vector.<_SafeCls_34>();
         this._SafeStr_205 = new Vector.<Point>();
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_170)
         {
            this._SafeStr_245.push(null);
            this._SafeStr_205.push(new Point(0,0));
            _loc1_++;
         }
      }
      
      override public function OnDestroyScreen() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:Vector.<_SafeCls_34> = null;
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_813)
         {
            this._SafeStr_953[_loc1_] = null;
            this._SafeStr_1029[_loc1_].mMovieClip.removeChildren();
            this._SafeStr_1029[_loc1_] = null;
            _loc1_++;
         }
         this._SafeStr_953 = null;
         this._SafeStr_1029 = null;
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_170)
         {
            this._SafeStr_619[_loc1_].DestroyPaperDoll();
            this._SafeStr_2381[_loc1_] = null;
            _loc1_++;
         }
         this._SafeStr_619 = null;
         this._SafeStr_1059 = null;
         this._SafeStr_618 = null;
         this._SafeStr_538 = null;
         this._SafeStr_212 = null;
         this._SafeStr_1062 = null;
         this._SafeStr_1726 = null;
         this._SafeStr_607 = null;
         this._SafeStr_727 = null;
         this._SafeStr_643 = null;
         this._SafeStr_853 = null;
         this._SafeStr_1216 = null;
         this._SafeStr_1312 = null;
         this._SafeStr_887 = null;
         this._SafeStr_558 = null;
         this._SafeStr_1658 = null;
         this._SafeStr_1308 = null;
         for each(_loc2_ in this._SafeStr_218)
         {
            _loc2_.length = 0;
         }
         if(this._SafeStr_218)
         {
            this._SafeStr_218.length = 0;
         }
         this._SafeStr_218 = null;
         if(this._SafeStr_245)
         {
            this._SafeStr_245.length = 0;
         }
         this._SafeStr_245 = null;
         if(this._SafeStr_205)
         {
            this._SafeStr_205.length = 0;
         }
         this._SafeStr_205 = null;
         _SafeStr_693 = null;
         this._SafeStr_656 = null;
         this._SafeStr_839 = null;
         this._SafeStr_655 = null;
      }
      
      public function OnInitDisplay(param1:uint, param2:uint = 4294967295, param3:Boolean = false) : void
      {
         this.mGameType = param1;
         if(!param3)
         {
            this._SafeStr_239.length = 0;
            this._SafeStr_239.length = _SafeStr_170;
            if(param2 < _SafeStr_170)
            {
               this._SafeStr_239[param2] = true;
            }
            this._SafeStr_3119(param2);
         }
      }
      
      public function Reopen() : void
      {
         var _loc1_:int = 0;
         if(this._SafeStr_184)
         {
            _loc1_ = 0;
            while(_loc1_ < this._SafeStr_184.length)
            {
               this._SafeStr_184[_loc1_] = false;
               _loc1_++;
            }
         }
         if(this._SafeStr_178)
         {
            _loc1_ = 0;
            while(_loc1_ < this._SafeStr_178.length)
            {
               if(this._SafeStr_178[_loc1_])
               {
                  if(!this._SafeStr_330[_loc1_])
                  {
                     this._SafeStr_719(_loc1_);
                  }
               }
               _loc1_++;
            }
            Display(this.mGameType,0,true);
         }
         else
         {
            _SafeStr_118.screenCentralHUB.Display();
         }
      }
      
      public function _SafeStr_3556() : void
      {
         if(this.mGameType != _SafeStr_231)
         {
            return;
         }
         this._SafeStr_178[0] = this._SafeStr_656;
         this._SafeStr_217[0] = this._SafeStr_839;
         if(this._SafeStr_655)
         {
            this._SafeStr_239[0] = true;
            this._SafeStr_2635(0,this._SafeStr_655);
         }
         if(this._SafeStr_656)
         {
            this._SafeStr_708(0,this._SafeStr_656,this._SafeStr_839);
         }
      }
      
      public function _SafeStr_3350() : void
      {
         if(this.mGameType != _SafeStr_231)
         {
            return;
         }
         var _loc1_:uint = uint(_SafeStr_118.mCustomGameData.FindPosition(_SafeStr_118.mCharID));
         this._SafeStr_212[0].Hide();
         if(_loc1_ < _SafeStr_170)
         {
            this._SafeStr_178[_loc1_] = this._SafeStr_656;
            this._SafeStr_217[_loc1_] = this._SafeStr_839;
            this._SafeStr_212[_loc1_].Show();
            this._SafeStr_212[_loc1_].PlayAnimation("Blink",_SafeCls_34._SafeStr_477);
         }
         this._SafeStr_239[_loc1_] = true;
         this._SafeStr_719(_loc1_);
         if(this._SafeStr_655)
         {
            this._SafeStr_2635(_loc1_,this._SafeStr_655);
         }
      }
      
      override public function OnRefreshScreen() : void
      {
         var _loc1_:uint = 0;
         var _loc3_:uint = 0;
         var _loc5_:_SafeCls_4 = null;
         var _loc2_:uint = 0;
         var _loc4_:* = false;
         switch(this.mGameType)
         {
            case _SafeStr_278:
               _loc1_ = 0;
               while(_loc1_ < _SafeStr_170)
               {
                  if(this._SafeStr_184[_loc1_] || this._SafeStr_330[_loc1_])
                  {
                     if(!this._SafeStr_345[_loc1_])
                     {
                        _loc2_++;
                     }
                  }
                  else if(!this._SafeStr_345[_loc1_])
                  {
                     _loc2_ = 0;
                     break;
                  }
                  _loc1_++;
               }
               _loc3_ = 2;
               _loc4_ = _loc2_ >= _loc3_;
               break;
            case _SafeStr_231:
               _loc5_ = _SafeCls_4._SafeStr_998[_SafeStr_118.mCustomGameData.mGameMode];
               this.mbStockMode = _SafeCls_4._SafeStr_2080(_loc5_);
               _loc4_ = Boolean(_SafeStr_118.mCustomGameData.CanStart());
               break;
            case _SafeStr_445:
               _loc1_ = 0;
               while(_loc1_ < _SafeStr_170)
               {
                  if(this._SafeStr_184[_loc1_])
                  {
                     _loc2_++;
                  }
                  _loc1_++;
               }
               _loc3_ = 1;
               _loc4_ = _loc2_ >= _loc3_;
         }
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_170)
         {
            if(this._SafeStr_239[_loc1_] && !this._SafeStr_330[_loc1_] && !this._SafeStr_345[_loc1_])
            {
               this._SafeStr_212[_loc1_].Show();
               this._SafeStr_212[_loc1_].PlayAnimation(this._SafeStr_184[_loc1_] ? "Ready" : "Blink",_SafeCls_34._SafeStr_477);
            }
            else
            {
               this._SafeStr_212[_loc1_].Hide();
            }
            _loc1_++;
         }
         if(!_loc4_)
         {
            this._SafeStr_887.DisableButton("Inactive");
            this._SafeStr_1312.ClearAnimation();
            this._SafeStr_1312.PlayAnimation("Ready");
         }
         else
         {
            this._SafeStr_887.EnableButton();
            this._SafeStr_1312.PlayAnimation("Blink",_SafeCls_34._SafeStr_477);
         }
      }
      
      override public function Hide() : void
      {
         super.Hide();
      }
      
      override public function OnTickScreen() : void
      {
         if(_SafeStr_118.mbLostConnection)
         {
            switch(this.mGameType)
            {
               case _SafeStr_231:
               case _SafeStr_445:
                  if(!_SafeStr_118.screenError.mbVisible)
                  {
                     _SafeStr_118.screenError.Display(_SafeCls_79._SafeStr_997);
                  }
                  if(this.mGameType == _SafeStr_445)
                  {
                     _SafeStr_118.mMatchMakerData.Reset();
                  }
                  if(this.mGameType == _SafeStr_231)
                  {
                     _SafeStr_118.mCustomGameData.CloseCustomGame();
                  }
            }
         }
      }
      
      private function _SafeStr_3521() : void
      {
         this._SafeStr_178 = new Vector.<_SafeCls_16>(_SafeStr_170,true);
         this._SafeStr_330 = new Vector.<Boolean>(_SafeStr_170,true);
         this._SafeStr_345 = new Vector.<Boolean>(_SafeStr_170,true);
         this._SafeStr_217 = new Vector.<_SafeCls_17>(_SafeStr_170,true);
         this._SafeStr_184 = new Vector.<Boolean>(_SafeStr_170,true);
         if(this.mGameType != _SafeStr_231)
         {
            this._SafeStr_656 = null;
            this._SafeStr_839 = null;
            this._SafeStr_655 = null;
         }
      }
      
      public function _SafeStr_1114(param1:Event = null) : void
      {
         var _loc2_:_SafeCls_77 = null;
         switch(this.mGameType)
         {
            case _SafeStr_278:
            case _SafeStr_231:
               if(_SafeStr_118.mCustomGameData.mbStartMatch)
               {
                  return;
               }
         }
         if(this.mGameType == _SafeStr_231)
         {
            _loc2_ = new _SafeCls_77(_SafeCls_73._SafeStr_1700);
            _SafeStr_118.serverConn.SendPacket(_loc2_);
         }
         this.Hide();
         _SafeStr_118.screenCentralHUB.Display();
      }
      
      private function _SafeStr_3050(param1:Event) : void
      {
         _SafeStr_118.screenGameOptions.Display();
      }
      
      private function _SafeStr_3216(param1:MouseEvent, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:uint = 0;
         var _loc10_:_SafeCls_34 = null;
         var _loc11_:_SafeCls_17 = null;
         var _loc12_:uint = 0;
         var _loc13_:_SafeCls_77 = null;
         if(!_SafeCls_16._SafeStr_272[param2] || !_SafeCls_16._SafeStr_272[param2].mbIsActive)
         {
            return;
         }
         if(param1 is _SafeCls_100)
         {
            _loc4_ = (param1 as _SafeCls_100)._SafeStr_1670;
            _loc3_ = true;
         }
         else
         {
            if(this.mGameType == _SafeStr_231)
            {
               _loc4_ = uint(_SafeStr_118.mCustomGameData.FindPosition(_SafeStr_118.mCharID));
            }
            else
            {
               _loc4_ = 0;
            }
            _loc3_ = false;
         }
         var _loc5_:_SafeCls_16 = this._SafeStr_178[_loc4_];
         if(this.mGameType == _SafeStr_231)
         {
            if(this._SafeStr_184[_loc4_] && !_loc3_ && Boolean(_SafeStr_118.mCustomGameData.mbStartMatch))
            {
               return;
            }
         }
         if(!_loc3_)
         {
            this._SafeStr_2741(param1,_loc4_);
         }
         this._SafeStr_212[_loc4_].mMovieClip.visible = true;
         var _loc6_:_SafeCls_16 = _SafeCls_16._SafeStr_272[param2];
         var _loc9_:String = _loc6_.mDisplayName;
         if(!this._SafeStr_184[_loc4_] || _loc6_ != _loc5_)
         {
            _loc10_ = this._SafeStr_1216[param2];
            if(!_loc10_.mbVisible)
            {
               _loc10_.Show();
            }
            _loc10_.ClearAnimation();
            _loc10_.PlayAnimation("Select",_SafeCls_34._SafeStr_303);
         }
         if(!this._SafeStr_184[_loc4_] || _loc5_ != _loc6_ || this._SafeStr_345[_loc4_])
         {
            this._SafeStr_708(_loc4_,_loc6_,null);
            switch(this.mGameType)
            {
               case _SafeStr_231:
                  if(_loc4_ != -1)
                  {
                     this._SafeStr_184[_loc4_] = _loc6_ ? true : false;
                     this._SafeStr_178[_loc4_] = _loc6_;
                     this._SafeStr_618[_loc4_].SetText(_loc9_);
                     _SafeStr_118.mCustomGameData.SetCharacter(_SafeStr_118.mCharID,_loc6_.mHeroID,0);
                     _loc11_ = this._SafeStr_217[_loc4_];
                     _loc12_ = 0;
                     if(_loc11_)
                     {
                        _loc12_ = _loc11_.mCostumeID;
                     }
                     _loc13_ = new _SafeCls_77(_SafeCls_73._SafeStr_1581);
                     _loc13_._SafeStr_146(_loc6_.mHeroID);
                     _loc13_._SafeStr_146(_loc12_);
                     _SafeStr_118.serverConn.SendPacket(_loc13_);
                     this._SafeStr_656 = _loc6_;
                     this._SafeStr_839 = _loc11_;
                     this._SafeStr_655 = this._SafeStr_205[_loc4_];
                     break;
                  }
                  this._SafeStr_1114();
                  _SafeStr_118.screenError.Display("An Error has occured in Custom Online Mode");
                  break;
               case _SafeStr_278:
               case _SafeStr_445:
                  this._SafeStr_184[_loc4_] = _loc6_ ? true : false;
                  this._SafeStr_178[_loc4_] = _loc6_;
                  this._SafeStr_719(_loc4_);
            }
         }
         _SafeStr_141();
      }
      
      private function _SafeStr_3330(param1:MouseEvent, param2:uint) : void
      {
         var _loc4_:_SafeCls_17 = null;
         var _loc3_:uint = this.mGameType == _SafeStr_231 ? uint(_SafeStr_118.mCustomGameData.FindPosition(_SafeStr_118.mCharID)) : 0;
         if(!this._SafeStr_184[_loc3_] && this._SafeStr_239[_loc3_])
         {
            _loc4_ = this._SafeStr_178[_loc3_] ? this._SafeStr_217[_loc3_] : null;
            this._SafeStr_2741(param1,_loc3_);
            this._SafeStr_708(_loc3_,_SafeCls_16._SafeStr_272[param2],_loc4_);
            _SafeStr_118.PlaySound("Mouseover_Click");
         }
      }
      
      private function _SafeStr_2741(param1:MouseEvent, param2:uint) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:Boolean = false;
         _loc3_ = this._SafeStr_218.length - 1;
         while(_loc3_ >= 0 && !_loc5_)
         {
            _loc4_ = this._SafeStr_218[_loc3_].length - 1;
            while(_loc4_ >= 0)
            {
               if(this._SafeStr_218[_loc3_][_loc4_].mMovieClip == param1.currentTarget)
               {
                  _loc5_ = true;
                  this._SafeStr_205[param2].x = _loc3_;
                  this._SafeStr_205[param2].y = _loc4_;
                  this._SafeStr_245[param2] = this._SafeStr_218[_loc3_][_loc4_];
                  this._SafeStr_212[param2].mMovieClip.x = param1.currentTarget.x;
                  this._SafeStr_212[param2].mMovieClip.y = param1.currentTarget.y;
                  break;
               }
               _loc4_--;
            }
            _loc3_--;
         }
      }
      
      public function _SafeStr_708(param1:uint, param2:_SafeCls_16, param3:_SafeCls_17, param4:Boolean = true) : void
      {
         var _loc5_:_SafeCls_98 = this._SafeStr_619[param1];
         var _loc6_:GfxType = new GfxType();
         _loc6_._SafeStr_228 = "Animation_Player.swf";
         _loc6_._SafeStr_180 = "a__KickAnimation";
         _loc6_.baseAnim = "Ready";
         _loc6_._SafeStr_301.length = 0;
         _loc6_._SafeStr_254.length = 0;
         _loc6_._SafeStr_975 = 1.75;
         _SafeCls_17._SafeStr_2313(param2,_loc6_);
         _loc6_._SafeStr_254 = this._SafeStr_2384(param1,param2,param3);
         _loc5_._SafeStr_508(_loc6_);
         if(param4)
         {
            if(this._SafeStr_184[param1] || this.mGameType == _SafeStr_231 && param1 != _SafeStr_118.mCustomGameData.FindPosition(_SafeStr_118.mCharID))
            {
               _loc5_._SafeStr_125._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,_SafeCls_2._SafeStr_232[param2._SafeStr_2887].castAnim,true);
            }
            else
            {
               _loc5_._SafeStr_125._SafeStr_138._SafeStr_2912();
            }
         }
         if(param2 == _SafeCls_16._SafeStr_674)
         {
            _loc5_._SafeStr_125._SafeStr_120.filters = [_SafeStr_2082];
            this._SafeStr_217[param1] = null;
         }
         else
         {
            _loc5_._SafeStr_125._SafeStr_120.filters = [];
         }
      }
      
      public function _SafeStr_679(param1:int) : void
      {
         if(param1 == -1)
         {
            return;
         }
         this._SafeStr_619[param1].ClearPaperDoll();
      }
      
      public function _SafeStr_2486() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < _SafeStr_170)
         {
            if(_loc1_ < _SafeStr_118.mCustomGameData.mPlayers.length)
            {
               var _loc2_:_SafeCls_99 = _SafeStr_118.mCustomGameData.mPlayers[_loc1_];
               this._SafeStr_679(_loc1_);
               this._SafeStr_1793(_loc1_);
               this._SafeStr_764(_loc1_,"");
               this._SafeStr_830(_loc1_,"");
            }
            else
            {
               this._SafeStr_679(_loc1_);
               this._SafeStr_1793(_loc1_);
               this._SafeStr_764(_loc1_,"");
               this._SafeStr_830(_loc1_,"");
            }
            _loc1_++;
         }
      }
      
      public function _SafeStr_2361(param1:Event = null) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:_SafeCls_4 = null;
         var _loc5_:Boolean = false;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:_SafeCls_77 = null;
         switch(this.mGameType)
         {
            case _SafeStr_278:
               _loc3_ = 0;
               while(_loc3_ < this._SafeStr_178.length)
               {
                  if(this._SafeStr_184[_loc3_] || this._SafeStr_330[_loc3_])
                  {
                     if(this._SafeStr_345[_loc3_])
                     {
                        this._SafeStr_184[_loc3_] = false;
                        this._SafeStr_178[_loc3_] = null;
                        this._SafeStr_330[_loc3_] = false;
                     }
                     else
                     {
                        if(this._SafeStr_330[_loc3_])
                        {
                           this._SafeStr_178[_loc3_] = _SafeCls_16._SafeStr_674;
                           this._SafeStr_184[_loc3_] = true;
                        }
                        _loc2_++;
                     }
                  }
                  else if(!this._SafeStr_345[_loc3_])
                  {
                     return;
                  }
                  _loc3_++;
               }
               if(_loc2_ < 2)
               {
                  return;
               }
               if(this.mbStockMode && _loc2_ == 2)
               {
                  _loc4_ = _SafeCls_4.GAMEMODE_1V1STOCK;
               }
               if(this.mbStockMode && _loc2_ > 2)
               {
                  _loc4_ = _SafeCls_4._SafeStr_1301;
               }
               if(!this.mbStockMode && _loc2_ == 2)
               {
                  _loc4_ = _SafeCls_4.GAMEMODE_1V1TIMED;
               }
               if(!this.mbStockMode && _loc2_ > 2)
               {
                  _loc4_ = _SafeCls_4._SafeStr_796;
               }
               _SafeStr_118.BeginStateCouch(this._SafeStr_178,this._SafeStr_330,this._SafeStr_217.slice(),_loc4_);
               break;
            case _SafeStr_445:
               _loc5_ = false;
               if(this._SafeStr_178[0] == _SafeCls_16._SafeStr_674)
               {
                  this._SafeStr_178[0] = _SafeCls_16._SafeStr_1817(new Array());
                  _loc5_ = true;
               }
               if(_SafeStr_118.mMatchMakerData.mbInQueue)
               {
                  return;
               }
               if(!this._SafeStr_178[0])
               {
                  return;
               }
               _loc6_ = this._SafeStr_178[0].mHeroID;
               _loc7_ = this._SafeStr_217[0] ? this._SafeStr_217[0].mCostumeID : 0;
               _SafeStr_118.mMatchMakerData.EnterQueue(_SafeCls_4._SafeStr_796._SafeStr_577,_loc6_,0,_loc7_,_loc5_);
               _SafeStr_118.mGameMode = _SafeCls_4._SafeStr_390["Endless"];
               _SafeStr_118.BeginStatePractice(_loc6_,_loc7_);
               break;
            case _SafeStr_231:
               if(!_SafeStr_118.mCustomGameData.CanStart())
               {
                  return;
               }
               if(!this._SafeStr_178[0])
               {
                  return;
               }
               this._SafeStr_3425();
               this._SafeStr_2913();
               _SafeStr_118.mCustomGameData.mbStartMatch = true;
               _loc8_ = new _SafeCls_77(_SafeCls_73._SafeStr_1426);
               _SafeStr_118.serverConn.SendPacket(_loc8_);
         }
         _SafeStr_118.PlaySound("Battle_2");
      }
      
      private function _SafeStr_3119(param1:uint = 0) : void
      {
         var _loc2_:uint = 0;
         var _loc6_:_SafeCls_34 = null;
         var _loc7_:Object = null;
         var _loc8_:_SafeCls_34 = null;
         this._SafeStr_3521();
         _loc2_ = 0;
         while(_loc2_ < _SafeStr_170)
         {
            this._SafeStr_1062[_loc2_].Hide();
            this._SafeStr_679(_loc2_);
            this._SafeStr_830(_loc2_,"");
            this._SafeStr_764(_loc2_,"");
            this._SafeStr_853[_loc2_].Hide();
            _loc2_++;
         }
         for each(_loc7_ in this._SafeStr_1216)
         {
            _loc8_ = _loc7_ as _SafeCls_34;
            if(_loc8_.mbVisible)
            {
               _loc8_.Hide();
            }
         }
         this.mbStockMode = false;
         this._SafeStr_1658.EnableButton();
         switch(this.mGameType)
         {
            case _SafeStr_445:
               _loc2_ = 0;
               while(_loc2_ < _SafeStr_170)
               {
                  _loc6_ = this._SafeStr_607[_loc2_];
                  if(_loc2_ == 0)
                  {
                     this._SafeStr_719(_loc2_);
                     if(!_loc6_.mbVisible)
                     {
                        _loc6_.Show();
                     }
                     _loc6_.DisableButton("Ready");
                     this._SafeStr_212[_loc2_].Show();
                     this._SafeStr_538[_loc2_].SetText(_SafeStr_118.mCharacterName);
                  }
                  else
                  {
                     this._SafeStr_2048(_loc2_);
                     if(_loc6_.mbVisible)
                     {
                        _loc6_.Hide();
                     }
                     this._SafeStr_212[_loc2_].Hide();
                     this._SafeStr_538[_loc2_].SetText("");
                  }
                  this._SafeStr_727[_loc2_].Hide();
                  this._SafeStr_643[_loc2_].Hide();
                  _loc2_++;
               }
               this._SafeStr_558.Hide();
               this._SafeStr_1308.SetText("ONLINE GAME");
               this.mbUseBots = false;
               break;
            case _SafeStr_278:
               _loc2_ = 0;
               while(_loc2_ < _SafeStr_170)
               {
                  if(_loc2_ == param1)
                  {
                     this._SafeStr_719(_loc2_);
                     this._SafeStr_212[_loc2_].Show();
                  }
                  else
                  {
                     this._SafeStr_1084(_loc2_);
                     this._SafeStr_212[_loc2_].Hide();
                  }
                  this._SafeStr_538[_loc2_].SetText("PLAYER " + (_loc2_ + 1));
                  _loc6_ = this._SafeStr_607[_loc2_];
                  if(!_loc6_.mbVisible)
                  {
                     _loc6_.Show();
                  }
                  _loc6_.EnableButton();
                  this._SafeStr_727[_loc2_].Hide();
                  this._SafeStr_643[_loc2_].Hide();
                  _loc2_++;
               }
               this._SafeStr_558.EnableButton();
               this._SafeStr_558.Show();
               this._SafeStr_1308.SetText("LOCAL GAME");
               this.mbUseBots = true;
               break;
            case _SafeStr_231:
               _loc2_ = 0;
               while(_loc2_ < _SafeStr_170)
               {
                  this._SafeStr_719(_loc2_);
                  if(_loc2_)
                  {
                     this._SafeStr_212[_loc2_].Hide();
                  }
                  else
                  {
                     this._SafeStr_212[_loc2_].Show();
                  }
                  _loc6_ = this._SafeStr_607[_loc2_];
                  if(!_loc6_.mbVisible)
                  {
                     _loc6_.Show();
                  }
                  _loc6_.DisableButton("Ready");
                  this._SafeStr_727[_loc2_].Hide();
                  this._SafeStr_643[_loc2_].Hide();
                  _loc2_++;
               }
               this._SafeStr_558.Show();
               if(_SafeStr_118.mCustomGameData.mbLeader)
               {
                  this._SafeStr_558.EnableButton();
               }
               else
               {
                  this._SafeStr_558.DisableButton("Inactive");
               }
               this._SafeStr_1308.SetText("CUSTOM GAME (#" + _SafeStr_118.mCustomGameData.mGameName + ")");
               this.mbUseBots = false;
         }
      }
      
      private function _SafeStr_719(param1:uint) : void
      {
         var _loc2_:_SafeCls_34 = this._SafeStr_1059[param1];
         if(!_loc2_.mbVisible)
         {
            _loc2_.Show();
         }
         var _loc3_:_SafeCls_34 = this._SafeStr_607[param1];
         if(!_loc3_.mbVisible)
         {
            _loc3_.Show();
         }
         var _loc4_:_SafeCls_62 = this._SafeStr_538[param1];
         if(!_loc4_.mbVisible)
         {
            _loc4_.Show();
         }
         var _loc5_:_SafeCls_34 = this._SafeStr_853[param1];
         if(_loc5_.mbVisible)
         {
            _loc5_.PlayAnimation("Hide",_SafeCls_34._SafeStr_303);
         }
         this._SafeStr_345[param1] = false;
         this._SafeStr_330[param1] = false;
         var _loc6_:_SafeCls_62 = this._SafeStr_618[param1];
         var _loc7_:_SafeCls_16 = this._SafeStr_178[param1];
         if(!_loc7_ && this._SafeStr_239[param1])
         {
            _loc7_ = this._SafeStr_2547(param1);
         }
         if(_loc7_)
         {
            this._SafeStr_708(param1,_loc7_,this._SafeStr_217[param1]);
         }
         if(this._SafeStr_184[param1] && Boolean(this._SafeStr_178[param1]))
         {
            _loc6_.SetText(this._SafeStr_178[param1].mDisplayName);
         }
         else
         {
            _loc6_.SetText("");
         }
         if(!_loc6_.mbVisible)
         {
            _loc6_.Show();
         }
      }
      
      private function _SafeStr_1084(param1:uint) : void
      {
         var _loc2_:_SafeCls_34 = this._SafeStr_1059[param1];
         if(!_loc2_.mbVisible)
         {
            _loc2_.Show();
         }
         var _loc3_:_SafeCls_34 = this._SafeStr_607[param1];
         if(!_loc3_.mbVisible)
         {
            _loc3_.Show();
         }
         var _loc4_:_SafeCls_62 = this._SafeStr_618[param1];
         _loc4_.SetText("BOT");
         if(!_loc4_.mbVisible)
         {
            _loc4_.Show();
         }
         var _loc5_:_SafeCls_62 = this._SafeStr_538[param1];
         if(!_loc5_.mbVisible)
         {
            _loc5_.Show();
         }
         var _loc6_:_SafeCls_34 = this._SafeStr_853[param1];
         if(!_loc6_.mbVisible)
         {
            _loc6_.Show();
            _loc6_.PlayAnimation("Display");
         }
         this._SafeStr_330[param1] = true;
         this._SafeStr_345[param1] = false;
         this._SafeStr_619[param1].ClearPaperDoll();
         this._SafeStr_217[param1] = null;
      }
      
      private function _SafeStr_2048(param1:uint) : void
      {
         var _loc2_:_SafeCls_34 = this._SafeStr_1059[param1];
         if(_loc2_.mbVisible)
         {
            _loc2_.Hide();
         }
         var _loc3_:_SafeCls_34 = this._SafeStr_607[param1];
         if(_loc3_.mbVisible)
         {
            _loc3_.Hide();
         }
         var _loc4_:_SafeCls_62 = this._SafeStr_618[param1];
         if(_loc4_.mbVisible)
         {
            _loc4_.Hide();
         }
         var _loc5_:_SafeCls_62 = this._SafeStr_538[param1];
         if(_loc5_.mbVisible)
         {
            _loc5_.Hide();
         }
         var _loc6_:_SafeCls_34 = this._SafeStr_853[param1];
         switch(this.mGameType)
         {
            case _SafeStr_278:
               if(!_loc6_.mbVisible)
               {
                  _loc6_.Show();
                  _loc6_.PlayAnimation("Display");
               }
               break;
            default:
               if(_loc6_.mbVisible)
               {
                  _loc6_.Hide();
               }
         }
         this._SafeStr_345[param1] = true;
         this._SafeStr_330[param1] = false;
         this._SafeStr_619[param1].ClearPaperDoll();
         this._SafeStr_217[param1] = null;
      }
      
      private function _SafeStr_1707(param1:uint) : void
      {
         this._SafeStr_184[param1] = false;
         this._SafeStr_330[param1] = false;
         this._SafeStr_618[param1].SetText("");
         this._SafeStr_619[param1].ClearPaperDoll();
      }
      
      public function _SafeStr_764(param1:int, param2:String) : void
      {
         this._SafeStr_618[param1].SetText(param2);
      }
      
      public function _SafeStr_830(param1:int, param2:String) : void
      {
         this._SafeStr_538[param1].SetText(param2);
      }
      
      public function _SafeStr_2572(param1:int) : void
      {
         this._SafeStr_727[param1].Show();
         this._SafeStr_643[param1].Show();
      }
      
      public function _SafeStr_1793(param1:int) : void
      {
         this._SafeStr_727[param1].Hide();
         this._SafeStr_643[param1].Hide();
      }
      
      public function _SafeStr_3425() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < _SafeStr_170)
         {
            this._SafeStr_1793(_loc1_);
            _loc1_++;
         }
      }
      
      public function _SafeStr_191(param1:int, param2:uint) : Boolean
      {
         var _loc5_:int = 0;
         var _loc6_:uint = 0;
         var _loc7_:Boolean = false;
         var _loc8_:_SafeCls_17 = null;
         if(!this.mbVisible)
         {
            return false;
         }
         if(param2 >= _SafeStr_170)
         {
            param2 = 0;
         }
         switch(this.mGameType)
         {
            case _SafeStr_278:
            case _SafeStr_231:
               if(_SafeStr_118.mCustomGameData.mbStartMatch)
               {
                  return true;
               }
         }
         switch(this.mGameType)
         {
            case _SafeStr_278:
               if((this._SafeStr_330[param2] || this._SafeStr_345[param2]) && param1 != Game._SafeStr_247)
               {
                  this._SafeStr_212[param2].mMovieClip.visible = true;
                  this._SafeStr_212[param2].PlayAnimation("Blink",_SafeCls_34._SafeStr_477);
                  if(!this._SafeStr_239[param2])
                  {
                     this._SafeStr_239[param2] = true;
                     this._SafeStr_1707(param2);
                     this._SafeStr_719(param2);
                     return true;
                  }
               }
               break;
            case _SafeStr_231:
               param2 = uint(_SafeStr_118.mCustomGameData.FindPosition(_SafeStr_118.mCharID));
               break;
            default:
               if(param2 > 0)
               {
                  return false;
               }
         }
         this._SafeStr_239[param2] = true;
         var _loc3_:Point = this._SafeStr_205[param2];
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         if(!this._SafeStr_245[param2])
         {
            this._SafeStr_245[param2] = this._SafeStr_218[_loc3_.x][_loc3_.y];
         }
         switch(param1)
         {
            case Game._SafeStr_213:
               if(!this._SafeStr_184[param2])
               {
                  _loc3_.y = (_loc3_.y + 1) % this._SafeStr_218[_loc3_.x].length;
                  break;
               }
               this._SafeStr_1674(param2,true);
               break;
            case Game._SafeStr_214:
               if(!this._SafeStr_184[param2])
               {
                  _loc3_.y = _loc3_.y == 0 ? this._SafeStr_218[_loc3_.x].length - 1 : _loc3_.y - 1;
                  break;
               }
               this._SafeStr_1674(param2,false);
               break;
            case Game._SafeStr_208:
               if(!this._SafeStr_184[param2])
               {
                  _loc3_.x = _loc3_.x == 0 ? this._SafeStr_218.length - 1 : _loc3_.x - 1;
                  break;
               }
               this._SafeStr_1674(param2,true);
               break;
            case Game._SafeStr_207:
               if(!this._SafeStr_184[param2])
               {
                  _loc3_.x = (_loc3_.x + 1) % this._SafeStr_218.length;
                  break;
               }
               this._SafeStr_1674(param2,false);
               break;
            case Game._SafeStr_247:
               switch(this.mGameType)
               {
                  case _SafeStr_278:
                     if(this._SafeStr_330[param2] || this._SafeStr_345[param2])
                     {
                        this._SafeStr_239[param2] = false;
                        _loc5_ = 0;
                        while(_loc5_ < this._SafeStr_184.length)
                        {
                           if(this._SafeStr_184[_loc5_])
                           {
                              return true;
                           }
                           _loc5_++;
                        }
                        this._SafeStr_1114();
                        return true;
                     }
                     if(!this._SafeStr_184[param2])
                     {
                        this._SafeStr_239[param2] = false;
                        if(this.mbUseBots)
                        {
                           this._SafeStr_1084(param2);
                        }
                        else
                        {
                           for each(_loc7_ in this._SafeStr_345)
                           {
                              if(!_loc7_)
                              {
                                 _loc6_++;
                              }
                           }
                           if(_loc6_ >= _SafeStr_170 - 2)
                           {
                              this._SafeStr_1084(param2);
                           }
                           else
                           {
                              this._SafeStr_2048(param2);
                           }
                        }
                        _SafeStr_141();
                        break;
                     }
                     this._SafeStr_1707(param2);
                     _SafeStr_141();
                     break;
                  default:
                     if(!this._SafeStr_184[param2])
                     {
                        this._SafeStr_1114();
                        return true;
                     }
                     this._SafeStr_1707(param2);
                     _SafeStr_141();
               }
               break;
            case Game._SafeStr_316:
               if(this.mGameType == _SafeStr_278 || this.mGameType == _SafeStr_231 && !param2)
               {
                  _SafeStr_118.screenGameOptions.Display();
               }
               break;
            case Game._SafeStr_216:
               if(this._SafeStr_184[param2])
               {
                  this._SafeStr_2361();
                  break;
               }
               this._SafeStr_245[param2].mMovieClip.dispatchEvent(new _SafeCls_100(MouseEvent.CLICK,param2));
               break;
            case Game._SafeStr_242:
               this._SafeStr_2361();
               break;
            case Game._SafeStr_288:
               this._SafeStr_1114();
               return true;
         }
         if(_loc3_.y >= this._SafeStr_218[_loc3_.x].length)
         {
            _loc3_.y = this._SafeStr_218[_loc3_.x].length - 1;
         }
         if(!this._SafeStr_184[param2] && this._SafeStr_239[param2])
         {
            this._SafeStr_245[param2] = this._SafeStr_218[_loc3_.x][_loc3_.y];
            this._SafeStr_212[param2].mMovieClip.x = this._SafeStr_245[param2].mMovieClip.x;
            this._SafeStr_212[param2].mMovieClip.y = this._SafeStr_245[param2].mMovieClip.y;
            this._SafeStr_212[param2].Show();
            _loc8_ = _loc4_.x == _loc3_.x && _loc4_.y == _loc3_.y ? this._SafeStr_217[param2] : null;
            this._SafeStr_708(param2,this._SafeStr_2547(param2),_loc8_);
            _SafeStr_118.PlaySound("Mouseover_Click");
         }
         return true;
      }
      
      private function _SafeStr_2547(param1:uint) : _SafeCls_16
      {
         var _loc2_:Point = this._SafeStr_205[param1];
         var _loc3_:uint = _loc2_.x * _SafeStr_1631 + _loc2_.y;
         return _loc3_ < _SafeCls_16._SafeStr_389.length ? _SafeCls_16._SafeStr_389[_loc3_] : _SafeCls_16._SafeStr_389[0];
      }
      
      public function _SafeStr_3386(param1:String, param2:uint) : void
      {
         if(!this._SafeStr_1062)
         {
            return;
         }
         var _loc3_:_SafeCls_34 = this._SafeStr_1062[param2];
         if(!_loc3_.mbVisible)
         {
            _loc3_.Show();
         }
         _loc3_.ClearAnimation();
         _loc3_.PlayAnimation("Display",_SafeCls_34._SafeStr_303);
         this._SafeStr_1726[param2].SetText(param1.toUpperCase());
      }
      
      private function _SafeStr_3038(param1:MouseEvent, param2:uint) : void
      {
         if(!_SafeStr_118.mCustomGameData.mPlayers)
         {
            return;
         }
         if(param2 >= _SafeStr_118.mCustomGameData.mPlayers.length)
         {
            return;
         }
         var _loc3_:_SafeCls_99 = _SafeStr_118.mCustomGameData.mPlayers[param2];
         var _loc4_:uint = _loc3_.mCharID;
         var _loc5_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_1899);
         _loc5_._SafeStr_146(_loc4_);
         _SafeStr_118.serverConn.SendPacket(_loc5_);
      }
      
      private function _SafeStr_3552(param1:MouseEvent, param2:uint) : void
      {
         if(!_SafeStr_118.mCustomGameData.mPlayers)
         {
            return;
         }
         if(param2 >= _SafeStr_118.mCustomGameData.mPlayers.length)
         {
            return;
         }
         var _loc3_:_SafeCls_99 = _SafeStr_118.mCustomGameData.mPlayers[param2];
         var _loc4_:uint = _loc3_.mCharID;
         var _loc5_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_2071);
         _loc5_._SafeStr_146(_loc4_);
         _SafeStr_118.serverConn.SendPacket(_loc5_);
      }
      
      public function _SafeStr_2913() : void
      {
         if(!_SafeStr_123)
         {
            return;
         }
         this._SafeStr_887.DisableButton("Inactive");
         this._SafeStr_558.DisableButton("Inactive");
         this._SafeStr_1658.DisableButton("Inactive");
      }
      
      private function _SafeStr_2384(param1:uint, param2:_SafeCls_16, param3:_SafeCls_17) : Vector.<ColorSwap>
      {
         if(!param2)
         {
            return null;
         }
         var _loc4_:_SafeCls_17 = _SafeCls_17._SafeStr_289[param2._SafeStr_616];
         if(!_loc4_)
         {
            return null;
         }
         if(param3)
         {
            this._SafeStr_217[param1] = param3;
            return _loc4_._SafeStr_2384(param3);
         }
         this._SafeStr_217[param1] = null;
         var _loc5_:_SafeCls_17 = this._SafeStr_2340(param1,param2,true);
         this._SafeStr_217[param1] = _loc5_;
         return _loc4_._SafeStr_2384(_loc5_);
      }
      
      private function _SafeStr_2340(param1:uint, param2:_SafeCls_16, param3:Boolean, param4:Boolean = true) : _SafeCls_17
      {
         return null;
      }
      
      private function _SafeStr_1674(param1:uint, param2:Boolean) : void
      {
         var _loc5_:_SafeCls_77 = null;
         if(this.mGameType == _SafeStr_231 && _SafeStr_118.mTimeThisTick < this._SafeStr_2468 + _SafeStr_1951)
         {
            return;
         }
         var _loc3_:_SafeCls_16 = this._SafeStr_178[param1];
         var _loc4_:_SafeCls_17 = this._SafeStr_2340(param1,_loc3_,param2);
         switch(this.mGameType)
         {
            case _SafeStr_231:
               _loc5_ = new _SafeCls_77(_SafeCls_73._SafeStr_1581);
               _loc5_._SafeStr_146(_loc3_.mHeroID);
               _loc5_._SafeStr_146(_loc4_.mCostumeID);
               _SafeStr_118.serverConn.SendPacket(_loc5_);
               this._SafeStr_656 = _loc3_;
               this._SafeStr_839 = _loc4_;
               this._SafeStr_655 = this._SafeStr_205[param1];
               this._SafeStr_2468 = _SafeStr_118.mTimeThisTick;
         }
         this._SafeStr_708(param1,this._SafeStr_178[param1],_loc4_,false);
      }
      
      public function ToggleOverrideKeyboard() : void
      {
         if(this.mGameType != _SafeStr_278)
         {
            _SafeStr_118.mbOverrideKeyboard = true;
            return;
         }
         if(_SafeStr_118.mbOverrideKeyboard)
         {
            if(_SafeStr_118.mControllerInputs.length > 0 && _SafeStr_118.mControllerInputs.length < _SafeStr_170)
            {
               _SafeStr_118.mbOverrideKeyboard = false;
               this._SafeStr_2563();
            }
         }
         else
         {
            _SafeStr_118.mbOverrideKeyboard = true;
            this._SafeStr_2563();
         }
         this._SafeStr_2864();
      }
      
      public function ToggleBots() : void
      {
         if(this.mGameType != _SafeStr_278)
         {
            this.mbUseBots = false;
            return;
         }
         this.mbUseBots = !this.mbUseBots;
         this._SafeStr_2864();
      }
      
      private function _SafeStr_2864() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:int = 0;
         while(_loc2_ < _SafeStr_170)
         {
            if(!this._SafeStr_184[_loc2_] && !this._SafeStr_239[_loc2_])
            {
               this._SafeStr_1707(_loc2_);
               this._SafeStr_345[_loc2_] = !this.mbUseBots;
               this._SafeStr_330[_loc2_] = this.mbUseBots;
               if(this.mbUseBots)
               {
                  this._SafeStr_1084(_loc2_);
               }
               else
               {
                  this._SafeStr_2048(_loc2_);
               }
               this._SafeStr_212[_loc2_].Hide();
               this._SafeStr_178[_loc2_] = null;
               this._SafeStr_217[_loc2_] = null;
            }
            else
            {
               _loc1_++;
               this._SafeStr_719(_loc2_);
               this._SafeStr_212[_loc2_].Show();
               if(this._SafeStr_245[_loc2_])
               {
                  this._SafeStr_212[_loc2_].mMovieClip.x = this._SafeStr_245[_loc2_].mMovieClip.x;
                  this._SafeStr_212[_loc2_].mMovieClip.y = this._SafeStr_245[_loc2_].mMovieClip.y;
               }
            }
            _loc2_++;
         }
         if(_loc1_ < 2 && !this.mbUseBots)
         {
            this._SafeStr_1084(this._SafeStr_239[0] ? uint(1) : 0);
         }
         _SafeStr_141();
      }
      
      private function _SafeStr_2563() : void
      {
         var _loc1_:* = 0;
         if(_SafeStr_118.mbOverrideKeyboard)
         {
            _loc1_ = 0;
            while(_loc1_ < this._SafeStr_178.length - 1)
            {
               this._SafeStr_184[_loc1_] = this._SafeStr_184[_loc1_ + 1];
               this._SafeStr_178[_loc1_] = this._SafeStr_178[_loc1_ + 1];
               this._SafeStr_239[_loc1_] = this._SafeStr_239[_loc1_ + 1];
               this._SafeStr_245[_loc1_] = this._SafeStr_245[_loc1_ + 1];
               this._SafeStr_205[_loc1_] = this._SafeStr_205[_loc1_ + 1];
               this._SafeStr_217[_loc1_] = this._SafeStr_217[_loc1_ + 1];
               _loc1_++;
            }
            this._SafeStr_178[this._SafeStr_178.length - 1] = null;
            this._SafeStr_184[this._SafeStr_178.length - 1] = null;
            this._SafeStr_239[this._SafeStr_178.length - 1] = false;
            this._SafeStr_245[this._SafeStr_178.length - 1] = null;
            this._SafeStr_205[this._SafeStr_178.length - 1] = new Point();
            this._SafeStr_217[this._SafeStr_178.length - 1] = null;
         }
         else
         {
            _loc1_ = this._SafeStr_178.length - 1;
            while(_loc1_ > 0)
            {
               this._SafeStr_178[_loc1_] = this._SafeStr_178[_loc1_ - 1];
               this._SafeStr_184[_loc1_] = this._SafeStr_184[_loc1_ - 1];
               this._SafeStr_239[_loc1_] = this._SafeStr_239[_loc1_ - 1];
               this._SafeStr_245[_loc1_] = this._SafeStr_245[_loc1_ - 1];
               this._SafeStr_205[_loc1_] = this._SafeStr_205[_loc1_ - 1];
               this._SafeStr_217[_loc1_] = this._SafeStr_217[_loc1_ - 1];
               _loc1_--;
            }
            this._SafeStr_178[0] = null;
            this._SafeStr_184[0] = false;
            this._SafeStr_239[0] = true;
            this._SafeStr_205[0] = new Point();
            this._SafeStr_245[0] = null;
            this._SafeStr_217[0] = null;
         }
      }
      
      private function _SafeStr_376(param1:MouseEvent, param2:uint = 0) : void
      {
         _SafeStr_118.PlaySound("Mouseover_Click");
      }
      
      private function _SafeStr_2635(param1:uint, param2:Point) : void
      {
         if(!this._SafeStr_184[param1] && this._SafeStr_239[param1])
         {
            this._SafeStr_245[param1] = this._SafeStr_218[param2.x][param2.y];
            this._SafeStr_212[param1].mMovieClip.x = this._SafeStr_245[param1].mMovieClip.x;
            this._SafeStr_212[param1].mMovieClip.y = this._SafeStr_245[param1].mMovieClip.y;
            this._SafeStr_212[param1].Show();
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "_-jR"
 * @identifier _SafeCls_4 = "_-Kq"
 * @identifier _SafeCls_12 = "_-G5"
 * @identifier _SafeCls_16 = "_-DS"
 * @identifier _SafeCls_17 = "_-TF"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_41 = "_-tQ"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeCls_79 = "_-gL"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeCls_98 = "_-hy"
 * @identifier _SafeCls_99 = "_-X9"
 * @identifier _SafeCls_100 = "_-Jc"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_125 = "_-5"
 * @identifier _SafeStr_130 = "_-Ri"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_141 = "_-Ay"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_146 = "_-jy"
 * @identifier _SafeStr_170 = "_-u3"
 * @identifier _SafeStr_178 = "_-XI"
 * @identifier _SafeStr_180 = "_-az"
 * @identifier _SafeStr_184 = "_-OR"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_205 = "_-Ht"
 * @identifier _SafeStr_207 = "_-wd"
 * @identifier _SafeStr_208 = "_-9P"
 * @identifier _SafeStr_212 = "_-3x"
 * @identifier _SafeStr_213 = "_-Rl"
 * @identifier _SafeStr_214 = "_-W1"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_217 = "_-e5"
 * @identifier _SafeStr_218 = "_-6B"
 * @identifier _SafeStr_228 = "_-QK"
 * @identifier _SafeStr_231 = "_-9A"
 * @identifier _SafeStr_232 = "_-6u"
 * @identifier _SafeStr_239 = "_-1Y"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_245 = "_-7I"
 * @identifier _SafeStr_246 = "_-L0"
 * @identifier _SafeStr_247 = "_-PM"
 * @identifier _SafeStr_254 = "_-H5"
 * @identifier _SafeStr_272 = "_-7S"
 * @identifier _SafeStr_278 = "_-kv"
 * @identifier _SafeStr_288 = "_-m2"
 * @identifier _SafeStr_289 = "_-MO"
 * @identifier _SafeStr_294 = "_-2P"
 * @identifier _SafeStr_298 = "_-j2"
 * @identifier _SafeStr_301 = "_-4c"
 * @identifier _SafeStr_303 = "_-rS"
 * @identifier _SafeStr_307 = "_-mp"
 * @identifier _SafeStr_316 = "_-cQ"
 * @identifier _SafeStr_330 = "_-Su"
 * @identifier _SafeStr_345 = "_-cz"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_389 = "_-b7"
 * @identifier _SafeStr_390 = "_-cm"
 * @identifier _SafeStr_445 = "_-F4"
 * @identifier _SafeStr_477 = "_-jO"
 * @identifier _SafeStr_508 = "_-Fj"
 * @identifier _SafeStr_538 = "_-8N"
 * @identifier _SafeStr_558 = "_-Iq"
 * @identifier _SafeStr_577 = "_-RW"
 * @identifier _SafeStr_607 = "_-sS"
 * @identifier _SafeStr_616 = "_-ud"
 * @identifier _SafeStr_618 = "_-HS"
 * @identifier _SafeStr_619 = "_-50"
 * @identifier _SafeStr_643 = "_-Pu"
 * @identifier _SafeStr_655 = "_-Ah"
 * @identifier _SafeStr_656 = "_-N4"
 * @identifier _SafeStr_674 = "_-Wc"
 * @identifier _SafeStr_679 = "_-EK"
 * @identifier _SafeStr_693 = "_-Il"
 * @identifier _SafeStr_708 = "_-Sw"
 * @identifier _SafeStr_719 = "_-dH"
 * @identifier _SafeStr_727 = "_-Sn"
 * @identifier _SafeStr_764 = "_-pW"
 * @identifier _SafeStr_796 = "_-3s"
 * @identifier _SafeStr_813 = "_-U6"
 * @identifier _SafeStr_830 = "_-Fq"
 * @identifier _SafeStr_839 = "_-om"
 * @identifier _SafeStr_853 = "_-fe"
 * @identifier _SafeStr_887 = "_-S7"
 * @identifier _SafeStr_953 = "_-Qi"
 * @identifier _SafeStr_975 = "_-W3"
 * @identifier _SafeStr_997 = "_-5B"
 * @identifier _SafeStr_998 = "_-0M"
 * @identifier _SafeStr_1029 = "_-7t"
 * @identifier _SafeStr_1059 = "_-2r"
 * @identifier _SafeStr_1062 = "_-3v"
 * @identifier _SafeStr_1084 = "_-wJ"
 * @identifier _SafeStr_1114 = "_-6F"
 * @identifier _SafeStr_1216 = "_-3p"
 * @identifier _SafeStr_1279 = "_-s5"
 * @identifier _SafeStr_1301 = "_-2h"
 * @identifier _SafeStr_1308 = "_-pm"
 * @identifier _SafeStr_1312 = "_-i4"
 * @identifier _SafeStr_1426 = "_-ms"
 * @identifier _SafeStr_1581 = "_-TX"
 * @identifier _SafeStr_1631 = "_-jG"
 * @identifier _SafeStr_1658 = "_-Ls"
 * @identifier _SafeStr_1670 = "_-Zh"
 * @identifier _SafeStr_1674 = "_-Bf"
 * @identifier _SafeStr_1700 = "_-E9"
 * @identifier _SafeStr_1707 = "_-WP"
 * @identifier _SafeStr_1726 = "_-bs"
 * @identifier _SafeStr_1793 = "_-H3"
 * @identifier _SafeStr_1817 = "_-tz"
 * @identifier _SafeStr_1899 = "_-p2"
 * @identifier _SafeStr_1951 = "_-Pp"
 * @identifier _SafeStr_1954 = "_-XE"
 * @identifier _SafeStr_2048 = "_-9F"
 * @identifier _SafeStr_2071 = "_-ix"
 * @identifier _SafeStr_2080 = "_-0N"
 * @identifier _SafeStr_2082 = "_-6A"
 * @identifier _SafeStr_2313 = "_-EL"
 * @identifier _SafeStr_2340 = "_-Rd"
 * @identifier _SafeStr_2361 = "_-Ae"
 * @identifier _SafeStr_2381 = "_-mI"
 * @identifier _SafeStr_2384 = "_-bj"
 * @identifier _SafeStr_2468 = "_-ex"
 * @identifier _SafeStr_2486 = "_-Kx"
 * @identifier _SafeStr_2547 = "_-WX"
 * @identifier _SafeStr_2563 = "_-uT"
 * @identifier _SafeStr_2572 = "_-U2"
 * @identifier _SafeStr_2635 = "_-dr"
 * @identifier _SafeStr_2741 = "_-XJ"
 * @identifier _SafeStr_2864 = "_-Xe"
 * @identifier _SafeStr_2887 = "_-C1"
 * @identifier _SafeStr_2912 = "_-Zk"
 * @identifier _SafeStr_2913 = "_-HV"
 * @identifier _SafeStr_3038 = "_-TC"
 * @identifier _SafeStr_3050 = "_-sp"
 * @identifier _SafeStr_3119 = "_-ry"
 * @identifier _SafeStr_3216 = "_-8A"
 * @identifier _SafeStr_3330 = "_-oI"
 * @identifier _SafeStr_3350 = "_-19"
 * @identifier _SafeStr_3386 = "_-hZ"
 * @identifier _SafeStr_3425 = "_-1g"
 * @identifier _SafeStr_3521 = "_-Jb"
 * @identifier _SafeStr_3552 = "_-RH"
 * @identifier _SafeStr_3556 = "_-9C"
 * @identifier _SafeStr_3704 = "_-hW"
 * @identifier _SafeStr_3730 = "_-6v"
 */
