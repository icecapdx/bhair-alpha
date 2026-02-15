package
{
   import flash.desktop.NativeApplication;
   import flash.display.Sprite;
   import flash.events.GameInputEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import flash.ui.GameInput;
   import flash.ui.GameInputDevice;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class Game
   {
      
      public static var _SafeStr_3610:GameInput;
      
      internal static const _SafeStr_1686:uint = 1000;
      
      public static const _SafeStr_2388:uint = 8;
      
      private static const _SafeStr_2181:Vector.<String> = Vector.<String>(["Ready","Run","RunStart","RunStop","RunTurn","Jump","JumpLand","Dash","HitReact","HitReactLaunch","HitReactFall","HitReactLand","HitReactGetUp","ThrowSwordDown","ThrowSwordSide","ThrowSwordUp","Fall","JumpDown","JumpOff","WallCling","WallJump","WallJumpUp","WallPushAway","RunFromJump","ReadyTurn","RunStartStop","ItemPickUp","WallLean","RicochetFloor","FaceHit","FaceIdle","FaceKO","FaceVictory","AttackAir","AttackAir2","AttackAirUp","AttackAirUp2","AttackAirSide","AttackAirSide2","AttackAirDown","AttackAirDown2","AttackAirDown2Hit","AttackAirDown3","AttackCombo1","AttackCombo2","AttackCombo3","AttackCombo4","AttackDash","AttackUpSmash","AttackSideSmash","AttackDownSmash","AttackUpSmashCharge","AttackSideSmashCharge","AttackDownSmashCharge","AttackSideSmashHit","AttackAirAngleUp","AttackAirAngleUpCharge","AttackAirAngleDown","AttackAirAngleDownCharge","AttackAirSideSmash","AttackAirSideSmashCharge","AttackAirDownSmash","AttackUp"
      ,"AttackUp2","AttackSide","AttackSide2","AttackDown","AttackDown2","HeavyAttack","GroundAttack01","GroundAttack02","AttackWall","AttackUpSmashHit","AttackDownSmashHit","AttackAirUpHit","AttackAirDownHit","AttackAirDownHitGround","AttackSideHit","RespawnCarry","RespawnDrop","EmoteVictory","EmoteLose","DodgeRoll","DodgeSpot","DodgeAir","ThrowCharge","HitReact2","ThrowSwordSide","ThrowSwordUp","ThrowSwordDown","InitSpawn","AirThrow","AirThrowCharge","RespawnFall","ItemHorn","AttackAirSide22","AttackAirSide33","AttackSuperClaw","AttackNeutralSmash2","AttackDownSmash2","AttackSideSmash2","AttackSuperSadie","AttackNeutralSmash","AttackSuperLaser","AttackSuperFaceLaser","AttackSmashForwardSig","AttackSmashDownSig","AttackNeutralSmash3","AttackDownSmash3","AttackSideSmash3Charge","AttackSideSmash3","AttackSideSmash3Hit","AttackUpSmash2Charge","AttackAirAngleUp2","AttackNeutralSmash2Charge","AttackSideSmash2Charge","AttackSideSmash2Hit","AttackSpecialCowgirl","AttackSpecialCowgirl2","AttackSpecialCowgirlHit"
      ,"AttackSpecialBodvar","AttackSpecialBodvarHit","AttackSpecialBodvarCharge","AttackSpecialAlien","AttackSpecialAlienHit","AttackSpecialVolstCharge","AttackSpecialVolst","AttackSpecialVolstHit","AttackSpecialPunk","InitDrop","AttackSpecial2Bodvar","AttackSpecialCaveman","AttackSpecialCavemanHit","AttackSpecialWitch"]);
      
      private static const _SafeStr_2014:Vector.<String> = Vector.<String>(["a__1HandForwardAnimation","a__1HandRearAnimation","a__2HandForwardAnimation","a__2HandRearAnimation","a__BowAnimation","a__ClawAnimation","a__DualForwardAnimation","a__DualRearAnimation","a__HeavyForwardAnimation","a__HeavyRearAnimation","a__KickAnimation","a__PistolAnimation","a__RifleAnimation","a__SpearForwardAnimation","a__SpearRearAnimation","a__ThrownAnimation","a__HeadShotAnimation","a__HoldingItemAnimation","a__RocketLanceAnimation","a__HammerAnimation","a__PistolAnimation"]);
      
      private static const _SafeStr_2267:Vector.<String> = Vector.<String>(["Ready","Fall","Danger","RespawnCarry","RespawnDrop","Run","Armed","InitSpawn","InitDrop"]);
      
      private static const _SafeStr_2214:Vector.<String> = Vector.<String>(["a__AnimationWeaponSword","a__AnimationProxMine","a__AnimationSpikeBall","a__AnimationBouncyBomb","a__AnimationRobot","a__AnimationShuriken","a__AnimationBeachBall","a__AnimationWeaponRocketLance","a__AnimationInventoryBox","a__AnimationMedkit","a__AnimationWeaponHammer","a__AnimationForcefield","a__AnimationGlueBomb","a__AnimationRemoteRed","a__AnimationRemoteBlue","a__AnimationSlamBomb","a__AnimationWeaponPistol"]);
      
      public static const _SafeStr_2150:uint = 291550;
      
      public static const _SafeStr_2658:uint = 297630;
      
      public static const _SafeStr_2791:uint = 298640;
      
      public static const _SafeStr_2727:uint = 298641;
      
      public static const _SafeStr_354:Number = 24;
      
      private static var _SafeStr_149:uint = 1;
      
      public static const _SafeStr_214:uint = _SafeStr_149++;
      
      public static const _SafeStr_213:uint = _SafeStr_149++;
      
      public static const _SafeStr_581:uint = _SafeStr_149++;
      
      public static const _SafeStr_208:uint = _SafeStr_149++;
      
      public static const _SafeStr_207:uint = _SafeStr_149++;
      
      public static const _SafeStr_305:uint = _SafeStr_149++;
      
      public static const _SafeStr_293:uint = _SafeStr_149++;
      
      public static const _SafeStr_342:uint = _SafeStr_149++;
      
      public static const _SafeStr_1984:uint = _SafeStr_149++;
      
      public static const _SafeStr_378:uint = _SafeStr_149++;
      
      public static const _SafeStr_242:uint = _SafeStr_149++;
      
      public static const _SafeStr_1461:uint = _SafeStr_149++;
      
      public static const _SafeStr_1400:uint = _SafeStr_149++;
      
      public static const _SafeStr_1137:uint = _SafeStr_149++;
      
      public static const _SafeStr_216:uint = _SafeStr_149++;
      
      public static const _SafeStr_247:uint = _SafeStr_149++;
      
      public static const _SafeStr_288:uint = _SafeStr_149++;
      
      public static const _SafeStr_1519:uint = _SafeStr_149++;
      
      public static const _SafeStr_316:uint = _SafeStr_149++;
      
      internal static const COMMAND2_SCROLLUP:int = 1;
      
      internal static const COMMAND2_SCROLLDOWN:int = 2;
      
      internal static const COMMAND2_ESCAPE:int = 3;
      
      internal static const COMMAND2_ENTER:int = 4;
      
      internal static const COMMAND2_BACKSPACE:int = 5;
      
      internal static const COMMAND2_DELETE:int = 6;
      
      internal static const COMMAND2_CONSOLE:int = 7;
      
      internal static const COMMAND3_ENTER:int = 1;
      
      internal static const COMMAND3_CONSOLE:int = 2;
      
      public static const _SafeStr_2322:uint = _SafeStr_149;
      
      public static const _SafeStr_1545:uint = _SafeStr_149;
      
      public static const _SafeStr_1534:uint = 255;
      
      public static const _SafeStr_1363:uint = 32767;
      
      public static const _SafeStr_2566:uint = 2147483647;
      
      public static const _SafeStr_2629:uint = 330000;
      
      public static const _SafeStr_1338:uint = _SafeCls_0._SafeStr_1470 << 0;
      
      public static const _SafeStr_1505:uint = _SafeCls_0._SafeStr_1470 << 1;
      
      public static const _SafeStr_2929:uint = 0;
      
      public static const _SafeStr_2028:uint = 1;
      
      public static const _SafeStr_2229:uint = 2;
      
      public static const _SafeStr_1571:uint = 3;
      
      public static const _SafeStr_1997:uint = 4;
      
      public static const _SafeStr_2312:uint = 5;
      
      public static const _SafeStr_1460:uint = 6;
      
      public static const _SafeStr_1164:uint = 1;
      
      public static const _SafeStr_2906:uint = 2;
      
      public static const _SafeStr_580:uint = 1;
      
      public static const FRIEND:uint = 2;
      
      public static const _SafeStr_1324:String = "Login";
      
      public static const _SafeStr_1769:String = "Transfer";
      
      public static const _SafeStr_464:String = "Online";
      
      public static const _SafeStr_2895:String = "None";
      
      public static const _SafeStr_348:String = "Lobby";
      
      public static const _SafeStr_417:String = "Practice";
      
      public static const _SafeStr_543:String = "Paused";
      
      public static const _SafeStr_513:String = "Couch";
      
      public static const _SafeStr_1604:uint = 4;
      
      internal static const _SafeStr_1974:uint = 10;
      
      internal static const _SafeStr_1859:uint = 5;
      
      private static const _SafeStr_2307:Boolean = !(_SafeCls_1.flags & _SafeCls_1._SafeStr_740);
      
      public static const _SafeStr_1483:uint = 2;
      
      public static const _SafeStr_1578:uint = 4;
      
      public static const _SafeStr_1752:uint = 8;
      
      internal var main:_SafeCls_5;
      
      internal var _SafeStr_2580:uint;
      
      internal var _SafeStr_2985:String;
      
      internal var _SafeStr_1002:Vector.<_SafeCls_74>;
      
      internal var _SafeStr_1127:Sprite;
      
      internal var _SafeStr_156:Sprite;
      
      internal var _SafeStr_1089:Sprite;
      
      internal var _SafeStr_2139:Sprite;
      
      internal var _SafeStr_164:Sprite;
      
      internal var _SafeStr_2259:Sprite;
      
      internal var _SafeStr_2555:Sprite;
      
      internal var _SafeStr_707:Sprite;
      
      internal var _SafeStr_2639:Sprite;
      
      internal var _SafeStr_381:Sprite;
      
      internal var _SafeStr_834:Sprite;
      
      internal var _SafeStr_642:Sprite;
      
      internal var _SafeStr_256:_SafeCls_42;
      
      internal var _SafeStr_168:_SafeCls_12;
      
      internal var _SafeStr_868:_SafeCls_55;
      
      internal var screenChat:_SafeCls_61;
      
      internal var screenError:_SafeCls_79;
      
      internal var screenPause:_SafeCls_51;
      
      internal var screenLogin:_SafeCls_59;
      
      internal var _SafeStr_1639:_SafeCls_44;
      
      internal var _SafeStr_856:_SafeCls_58;
      
      internal var screenHeroList:_SafeCls_53;
      
      internal var screenHeroOverview:_SafeCls_37;
      
      internal var screenKeybinds:_SafeCls_70;
      
      internal var screenJoinGame:_SafeCls_54;
      
      internal var screenControls:_SafeCls_82;
      
      internal var _SafeStr_651:_SafeCls_38;
      
      internal var _SafeStr_1057:_SafeCls_81;
      
      internal var screenBroadcast:_SafeCls_48;
      
      internal var _SafeStr_1601:_SafeCls_65;
      
      internal var _SafeStr_1883:_SafeCls_57;
      
      internal var screenCentralHUB:_SafeCls_68;
      
      internal var _SafeStr_1159:_SafeCls_72;
      
      internal var screenGameOptions:_SafeCls_45;
      
      internal var _SafeStr_1998:_SafeCls_69;
      
      internal var screenCreateAccount:_SafeCls_60;
      
      internal var screenOnlineOptions:_SafeCls_75;
      
      internal var _SafeStr_1985:_SafeCls_80;
      
      internal var screenSelectCharacter:_SafeCls_41;
      
      internal var _SafeStr_1044:_SafeCls_46;
      
      internal var _SafeStr_2279:_SafeCls_64;
      
      internal var serverConn:_SafeCls_66;
      
      internal var _SafeStr_161:_SafeCls_73;
      
      internal var _SafeStr_613:_SafeCls_15;
      
      internal var _SafeStr_1031:_SafeCls_49;
      
      internal var level:Level;
      
      internal var _SafeStr_1050:Boolean;
      
      internal var _SafeStr_165:_SafeCls_0;
      
      internal var _SafeStr_1106:Vector.<uint>;
      
      internal var mCamera:_SafeCls_47;
      
      internal var _SafeStr_793:Vector.<_SafeCls_40>;
      
      internal var _SafeStr_2976:Boolean;
      
      internal var mbAirClient:Boolean;
      
      internal var _SafeStr_1525:Boolean;
      
      internal var _SafeStr_965:Vector.<int>;
      
      internal var _SafeStr_3004:String = "";
      
      internal var mbCanLogInWithSteam:Boolean;
      
      internal var mCharID:uint;
      
      internal var mCharacterName:String;
      
      internal var _SafeStr_3327:uint;
      
      internal var _SafeStr_3372:uint;
      
      internal var _SafeStr_3040:uint;
      
      internal var _SafeStr_3183:uint;
      
      internal var _SafeStr_2733:uint;
      
      internal var _SafeStr_2822:uint;
      
      internal var _SafeStr_2928:uint;
      
      internal var _SafeStr_2574:_SafeCls_52;
      
      internal var _SafeStr_554:_SafeCls_67;
      
      internal var mCustomGameData:_SafeCls_50;
      
      internal var mFriendList:Vector.<Friend>;
      
      internal var mGuildList:Vector.<Friend>;
      
      internal var _SafeStr_2875:Vector.<_SafeCls_56>;
      
      internal var _SafeStr_3181:Boolean;
      
      internal var _SafeStr_683:uint;
      
      internal var _SafeStr_1241:int;
      
      internal var _SafeStr_1271:int;
      
      internal var mClientEnt:_SafeCls_25;
      
      internal var _SafeStr_3443:String;
      
      internal var mEntities:Vector.<_SafeCls_25>;
      
      internal var _SafeStr_812:Array;
      
      internal var _SafeStr_270:Vector.<_SafeCls_27>;
      
      internal var _SafeStr_484:Vector.<_SafeCls_71>;
      
      internal var _SafeStr_760:_SafeCls_63;
      
      internal var mMatchMakerData:_SafeCls_76;
      
      internal var _SafeStr_3226:Boolean;
      
      internal var _SafeStr_1986:Boolean;
      
      internal var _SafeStr_2052:Boolean;
      
      internal var _SafeStr_2157:uint;
      
      internal var mTimeThisTick:uint;
      
      internal var _SafeStr_1167:uint;
      
      internal var _SafeStr_227:Number = 0;
      
      internal var _SafeStr_3706:uint;
      
      internal var mServerGameTime:uint;
      
      internal var mGameMode:_SafeCls_4;
      
      internal var _SafeStr_314:Boolean;
      
      internal var _SafeStr_714:uint;
      
      internal var _SafeStr_2442:String;
      
      internal var _SafeStr_313:Dictionary;
      
      internal var _SafeStr_678:Dictionary;
      
      internal var _SafeStr_388:Vector.<_SafeCls_25>;
      
      internal var _SafeStr_370:Vector.<_SafeCls_25>;
      
      internal var _SafeStr_1839:Vector.<uint>;
      
      internal var _SafeStr_409:uint;
      
      internal var mbOverrideKeyboard:Boolean;
      
      internal var _SafeStr_3712:Boolean;
      
      internal var mbGlobalInputLock:Boolean;
      
      internal var mKeybindManager:_SafeCls_39;
      
      internal var CONTEXT_GAMEPLAY:uint;
      
      internal var CONTEXT_CHAT:int;
      
      internal var CONTEXT_NORMAL:int;
      
      internal var _SafeStr_2456:Boolean;
      
      internal var _SafeStr_1678:Boolean = false;
      
      internal var gameState:String;
      
      internal var bShouldBeginLoginProcess:Boolean;
      
      internal var _SafeStr_3313:Boolean;
      
      internal var _SafeStr_696:uint = 0;
      
      internal var _SafeStr_1097:uint;
      
      internal var _SafeStr_2315:uint;
      
      public var _SafeStr_365:Boolean;
      
      public var _SafeStr_557:Boolean;
      
      internal var _SafeStr_3613:Dictionary;
      
      internal var clientEntID:uint;
      
      internal var _SafeStr_2219:uint;
      
      internal var _SafeStr_3700:uint;
      
      internal var _SafeStr_1790:String;
      
      internal var _SafeStr_1108:String;
      
      internal var _SafeStr_3754:String;
      
      internal var _SafeStr_1285:String;
      
      internal var _SafeStr_3599:Boolean = true;
      
      internal var _SafeStr_2383:Boolean;
      
      internal var _SafeStr_2617:String;
      
      internal var _SafeStr_3222:Array;
      
      internal var _SafeStr_3715:String;
      
      internal var _SafeStr_1412:Boolean;
      
      internal var _SafeStr_3095:Boolean;
      
      internal var _SafeStr_3269:Boolean;
      
      internal var _SafeStr_3260:Dictionary;
      
      internal var _SafeStr_1551:String;
      
      internal var mTimeRemaining:uint;
      
      internal var _SafeStr_3711:_SafeCls_62;
      
      internal var cachedCharInfo:SharedObject;
      
      internal var _SafeStr_129:SharedObject;
      
      internal var _SafeStr_1281:String;
      
      internal var _SafeStr_907:String;
      
      internal var mControllerInputs:Vector.<ControllerInput>;
      
      internal var bRequestLoginConnect:Boolean;
      
      internal var _SafeStr_3581:Boolean;
      
      internal var _SafeStr_3586:Boolean;
      
      internal var _SafeStr_1756:uint;
      
      internal var mbLostConnection:Boolean;
      
      internal var _SafeStr_2086:Boolean;
      
      internal var mNewsText:String;
      
      internal var _SafeStr_1566:Boolean = false;
      
      internal var _SafeStr_2079:Boolean = false;
      
      internal var _SafeStr_2961:Boolean = false;
      
      private var _SafeStr_3621:Boolean;
      
      internal var _SafeStr_631:SteamAir;
      
      public function Game(param1:_SafeCls_5)
      {
         super();
         this.main = param1;
         this._SafeStr_3476();
      }
      
      public function _SafeStr_3476() : void
      {
         var _loc4_:GameInputDevice = null;
         var _loc5_:String = null;
         this.mTimeThisTick = getTimer();
         this._SafeStr_1839 = new Vector.<uint>();
         this._SafeStr_1839.length = 4;
         this._SafeStr_409 = 0;
         var _loc1_:Object = this.main.root.loaderInfo.parameters;
         if(Boolean(_loc1_) && (Boolean(_loc1_.fb) || Boolean(_loc1_.kg)))
         {
            this._SafeStr_1108 = _loc1_.kg;
            this._SafeStr_1790 = _loc1_.fb;
            this._SafeStr_2617 = _loc1_.ak;
            if(uint(_loc1_.ha))
            {
               _loc5_ = _loc1_.ci;
               this._SafeStr_3222 = _loc5_ ? _loc5_.split(":") : null;
               this._SafeStr_2383 = true;
            }
         }
         this._SafeStr_2875 = new Vector.<_SafeCls_56>();
         this.mMatchMakerData = new _SafeCls_76(this);
         this._SafeStr_793 = new Vector.<_SafeCls_40>();
         this._SafeStr_1106 = new Vector.<uint>();
         this.mControllerInputs = new Vector.<ControllerInput>();
         this.mEntities = new Vector.<_SafeCls_25>();
         this._SafeStr_388 = new Vector.<_SafeCls_25>();
         this._SafeStr_812 = new Array();
         this._SafeStr_270 = new Vector.<_SafeCls_27>();
         this._SafeStr_484 = new Vector.<_SafeCls_71>();
         this._SafeStr_256 = new _SafeCls_42(this);
         this.mKeybindManager = new _SafeCls_39(_SafeStr_2322);
         this._SafeStr_3152();
         this.mFriendList = new Vector.<Friend>();
         this._SafeStr_613 = new _SafeCls_15(this);
         this._SafeStr_1031 = new _SafeCls_49(this);
         this._SafeStr_165 = new _SafeCls_0(this);
         this._SafeStr_760 = new _SafeCls_63(this);
         this._SafeStr_2574 = new _SafeCls_52(this);
         this._SafeStr_554 = new _SafeCls_67(this);
         this.mCustomGameData = new _SafeCls_50(this);
         this._SafeStr_3301();
         _SafeCls_10._SafeStr_2569();
         this.level = new Level(this);
         this.mCamera = new _SafeCls_47(this);
         this._SafeStr_3244();
         this._SafeStr_3568();
         this._SafeStr_3248();
         this._SafeStr_1998.Display();
         if(!this.IsStandaloneClient())
         {
            this._SafeStr_1985.Display();
         }
         this._SafeStr_714 = 0;
         this._SafeStr_1002 = new Vector.<_SafeCls_74>();
         this.mbAirClient = true;
         if(this.IsStandaloneClient())
         {
            this._SafeStr_1862();
         }
         else
         {
            this._SafeStr_3195();
         }
         this.main.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_3421);
         this.main.stage.addEventListener(KeyboardEvent.KEY_UP,this._SafeStr_3527);
         Brawlhalla._SafeStr_1129.addEventListener(GameInputEvent.DEVICE_ADDED,this._SafeStr_2537);
         Brawlhalla._SafeStr_1129.addEventListener(GameInputEvent.DEVICE_REMOVED,this._SafeStr_3362);
         Brawlhalla._SafeStr_1129.addEventListener(GameInputEvent.DEVICE_UNUSABLE,this._SafeStr_3025);
         var _loc3_:uint = 0;
         while(0 < GameInput.numDevices && _loc3_ < 100)
         {
            _loc4_ = GameInput.getDeviceAt(_loc3_);
            if(_loc4_)
            {
               this._SafeStr_2537(null,_loc4_,true);
               var _loc2_:uint = 1;
            }
            _loc3_++;
         }
         if(0 < GameInput.numDevices)
         {
         }
      }
      
      private function _SafeStr_2537(param1:GameInputEvent = null, param2:GameInputDevice = null, param3:Boolean = false) : void
      {
         var _loc6_:_SafeCls_25 = null;
         var _loc7_:Boolean = false;
         var _loc8_:uint = 0;
         var _loc4_:int = GameInput.numDevices;
         if(Boolean(param1) && !param2)
         {
            param2 = param1.device;
         }
         if(!param2)
         {
            return;
         }
         var _loc5_:ControllerInput = ControllerInput._SafeStr_3560(this,param2);
         if(!_loc5_)
         {
            return;
         }
         if(this.mControllerInputs.length >= _SafeStr_1604 - 1)
         {
            this.mbOverrideKeyboard = true;
         }
         switch(this.gameState)
         {
            case _SafeStr_513:
            case _SafeStr_464:
            case _SafeStr_417:
               _loc8_ = this.mbOverrideKeyboard ? uint(0) : 1;
               while(_loc8_ < this.mEntities.length)
               {
                  _loc6_ = this.mEntities[_loc8_];
                  if(!_loc6_._SafeStr_2251 && _loc6_._SafeStr_137 & _SafeCls_25.LOCAL && _loc6_._SafeStr_137 & _SafeCls_25._SafeStr_469 && !(_loc6_._SafeStr_137 & (_SafeCls_25._SafeStr_194 | _SafeCls_25.BOT | _SafeCls_25._SafeStr_413)))
                  {
                     _loc7_ = true;
                     _loc5_.AssignPlayer(_loc6_);
                     this.mControllerInputs.splice(_loc8_,0,_loc5_);
                     break;
                  }
                  _loc8_++;
               }
               if(!_loc7_)
               {
                  this.mControllerInputs.push(_loc5_);
               }
               break;
            default:
               if(param3 || this.mControllerInputs.length < _SafeStr_1604 - 1)
               {
                  this.mControllerInputs.push(_loc5_);
                  break;
               }
               this.mControllerInputs.unshift(_loc5_);
         }
      }
      
      private function _SafeStr_3362(param1:GameInputEvent) : void
      {
      }
      
      private function _SafeStr_3025(param1:GameInputEvent) : void
      {
         _SafeCls_22._SafeStr_195("[Game.as] Device found but is unusable");
      }
      
      public function _SafeStr_3689(param1:uint) : uint
      {
         if(!this.mControllerInputs)
         {
            return 0;
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.mControllerInputs.length)
         {
            if(this.mControllerInputs[_loc2_].mID == param1)
            {
               break;
            }
            _loc2_++;
         }
         return _loc2_ + (this.mbOverrideKeyboard ? 0 : 1);
      }
      
      public function _SafeStr_3511(param1:uint) : ControllerInput
      {
         if(!this.mControllerInputs)
         {
            return null;
         }
         if(!this.mbOverrideKeyboard)
         {
            param1--;
         }
         return param1 >= 0 && param1 < this.mControllerInputs.length ? this.mControllerInputs[param1] : null;
      }
      
      public function _SafeStr_3381() : void
      {
         var _loc1_:ControllerInput = null;
         var _loc3_:ControllerInput = null;
         if(!this.mControllerInputs)
         {
            return;
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.mControllerInputs.length)
         {
            _loc3_ = this.mControllerInputs[_loc2_];
            switch(this.gameState)
            {
               case _SafeStr_348:
               case _SafeStr_1324:
               case _SafeStr_543:
                  if(!_loc3_._SafeStr_2728(_loc2_ + (this.mbOverrideKeyboard ? 0 : 1)))
                  {
                     _loc1_ = _loc3_;
                  }
                  break;
               default:
                  if(this.screenPause.mbVisible)
                  {
                     if(!_loc3_._SafeStr_2728(_loc2_ + (this.mbOverrideKeyboard ? 0 : 1)))
                     {
                        _loc1_ = _loc3_;
                     }
                  }
                  else if(!_loc3_._SafeStr_3141())
                  {
                     _loc1_ = _loc3_;
                  }
            }
            _loc2_++;
         }
         if(_loc1_)
         {
            _loc1_._SafeStr_3073();
            this.mControllerInputs.splice(this.mControllerInputs.indexOf(_loc1_),1);
         }
      }
      
      public function _SafeStr_1862() : void
      {
         this.gameState = _SafeStr_464;
         this.mKeybindManager.SetContext(this.CONTEXT_GAMEPLAY);
         this.screenChat.Hide();
         this._SafeStr_557 = false;
         this._SafeStr_1241 = 0;
         this._SafeStr_1271 = 0;
         this._SafeStr_651.Display();
         this.screenBroadcast.Display();
         this._SafeStr_868.Display();
         this._SafeStr_868._SafeStr_2988(this.mClientEnt);
         this._SafeStr_1601.Display();
      }
      
      public function EndStatePlay() : void
      {
         this.gameState = _SafeStr_1769;
         this.mKeybindManager.SetContext(this.CONTEXT_NORMAL);
         this._SafeStr_1079();
         this.screenSelectCharacter.Reopen();
         if(this.serverConn)
         {
            this.serverConn.DestroyConnection();
            this.serverConn = null;
         }
      }
      
      public function _SafeStr_3148() : void
      {
         this.gameState = _SafeStr_1769;
      }
      
      public function BeginLoginProcess(param1:String, param2:String, param3:Boolean, param4:Boolean) : void
      {
         this._SafeStr_1281 = param1;
         this._SafeStr_907 = param2;
         this.bRequestLoginConnect = true;
         this.bShouldBeginLoginProcess = true;
         this._SafeStr_1412 = param4;
         if(Boolean(this._SafeStr_1790) || Boolean(this._SafeStr_1108))
         {
            return;
         }
         if(this.cachedCharInfo)
         {
            this.cachedCharInfo.data.dbUserEmail = param1;
            this.cachedCharInfo.data.dbPassHash = param3 ? param2 : "";
            try
            {
               this.cachedCharInfo.flush();
            }
            catch(error:Error)
            {
            }
         }
      }
      
      public function _SafeStr_3684() : void
      {
         var _loc1_:_SafeCls_40 = null;
         this.main = null;
         for each(_loc1_ in this._SafeStr_793)
         {
            _loc1_._SafeStr_201();
         }
         this._SafeStr_793 = null;
         this._SafeStr_168._SafeStr_2780();
         this._SafeStr_168 = null;
         this.mFriendList = null;
         if(this.mCamera)
         {
            this.mCamera._SafeStr_3198();
         }
         this.mCamera = null;
      }
      
      public function _SafeStr_3457() : void
      {
         var _loc1_:uint = uint(getTimer());
         var _loc2_:uint = _loc1_ - this._SafeStr_1167 - this.mTimeThisTick;
         if(this.gameState == _SafeStr_543)
         {
            this._SafeStr_1167 += _loc2_;
         }
         this._SafeStr_2157 = this.mTimeThisTick;
         this.mTimeThisTick = _loc1_ - this._SafeStr_1167;
         this._SafeStr_227 = _loc2_ * 0.001 * _SafeStr_354;
         if(this._SafeStr_227 >= 50 && Boolean(_SafeCls_1.flags & _SafeCls_1._SafeStr_740))
         {
            this._SafeStr_227 = 50;
         }
         this.mServerGameTime += _loc2_;
      }
      
      public function _SafeStr_2055(param1:uint) : void
      {
         this.mServerGameTime = param1;
      }
      
      private function _SafeStr_3568() : void
      {
         this.main.stage.addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_3453);
         this.main.stage.addEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this._SafeStr_3234);
         this.main.stage.addEventListener(MouseEvent.MOUSE_UP,this._SafeStr_3256);
         this.main.stage.addEventListener(MouseEvent.RIGHT_MOUSE_UP,this._SafeStr_3433);
      }
      
      private function _SafeStr_3453(param1:MouseEvent) : void
      {
         if(this.mbGlobalInputLock)
         {
            return;
         }
         if(this.mClientEnt)
         {
            this.mClientEnt._SafeStr_132._SafeStr_961();
            this.mClientEnt._SafeStr_132._SafeStr_2565();
            this.mClientEnt._SafeStr_132._SafeStr_297 = _SafeCls_24._SafeStr_877;
         }
      }
      
      private function _SafeStr_3234(param1:MouseEvent) : void
      {
         if(this.mbGlobalInputLock)
         {
            return;
         }
         if(this.mClientEnt)
         {
            this.mClientEnt._SafeStr_132._SafeStr_961();
            this.mClientEnt._SafeStr_132.HeavyAttack();
            this.mClientEnt._SafeStr_132._SafeStr_297 = _SafeCls_24._SafeStr_877;
         }
      }
      
      private function _SafeStr_3256(param1:MouseEvent) : void
      {
         if(this.mbGlobalInputLock)
         {
            return;
         }
         if(this.mClientEnt)
         {
            this.mClientEnt._SafeStr_132._SafeStr_961();
            this.mClientEnt._SafeStr_132._SafeStr_2431();
         }
      }
      
      private function _SafeStr_3433(param1:MouseEvent) : void
      {
         if(this.mbGlobalInputLock)
         {
            return;
         }
         if(this.mClientEnt)
         {
            this.mClientEnt._SafeStr_132._SafeStr_961();
            this.mClientEnt._SafeStr_132._SafeStr_2897();
         }
      }
      
      private function _SafeStr_3248() : void
      {
         this._SafeStr_168 = new _SafeCls_12(this);
         this._SafeStr_2279 = this._SafeStr_168._SafeStr_222(_SafeCls_64) as _SafeCls_64;
         this.screenError = this._SafeStr_168._SafeStr_222(_SafeCls_79) as _SafeCls_79;
         this._SafeStr_1985 = this._SafeStr_168._SafeStr_222(_SafeCls_80) as _SafeCls_80;
         this._SafeStr_1639 = this._SafeStr_168._SafeStr_222(_SafeCls_44) as _SafeCls_44;
         this.screenCreateAccount = this._SafeStr_168._SafeStr_222(_SafeCls_60) as _SafeCls_60;
         this._SafeStr_1044 = this._SafeStr_168._SafeStr_222(_SafeCls_46) as _SafeCls_46;
         this.screenLogin = this._SafeStr_168._SafeStr_222(_SafeCls_59) as _SafeCls_59;
         this.screenKeybinds = this._SafeStr_168._SafeStr_222(_SafeCls_70) as _SafeCls_70;
         this.screenHeroOverview = this._SafeStr_168._SafeStr_222(_SafeCls_37) as _SafeCls_37;
         this.screenHeroList = this._SafeStr_168._SafeStr_222(_SafeCls_53) as _SafeCls_53;
         this.screenJoinGame = this._SafeStr_168._SafeStr_222(_SafeCls_54) as _SafeCls_54;
         this.screenOnlineOptions = this._SafeStr_168._SafeStr_222(_SafeCls_75) as _SafeCls_75;
         this.screenGameOptions = this._SafeStr_168._SafeStr_222(_SafeCls_45) as _SafeCls_45;
         this._SafeStr_1601 = this._SafeStr_168._SafeStr_222(_SafeCls_65) as _SafeCls_65;
         this.screenControls = this._SafeStr_168._SafeStr_222(_SafeCls_82) as _SafeCls_82;
         this._SafeStr_856 = this._SafeStr_168._SafeStr_222(_SafeCls_58) as _SafeCls_58;
         this.screenChat = this._SafeStr_168._SafeStr_222(_SafeCls_61) as _SafeCls_61;
         this._SafeStr_1998 = this._SafeStr_168._SafeStr_222(_SafeCls_69) as _SafeCls_69;
         this.screenSelectCharacter = this._SafeStr_168._SafeStr_222(_SafeCls_41) as _SafeCls_41;
         this.screenPause = this._SafeStr_168._SafeStr_222(_SafeCls_51) as _SafeCls_51;
         this.screenCentralHUB = this._SafeStr_168._SafeStr_222(_SafeCls_68) as _SafeCls_68;
         this._SafeStr_1057 = this._SafeStr_168._SafeStr_222(_SafeCls_81) as _SafeCls_81;
         this._SafeStr_1159 = this._SafeStr_168._SafeStr_222(_SafeCls_72) as _SafeCls_72;
         this._SafeStr_651 = this._SafeStr_168._SafeStr_222(_SafeCls_38) as _SafeCls_38;
         this.screenBroadcast = this._SafeStr_168._SafeStr_222(_SafeCls_48) as _SafeCls_48;
         this._SafeStr_1883 = this._SafeStr_168._SafeStr_222(_SafeCls_57) as _SafeCls_57;
         this._SafeStr_868 = this._SafeStr_168._SafeStr_222(_SafeCls_55) as _SafeCls_55;
      }
      
      private function _SafeStr_3623() : void
      {
         this._SafeStr_1998 = null;
         this.screenGameOptions = null;
         this.screenControls = null;
         this.screenHeroOverview = null;
         this.screenHeroList = null;
         this.screenKeybinds = null;
         this.screenJoinGame = null;
         this.screenOnlineOptions = null;
         this._SafeStr_1601 = null;
         this._SafeStr_856 = null;
         this.screenCentralHUB = null;
         this.screenSelectCharacter = null;
         this.screenLogin = null;
         this.screenChat = null;
         this._SafeStr_1639 = null;
         this._SafeStr_1985 = null;
         this.screenCreateAccount = null;
         this._SafeStr_1044 = null;
         this._SafeStr_2279 = null;
         this.screenPause = null;
         this.screenError = null;
         this.screenBroadcast = null;
         this._SafeStr_1883 = null;
         this._SafeStr_1057 = null;
         this._SafeStr_868 = null;
         this._SafeStr_168._SafeStr_2780();
         this._SafeStr_168 = null;
      }
      
      public function _SafeStr_200(param1:int) : _SafeCls_25
      {
         return this._SafeStr_812[param1];
      }
      
      public function _SafeStr_1853(param1:int) : _SafeCls_27
      {
         var _loc2_:_SafeCls_27 = null;
         for each(_loc2_ in this._SafeStr_270)
         {
            if(_loc2_._SafeStr_159._SafeStr_173 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function _SafeStr_2973() : void
      {
         var _loc1_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_1879);
         _loc1_._SafeStr_146(this._SafeStr_2219);
         _loc1_._SafeStr_279(this._SafeStr_1285);
         this.serverConn.SendPacket(_loc1_);
      }
      
      public function _SafeStr_3002() : Boolean
      {
         var _loc1_:uint = 0;
         var _loc2_:_SafeCls_25 = null;
         this._SafeStr_3457();
         if(this._SafeStr_161)
         {
            this._SafeStr_161._SafeStr_3442();
         }
         if(this._SafeStr_2052)
         {
            this._SafeStr_3449();
         }
         if(!this.mbGlobalInputLock)
         {
            this._SafeStr_3381();
         }
         if(!this._SafeStr_1525 && Boolean(this._SafeStr_631))
         {
            this._SafeStr_631.RunCallbacks();
         }
         if(this._SafeStr_714)
         {
            _loc1_ = uint(getTimer());
            if(_loc1_ - this._SafeStr_714 <= _SafeStr_1686)
            {
               this.gameState = _SafeStr_543;
               this.mbGlobalInputLock = true;
               for each(_loc2_ in this.mEntities)
               {
                  if(_loc2_.mEntState != _SafeCls_25._SafeStr_292)
                  {
                     _loc2_._SafeStr_154._SafeStr_2613(_loc1_);
                  }
               }
            }
            else
            {
               this.gameState = this._SafeStr_2442;
               this.mbGlobalInputLock = false;
               this._SafeStr_714 = 0;
               for each(_loc2_ in this.mEntities)
               {
                  if(_loc2_.mEntState != _SafeCls_25._SafeStr_292)
                  {
                     _loc2_._SafeStr_154._SafeStr_229(SpawnBot._SafeStr_825);
                     _loc2_.mCombatState._SafeStr_845();
                  }
               }
            }
         }
         if(!this._SafeStr_2456 && _SafeCls_9._SafeStr_1262("Game"))
         {
            this._SafeStr_2456 = true;
            _SafeCls_16._SafeStr_3415();
         }
         if(this.bShouldBeginLoginProcess)
         {
            this._SafeStr_3036();
         }
         switch(this.gameState)
         {
            case _SafeStr_1324:
               this._SafeStr_3339();
               break;
            case _SafeStr_348:
               this._SafeStr_3033();
               break;
            case _SafeStr_464:
            case _SafeStr_417:
            case _SafeStr_513:
               if(!this._SafeStr_3304())
               {
                  return true;
               }
               break;
            case _SafeStr_543:
               this._SafeStr_3309();
         }
         return true;
      }
      
      public function _SafeStr_3146() : Boolean
      {
         try
         {
            return this._SafeStr_3002();
         }
         catch(error:Error)
         {
            _SafeStr_2480(error);
            return false;
         }
      }
      
      private function _SafeStr_3309() : void
      {
         this._SafeStr_168._SafeStr_841();
         this._SafeStr_1213();
         this.mCamera._SafeStr_2729();
      }
      
      public function _SafeStr_1213() : void
      {
         var _loc2_:_SafeCls_40 = null;
         var _loc1_:* = int(this._SafeStr_793.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this._SafeStr_793[_loc1_];
            if(_loc2_._SafeStr_716 || _loc2_._SafeStr_536())
            {
               _loc2_._SafeStr_201();
               this._SafeStr_793.splice(_loc1_,1);
            }
            _loc1_--;
         }
      }
      
      public function _SafeStr_3244() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         this._SafeStr_3226 = true;
         _SafeCls_22._SafeStr_1217 = true;
         for each(_loc1_ in _SafeStr_2014)
         {
            for each(_loc2_ in _SafeStr_2181)
            {
               _SafeCls_30._SafeStr_1812(_loc1_,"Animation_Player.swf",_loc1_ + "_" + _loc2_,null);
            }
         }
         _SafeCls_22._SafeStr_1217 = false;
      }
      
      public function _SafeStr_2626() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         this._SafeStr_1986 = true;
         _SafeCls_22._SafeStr_1217 = true;
         for each(_loc1_ in _SafeStr_2214)
         {
            for each(_loc2_ in _SafeStr_2267)
            {
               _SafeCls_30._SafeStr_1812(_loc1_,"Animation_Player.swf",_loc1_ + "_" + _loc2_,null);
            }
         }
         _SafeCls_22._SafeStr_1217 = false;
      }
      
      public function _SafeStr_3729() : void
      {
         var _loc3_:uint = 0;
         var _loc6_:_SafeCls_74 = null;
         var _loc1_:uint = _SafeCls_22._SafeStr_1233;
         var _loc2_:Vector.<String> = _SafeCls_22._SafeStr_1685;
         var _loc4_:uint = _loc2_.length;
         var _loc5_:uint = _loc4_ >= 12 ? uint(12) : _loc4_;
         _loc3_ = 0;
         while(_loc3_ < _loc5_)
         {
            _loc6_ = new _SafeCls_74(this,_loc2_[_loc3_],_SafeCls_47._SafeStr_387 * 0.5,_loc1_,16724787,0.5,false);
            var _temp_3:* = _loc6_;
            _loc6_._SafeStr_1506 = 2000000;
            _temp_3._SafeStr_1177 = 2000000;
            _loc6_._SafeStr_832 = 0;
            this._SafeStr_1002.push(_loc6_);
            _loc1_ += 20;
            _loc3_++;
         }
         if(_loc5_ != _loc4_)
         {
            var _loc7_:_SafeCls_74 = new _SafeCls_74(this,String(_loc4_ - _loc5_) + " more errors...",_SafeCls_47._SafeStr_387 * 0.5,_loc1_,16724787,0.5,false);
            var _temp_5:* = _loc7_;
            var _loc8_:int;
            _loc7_._SafeStr_1506 = _loc8_ = 2000000;
            _temp_5._SafeStr_1177 = 2000000;
            _loc7_._SafeStr_832 = 0;
            this._SafeStr_1002.push(_loc7_);
            _loc1_ += 15;
         }
         _SafeCls_22._SafeStr_3231();
      }
      
      public function _SafeStr_3304() : Boolean
      {
         var _loc1_:* = 0;
         var _loc2_:_SafeCls_7 = null;
         var _loc3_:_SafeCls_27 = null;
         var _loc4_:* = 0;
         var _loc5_:_SafeCls_71 = null;
         var _loc6_:_SafeCls_25 = null;
         var _loc7_:Boolean = false;
         var _loc8_:_SafeCls_25 = null;
         var _loc9_:Vector.<_SafeCls_16> = null;
         var _loc10_:Vector.<Boolean> = null;
         var _loc11_:uint = 0;
         var _loc12_:uint = 0;
         var _loc13_:_SafeCls_6 = null;
         if(_SafeStr_2307 && (!this.serverConn || !this.serverConn.SocketIsConnected()))
         {
            this.mbLostConnection = true;
            switch(this.gameState)
            {
               case _SafeStr_464:
               case _SafeStr_417:
                  if(this.gameState == _SafeStr_417)
                  {
                     this.mMatchMakerData.Reset();
                  }
                  this.gameState = _SafeStr_348;
                  this.mKeybindManager.SetContext(this.CONTEXT_NORMAL);
                  this._SafeStr_1079();
                  this._SafeStr_168._SafeStr_841();
                  if(!this.screenError.mbVisible)
                  {
                     this.screenError.Display(_SafeCls_79._SafeStr_1565);
                  }
                  return false;
               default:
                  break;
            }
         }
         if(!this._SafeStr_1986)
         {
            if(!_SafeCls_9._SafeStr_1262("Game"))
            {
               return false;
            }
            this._SafeStr_2626();
            if(this.IsStandaloneClient())
            {
               this.mGameMode = _SafeCls_4._SafeStr_390[_SafeCls_1._SafeStr_2872];
               if(!this.mGameMode)
               {
                  this.mGameMode = _SafeCls_4._SafeStr_390["Endless"];
               }
               _loc2_ = _SafeCls_7._SafeStr_542[_SafeCls_1._SafeStr_2154];
               if(!_loc2_)
               {
                  _loc2_ = _SafeCls_7._SafeStr_542["PaxDemo"];
               }
               this.level._SafeStr_1319(_loc2_);
            }
            else
            {
               this.serverConn = new _SafeCls_66(this,this._SafeStr_2973);
               this.serverConn._SafeStr_2281(_SafeCls_1._SafeStr_1379,8012);
            }
         }
         if(this._SafeStr_1050)
         {
            this._SafeStr_256._SafeStr_3225();
            this._SafeStr_1031._SafeStr_3345();
            if(this._SafeStr_613)
            {
               this._SafeStr_613._SafeStr_3479();
            }
         }
         if(this._SafeStr_1050)
         {
            this._SafeStr_760._SafeStr_3357();
            _loc4_ = int(this._SafeStr_270.length);
            _loc1_ = 0;
            while(_loc1_ < _loc4_)
            {
               _loc3_ = this._SafeStr_270[_loc1_];
               if(!_loc3_._SafeStr_3117())
               {
                  _loc3_.DestroyWorldItem();
                  this._SafeStr_270.splice(_loc1_--,1);
                  _loc4_--;
               }
               _loc1_++;
            }
            _loc4_ = int(this._SafeStr_484.length);
            _loc1_ = 0;
            while(_loc1_ < _loc4_)
            {
               _loc5_ = this._SafeStr_484[_loc1_];
               if(!_loc5_._SafeStr_3524())
               {
                  _loc5_.DestroyMissile();
                  this._SafeStr_484.splice(_loc1_--,1);
                  _loc4_--;
               }
               _loc1_++;
            }
            _loc4_ = int(this.mEntities.length);
            _loc1_ = 0;
            while(_loc1_ < _loc4_)
            {
               _loc6_ = this.mEntities[_loc1_];
               if(_loc6_._SafeStr_137 & _SafeCls_25._SafeStr_194)
               {
                  _loc7_ = _loc6_._SafeStr_3486();
               }
               else if(_loc6_._SafeStr_585)
               {
                  _loc7_ = _loc6_._SafeStr_3188();
               }
               else
               {
                  _loc7_ = _loc6_._SafeStr_3102();
               }
               if(!_loc7_)
               {
                  _loc6_.DestroyEntity(true);
                  this.mEntities.splice(_loc1_--,1);
                  _loc4_--;
               }
               _loc1_++;
            }
            if(this.mGameMode._SafeStr_485 > 4)
            {
               if(this._SafeStr_557)
               {
                  this._SafeStr_1057.Display();
               }
               else
               {
                  this._SafeStr_1057.Hide();
               }
            }
            else
            {
            this.mCamera._SafeStr_2729();
            if(this._SafeStr_161)
            {
               this._SafeStr_161._SafeStr_3202();
            }
            if(this.IsPlayingWithoutServer() && this._SafeStr_3410())
            {
               for each(_loc6_ in this.mEntities)
               {
                  _loc6_.mCombatState._SafeStr_993();
                  if(_loc6_.mEntState != _SafeCls_25._SafeStr_292)
                  {
                     _loc6_.mGameStats._SafeStr_2288(this.mTimeThisTick - _loc6_._SafeStr_934,false);
                  }
               }
               this._SafeStr_3081(this.gameState);
               this.gameState = _SafeStr_348;
               this._SafeStr_714 = 0;
               this._SafeStr_314 = false;
            }
            if(!this._SafeStr_1566 && this.mTimeRemaining && this.mTimeRemaining <= _SafeStr_1974)
            {
               this._SafeStr_3134();
            }
            else if(!this._SafeStr_2079 && this.mTimeRemaining && this.mTimeRemaining <= _SafeStr_1859)
            {
               this._SafeStr_2079 = true;
               this.PlaySoundAtPosition(0,"54321",0,0);
            }
         }
         }
         this._SafeStr_1213();
         if(!this._SafeStr_1050 && this.level._SafeStr_3053())
         {
            this._SafeStr_1050 = true;
            this._SafeStr_2079 = false;
            this._SafeStr_1566 = false;
            if(this.IsStandaloneClient())
            {
               _loc9_ = new Vector.<_SafeCls_16>();
               _loc10_ = new Vector.<Boolean>();
               _loc11_ = Math.max(1,this.mControllerInputs.length + (this.mbOverrideKeyboard ? 0 : 1));
               _loc12_ = Math.max(2,_SafeCls_1.flags & _SafeCls_1._SafeStr_1864 ? this.mGameMode._SafeStr_485 : _loc11_);
               _loc1_ = 0;
               while(_loc1_ < _loc12_)
               {
                  _loc10_.push(_loc1_ >= _loc11_);
                  _loc9_.push(_loc1_ < _loc11_ ? this._SafeStr_3373(_loc1_ + 1) : null);
                  _loc1_++;
               }
               this.BeginStateCouch(_loc9_,_loc10_,null,this.mGameMode || _SafeCls_4._SafeStr_390["Endless"]);
               this._SafeStr_1678 = false;
               this._SafeStr_2207();
            }
            for each(_loc8_ in this.mEntities)
            {
               if(_loc8_._SafeStr_154)
               {
                  _loc8_._SafeStr_154._SafeStr_2753();
               }
               if(Boolean(this.level._SafeStr_449) && this.IsPlayingWithoutServer())
               {
                  _loc8_._SafeStr_2097(true);
               }
            }
            if(this.IsStandaloneClient() && Boolean(_SafeCls_1.flags & _SafeCls_1._SafeStr_2202))
            {
               for each(_loc13_ in _SafeCls_6._SafeStr_951)
               {
                  this._SafeStr_760._SafeStr_1121(0,_loc13_,0,0,0,0,true);
               }
               for each(_loc13_ in _SafeCls_6._SafeStr_936)
               {
                  this._SafeStr_760._SafeStr_1121(0,_loc13_,0,0,0,0,true);
               }
            }
            this._SafeStr_3196();
         }
         this._SafeStr_168._SafeStr_841();
         return true;
      }
      
      public function _SafeStr_3538() : void
      {
         var _loc2_:_SafeCls_35 = null;
         var _loc3_:_SafeCls_40 = null;
         var _loc4_:_SafeCls_40 = null;
         var _loc5_:_SafeCls_34 = null;
         var _loc6_:_SafeCls_34 = null;
         var _loc1_:Vector.<_SafeCls_35> = this._SafeStr_168._SafeStr_533;
         for each(_loc2_ in _loc1_)
         {
            for each(_loc3_ in _loc2_._SafeStr_814)
            {
               if(!_loc3_._SafeStr_716)
               {
                  _loc3_._SafeStr_536();
               }
            }
            for each(_loc4_ in _loc2_._SafeStr_644)
            {
               if(!_loc4_._SafeStr_716)
               {
                  _loc4_._SafeStr_536();
               }
            }
            for each(_loc5_ in _loc2_._SafeStr_364)
            {
               if(_loc5_._SafeStr_310)
               {
                  _loc5_._SafeStr_1070();
               }
            }
            if(_loc2_._SafeStr_176._SafeStr_840)
            {
               _loc2_._SafeStr_176._SafeStr_1070();
            }
         }
         for each(_loc2_ in this._SafeStr_168._SafeStr_794)
         {
            if(Boolean(_loc2_._SafeStr_123) && _loc1_.indexOf(_loc2_) == -1)
            {
               for each(_loc6_ in _loc2_._SafeStr_364)
               {
                  if(_loc6_._SafeStr_310)
                  {
                     _loc6_._SafeStr_1070();
                  }
               }
               if(_loc2_._SafeStr_176._SafeStr_840)
               {
                  _loc2_._SafeStr_176._SafeStr_1070();
               }
            }
         }
      }
      
      public function _SafeStr_805(param1:_SafeCls_25) : void
      {
         if(this.mEntities.indexOf(param1) == -1)
         {
            this.mEntities.push(param1);
         }
         if(!this._SafeStr_812[param1.mEntID])
         {
            this._SafeStr_812[param1.mEntID] = param1;
         }
         if(_SafeCls_4._SafeStr_2080(this.mGameMode))
         {
            this._SafeStr_868._SafeStr_2988(param1);
         }
      }
      
      public function _SafeStr_3373(param1:uint) : _SafeCls_16
      {
         return _SafeCls_16._SafeStr_917["PlayerLoadout" + param1];
      }
      
      private function _SafeStr_3410() : Boolean
      {
         var _loc3_:_SafeCls_25 = null;
         var _loc4_:Dictionary = null;
         var _loc5_:Vector.<_SafeCls_25> = null;
         var _loc6_:uint = 0;
         var _loc7_:Object = null;
         var _loc8_:_SafeCls_25 = null;
         var _loc9_:uint = 0;
         if(!this.IsPlayingWithoutServer())
         {
            return false;
         }
         if(!this._SafeStr_1756)
         {
            this._SafeStr_1756 = this.mTimeThisTick;
         }
         var _loc1_:uint = this.mGameMode.mDuration;
         var _loc2_:Boolean = false;
         if(Boolean(_loc1_) && !this._SafeStr_314)
         {
            this.mTimeRemaining = Math.max(0,Math.min(_loc1_,_loc1_ - (this.mTimeThisTick - this._SafeStr_1756) / 1000 + _SafeCls_73._SafeStr_2032));
            if(this.mTimeRemaining <= 0)
            {
               _loc2_ = true;
            }
         }
         if(!_loc2_ && Boolean(this.mGameMode._SafeStr_1667))
         {
            _loc4_ = new Dictionary();
            _loc5_ = this._SafeStr_314 ? this._SafeStr_388 : this.mEntities;
            for each(_loc3_ in _loc5_)
            {
               if(_loc4_[_loc3_.mTeam])
               {
                  _loc4_[_loc3_.mTeam] += _loc3_._SafeStr_531;
               }
               else
               {
                  _loc4_[_loc3_.mTeam] = _loc3_._SafeStr_531;
               }
            }
            _loc6_ = 0;
            for(_loc7_ in _loc4_)
            {
               if(_loc4_[_loc7_] > 0)
               {
                  _loc6_++;
               }
            }
            if(_loc6_ <= 1)
            {
               _loc2_ = true;
            }
         }
         if(_loc2_)
         {
            this._SafeStr_3392();
            if(!this._SafeStr_314)
            {
               _loc8_ = this._SafeStr_370[0];
               _loc9_ = 1;
               while(_loc9_ < this._SafeStr_370.length)
               {
                  _loc3_ = this._SafeStr_370[_loc9_];
                  if(_loc8_.mTeam != _loc3_.mTeam)
                  {
                     if(this._SafeStr_313[_loc8_.mTeam] == this._SafeStr_313[_loc3_.mTeam])
                     {
                        this._SafeStr_2826();
                        _loc2_ = false;
                     }
                     break;
                  }
                  _loc9_++;
               }
            }
         }
         return _loc2_;
      }
      
      private function _SafeStr_3392() : void
      {
         var _loc1_:_SafeCls_25 = null;
         var _loc2_:Vector.<_SafeCls_25> = null;
         var _loc3_:uint = 0;
         if(!this._SafeStr_314)
         {
            this._SafeStr_313 = new Dictionary();
            this._SafeStr_678 = new Dictionary();
            this._SafeStr_370 = new Vector.<_SafeCls_25>();
         }
         else
         {
            for each(_loc1_ in this._SafeStr_388)
            {
               this._SafeStr_678[_loc1_.mTeam] = 0;
               this._SafeStr_313[_loc1_.mTeam] = 0;
            }
         }
         _loc2_ = this._SafeStr_314 ? this._SafeStr_388 : this.mEntities;
         for each(_loc1_ in _loc2_)
         {
            if(this._SafeStr_678[_loc1_.mTeam])
            {
               this._SafeStr_678[_loc1_.mTeam] = Math.max(_loc1_._SafeStr_934,this._SafeStr_678[_loc1_.mTeam]);
            }
            else
            {
               this._SafeStr_678[_loc1_.mTeam] = _loc1_._SafeStr_934;
            }
            if(this._SafeStr_313[_loc1_.mTeam])
            {
               this._SafeStr_313[_loc1_.mTeam] += this._SafeStr_314 ? _loc1_._SafeStr_531 : _loc1_._SafeStr_265;
            }
            else
            {
               this._SafeStr_313[_loc1_.mTeam] = this._SafeStr_314 ? _loc1_._SafeStr_531 : _loc1_._SafeStr_265;
            }
            if(!this._SafeStr_314)
            {
               this._SafeStr_370.push(_loc1_);
            }
         }
         if(this._SafeStr_314)
         {
            this._SafeStr_388.sort(this._SafeStr_2977);
            _loc3_ = 0;
            while(_loc3_ < this._SafeStr_388.length)
            {
               this._SafeStr_370[_loc3_] = this._SafeStr_388[_loc3_];
               _loc3_++;
            }
         }
         else
         {
            this._SafeStr_370.sort(this._SafeStr_2977);
         }
      }
      
      private function _SafeStr_2977(param1:_SafeCls_25, param2:_SafeCls_25) : Number
      {
         if(this._SafeStr_313[param2.mTeam] == this._SafeStr_313[param1.mTeam])
         {
            return this._SafeStr_678[param2.mTeam] - this._SafeStr_678[param1.mTeam];
         }
         return this._SafeStr_313[param2.mTeam] - this._SafeStr_313[param1.mTeam];
      }
      
      private function _SafeStr_3081(param1:String) : void
      {
         var _loc6_:_SafeCls_78 = null;
         var _loc7_:_SafeCls_25 = null;
         if(!this._SafeStr_370 || !this._SafeStr_370.length || !this.IsPlayingWithoutServer())
         {
            _SafeCls_22._SafeStr_135("Trying to show scoreboard without determining placing");
         }
         var _loc2_:Vector.<_SafeCls_78> = new Vector.<_SafeCls_78>();
         var _loc5_:uint = 0;
         while(_loc5_ < this._SafeStr_370.length)
         {
            _loc6_ = new _SafeCls_78();
            _loc7_ = this._SafeStr_370[_loc5_];
            if(_loc5_ != 0)
            {
               var _loc8_:_SafeCls_25 = this._SafeStr_370[_loc5_ - 1];
               if(_loc7_.mTeam != _loc8_.mTeam)
               {
                  var _loc4_:uint = 1;
               }
               if(this._SafeStr_314 && _loc5_ < this._SafeStr_388.length || this.mGameMode.mScoringType == _SafeCls_4._SafeStr_705)
               {
                  if(_loc7_.mTeam != _loc8_.mTeam)
                  {
                     var _loc3_:uint = 1;
                  }
               }
               else if(this._SafeStr_314 && _loc5_ == this._SafeStr_388.length || this._SafeStr_313[_loc7_.mTeam] < this._SafeStr_313[_loc8_.mTeam])
               {
                  _loc3_ = 1;
               }
            }
            _loc6_.mEntID = _loc7_.mEntID;
            _loc6_._SafeStr_1275 = _loc7_._SafeStr_395;
            _loc6_._SafeStr_1471 = 1;
            _loc6_._SafeStr_1395 = _loc7_.mGameStats.mDeaths;
            _loc6_._SafeStr_1758 = _loc7_.mGameStats._SafeStr_844;
            _loc6_._SafeStr_1764 = _loc7_.mGameStats._SafeStr_1265;
            _loc6_._SafeStr_1516 = _loc7_.mGameStats.mKills;
            _loc6_._SafeStr_1600 = _loc7_.mGameStats._SafeStr_1586;
            _loc6_._SafeStr_1577 = _loc7_.mGameStats._SafeStr_1492;
            _loc6_._SafeStr_1493 = _loc7_.mGameStats._SafeStr_1493;
            _loc6_._SafeStr_1337 = _loc7_.mGameStats._SafeStr_1337;
            _loc6_._SafeStr_1629 = _loc7_.mGameStats._SafeStr_1629;
            _loc6_._SafeStr_1656 = _loc7_.mGameStats._SafeStr_1656;
            _loc6_._SafeStr_1662 = _loc7_.mGameStats._SafeStr_1662;
            _loc2_.push(_loc6_);
            _loc5_++;
         }
         this._SafeStr_1159.Display(param1,_loc2_,new Array());
      }
      
      public function _SafeStr_2826() : void
      {
         var _loc1_:_SafeCls_25 = null;
         var _loc2_:Boolean = false;
         var _loc3_:_SafeCls_27 = null;
         var _loc4_:Number = NaN;
         this._SafeStr_2442 = this.gameState;
         this._SafeStr_314 = true;
         this._SafeStr_714 = getTimer();
         this._SafeStr_1883.Display();
         if(this.IsPlayingWithoutServer())
         {
            _loc4_ = Number(this._SafeStr_313[this._SafeStr_370[0].mTeam]);
            this._SafeStr_388.length = 0;
            for each(_loc1_ in this.mEntities)
            {
               if(this._SafeStr_313[_loc1_.mTeam] == _loc4_)
               {
                  this._SafeStr_388.push(_loc1_);
                  _loc1_._SafeStr_284 += 200;
                  _loc1_._SafeStr_531 = 1;
               }
               else
               {
                  _loc1_.mEntState = _SafeCls_25._SafeStr_292;
               }
            }
         }
         for each(_loc3_ in this._SafeStr_270)
         {
            _loc2_ = false;
            if(_loc3_._SafeStr_421)
            {
               _loc1_ = this._SafeStr_200(_loc3_._SafeStr_421);
               if(!_loc1_ || _loc1_.mEntState == _SafeCls_25._SafeStr_292)
               {
                  _loc2_ = true;
               }
            }
            _loc2_ ||= _loc3_._SafeStr_2046();
            if(_loc2_)
            {
               _loc3_._SafeStr_153 = _SafeCls_27._SafeStr_351;
               if(!this.IsPlayingWithoutServer() && this._SafeStr_161 && this._SafeStr_365)
               {
                  this._SafeStr_161._SafeStr_1762(_loc3_._SafeStr_159._SafeStr_173);
               }
            }
         }
         for each(_loc1_ in this.mEntities)
         {
            _loc1_._SafeStr_3086();
         }
      }
      
      public function _SafeStr_440(param1:int, param2:uint = 4294967295) : Boolean
      {
         return this.screenError._SafeStr_191(param1) || this.screenCreateAccount._SafeStr_191(param1) || this._SafeStr_1044._SafeStr_191(param1) || this.screenLogin._SafeStr_191(param1) || this.screenKeybinds._SafeStr_191(param1) || this._SafeStr_1159._SafeStr_191(param1) || this.screenPause._SafeStr_191(param1) || this.screenHeroOverview._SafeStr_191(param1) || this.screenHeroList._SafeStr_191(param1) || this.screenJoinGame._SafeStr_191(param1) || this.screenOnlineOptions._SafeStr_191(param1) || this.screenGameOptions._SafeStr_191(param1) || this.screenCreateAccount._SafeStr_191(param1) || this.screenLogin._SafeStr_191(param1) || this._SafeStr_1044._SafeStr_191(param1) || this.screenControls._SafeStr_191(param1) || this.screenCentralHUB._SafeStr_191(param1,param2) || this.screenSelectCharacter._SafeStr_191(param1,param2);
      }
      
      private function _SafeStr_3421(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ESCAPE)
         {
            param1.preventDefault();
         }
         if(this.mbGlobalInputLock)
         {
            return;
         }
         var _loc2_:int = int(param1.keyCode);
         if(this.mKeybindManager.mbStatePickKey)
         {
            this.screenKeybinds._SafeStr_3048(_loc2_);
            return;
         }
         var _loc3_:int = this.mKeybindManager._SafeStr_169(param1.keyCode);
         switch(this.gameState)
         {
            case _SafeStr_348:
            case _SafeStr_543:
               if(this._SafeStr_440(_loc3_))
               {
                  return;
               }
               break;
            case _SafeStr_464:
               if(this.screenPause._SafeStr_191(_loc3_))
               {
                  return;
               }
         }
         switch(_loc3_)
         {
            case _SafeStr_378:
               this._SafeStr_557 = true;
         }
         if(!this.mClientEnt)
         {
            return;
         }
         if(this._SafeStr_1106.indexOf(_loc3_) == -1)
         {
            this._SafeStr_1106.push(_loc3_);
         }
         if(Boolean(_loc3_) && !this.mClientEnt._SafeStr_132._SafeStr_2963())
         {
            this.mClientEnt._SafeStr_132._SafeStr_961();
         }
         switch(_loc3_)
         {
            case _SafeStr_214:
               this.mClientEnt._SafeStr_132.Left();
               break;
            case _SafeStr_213:
               this.mClientEnt._SafeStr_132.Right();
               break;
            case _SafeStr_305:
               if(param1.keyCode != Keyboard.C && param1.keyCode != Keyboard.J)
               {
                  this.mClientEnt._SafeStr_132._SafeStr_2812 = String.fromCharCode(param1.keyCode);
                  this.mClientEnt._SafeStr_132._SafeStr_297 = _SafeCls_24._SafeStr_889;
               }
               this.mClientEnt._SafeStr_132._SafeStr_2565();
               break;
            case _SafeStr_293:
               this.mClientEnt._SafeStr_132.Dodge();
               break;
            case _SafeStr_342:
               this.mClientEnt._SafeStr_132.HeavyAttack();
               break;
            case _SafeStr_581:
               this.mClientEnt._SafeStr_132.Jump();
               break;
            case _SafeStr_208:
               this.mClientEnt._SafeStr_132._SafeStr_3293();
               break;
            case _SafeStr_207:
               this.mClientEnt._SafeStr_132.Down();
               break;
            case _SafeStr_1545:
               if(_SafeCls_1.flags)
               {
                  this.mClientEnt._SafeStr_319(this.mClientEnt._SafeStr_121,this.mClientEnt.mPhysPosY - 200);
               }
               break;
            case _SafeStr_1984:
               this._SafeStr_651._SafeStr_1427("Lincoln, stop pressing \'v\'","","");
               break;
            case _SafeStr_242:
            case _SafeStr_216:
               this.screenPause._SafeStr_2787();
               break;
            case _SafeStr_1400:
               if(this.IsStandaloneClient())
               {
                  this._SafeStr_3419();
               }
               break;
            case _SafeStr_1137:
               this.mClientEnt._SafeStr_132.Taunt();
         }
         if(this.mClientEnt._SafeStr_132._SafeStr_297 != _SafeCls_24._SafeStr_889)
         {
            switch(param1.keyCode)
            {
               case Keyboard.C:
               case Keyboard.X:
               case Keyboard.Z:
                  this.mClientEnt._SafeStr_132._SafeStr_297 = _SafeCls_24._SafeStr_932;
               case Keyboard.UP:
               case Keyboard.DOWN:
               case Keyboard.LEFT:
               case Keyboard.RIGHT:
                  if(this.mClientEnt._SafeStr_132._SafeStr_297 != _SafeCls_24._SafeStr_877)
                  {
                     this.mClientEnt._SafeStr_132._SafeStr_297 = _SafeCls_24._SafeStr_932;
                  }
                  break;
               case Keyboard.J:
               case Keyboard.K:
               case Keyboard.L:
                  this.mClientEnt._SafeStr_132._SafeStr_297 = _SafeCls_24._SafeStr_1094;
                  break;
               case Keyboard.W:
               case Keyboard.A:
               case Keyboard.S:
               case Keyboard.D:
                  if(this.mClientEnt._SafeStr_132._SafeStr_297 != _SafeCls_24._SafeStr_877)
                  {
                     this.mClientEnt._SafeStr_132._SafeStr_297 = _SafeCls_24._SafeStr_1094;
                  }
            }
         }
      }
      
      private function _SafeStr_3527(param1:KeyboardEvent) : void
      {
         var _loc2_:int = this.mKeybindManager._SafeStr_169(param1.keyCode,this.CONTEXT_GAMEPLAY);
         switch(_loc2_)
         {
            case _SafeStr_378:
               this._SafeStr_557 = false;
         }
         if(!this.mClientEnt)
         {
            return;
         }
         if(this.mbGlobalInputLock)
         {
            return;
         }
         var _loc3_:int = int(this._SafeStr_1106.indexOf(_loc2_));
         if(_loc3_ != -1)
         {
            this._SafeStr_1106.splice(_loc3_,1);
         }
         if(Boolean(_loc2_) && !this.mClientEnt._SafeStr_132._SafeStr_2963())
         {
            this.mClientEnt._SafeStr_132._SafeStr_961();
         }
         switch(_loc2_)
         {
            case _SafeStr_214:
               this.mClientEnt._SafeStr_132._SafeStr_3467();
               break;
            case _SafeStr_213:
               this.mClientEnt._SafeStr_132._SafeStr_3569();
               break;
            case _SafeStr_305:
               this.mClientEnt._SafeStr_132._SafeStr_2431();
               break;
            case _SafeStr_293:
               this.mClientEnt._SafeStr_132._SafeStr_3383();
               break;
            case _SafeStr_342:
               this.mClientEnt._SafeStr_132._SafeStr_2897();
               break;
            case _SafeStr_581:
               this.mClientEnt._SafeStr_132._SafeStr_2846();
               break;
            case _SafeStr_208:
               this.mClientEnt._SafeStr_132._SafeStr_3308();
               break;
            case _SafeStr_207:
               this.mClientEnt._SafeStr_132._SafeStr_3083();
               break;
            case _SafeStr_1137:
               this.mClientEnt._SafeStr_132._SafeStr_3520();
         }
      }
      
      public function _SafeStr_430(param1:_SafeCls_25, param2:Number, param3:Number, param4:Number, param5:Number, param6:uint) : Array
      {
         var _loc8_:* = false;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:_SafeCls_25 = null;
         var _loc7_:Array = new Array();
         var _loc9_:* = param6 & _SafeStr_580;
         var _loc10_:* = param6 & FRIEND;
         var _loc11_:Boolean = !_loc9_ && !_loc10_;
         var _loc12_:Number = param2 - param4;
         var _loc13_:Number = param2 + param4;
         var _loc14_:Number = param3 - param5;
         var _loc15_:Number = param3 + param5;
         for each(_loc21_ in this.mEntities)
         {
            _loc8_ = param1.mTeam != _loc21_.mTeam;
            _loc16_ = _loc21_._SafeStr_144._SafeStr_237 * 0.5;
            _loc17_ = _loc21_._SafeStr_121 - _loc16_;
            if(_loc17_ <= _loc13_)
            {
               _loc18_ = _loc21_._SafeStr_121 + _loc16_;
               if(_loc18_ >= _loc12_)
               {
                  _loc20_ = _loc21_.mPhysPosY;
                  if(_loc20_ >= _loc14_)
                  {
                     _loc19_ = _loc21_.mPhysPosY - _loc21_._SafeStr_144._SafeStr_163;
                     if(_loc19_ <= _loc15_)
                     {
                        if(_loc21_._SafeStr_1193())
                        {
                           if(_loc11_ || _loc9_ && _loc8_ || _loc10_ && !_loc8_)
                           {
                              _loc7_.push(_loc21_);
                           }
                        }
                     }
                  }
               }
            }
         }
         return _loc7_;
      }
      
      public function _SafeStr_2222(param1:_SafeCls_25, param2:Number, param3:Number, param4:Number, param5:Number, param6:uint) : Array
      {
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc21_:_SafeCls_27 = null;
         var _loc7_:Array = new Array();
         var _loc8_:Number = param2 - param4;
         var _loc9_:Number = param2 + param4;
         var _loc10_:Number = param3 - param5;
         var _loc11_:Number = param3 + param5;
         var _loc18_:* = param6 & _SafeStr_1483;
         var _loc19_:* = param6 & _SafeStr_1578;
         var _loc20_:* = param6 & _SafeStr_1752;
         for each(_loc21_ in this._SafeStr_270)
         {
            _loc12_ = _loc21_._SafeStr_153 == _SafeCls_27._SafeStr_358 ? _loc21_._SafeStr_151._SafeStr_237 * 0.5 + 100 : _loc21_._SafeStr_151._SafeStr_237 * 0.5;
            _loc13_ = _loc21_._SafeStr_153 == _SafeCls_27._SafeStr_358 ? _loc21_._SafeStr_151._SafeStr_163 * 0.5 + 100 : _loc21_._SafeStr_151._SafeStr_163 * 0.5;
            _loc14_ = _loc21_._SafeStr_152 - _loc12_;
            if(_loc14_ <= _loc9_)
            {
               _loc15_ = _loc21_._SafeStr_152 + _loc12_;
               if(_loc15_ >= _loc8_)
               {
                  _loc17_ = _loc21_._SafeStr_193 + _loc13_;
                  if(_loc17_ >= _loc10_)
                  {
                     _loc16_ = _loc21_._SafeStr_193 - _loc13_;
                     if(_loc16_ <= _loc11_)
                     {
                        if(!_loc21_._SafeStr_474)
                        {
                           if(!(_loc19_ && !(_loc21_._SafeStr_153 == _SafeCls_27._SafeStr_535 || _loc21_._SafeStr_379)))
                           {
                              if(!(_loc18_ && !_loc21_._SafeStr_2490()))
                              {
                                 if(!(_loc20_ && !_loc21_._SafeStr_379))
                                 {
                                    _loc7_.push(_loc21_);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         return _loc7_;
      }
      
      public function _SafeStr_2508(param1:_SafeCls_6, param2:Boolean = true, param3:_SafeCls_27 = null) : Array
      {
         var _loc5_:_SafeCls_27 = null;
         var _loc4_:Array = new Array();
         for each(_loc5_ in this._SafeStr_270)
         {
            if(_loc5_._SafeStr_159._SafeStr_151 == param1 && (!param2 || _loc5_._SafeStr_2490()) && _loc5_ != param3)
            {
               _loc4_.push(_loc5_);
            }
         }
         return _loc4_;
      }
      
      public function _SafeStr_3602(param1:KeyboardEvent) : void
      {
      }
      
      public function _SafeStr_3641(param1:int, param2:int) : _SafeCls_71
      {
         var _loc3_:_SafeCls_71 = null;
         for each(_loc3_ in this._SafeStr_484)
         {
            if(_loc3_._SafeStr_382.mEntID == param1 && _loc3_._SafeStr_1437 == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function _SafeStr_3733(param1:Point, param2:Number) : Vector.<_SafeCls_71>
      {
         var _loc5_:_SafeCls_71 = null;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc3_:Vector.<_SafeCls_71> = new Vector.<_SafeCls_71>();
         var _loc4_:Number = param2 * param2;
         for each(_loc5_ in this._SafeStr_484)
         {
            _loc6_ = _loc5_._SafeStr_211.subtract(param1);
            _loc7_ = _loc6_.x * _loc6_.x + _loc6_.y * _loc6_.y;
            if(_loc7_ < _loc4_)
            {
               _loc3_.push(_loc5_);
            }
         }
         return _loc3_;
      }
      
      public function _SafeStr_3195() : void
      {
         this.gameState = _SafeStr_1324;
         this._SafeStr_3313 = false;
         this._SafeStr_3260 = new Dictionary();
         this.cachedCharInfo = SharedObject.getLocal("sbSavedData","/");
         var _loc1_:Object = this.cachedCharInfo.data;
         var _loc2_:Array = _loc1_.sbCharName ? [_loc1_.sbCharName,_loc1_.sbCharLevel,_loc1_.sbCharWins] : null;
      }
      
      public function _SafeStr_3339() : void
      {
         var _loc1_:Boolean = false;
         if(_SafeCls_9._SafeStr_1262("Game") && !this._SafeStr_2976)
         {
            this._SafeStr_2976 = true;
            this._SafeStr_631 = new SteamAir();
            _loc1_ = this._SafeStr_631.Init();
            if(_loc1_)
            {
               this._SafeStr_631.addEventListener(SteamEvent.STEAM_RESPONSE,this._SafeStr_3302);
               this._SafeStr_3004 = this._SafeStr_631.GetPersonaName();
               this._SafeStr_2383 = true;
               if(!this._SafeStr_631.IsSubscribedApp(_SafeStr_2150))
               {
                  NativeApplication.nativeApplication.exit();
               }
            }
            else if(this._SafeStr_631.RestartAppIfNecessary(291550))
            {
               NativeApplication.nativeApplication.exit();
            }
            else
            {
               this.screenError.Display("Steam Must be running",true);
            }
         }
         if(!this.mbAirClient)
         {
            if(_SafeCls_9._SafeStr_1262("Game"))
            {
               this.beginStateLobby();
               this.screenLogin.Display();
            }
         }
         this.screenLogin._SafeStr_3218();
         this._SafeStr_168._SafeStr_841();
         this._SafeStr_1213();
         this.mCamera._SafeStr_1542();
      }
      
      public function _SafeStr_3637() : void
      {
         this._SafeStr_168._SafeStr_841();
         this._SafeStr_1213();
         this.mCamera._SafeStr_1542();
      }
      
      public function _SafeStr_3033() : void
      {
         if(!this.serverConn || !this.serverConn.SocketIsConnected())
         {
            this.mbLostConnection = true;
         }
         this._SafeStr_168._SafeStr_841();
         this._SafeStr_1213();
         this.mCamera._SafeStr_1542();
      }
      
      public function _SafeStr_3564() : void
      {
         if(Boolean(this._SafeStr_1108) && ExternalInterface.available)
         {
            ExternalInterface.call("JSRecordStat","dblogin",1);
         }
         this.mbLostConnection = false;
         this.bShouldBeginLoginProcess = false;
         this.beginStateLobby();
      }
      
      public function beginStateLobby() : void
      {
         if(!this._SafeStr_1986)
         {
            this._SafeStr_2626();
         }
         if(!this._SafeStr_2961)
         {
            this.PlaySoundAtPosition(0,"Welcome",0,0);
            this._SafeStr_2961 = true;
         }
         this._SafeStr_365 = false;
         this.gameState = _SafeStr_348;
         this.screenChat._SafeStr_2467("Welcome back " + this.mCharacterName,true);
         this.StartMenuMusic();
         if(this._SafeStr_1097 == _SafeStr_1164)
         {
            if(Boolean(this.screenSelectCharacter.mbVisible) && this.screenSelectCharacter.mGameType == _SafeCls_41._SafeStr_445)
            {
               this.screenSelectCharacter.Reopen();
            }
            else
            {
               this.screenSelectCharacter.Display(_SafeCls_41._SafeStr_445,0);
            }
            this._SafeStr_1097 = 0;
         }
         else
         {
            this.screenCentralHUB.Display();
         }
      }
      
      public function _SafeStr_2986(param1:Boolean) : void
      {
         if(!param1)
         {
            this.serverConn = new _SafeCls_66(this,this._SafeStr_3290,this._SafeStr_2696);
         }
         else
         {
            this._SafeStr_2086 = false;
            this.serverConn = new _SafeCls_66(this,this._SafeStr_3448,this._SafeStr_3252);
         }
         var _loc2_:String = _SafeCls_1.flags & _SafeCls_1._SafeStr_1818 ? _SafeCls_1._SafeStr_1379 : _SafeCls_73._SafeStr_2151;
         this.serverConn._SafeStr_2281(_loc2_,_SafeCls_66._SafeStr_2263);
      }
      
      private function _SafeStr_3448() : void
      {
         var _loc1_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_2008);
         _loc1_._SafeStr_146(Game._SafeStr_2388);
         this.serverConn.SendPacket(_loc1_);
      }
      
      private function _SafeStr_3252() : void
      {
         if(this._SafeStr_2086)
         {
            return;
         }
         this._SafeStr_2086 = true;
         this.mbLostConnection = true;
         this.bShouldBeginLoginProcess = false;
         if(this._SafeStr_1412)
         {
            this.screenCreateAccount._SafeStr_2664();
         }
      }
      
      private function _SafeStr_2696() : void
      {
         this.mbLostConnection = true;
         this.screenError.Display(_SafeCls_79._SafeStr_1538);
      }
      
      private function _SafeStr_3290() : void
      {
         var _loc1_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_1834);
         _loc1_._SafeStr_146(this._SafeStr_2219);
         _loc1_._SafeStr_279(this._SafeStr_1285);
         this.serverConn.SendPacket(_loc1_);
         this._SafeStr_1285 = null;
      }
      
      public function _SafeStr_3109() : void
      {
         this.serverConn = new _SafeCls_66(this,this._SafeStr_2973,this._SafeStr_2696);
         this.serverConn._SafeStr_2281(this._SafeStr_2985,this._SafeStr_2580);
      }
      
      public function _SafeStr_3485() : void
      {
         if(Boolean(this._SafeStr_1790) || Boolean(this._SafeStr_1108))
         {
            return;
         }
         if(this.cachedCharInfo)
         {
            this.cachedCharInfo.data.sbCharName = this.mCharacterName;
            this.cachedCharInfo.data.sbCharLevel = this._SafeStr_2733;
            this.cachedCharInfo.data.sbCharRating = this._SafeStr_2822;
            this.cachedCharInfo.data.sbCharWins = this._SafeStr_2928;
            try
            {
               this.cachedCharInfo.flush();
            }
            catch(error:Error)
            {
            }
         }
      }
      
      public function CmdInvite(param1:String) : void
      {
         var _loc2_:_SafeCls_77 = null;
         if(this.serverConn)
         {
            _loc2_ = new _SafeCls_77(_SafeCls_73._SafeStr_2095);
            _loc2_._SafeStr_279(param1);
            this.serverConn.SendPacket(_loc2_);
         }
      }
      
      public function _SafeStr_3449() : void
      {
         this.EndStatePlay();
         this._SafeStr_2986(false);
         this._SafeStr_2052 = false;
      }
      
      public function _SafeStr_2479() : void
      {
         this._SafeStr_168._SafeStr_3300();
      }
      
      public function _SafeStr_3504(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return param1 >= -this._SafeStr_156.x - param3 && param1 <= -this._SafeStr_156.x + _SafeCls_47._SafeStr_387 + param3 && param2 >= -this._SafeStr_156.y - param4 && param2 <= -this._SafeStr_156.y + _SafeCls_47._SafeStr_1449 + param4;
      }
      
      public function PlaySoundAtPosition(param1:uint, param2:String, param3:Number, param4:Number, param5:Number = 1) : void
      {
         if(!param2)
         {
            return;
         }
         var _loc6_:Number = Number(_SafeCls_3._SafeStr_343[param2]);
         if(_loc6_)
         {
            param5 *= _loc6_;
         }
         _SafeCls_13._SafeStr_622(param2,param5);
      }
      
      public function PlaySound(param1:String, param2:Number = 1) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc3_:Number = Number(_SafeCls_3._SafeStr_343[param1]);
         if(_loc3_)
         {
            param2 *= _loc3_;
         }
         _SafeCls_13._SafeStr_622(param1,param2);
      }
      
      public function _SafeStr_2836(param1:uint, param2:Number = 1) : void
      {
         var _loc3_:String = param1 ? "crowd_oh|crowd_oh_short|crowd_cheer|crowd_cheer_long" : "crowd_oh|crowd_oh_short";
         var _loc4_:Number = Number(_SafeCls_3._SafeStr_343[_loc3_]);
         if(_loc4_)
         {
            param2 *= _loc4_;
         }
         _SafeCls_13._SafeStr_622(_loc3_,param2);
      }
      
      public function _SafeStr_3301() : void
      {
         this._SafeStr_1127 = _SafeCls_19._SafeStr_283();
         this._SafeStr_1089 = _SafeCls_19._SafeStr_283();
         this._SafeStr_156 = _SafeCls_19._SafeStr_283();
         this._SafeStr_2139 = _SafeCls_19._SafeStr_283();
         this._SafeStr_164 = _SafeCls_19._SafeStr_283();
         this._SafeStr_2259 = _SafeCls_19._SafeStr_283();
         this._SafeStr_2555 = _SafeCls_19._SafeStr_283();
         this._SafeStr_707 = _SafeCls_19._SafeStr_283();
         this._SafeStr_2639 = _SafeCls_19._SafeStr_283();
         this._SafeStr_381 = _SafeCls_19._SafeStr_283();
         this._SafeStr_834 = _SafeCls_19._SafeStr_283();
         this._SafeStr_642 = _SafeCls_19._SafeStr_283();
         this._SafeStr_156.addChild(this._SafeStr_1089);
         this._SafeStr_156.addChild(this._SafeStr_256._SafeStr_625);
         if(this._SafeStr_613)
         {
            this._SafeStr_156.addChild(this._SafeStr_613._SafeStr_405);
         }
         this._SafeStr_156.addChild(this._SafeStr_256._SafeStr_594);
         this._SafeStr_156.addChild(this._SafeStr_2139);
         this._SafeStr_156.addChild(this._SafeStr_2259);
         this._SafeStr_156.addChild(this._SafeStr_164);
         this._SafeStr_156.addChild(this._SafeStr_2555);
         this._SafeStr_156.addChild(this._SafeStr_256._SafeStr_563);
         this._SafeStr_156.addChild(this._SafeStr_707);
         this._SafeStr_156.addChild(this._SafeStr_2639);
         this._SafeStr_1127.addChild(this._SafeStr_256._SafeStr_605);
         this._SafeStr_1127.addChild(this._SafeStr_156);
         this._SafeStr_1127.addChild(this._SafeStr_256._SafeStr_803);
         this.main.addChild(this._SafeStr_1127);
         this.main.addChild(this._SafeStr_381);
         this.main.addChild(this._SafeStr_834);
         this.main.addChild(this._SafeStr_642);
         this._SafeStr_381.mouseChildren = true;
         this._SafeStr_642.mouseChildren = true;
      }
      
      public function _SafeStr_3152() : void
      {
         this.mKeybindManager._SafeStr_1630(91);
         this.mKeybindManager._SafeStr_1630(92);
         this.mKeybindManager._SafeStr_1630(93);
         this.mKeybindManager._SafeStr_1630(Keyboard.ALTERNATE);
         this.CONTEXT_GAMEPLAY = this.mKeybindManager._SafeStr_2254(_SafeCls_39._SafeStr_1340);
         this.mKeybindManager.SetContext(this.CONTEXT_GAMEPLAY);
         this.mKeybindManager.SetKeys(_SafeStr_216,Keyboard.ENTER,false);
         this.mKeybindManager.SetKeys(_SafeStr_242,Keyboard.ESCAPE,false);
         this.mKeybindManager.SetKeys(_SafeStr_293,Keyboard.SHIFT,true,false,true);
         this.mKeybindManager.SetKeys(_SafeStr_1461,Keyboard.F1);
         this.mKeybindManager.SetKeys(_SafeStr_1400,Keyboard.F12);
         this.mKeybindManager.SetKeys(_SafeStr_214,Keyboard.LEFT);
         this.mKeybindManager.SetKeys(_SafeStr_213,Keyboard.RIGHT);
         this.mKeybindManager.SetKeys(_SafeStr_208,Keyboard.UP);
         this.mKeybindManager.SetKeys(_SafeStr_207,Keyboard.DOWN);
         this.mKeybindManager.SetKeys(_SafeStr_305,Keyboard.C);
         this.mKeybindManager.SetKeys(_SafeStr_342,Keyboard.X);
         this.mKeybindManager.SetKeys(_SafeStr_293,Keyboard.Z);
         this.mKeybindManager.SetKeys(_SafeStr_378,Keyboard.TAB);
         this.mKeybindManager.SetKeysAlt(_SafeStr_214,Keyboard.A);
         this.mKeybindManager.SetKeysAlt(_SafeStr_213,Keyboard.D);
         this.mKeybindManager.SetKeysAlt(_SafeStr_208,Keyboard.W);
         this.mKeybindManager.SetKeysAlt(_SafeStr_207,Keyboard.S);
         this.mKeybindManager.SetKeysAlt(_SafeStr_305,Keyboard.J);
         this.mKeybindManager.SetKeysAlt(_SafeStr_342,Keyboard.K);
         this.mKeybindManager.SetKeysAlt(_SafeStr_293,Keyboard.L);
         this.mKeybindManager.SetKeysAlt(_SafeStr_1137,Keyboard.T);
         this.mKeybindManager._SafeStr_3066(this.CONTEXT_GAMEPLAY);
         this._SafeStr_129 = SharedObject.getLocal("bhKeybinds","/");
         if(this._SafeStr_129.data.up1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_208,this._SafeStr_129.data.up1);
         }
         if(this._SafeStr_129.data.down1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_207,this._SafeStr_129.data.down1);
         }
         if(this._SafeStr_129.data.left1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_214,this._SafeStr_129.data.left1);
         }
         if(this._SafeStr_129.data.right1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_213,this._SafeStr_129.data.right1);
         }
         if(this._SafeStr_129.data.light1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_305,this._SafeStr_129.data.light1);
         }
         if(this._SafeStr_129.data.heavy1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_342,this._SafeStr_129.data.heavy1);
         }
         if(this._SafeStr_129.data.dodge1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_293,this._SafeStr_129.data.dodge1);
         }
         if(this._SafeStr_129.data.score1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_378,this._SafeStr_129.data.score1);
         }
         if(this._SafeStr_129.data.pause1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_242,this._SafeStr_129.data.pause1);
         }
         if(this._SafeStr_129.data.jump1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_581,this._SafeStr_129.data.jump1);
         }
         if(this._SafeStr_129.data.up2)
         {
            this.mKeybindManager.SetKeysAlt(_SafeStr_208,this._SafeStr_129.data.up2);
         }
         if(this._SafeStr_129.data.down2)
         {
            this.mKeybindManager.SetKeysAlt(_SafeStr_207,this._SafeStr_129.data.down2);
         }
         if(this._SafeStr_129.data.left2)
         {
            this.mKeybindManager.SetKeysAlt(_SafeStr_214,this._SafeStr_129.data.left2);
         }
         if(this._SafeStr_129.data.right2)
         {
            this.mKeybindManager.SetKeysAlt(_SafeStr_213,this._SafeStr_129.data.right2);
         }
         if(this._SafeStr_129.data.light2)
         {
            this.mKeybindManager.SetKeysAlt(_SafeStr_305,this._SafeStr_129.data.light2);
         }
         if(this._SafeStr_129.data.heavy2)
         {
            this.mKeybindManager.SetKeysAlt(_SafeStr_342,this._SafeStr_129.data.heavy2);
         }
         if(this._SafeStr_129.data.dodge2)
         {
            this.mKeybindManager.SetKeysAlt(_SafeStr_293,this._SafeStr_129.data.dodge2);
         }
         if(this._SafeStr_129.data.score2)
         {
            this.mKeybindManager.SetKeysAlt(_SafeStr_378,this._SafeStr_129.data.score2);
         }
         if(this._SafeStr_129.data.pause2)
         {
            this.mKeybindManager.SetKeysAlt(_SafeStr_242,this._SafeStr_129.data.pause2);
         }
         if(this._SafeStr_129.data.jump2)
         {
            this.mKeybindManager.SetKeysAlt(_SafeStr_581,this._SafeStr_129.data.jump2);
         }
         if(_SafeCls_1.flags)
         {
            this.mKeybindManager.SetKeys(_SafeStr_1545,Keyboard.F2);
         }
         this.CONTEXT_CHAT = this.mKeybindManager._SafeStr_2254(0);
         this.mKeybindManager.SetContext(this.CONTEXT_CHAT);
         this.mKeybindManager.SetKeys(Game.COMMAND2_ENTER,Keyboard.ENTER,false);
         this.mKeybindManager.SetKeys(Game.COMMAND2_ESCAPE,Keyboard.ESCAPE,false);
         this.mKeybindManager.SetKeys(Game.COMMAND2_SCROLLUP,Keyboard.UP);
         this.mKeybindManager.SetKeys(Game.COMMAND2_SCROLLDOWN,Keyboard.DOWN);
         this.mKeybindManager.SetKeys(Game.COMMAND2_BACKSPACE,Keyboard.BACKSPACE);
         this.mKeybindManager.SetKeys(Game.COMMAND2_DELETE,Keyboard.DELETE);
         this.CONTEXT_NORMAL = this.mKeybindManager._SafeStr_2254(_SafeCls_39._SafeStr_1211);
         this.mKeybindManager.SetContext(this.CONTEXT_NORMAL);
         this.mKeybindManager.SetKeys(_SafeStr_214,Keyboard.LEFT);
         this.mKeybindManager.SetKeys(_SafeStr_213,Keyboard.RIGHT);
         this.mKeybindManager.SetKeys(_SafeStr_208,Keyboard.UP);
         this.mKeybindManager.SetKeys(_SafeStr_207,Keyboard.DOWN);
         this.mKeybindManager.SetKeys(_SafeStr_216,Keyboard.ENTER);
         this.mKeybindManager.SetKeys(_SafeStr_288,Keyboard.ESCAPE);
         this.mKeybindManager.SetKeys(_SafeStr_214,Keyboard.A);
         this.mKeybindManager.SetKeys(_SafeStr_213,Keyboard.D);
         this.mKeybindManager.SetKeys(_SafeStr_208,Keyboard.W);
         this.mKeybindManager.SetKeys(_SafeStr_207,Keyboard.S);
         this.mKeybindManager.SetKeys(_SafeStr_216,Keyboard.C);
         this.mKeybindManager.SetKeys(_SafeStr_216,Keyboard.J);
         this.mKeybindManager.SetKeys(_SafeStr_247,Keyboard.Z);
         this.mKeybindManager.SetKeys(_SafeStr_247,Keyboard.L);
         this.mKeybindManager.SetKeys(_SafeStr_288,Keyboard.B);
         this.mKeybindManager.SetKeys(_SafeStr_316,Keyboard.X);
         this.mKeybindManager.SetKeys(_SafeStr_316,Keyboard.K);
         this.mKeybindManager.SetKeys(_SafeStr_316,Keyboard.Y);
         this._SafeStr_129 = SharedObject.getLocal("bhKeybinds","/");
         if(this._SafeStr_129.data.up1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_208,this._SafeStr_129.data.up1);
         }
         if(this._SafeStr_129.data.down1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_207,this._SafeStr_129.data.down1);
         }
         if(this._SafeStr_129.data.left1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_214,this._SafeStr_129.data.left1);
         }
         if(this._SafeStr_129.data.right1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_213,this._SafeStr_129.data.right1);
         }
         if(this._SafeStr_129.data.light1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_216,this._SafeStr_129.data.light1);
         }
         if(this._SafeStr_129.data.heavy1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_316,this._SafeStr_129.data.heavy1);
         }
         if(this._SafeStr_129.data.dodge1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_247,this._SafeStr_129.data.dodge1);
         }
         if(this._SafeStr_129.data.up2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_208,this._SafeStr_129.data.up2);
         }
         if(this._SafeStr_129.data.down2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_207,this._SafeStr_129.data.down2);
         }
         if(this._SafeStr_129.data.left2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_214,this._SafeStr_129.data.left2);
         }
         if(this._SafeStr_129.data.right2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_213,this._SafeStr_129.data.right2);
         }
         if(this._SafeStr_129.data.light2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_216,this._SafeStr_129.data.light2);
         }
         if(this._SafeStr_129.data.heavy2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_316,this._SafeStr_129.data.heavy2);
         }
         if(this._SafeStr_129.data.dodge2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_247,this._SafeStr_129.data.dodge2);
         }
         this.mKeybindManager._SafeStr_516("Up/Jump",_SafeStr_208);
         this.mKeybindManager._SafeStr_516("Down",_SafeStr_207);
         this.mKeybindManager._SafeStr_516("Left",_SafeStr_214);
         this.mKeybindManager._SafeStr_516("Right",_SafeStr_213);
         this.mKeybindManager._SafeStr_516("Light Attack",_SafeStr_305);
         this.mKeybindManager._SafeStr_516("Heavy Attack",_SafeStr_342);
         this.mKeybindManager._SafeStr_516("Dodge",_SafeStr_293);
         this.mKeybindManager._SafeStr_516("Show Scores",_SafeStr_378);
         this.mKeybindManager._SafeStr_516("Pause/Options",_SafeStr_242);
         this.mKeybindManager._SafeStr_516("Jump",_SafeStr_581);
      }
      
      public function IsStandaloneClient() : Boolean
      {
         return (_SafeCls_1.flags & _SafeCls_1._SafeStr_740) != 0;
      }
      
      public function IsPlayingWithoutServer() : Boolean
      {
         return this.gameState == _SafeStr_417 || this.gameState == _SafeStr_513;
      }
      
      public function _SafeStr_3360(param1:uint) : void
      {
         var _loc2_:_SafeCls_25 = null;
         var _loc3_:uint = 0;
         while(_loc3_ < this.mEntities.length)
         {
            _loc2_ = this.mEntities[_loc3_];
            if(_loc2_.mEntID == param1)
            {
               this._SafeStr_812[_loc2_.mEntID] = null;
               this.mEntities.splice(_loc3_,1);
               if(_SafeCls_4._SafeStr_2080(this.mGameMode))
               {
                  this._SafeStr_868._SafeStr_3041(_loc2_);
               }
               _loc2_.DestroyEntity(false);
               break;
            }
            _loc3_++;
         }
      }
      
      public function _SafeStr_2042(param1:Vector.<Friend>) : void
      {
         this.mFriendList = param1;
      }
      
      public function _SafeStr_3726(param1:Vector.<Friend>) : void
      {
         this.mGuildList = param1;
      }
      
      public function _SafeStr_3512() : void
      {
         this.screenCreateAccount._SafeStr_2253 = false;
      }
      
      public function _SafeStr_1386() : Boolean
      {
         return Boolean(this.serverConn) && Boolean(this.mCharacterName);
      }
      
      public function BeginStatePractice(param1:uint, param2:uint) : void
      {
         var _loc7_:_SafeCls_25 = null;
         var _loc8_:uint = 0;
         this._SafeStr_365 = false;
         this._SafeStr_2114();
         this._SafeStr_557 = false;
         this.gameState = _SafeStr_417;
         this.mKeybindManager.SetContext(this.CONTEXT_GAMEPLAY);
         this._SafeStr_409 = 0;
         this._SafeStr_651.Display();
         this.screenBroadcast.Display();
         var _loc3_:_SafeCls_16 = _SafeCls_16._SafeStr_272[param1];
         var _loc4_:_SafeCls_17 = _SafeCls_17._SafeStr_492[param2];
         this.mClientEnt = new _SafeCls_25(this,this.mCharacterName,++this._SafeStr_409,_SafeCls_25._SafeStr_469 | _SafeCls_25.LOCAL | _SafeCls_25._SafeStr_589,_SafeCls_25._SafeStr_448,_loc3_,uint.MAX_VALUE,_loc4_);
         this._SafeStr_805(this.mClientEnt);
         if(this.mControllerInputs.length)
         {
            this.mControllerInputs[0].AssignPlayer(this.mClientEnt);
         }
         var _loc5_:Array = new Array();
         _loc5_[_loc3_.mHeroID] = true;
         while(this.mEntities.length < 4)
         {
            _loc8_ = _SafeCls_25._SafeStr_469;
            _loc8_ = uint(_loc8_ | _SafeCls_25.BOT);
            _loc8_ = uint(_loc8_ | _SafeCls_25._SafeStr_589);
            _loc3_ = _SafeCls_16._SafeStr_1817(_loc5_);
            _loc5_[_loc3_.mHeroID] = true;
            _loc7_ = new _SafeCls_25(this,"Player",++this._SafeStr_409,_loc8_,_SafeCls_25._SafeStr_448,_loc3_);
            this._SafeStr_805(_loc7_);
         }
         var _loc6_:_SafeCls_7 = _SafeCls_7._SafeStr_542["PaxDemo"];
         this.level._SafeStr_1319(_loc6_);
         this._SafeStr_856.Display();
      }
      
      public function EndStatePractice() : void
      {
         this.gameState = _SafeStr_348;
         this.mKeybindManager.SetContext(this.CONTEXT_NORMAL);
         this._SafeStr_1079();
      }
      
      public function BeginStateCouch(param1:Vector.<_SafeCls_16>, param2:Vector.<Boolean>, param3:Vector.<_SafeCls_17>, param4:_SafeCls_4) : void
      {
         var _loc5_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:_SafeCls_25 = null;
         var _loc10_:_SafeCls_16 = null;
         var _loc11_:_SafeCls_17 = null;
         var _loc12_:uint = 0;
         var _loc14_:ControllerInput = null;
         this._SafeStr_365 = false;
         this.mGameMode = param4;
         this._SafeStr_2114();
         this._SafeStr_557 = false;
         this.gameState = _SafeStr_513;
         this.mKeybindManager.SetContext(this.CONTEXT_GAMEPLAY);
         this._SafeStr_409 = 0;
         this._SafeStr_651.Display();
         this.screenBroadcast.Display();
         this._SafeStr_868.Display();
         var _loc6_:Array = new Array();
         _loc5_ = 0;
         while(_loc5_ < param1.length)
         {
            _loc8_ = uint(_SafeCls_25._SafeStr_469 | _SafeCls_25._SafeStr_589);
            _loc9_ = null;
            _loc10_ = param1[_loc5_];
            _loc11_ = param3 ? param3[_loc5_] : null;
            _loc12_ = _loc5_ + 1;
            if(param2[_loc5_])
            {
               var _loc13_:_SafeCls_16 = _SafeCls_16._SafeStr_1817(_loc6_);
               _loc8_ |= this.IsStandaloneClient() && !(_SafeCls_1.flags & _SafeCls_1._SafeStr_1908) ? _SafeCls_25._SafeStr_413 : _SafeCls_25.BOT;
               _loc11_ = this._SafeStr_2722(_loc5_,null,param3);
               _loc9_ = new _SafeCls_25(this,"NOOB" + _loc12_,++this._SafeStr_409,_loc8_,_SafeCls_25._SafeStr_448,null,uint.MAX_VALUE,_loc11_);
               this._SafeStr_805(_loc9_);
               _loc6_[_loc13_.mHeroID] = true;
            }
            else if(_loc10_)
            {
               _loc8_ |= _SafeCls_25.LOCAL;
               if(_loc10_ == _SafeCls_16._SafeStr_674)
               {
                  _loc10_ = _SafeCls_16._SafeStr_1817(_loc6_);
                  _loc11_ = this._SafeStr_2722(_loc5_,_loc10_,param3);
               }
               _loc6_[_loc10_.mHeroID] = true;
               _loc9_ = new _SafeCls_25(this,"NOOB" + _loc12_,++this._SafeStr_409,_loc8_,_SafeCls_25._SafeStr_448,_loc10_,uint.MAX_VALUE,_loc11_);
               this._SafeStr_805(_loc9_);
               _loc14_ = this._SafeStr_3511(_loc5_);
               if(_loc14_)
               {
                  _loc14_.AssignPlayer(_loc9_);
               }
            }
            if(!this.mClientEnt && Boolean(_loc9_))
            {
               this.mClientEnt = _loc9_;
               if(!_loc9_._SafeStr_132)
               {
                  _loc9_._SafeStr_132 = new _SafeCls_24(this,_loc9_);
               }
            }
            _loc5_++;
         }
         var _loc7_:_SafeCls_7 = param4._SafeStr_485 == 2 ? _SafeCls_7._SafeStr_542["TheRuins1v1"] : _SafeCls_7._SafeStr_542["PaxDemo"];
         this.level._SafeStr_1319(_loc7_);
         this._SafeStr_1601.Display();
      }
      
      public function EndStateCouch() : void
      {
         this.gameState = _SafeStr_348;
         this.mKeybindManager.SetContext(this.CONTEXT_NORMAL);
         this._SafeStr_1079();
         this.screenSelectCharacter.Reopen();
      }
      
      public function _SafeStr_3752() : void
      {
         if(!this.level._SafeStr_340)
         {
            return;
         }
         var _loc1_:String = this.level._SafeStr_340._SafeStr_2899;
         if(!_loc1_)
         {
            return;
         }
         this._SafeStr_696 = _SafeStr_2229;
         var _loc2_:Number = Number(_SafeCls_3._SafeStr_343[_loc1_]);
         if(!_loc2_)
         {
            _loc2_ = 1;
         }
         _SafeCls_13._SafeStr_622(_loc1_,_loc2_);
      }
      
      public function _SafeStr_3196() : void
      {
         if(!this.level._SafeStr_340)
         {
            return;
         }
         var _loc1_:String = this.level._SafeStr_340._SafeStr_2937;
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:Number = Number(_SafeCls_3._SafeStr_343[_loc1_]);
         if(!_loc2_)
         {
            _loc2_ = 1;
         }
         this._SafeStr_696 = _SafeStr_2028;
         _SafeCls_13._SafeStr_1052(_SafeCls_5._SafeStr_427,_loc1_,_loc2_);
      }
      
      public function StartVictoryMusic() : void
      {
         if(this._SafeStr_696 == _SafeStr_1460)
         {
            return;
         }
         var _loc2_:Number = Number(_SafeCls_3._SafeStr_343["Brawlhalla_Victory.mp3"]);
         if(!_loc2_)
         {
            _loc2_ = 1;
         }
         this._SafeStr_696 = _SafeStr_1460;
         _SafeCls_13._SafeStr_1052(_SafeCls_5._SafeStr_427,"Brawlhalla_Victory.mp3",_loc2_);
      }
      
      public function StartMenuMusic() : void
      {
         if(this._SafeStr_696 == _SafeStr_1571)
         {
            return;
         }
         var _loc2_:Number = Number(_SafeCls_3._SafeStr_343["Brawlhalla_Menu.mp3"]);
         if(!_loc2_)
         {
            _loc2_ = 1;
         }
         this._SafeStr_696 = _SafeStr_1571;
         _SafeCls_13._SafeStr_1052(_SafeCls_5._SafeStr_427,"Brawlhalla_Menu.mp3",_loc2_);
      }
      
      public function _SafeStr_3134() : void
      {
         var _loc2_:Number = Number(_SafeCls_3._SafeStr_343["Brawlhalla_Outro.mp3"]);
         if(!_loc2_)
         {
            _loc2_ = 1;
         }
         this._SafeStr_1566 = true;
         this._SafeStr_696 = _SafeStr_1997;
         _SafeCls_13._SafeStr_1052(_SafeCls_5._SafeStr_427,"Brawlhalla_Outro.mp3",_loc2_);
      }
      
      public function StartSuddenDeathMusic() : void
      {
         var _loc2_:Number = Number(_SafeCls_3._SafeStr_343["Brawlhalla_Theme.mp3"]);
         if(!_loc2_)
         {
            _loc2_ = 1;
         }
         this._SafeStr_1566 = true;
         this._SafeStr_696 = _SafeStr_2312;
         _SafeCls_13._SafeStr_1052(_SafeCls_5._SafeStr_427,"Brawlhalla_Theme.mp3",_loc2_);
      }
      
      public function _SafeStr_3722() : void
      {
      }
      
      public function _SafeStr_1079() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:ControllerInput = null;
         _loc1_ = 0;
         while(_loc1_ < this.mEntities.length)
         {
            this.mEntities[_loc1_].DestroyEntity(false);
            this.mEntities[_loc1_] = null;
            _loc1_++;
         }
         if(this._SafeStr_388)
         {
            this._SafeStr_388.length = 0;
         }
         this._SafeStr_812 = new Array();
         this.mEntities = new Vector.<_SafeCls_25>();
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_270.length)
         {
            this._SafeStr_270[_loc1_].DestroyWorldItem();
            _loc1_++;
         }
         this._SafeStr_270 = new Vector.<_SafeCls_27>();
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_484.length)
         {
            this._SafeStr_484[_loc1_].DestroyMissile();
            _loc1_++;
         }
         this._SafeStr_484 = new Vector.<_SafeCls_71>();
         this._SafeStr_314 = false;
         this._SafeStr_714 = 0;
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_1002.length)
         {
            this._SafeStr_1002[_loc1_].DestroyTextFloater();
            _loc1_++;
         }
         this._SafeStr_1002 = new Vector.<_SafeCls_74>();
         this.mCamera.GameplayEnd();
         this._SafeStr_409 = 0;
         this._SafeStr_1756 = 0;
         this._SafeStr_1167 = 0;
         this._SafeStr_256._SafeStr_2628();
         this._SafeStr_165._SafeStr_3133();
         this._SafeStr_165 = new _SafeCls_0(this);
         this._SafeStr_760._SafeStr_2829();
         this._SafeStr_2479();
         this._SafeStr_1050 = false;
         this.level._SafeStr_3544();
         this.level = new Level(this);
         this.mClientEnt = null;
         for each(_loc2_ in this.mControllerInputs)
         {
            _loc2_._SafeStr_2607();
         }
         this.StartMenuMusic();
         if(this._SafeStr_613)
         {
            this._SafeStr_613._SafeStr_1214();
         }
         _SafeCls_10._SafeStr_2569();
      }
      
      public function RestartLocalGame() : void
      {
         var _loc1_:_SafeCls_7 = _SafeCls_7._SafeStr_542[_SafeCls_1._SafeStr_2154];
         if(!_loc1_)
         {
            _loc1_ = this.level ? this.level._SafeStr_340 : _SafeCls_7._SafeStr_3533();
         }
         this._SafeStr_1079();
         this._SafeStr_1050 = false;
         this.level._SafeStr_1319(_loc1_);
         this._SafeStr_1862();
      }
      
      public function _SafeStr_2114() : void
      {
         this.screenCentralHUB.Hide();
         this.screenChat.Hide();
         this.screenSelectCharacter.Hide();
      }
      
      public function _SafeStr_3757() : void
      {
      }
      
      public function _SafeStr_3036() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:String = null;
         var _loc3_:_SafeCls_77 = null;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         if(this.serverConn && !this.serverConn._SafeStr_1053 && !this.serverConn.SocketIsConnected())
         {
            this.serverConn.DestroyConnection();
            this.serverConn = null;
         }
         if(this.bRequestLoginConnect)
         {
            if(!this.serverConn)
            {
               this._SafeStr_1551 = null;
               this._SafeStr_3269 = false;
               this._SafeStr_3095 = false;
               if(Boolean(this._SafeStr_1281) && Boolean(this._SafeStr_907) || this._SafeStr_1525)
               {
                  this._SafeStr_2986(true);
               }
               else
               {
                  this.screenLogin.Display();
               }
            }
            this.bRequestLoginConnect = false;
         }
         if(Boolean(this.serverConn) && Boolean(this._SafeStr_161))
         {
            if(Boolean(this._SafeStr_1551) && (this._SafeStr_1281 && this._SafeStr_907 || this.mbCanLogInWithSteam))
            {
               _loc1_ = this._SafeStr_1412 && !this._SafeStr_2383 ? _SafeCls_73._SafeStr_2332 : _SafeCls_73._SafeStr_2338;
               _loc2_ = "";
               if(!this._SafeStr_1525)
               {
                  _loc5_ = 0;
                  while(_loc5_ < this._SafeStr_907.length)
                  {
                     _loc6_ = parseInt(this._SafeStr_1551.charAt(_loc5_),16);
                     _loc7_ = parseInt(this._SafeStr_907.charAt(_loc5_),16);
                     _loc8_ = uint(_loc6_ ^ _loc7_);
                     _loc2_ += _loc8_.toString(16);
                     _loc5_++;
                  }
               }
               _loc3_ = new _SafeCls_77(_loc1_);
               _loc3_._SafeStr_279(this._SafeStr_1790);
               _loc3_._SafeStr_279(this._SafeStr_1108);
               _loc3_._SafeStr_279(this._SafeStr_1281);
               _loc3_._SafeStr_279(_loc2_);
               _loc3_._SafeStr_279(this._SafeStr_2617);
               _loc3_._SafeStr_279(this._SafeStr_3004);
               _loc4_ = 0;
               if(this._SafeStr_965)
               {
                  _loc4_ = this._SafeStr_965.length;
               }
               _loc3_._SafeStr_146(_loc4_);
               _loc5_ = 0;
               while(Boolean(this._SafeStr_965) && _loc5_ < this._SafeStr_965.length)
               {
                  _loc3_._SafeStr_3364(this._SafeStr_965[_loc5_]);
                  _loc5_++;
               }
               this.serverConn.SendPacket(_loc3_);
               this._SafeStr_1281 = null;
               this._SafeStr_907 = null;
               this.mbCanLogInWithSteam = false;
            }
         }
      }
      
      public function _SafeStr_3419() : void
      {
         var _loc1_:_SafeCls_25 = null;
         var _loc2_:_SafeCls_17 = null;
         for each(_loc1_ in this.mEntities)
         {
            _loc2_ = _SafeCls_17._SafeStr_289["DEFAULT_COLORS_" + Math.floor(Math.random() * 8.99)];
            if(_loc2_)
            {
               _loc1_._SafeStr_946(_loc2_);
            }
         }
      }
      
      public function _SafeStr_2207() : void
      {
         var _loc4_:uint = 0;
         var _loc6_:_SafeCls_25 = null;
         var _loc7_:String = null;
         var _loc8_:uint = 0;
         var _loc9_:Array = null;
         var _loc10_:String = null;
         var _loc11_:uint = 0;
         var _loc12_:_SafeCls_17 = null;
         var _loc13_:_SafeCls_17 = null;
         if(this._SafeStr_1678)
         {
            return;
         }
         this._SafeStr_1678 = true;
         var _loc2_:Array = new Array();
         var _loc3_:Array = new Array();
         var _loc5_:uint = 0;
         for each(_loc6_ in this.mEntities)
         {
            _loc4_ = _loc6_._SafeStr_144.mHeroID;
            _loc5_ = _loc6_._SafeStr_858.mCostumeID;
            if(!_loc2_[_loc4_])
            {
               _loc2_[_loc4_] = new Array();
            }
            if(_loc6_._SafeStr_858)
            {
               if(_loc2_[_loc4_][_loc5_])
               {
                  if(!_loc3_[_loc4_])
                  {
                     _loc3_[_loc4_] = new Array();
                  }
                  _loc3_[_loc4_][_loc5_] = true;
               }
               _loc2_[_loc4_][_loc5_] = true;
            }
         }
         for(_loc7_ in _loc3_)
         {
            _loc8_ = uint(_loc7_);
            _loc9_ = _loc3_[_loc8_];
            for(_loc10_ in _loc9_)
            {
               _loc11_ = uint(_loc10_);
               _loc2_[_loc8_][_loc11_] = false;
               if(_loc8_ == this.mClientEnt._SafeStr_144.mHeroID && _loc11_ == this.mClientEnt._SafeStr_858.mCostumeID)
               {
                  _loc2_[_loc8_][_loc11_] = true;
               }
               for each(_loc6_ in this.mEntities)
               {
                  if(_loc6_ != this.mClientEnt)
                  {
                     if(_loc6_._SafeStr_144.mHeroID == _loc8_ && _loc6_._SafeStr_858.mCostumeID == _loc11_)
                     {
                        _loc4_ = _loc6_._SafeStr_144.mHeroID;
                        if(!_loc2_[_loc4_])
                        {
                           _loc2_[_loc4_] = new Array();
                        }
                        _loc12_ = _SafeCls_16._SafeStr_3065(_loc6_._SafeStr_144.mHeroID,_loc2_);
                        if(_loc12_)
                        {
                           _loc6_._SafeStr_946(_loc12_);
                           _loc2_[_loc4_][_loc12_.mCostumeID] = true;
                        }
                        else
                        {
                           _loc13_ = _SafeCls_17._SafeStr_289[_loc6_._SafeStr_144._SafeStr_616];
                           _loc6_._SafeStr_946(null);
                           _loc2_[_loc4_][_loc13_.mCostumeID] = true;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function _SafeStr_2722(param1:uint, param2:_SafeCls_16, param3:Vector.<_SafeCls_17>) : _SafeCls_17
      {
         var _loc9_:_SafeCls_17 = null;
         if(!param2 || !param3)
         {
            return null;
         }
         var _loc4_:_SafeCls_17 = _SafeCls_17._SafeStr_289[param2._SafeStr_616];
         if(!_loc4_)
         {
            return null;
         }
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:uint = param3.length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            if(_loc8_ != param1)
            {
               _loc9_ = _loc8_ < param3.length ? param3[_loc8_] : null;
               if(_loc9_)
               {
                  if(!_loc5_[_loc9_])
                  {
                     _loc5_[_loc9_] = 1;
                  }
                  else
                  {
                     ++_loc5_[_loc9_];
                  }
               }
            }
            _loc8_++;
         }
         if(Boolean(param3[param1]) && !_loc5_[param3[param1]])
         {
            var _loc7_:_SafeCls_17 = param3[param1];
         }
         else if(!_loc5_[_loc4_])
         {
            _loc7_ = _loc4_;
         }
         _loc8_ = 1;
         while(_loc8_ <= _SafeCls_17._SafeStr_806)
         {
            if(_loc4_._SafeStr_1421 != _loc8_)
            {
               var _loc10_:_SafeCls_17 = _SafeCls_17._SafeStr_289[_SafeCls_17._SafeStr_503 + _loc8_];
               if((Boolean(_loc10_)) && !_loc5_[null])
               {
                  _loc7_ = null;
                  break;
               }
            }
            _loc8_++;
         }
         param3[param1] = null;
         return null;
      }
      
      public function _SafeStr_2480(param1:Error) : void
      {
         var _loc2_:_SafeCls_77 = null;
         if(Boolean(this.serverConn) && this.serverConn.SocketIsConnected())
         {
            _loc2_ = new _SafeCls_77(_SafeCls_73._SafeStr_1906);
            _loc2_._SafeStr_279(param1.getStackTrace());
            this.serverConn.SendPacket(_loc2_);
         }
      }
      
      public function SaveKeyBindsLocally() : void
      {
         if(!this._SafeStr_129)
         {
            return;
         }
         this._SafeStr_129.data.up1 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_208);
         this._SafeStr_129.data.down1 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_207);
         this._SafeStr_129.data.left1 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_214);
         this._SafeStr_129.data.right1 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_213);
         this._SafeStr_129.data.light1 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_305);
         this._SafeStr_129.data.heavy1 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_342);
         this._SafeStr_129.data.dodge1 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_293);
         this._SafeStr_129.data.score1 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_378);
         this._SafeStr_129.data.pause1 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_242);
         this._SafeStr_129.data.jump1 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_581);
         this._SafeStr_129.data.up2 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_208,false,true);
         this._SafeStr_129.data.down2 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_207,false,true);
         this._SafeStr_129.data.left2 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_214,false,true);
         this._SafeStr_129.data.right2 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_213,false,true);
         this._SafeStr_129.data.light2 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_305,false,true);
         this._SafeStr_129.data.heavy2 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_342,false,true);
         this._SafeStr_129.data.dodge2 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_293,false,true);
         this._SafeStr_129.data.score2 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_378,false,true);
         this._SafeStr_129.data.pause2 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_242,false,true);
         this._SafeStr_129.data.jump2 = this.mKeybindManager.FetchIntKeyFromCommand(_SafeStr_581,false,true);
      }
      
      public function MirrorNormalContextToGamePlay() : void
      {
         this.mKeybindManager.SetContext(this.CONTEXT_NORMAL);
         this.mKeybindManager.SetKeys(_SafeStr_214,Keyboard.LEFT);
         this.mKeybindManager.SetKeys(_SafeStr_213,Keyboard.RIGHT);
         this.mKeybindManager.SetKeys(_SafeStr_208,Keyboard.UP);
         this.mKeybindManager.SetKeys(_SafeStr_207,Keyboard.DOWN);
         this.mKeybindManager.SetKeys(_SafeStr_216,Keyboard.ENTER);
         this.mKeybindManager.SetKeys(_SafeStr_288,Keyboard.ESCAPE);
         this.mKeybindManager.SetKeys(_SafeStr_214,Keyboard.A);
         this.mKeybindManager.SetKeys(_SafeStr_213,Keyboard.D);
         this.mKeybindManager.SetKeys(_SafeStr_208,Keyboard.W);
         this.mKeybindManager.SetKeys(_SafeStr_207,Keyboard.S);
         this.mKeybindManager.SetKeys(_SafeStr_216,Keyboard.C);
         this.mKeybindManager.SetKeys(_SafeStr_216,Keyboard.J);
         this.mKeybindManager.SetKeys(_SafeStr_247,Keyboard.Z);
         this.mKeybindManager.SetKeys(_SafeStr_247,Keyboard.L);
         this.mKeybindManager.SetKeys(_SafeStr_288,Keyboard.B);
         this.mKeybindManager.SetKeys(_SafeStr_316,Keyboard.X);
         this.mKeybindManager.SetKeys(_SafeStr_316,Keyboard.K);
         this.mKeybindManager.SetKeys(_SafeStr_316,Keyboard.Y);
         this._SafeStr_129 = SharedObject.getLocal("bhKeybinds","/");
         if(this._SafeStr_129.data.up1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_208,this._SafeStr_129.data.up1);
         }
         if(this._SafeStr_129.data.down1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_207,this._SafeStr_129.data.down1);
         }
         if(this._SafeStr_129.data.left1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_214,this._SafeStr_129.data.left1);
         }
         if(this._SafeStr_129.data.right1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_213,this._SafeStr_129.data.right1);
         }
         if(this._SafeStr_129.data.light1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_216,this._SafeStr_129.data.light1);
         }
         if(this._SafeStr_129.data.heavy1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_316,this._SafeStr_129.data.heavy1);
         }
         if(this._SafeStr_129.data.dodge1)
         {
            this.mKeybindManager.SetKeys(_SafeStr_247,this._SafeStr_129.data.dodge1);
         }
         if(this._SafeStr_129.data.up2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_208,this._SafeStr_129.data.up2);
         }
         if(this._SafeStr_129.data.down2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_207,this._SafeStr_129.data.down2);
         }
         if(this._SafeStr_129.data.left2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_214,this._SafeStr_129.data.left2);
         }
         if(this._SafeStr_129.data.right2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_213,this._SafeStr_129.data.right2);
         }
         if(this._SafeStr_129.data.light2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_216,this._SafeStr_129.data.light2);
         }
         if(this._SafeStr_129.data.heavy2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_316,this._SafeStr_129.data.heavy2);
         }
         if(this._SafeStr_129.data.dodge2)
         {
            this.mKeybindManager.SetKeys(_SafeStr_247,this._SafeStr_129.data.dodge2);
         }
      }
      
      public function _SafeStr_3302(param1:SteamEvent) : void
      {
         switch(param1.mReqType)
         {
            case 1:
               if(param1.mResponse == 2)
               {
                  this.screenError.Display("Restart Steam, General Failure",true);
                  break;
               }
               if(param1.mResponse == 3)
               {
                  this.screenError.Display("Restart Steam, it has \"No Connection\"",true);
                  break;
               }
               if(param1.mResponse == 6)
               {
                  this.screenError.Display("Steam Error: Logged in Elsewhere",true);
                  break;
               }
               if(param1.mResponse == 1)
               {
                  this._SafeStr_965 = this._SafeStr_631.GetEncryptedAppTicket();
                  this.bRequestLoginConnect = true;
                  this.bShouldBeginLoginProcess = true;
                  this.mbCanLogInWithSteam = true;
                  this._SafeStr_1525 = true;
                  this.beginStateLobby();
                  break;
               }
               this.screenError.Display("Please Report Error Code: " + param1.mResponse,true);
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_3 = "_-nK"
 * @identifier _SafeCls_4 = "_-Kq"
 * @identifier _SafeCls_5 = "_-N0"
 * @identifier _SafeCls_6 = "_-0u"
 * @identifier _SafeCls_7 = "_-Af"
 * @identifier _SafeCls_9 = "_-cU"
 * @identifier _SafeCls_10 = "_-HZ"
 * @identifier _SafeCls_12 = "_-G5"
 * @identifier _SafeCls_13 = "_-Mg"
 * @identifier _SafeCls_15 = "_-MP"
 * @identifier _SafeCls_16 = "_-DS"
 * @identifier _SafeCls_17 = "_-TF"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_24 = "_-3h"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_27 = "_-C7"
 * @identifier _SafeCls_30 = "_-DD"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_37 = "_-D9"
 * @identifier _SafeCls_38 = "_-XW"
 * @identifier _SafeCls_39 = "_-wD"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_41 = "_-tQ"
 * @identifier _SafeCls_42 = "_-w0"
 * @identifier _SafeCls_44 = "_-L6"
 * @identifier _SafeCls_45 = "_-rk"
 * @identifier _SafeCls_46 = "_-u2"
 * @identifier _SafeCls_47 = "_-Km"
 * @identifier _SafeCls_48 = "_-kT"
 * @identifier _SafeCls_49 = "_-Oo"
 * @identifier _SafeCls_50 = "_-IX"
 * @identifier _SafeCls_51 = "_-WC"
 * @identifier _SafeCls_52 = "_-Np"
 * @identifier _SafeCls_53 = "_-Yr"
 * @identifier _SafeCls_54 = "_-0l"
 * @identifier _SafeCls_55 = "_-Gv"
 * @identifier _SafeCls_56 = "_-YE"
 * @identifier _SafeCls_57 = "_-Fi"
 * @identifier _SafeCls_58 = "_-4f"
 * @identifier _SafeCls_59 = "_-Ed"
 * @identifier _SafeCls_60 = "_-nZ"
 * @identifier _SafeCls_61 = "_-Cc"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_63 = "_-TM"
 * @identifier _SafeCls_64 = "_-8j"
 * @identifier _SafeCls_65 = "_-Q5"
 * @identifier _SafeCls_66 = "_-LE"
 * @identifier _SafeCls_67 = "_-Pj"
 * @identifier _SafeCls_68 = "_-ON"
 * @identifier _SafeCls_69 = "_-gK"
 * @identifier _SafeCls_70 = "_-JA"
 * @identifier _SafeCls_71 = "_-vp"
 * @identifier _SafeCls_72 = "_-fF"
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_74 = "_-3f"
 * @identifier _SafeCls_75 = "_-cy"
 * @identifier _SafeCls_76 = "_-ln"
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeCls_78 = "_-Um"
 * @identifier _SafeCls_79 = "_-gL"
 * @identifier _SafeCls_80 = "_-RB"
 * @identifier _SafeCls_81 = "_-G9"
 * @identifier _SafeCls_82 = "_-6G"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_121 = "_-Dk"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_129 = "_-FC"
 * @identifier _SafeStr_132 = "_-wb"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_137 = "_-3"
 * @identifier _SafeStr_144 = "_-Z"
 * @identifier _SafeStr_146 = "_-jy"
 * @identifier _SafeStr_149 = "_-nF"
 * @identifier _SafeStr_151 = "_-0w"
 * @identifier _SafeStr_152 = "_-PC"
 * @identifier _SafeStr_153 = "_-2k"
 * @identifier _SafeStr_154 = "_-1N"
 * @identifier _SafeStr_156 = "_-gH"
 * @identifier _SafeStr_159 = "_-eE"
 * @identifier _SafeStr_161 = "_-ve"
 * @identifier _SafeStr_163 = "_-eC"
 * @identifier _SafeStr_164 = "_-QU"
 * @identifier _SafeStr_165 = "_-Ix"
 * @identifier _SafeStr_168 = "_-gx"
 * @identifier _SafeStr_169 = "_-We"
 * @identifier _SafeStr_173 = "_-KG"
 * @identifier _SafeStr_176 = "_-mN"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_193 = "_-MG"
 * @identifier _SafeStr_194 = "_-rD"
 * @identifier _SafeStr_195 = "_-70"
 * @identifier _SafeStr_200 = "_-H-"
 * @identifier _SafeStr_201 = "_-x"
 * @identifier _SafeStr_207 = "_-wd"
 * @identifier _SafeStr_208 = "_-9P"
 * @identifier _SafeStr_211 = "_-hw"
 * @identifier _SafeStr_213 = "_-Rl"
 * @identifier _SafeStr_214 = "_-W1"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_222 = "_-0i"
 * @identifier _SafeStr_227 = "_-XT"
 * @identifier _SafeStr_229 = "_-Jj"
 * @identifier _SafeStr_237 = "_-Q6"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_247 = "_-PM"
 * @identifier _SafeStr_256 = "_-A1"
 * @identifier _SafeStr_265 = "_-pC"
 * @identifier _SafeStr_270 = "_-ts"
 * @identifier _SafeStr_272 = "_-7S"
 * @identifier _SafeStr_279 = "_-CT"
 * @identifier _SafeStr_283 = "_-eW"
 * @identifier _SafeStr_284 = "_-Ak"
 * @identifier _SafeStr_288 = "_-m2"
 * @identifier _SafeStr_289 = "_-MO"
 * @identifier _SafeStr_292 = "_-6U"
 * @identifier _SafeStr_293 = "_-tr"
 * @identifier _SafeStr_297 = "_-wi"
 * @identifier _SafeStr_305 = "_-2J"
 * @identifier _SafeStr_310 = "_-1j"
 * @identifier _SafeStr_313 = "_-VD"
 * @identifier _SafeStr_314 = "_-9t"
 * @identifier _SafeStr_316 = "_-cQ"
 * @identifier _SafeStr_319 = "_-vX"
 * @identifier _SafeStr_340 = "_-He"
 * @identifier _SafeStr_342 = "_-Dr"
 * @identifier _SafeStr_343 = "_-i8"
 * @identifier _SafeStr_348 = "_-1E"
 * @identifier _SafeStr_351 = "_-Mq"
 * @identifier _SafeStr_354 = "_-4x"
 * @identifier _SafeStr_358 = "_-la"
 * @identifier _SafeStr_364 = "_-ad"
 * @identifier _SafeStr_365 = "_-eH"
 * @identifier _SafeStr_370 = "_-f2"
 * @identifier _SafeStr_378 = "_-22"
 * @identifier _SafeStr_379 = "_-mg"
 * @identifier _SafeStr_381 = "_-7W"
 * @identifier _SafeStr_382 = "_-DL"
 * @identifier _SafeStr_387 = "_-nt"
 * @identifier _SafeStr_388 = "_-aV"
 * @identifier _SafeStr_390 = "_-cm"
 * @identifier _SafeStr_395 = "_-Ck"
 * @identifier _SafeStr_405 = "_-Ze"
 * @identifier _SafeStr_409 = "_-Bd"
 * @identifier _SafeStr_413 = "_-a3"
 * @identifier _SafeStr_417 = "_-pJ"
 * @identifier _SafeStr_421 = "_-jC"
 * @identifier _SafeStr_427 = "_-fv"
 * @identifier _SafeStr_430 = "_-kA"
 * @identifier _SafeStr_440 = "_-B-"
 * @identifier _SafeStr_445 = "_-F4"
 * @identifier _SafeStr_448 = "_-Hc"
 * @identifier _SafeStr_449 = "_-UC"
 * @identifier _SafeStr_464 = "_-28"
 * @identifier _SafeStr_469 = "_-Rq"
 * @identifier _SafeStr_474 = "_-WB"
 * @identifier _SafeStr_484 = "_-QQ"
 * @identifier _SafeStr_485 = "_-q3"
 * @identifier _SafeStr_492 = "_-sd"
 * @identifier _SafeStr_503 = "_-gZ"
 * @identifier _SafeStr_513 = "_-VF"
 * @identifier _SafeStr_516 = "_-lF"
 * @identifier _SafeStr_531 = "_-ZO"
 * @identifier _SafeStr_533 = "_-YQ"
 * @identifier _SafeStr_535 = "_-rg"
 * @identifier _SafeStr_536 = "_-Va"
 * @identifier _SafeStr_542 = "_-RD"
 * @identifier _SafeStr_543 = "_-2R"
 * @identifier _SafeStr_554 = "_-4g"
 * @identifier _SafeStr_557 = "_-61"
 * @identifier _SafeStr_563 = "_-Vo"
 * @identifier _SafeStr_580 = "_-4J"
 * @identifier _SafeStr_581 = "_-No"
 * @identifier _SafeStr_585 = "_-76"
 * @identifier _SafeStr_589 = "_-Qp"
 * @identifier _SafeStr_594 = "_-Lc"
 * @identifier _SafeStr_605 = "_-7n"
 * @identifier _SafeStr_613 = "_-u4"
 * @identifier _SafeStr_616 = "_-ud"
 * @identifier _SafeStr_622 = "_-i2"
 * @identifier _SafeStr_625 = "_-LM"
 * @identifier _SafeStr_631 = "return"
 * @identifier _SafeStr_642 = "_-UR"
 * @identifier _SafeStr_644 = "_-lf"
 * @identifier _SafeStr_651 = "_-XQ"
 * @identifier _SafeStr_674 = "_-Wc"
 * @identifier _SafeStr_678 = "_-k"
 * @identifier _SafeStr_683 = "_-3Z"
 * @identifier _SafeStr_696 = "_-R0"
 * @identifier _SafeStr_705 = "_-Q0"
 * @identifier _SafeStr_707 = "_-nM"
 * @identifier _SafeStr_714 = "_-pE"
 * @identifier _SafeStr_716 = "_-ND"
 * @identifier _SafeStr_740 = "_-NB"
 * @identifier _SafeStr_760 = "_-2G"
 * @identifier _SafeStr_793 = "_-gl"
 * @identifier _SafeStr_794 = "_-c1"
 * @identifier _SafeStr_803 = "_-un"
 * @identifier _SafeStr_805 = "_-vy"
 * @identifier _SafeStr_806 = "_-9d"
 * @identifier _SafeStr_812 = "_-a"
 * @identifier _SafeStr_814 = "_-X-"
 * @identifier _SafeStr_825 = "_-B5"
 * @identifier _SafeStr_832 = "_-BF"
 * @identifier _SafeStr_834 = "_-8C"
 * @identifier _SafeStr_840 = "_-iO"
 * @identifier _SafeStr_841 = "_-4L"
 * @identifier _SafeStr_844 = "_-4V"
 * @identifier _SafeStr_845 = "_-e6"
 * @identifier _SafeStr_856 = "_-nu"
 * @identifier _SafeStr_858 = "_-gq"
 * @identifier _SafeStr_868 = "_-8Y"
 * @identifier _SafeStr_877 = "_-p5"
 * @identifier _SafeStr_889 = "_-R"
 * @identifier _SafeStr_907 = "_-9H"
 * @identifier _SafeStr_917 = "_-aR"
 * @identifier _SafeStr_932 = "_-AY"
 * @identifier _SafeStr_934 = "_-1U"
 * @identifier _SafeStr_936 = "_-co"
 * @identifier _SafeStr_946 = "_-Ac"
 * @identifier _SafeStr_951 = "_-fi"
 * @identifier _SafeStr_961 = "_-tg"
 * @identifier _SafeStr_965 = "_-ul"
 * @identifier _SafeStr_993 = "_-7H"
 * @identifier _SafeStr_1002 = "_-Fa"
 * @identifier _SafeStr_1031 = "_-jn"
 * @identifier _SafeStr_1044 = "_-rx"
 * @identifier _SafeStr_1050 = "_-Qh"
 * @identifier _SafeStr_1052 = "_-du"
 * @identifier _SafeStr_1053 = "_-LI"
 * @identifier _SafeStr_1057 = "_-AR"
 * @identifier _SafeStr_1070 = "_-HN"
 * @identifier _SafeStr_1079 = "_-C6"
 * @identifier _SafeStr_1089 = "_-b9"
 * @identifier _SafeStr_1094 = "_-nj"
 * @identifier _SafeStr_1097 = "_-LS"
 * @identifier _SafeStr_1106 = "_-FR"
 * @identifier _SafeStr_1108 = "_-dx"
 * @identifier _SafeStr_1121 = "_-H"
 * @identifier _SafeStr_1127 = "_-qZ"
 * @identifier _SafeStr_1129 = "_-98"
 * @identifier _SafeStr_1137 = "_-Yo"
 * @identifier _SafeStr_1159 = "_-h8"
 * @identifier _SafeStr_1164 = "_-d6"
 * @identifier _SafeStr_1167 = "_-39"
 * @identifier _SafeStr_1177 = "_-81"
 * @identifier _SafeStr_1193 = "_-I3"
 * @identifier _SafeStr_1211 = "_-2t"
 * @identifier _SafeStr_1213 = "_-J-"
 * @identifier _SafeStr_1214 = "_-Er"
 * @identifier _SafeStr_1217 = "_-jb"
 * @identifier _SafeStr_1233 = "_-GA"
 * @identifier _SafeStr_1241 = "do"
 * @identifier _SafeStr_1262 = "_-VH"
 * @identifier _SafeStr_1265 = "_-vm"
 * @identifier _SafeStr_1271 = "_-TV"
 * @identifier _SafeStr_1275 = "_-J8"
 * @identifier _SafeStr_1281 = "_-QY"
 * @identifier _SafeStr_1285 = "_-uW"
 * @identifier _SafeStr_1319 = "_-Yg"
 * @identifier _SafeStr_1324 = "_-Or"
 * @identifier _SafeStr_1337 = "_-T3"
 * @identifier _SafeStr_1338 = "_-3C"
 * @identifier _SafeStr_1340 = "_-NF"
 * @identifier _SafeStr_1363 = "_-YH"
 * @identifier _SafeStr_1379 = "_-1i"
 * @identifier _SafeStr_1386 = "_-TQ"
 * @identifier _SafeStr_1395 = "_-uM"
 * @identifier _SafeStr_1400 = "_-cE"
 * @identifier _SafeStr_1412 = "_-YC"
 * @identifier _SafeStr_1421 = "_-Bt"
 * @identifier _SafeStr_1427 = "_-5I"
 * @identifier _SafeStr_1437 = "_-FD"
 * @identifier _SafeStr_1449 = "_-NQ"
 * @identifier _SafeStr_1460 = "_-rv"
 * @identifier _SafeStr_1461 = "_-ZE"
 * @identifier _SafeStr_1470 = "_-MK"
 * @identifier _SafeStr_1471 = "_-X8"
 * @identifier _SafeStr_1483 = "_-dI"
 * @identifier _SafeStr_1492 = "_-bc"
 * @identifier _SafeStr_1493 = "_-2C"
 * @identifier _SafeStr_1505 = "_-mw"
 * @identifier _SafeStr_1506 = "_-n6"
 * @identifier _SafeStr_1516 = "_-4C"
 * @identifier _SafeStr_1519 = "_-95"
 * @identifier _SafeStr_1525 = "_-Nz"
 * @identifier _SafeStr_1534 = "_-6e"
 * @identifier _SafeStr_1538 = "_-nT"
 * @identifier _SafeStr_1542 = "_-It"
 * @identifier _SafeStr_1545 = "_-Dy"
 * @identifier _SafeStr_1551 = "_-od"
 * @identifier _SafeStr_1565 = "_-65"
 * @identifier _SafeStr_1566 = "_-Gm"
 * @identifier _SafeStr_1571 = "_-no"
 * @identifier _SafeStr_1577 = "_-ke"
 * @identifier _SafeStr_1578 = "_-8V"
 * @identifier _SafeStr_1586 = "_-vE"
 * @identifier _SafeStr_1600 = "_-4s"
 * @identifier _SafeStr_1601 = "_-lW"
 * @identifier _SafeStr_1604 = "_-DF"
 * @identifier _SafeStr_1629 = "_-aQ"
 * @identifier _SafeStr_1630 = "_-Ex"
 * @identifier _SafeStr_1639 = "_-kb"
 * @identifier _SafeStr_1656 = "_-NO"
 * @identifier _SafeStr_1662 = "_-jJ"
 * @identifier _SafeStr_1667 = "_-ZR"
 * @identifier _SafeStr_1678 = "_-3y"
 * @identifier _SafeStr_1685 = "_-9K"
 * @identifier _SafeStr_1686 = "_-6b"
 * @identifier _SafeStr_1752 = "_-cf"
 * @identifier _SafeStr_1756 = "_-MR"
 * @identifier _SafeStr_1758 = "_-CA"
 * @identifier _SafeStr_1762 = "_-Wg"
 * @identifier _SafeStr_1764 = "_-KT"
 * @identifier _SafeStr_1769 = "_-IT"
 * @identifier _SafeStr_1790 = "_-O1"
 * @identifier _SafeStr_1812 = "_-w2"
 * @identifier _SafeStr_1817 = "_-tz"
 * @identifier _SafeStr_1818 = "_-g4"
 * @identifier _SafeStr_1834 = "_-Cd"
 * @identifier _SafeStr_1839 = "_-nR"
 * @identifier _SafeStr_1853 = "_-AJ"
 * @identifier _SafeStr_1859 = "_-LG"
 * @identifier _SafeStr_1862 = "_-GE"
 * @identifier _SafeStr_1864 = "_-Ef"
 * @identifier _SafeStr_1879 = "_-iP"
 * @identifier _SafeStr_1883 = "_-sX"
 * @identifier _SafeStr_1906 = "_-EW"
 * @identifier _SafeStr_1908 = "_-Q2"
 * @identifier _SafeStr_1974 = "_-ki"
 * @identifier _SafeStr_1984 = "_-3S"
 * @identifier _SafeStr_1985 = "_-bM"
 * @identifier _SafeStr_1986 = "_-WR"
 * @identifier _SafeStr_1997 = "_-gt"
 * @identifier _SafeStr_1998 = "_-bV"
 * @identifier _SafeStr_2008 = "_-Uk"
 * @identifier _SafeStr_2014 = "_-bO"
 * @identifier _SafeStr_2028 = "_-PV"
 * @identifier _SafeStr_2032 = "_-kC"
 * @identifier _SafeStr_2042 = "_-re"
 * @identifier _SafeStr_2046 = "_-vY"
 * @identifier _SafeStr_2052 = " true"
 * @identifier _SafeStr_2055 = "_-Vh"
 * @identifier _SafeStr_2079 = "_-7j"
 * @identifier _SafeStr_2080 = "_-0N"
 * @identifier _SafeStr_2086 = "_-rz"
 * @identifier _SafeStr_2095 = "_-LU"
 * @identifier _SafeStr_2097 = "_-gs"
 * @identifier _SafeStr_2114 = "_-rJ"
 * @identifier _SafeStr_2139 = "_-jN"
 * @identifier _SafeStr_2150 = "_-jS"
 * @identifier _SafeStr_2151 = "_-t4"
 * @identifier _SafeStr_2154 = "_-3U"
 * @identifier _SafeStr_2157 = "_-eL"
 * @identifier _SafeStr_2181 = "_-A8"
 * @identifier _SafeStr_2202 = "_-Px"
 * @identifier _SafeStr_2207 = "_-0E"
 * @identifier _SafeStr_2214 = "_-Kl"
 * @identifier _SafeStr_2219 = "_-gg"
 * @identifier _SafeStr_2222 = "_-v1"
 * @identifier _SafeStr_2229 = "_-7q"
 * @identifier _SafeStr_2251 = "_-kh"
 * @identifier _SafeStr_2253 = "_-jZ"
 * @identifier _SafeStr_2254 = "_-Y8"
 * @identifier _SafeStr_2259 = "_-Lf"
 * @identifier _SafeStr_2263 = "_-Wl"
 * @identifier _SafeStr_2267 = "_-ji"
 * @identifier _SafeStr_2279 = "_-f1"
 * @identifier _SafeStr_2281 = "_-aI"
 * @identifier _SafeStr_2288 = "_-di"
 * @identifier _SafeStr_2307 = "_-g8"
 * @identifier _SafeStr_2312 = "_-TB"
 * @identifier _SafeStr_2315 = "_-vB"
 * @identifier _SafeStr_2322 = "_-SG"
 * @identifier _SafeStr_2332 = "try "
 * @identifier _SafeStr_2338 = "_-sJ"
 * @identifier _SafeStr_2383 = "_-n0"
 * @identifier _SafeStr_2388 = "_-gQ"
 * @identifier _SafeStr_2431 = "_-uF"
 * @identifier _SafeStr_2442 = "_-fR"
 * @identifier _SafeStr_2456 = "_-Bj"
 * @identifier _SafeStr_2467 = "_-MS"
 * @identifier _SafeStr_2479 = "_-FK"
 * @identifier _SafeStr_2480 = "_-ZN"
 * @identifier _SafeStr_2490 = "_-8M"
 * @identifier _SafeStr_2508 = "_-Cg"
 * @identifier _SafeStr_2537 = "_-5-"
 * @identifier _SafeStr_2555 = "_-0j"
 * @identifier _SafeStr_2565 = "_-uS"
 * @identifier _SafeStr_2566 = "_-X6"
 * @identifier _SafeStr_2569 = "_-UP"
 * @identifier _SafeStr_2574 = "_-tJ"
 * @identifier _SafeStr_2580 = "_-6k"
 * @identifier _SafeStr_2607 = "_-UO"
 * @identifier _SafeStr_2613 = "_-ni"
 * @identifier _SafeStr_2617 = "_-bY"
 * @identifier _SafeStr_2626 = "_-Uf"
 * @identifier _SafeStr_2628 = "_-wk"
 * @identifier _SafeStr_2629 = "_-Ug"
 * @identifier _SafeStr_2639 = "_-vw"
 * @identifier _SafeStr_2658 = "_-ZZ"
 * @identifier _SafeStr_2664 = "_-7M"
 * @identifier _SafeStr_2696 = "_-sN"
 * @identifier _SafeStr_2722 = "_-vv"
 * @identifier _SafeStr_2727 = "_-7z"
 * @identifier _SafeStr_2728 = "_-YJ"
 * @identifier _SafeStr_2729 = "_-c6"
 * @identifier _SafeStr_2733 = "_-kd"
 * @identifier _SafeStr_2753 = "_-cJ"
 * @identifier _SafeStr_2780 = "_-Lo"
 * @identifier _SafeStr_2787 = "_-PE"
 * @identifier _SafeStr_2791 = "_-sx"
 * @identifier _SafeStr_2812 = "_-kz"
 * @identifier _SafeStr_2822 = "_-uP"
 * @identifier _SafeStr_2826 = "_-3o"
 * @identifier _SafeStr_2829 = "_-T7"
 * @identifier _SafeStr_2836 = "_-lo"
 * @identifier _SafeStr_2846 = "_-gk"
 * @identifier _SafeStr_2872 = "_-5F"
 * @identifier _SafeStr_2875 = "_-Yc"
 * @identifier _SafeStr_2895 = "_-wM"
 * @identifier _SafeStr_2897 = "_-EX"
 * @identifier _SafeStr_2899 = "_-3-"
 * @identifier _SafeStr_2906 = "_-Bs"
 * @identifier _SafeStr_2928 = "_-bX"
 * @identifier _SafeStr_2929 = "_-P"
 * @identifier _SafeStr_2937 = "_-6w"
 * @identifier _SafeStr_2961 = "_-Z4"
 * @identifier _SafeStr_2963 = "_-1p"
 * @identifier _SafeStr_2973 = "_-eP"
 * @identifier _SafeStr_2976 = "_-Uo"
 * @identifier _SafeStr_2977 = "_-AX"
 * @identifier _SafeStr_2985 = "_-2f"
 * @identifier _SafeStr_2986 = "_-8h"
 * @identifier _SafeStr_2988 = "_-II"
 * @identifier _SafeStr_3002 = "_-iu"
 * @identifier _SafeStr_3004 = "_-7P"
 * @identifier _SafeStr_3025 = "_-vt"
 * @identifier _SafeStr_3033 = "_-2d"
 * @identifier _SafeStr_3036 = "_-LJ"
 * @identifier _SafeStr_3040 = "super"
 * @identifier _SafeStr_3041 = "_-t5"
 * @identifier _SafeStr_3048 = "_-d1"
 * @identifier _SafeStr_3053 = "_-Cj"
 * @identifier _SafeStr_3065 = "_-wF"
 * @identifier _SafeStr_3066 = "_-FI"
 * @identifier _SafeStr_3073 = "_-WI"
 * @identifier _SafeStr_3081 = "_-BI"
 * @identifier _SafeStr_3083 = "_-Et"
 * @identifier _SafeStr_3086 = "_-TZ"
 * @identifier _SafeStr_3095 = "_-tl"
 * @identifier _SafeStr_3102 = "_-7x"
 * @identifier _SafeStr_3109 = "_-8Z"
 * @identifier _SafeStr_3117 = "_-8n"
 * @identifier _SafeStr_3133 = "_-kW"
 * @identifier _SafeStr_3134 = "var "
 * @identifier _SafeStr_3141 = "_-gu"
 * @identifier _SafeStr_3146 = "_-7R"
 * @identifier _SafeStr_3148 = "_-z"
 * @identifier _SafeStr_3152 = "_-09"
 * @identifier _SafeStr_3181 = "_-Vm"
 * @identifier _SafeStr_3183 = "_-1v"
 * @identifier _SafeStr_3188 = "_-vR"
 * @identifier _SafeStr_3195 = "_-NC"
 * @identifier _SafeStr_3196 = "_-5T"
 * @identifier _SafeStr_3198 = "_-Lk"
 * @identifier _SafeStr_3202 = "_-9X"
 * @identifier _SafeStr_3218 = "_-Oz"
 * @identifier _SafeStr_3222 = "_-fB"
 * @identifier _SafeStr_3225 = "_-Os"
 * @identifier _SafeStr_3226 = "_-gz"
 * @identifier _SafeStr_3231 = "_-RA"
 * @identifier _SafeStr_3234 = "_-kD"
 * @identifier _SafeStr_3244 = "_-q"
 * @identifier _SafeStr_3248 = "_-pO"
 * @identifier _SafeStr_3252 = "_-n9"
 * @identifier _SafeStr_3256 = "_-7v"
 * @identifier _SafeStr_3260 = "_-XD"
 * @identifier _SafeStr_3269 = "_-0O"
 * @identifier _SafeStr_3290 = "_-jf"
 * @identifier _SafeStr_3293 = "_-0S"
 * @identifier _SafeStr_3300 = "_-2l"
 * @identifier _SafeStr_3301 = "_-iT"
 * @identifier _SafeStr_3302 = "_-DH"
 * @identifier _SafeStr_3304 = "_-Zz"
 * @identifier _SafeStr_3308 = "_-87"
 * @identifier _SafeStr_3309 = "_-jE"
 * @identifier _SafeStr_3313 = "_-g"
 * @identifier _SafeStr_3327 = "_-fI"
 * @identifier _SafeStr_3339 = "_-41"
 * @identifier _SafeStr_3345 = "_-tw"
 * @identifier _SafeStr_3357 = "_-N1"
 * @identifier _SafeStr_3360 = "_-9z"
 * @identifier _SafeStr_3362 = "_-de"
 * @identifier _SafeStr_3364 = "_-hC"
 * @identifier _SafeStr_3372 = "_-pt"
 * @identifier _SafeStr_3373 = "_-KN"
 * @identifier _SafeStr_3381 = "_-uo"
 * @identifier _SafeStr_3383 = "_-ci"
 * @identifier _SafeStr_3392 = "_-75"
 * @identifier _SafeStr_3410 = "_-jW"
 * @identifier _SafeStr_3415 = "_-1o"
 * @identifier _SafeStr_3419 = "_-XU"
 * @identifier _SafeStr_3421 = "_-SA"
 * @identifier _SafeStr_3433 = "_-Cs"
 * @identifier _SafeStr_3442 = "_-Nd"
 * @identifier _SafeStr_3443 = "_-tm"
 * @identifier _SafeStr_3448 = "_-K7"
 * @identifier _SafeStr_3449 = "_-4a"
 * @identifier _SafeStr_3453 = "_-b1"
 * @identifier _SafeStr_3457 = "_-4A"
 * @identifier _SafeStr_3467 = "_-GS"
 * @identifier _SafeStr_3476 = "_-D7"
 * @identifier _SafeStr_3479 = "_-hn"
 * @identifier _SafeStr_3485 = "_-9Z"
 * @identifier _SafeStr_3486 = "_-Fh"
 * @identifier _SafeStr_3504 = "_-68"
 * @identifier _SafeStr_3511 = "_-3A"
 * @identifier _SafeStr_3512 = "_-CD"
 * @identifier _SafeStr_3520 = "_-VR"
 * @identifier _SafeStr_3524 = "_-mq"
 * @identifier _SafeStr_3527 = "_-88"
 * @identifier _SafeStr_3533 = "_-DG"
 * @identifier _SafeStr_3538 = "_-RM"
 * @identifier _SafeStr_3544 = "_-9x"
 * @identifier _SafeStr_3560 = "_-XN"
 * @identifier _SafeStr_3564 = "_-QD"
 * @identifier _SafeStr_3568 = "_-Do"
 * @identifier _SafeStr_3569 = "_-s4"
 * @identifier _SafeStr_3581 = "_-BU"
 * @identifier _SafeStr_3586 = "_-qM"
 * @identifier _SafeStr_3599 = "_-74"
 * @identifier _SafeStr_3602 = "_-8F"
 * @identifier _SafeStr_3610 = "_-j"
 * @identifier _SafeStr_3613 = "_-7m"
 * @identifier _SafeStr_3621 = "_-B9"
 * @identifier _SafeStr_3623 = "_-ga"
 * @identifier _SafeStr_3637 = "_-FQ"
 * @identifier _SafeStr_3641 = "_-Sh"
 * @identifier _SafeStr_3684 = "_-Od"
 * @identifier _SafeStr_3689 = "_-6C"
 * @identifier _SafeStr_3700 = "_-6Z"
 * @identifier _SafeStr_3706 = "_-gb"
 * @identifier _SafeStr_3711 = "_-F0"
 * @identifier _SafeStr_3712 = "_-uC"
 * @identifier _SafeStr_3715 = "_-rB"
 * @identifier _SafeStr_3722 = "_-W5"
 * @identifier _SafeStr_3726 = "_-Id"
 * @identifier _SafeStr_3729 = "_-7s"
 * @identifier _SafeStr_3733 = "_-uY"
 * @identifier _SafeStr_3752 = "_-Q4"
 * @identifier _SafeStr_3754 = "_-j5"
 * @identifier _SafeStr_3757 = "_-uq"
 */
