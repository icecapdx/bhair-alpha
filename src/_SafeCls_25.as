package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import flash.text.TextField;
   
   public class _SafeCls_25
   {
      
      public static const _SafeStr_2241:uint = 1500;
      
      private static const _SafeStr_2044:uint = 150;
      
      private static const _SafeStr_2992:uint = 250;
      
      private static const _SafeStr_2550:uint = 400;
      
      public static const _SafeStr_1805:uint = 400;
      
      public static const _SafeStr_1291:uint = _SafeStr_1805 * 2.5;
      
      public static const _SafeStr_2305:uint = _SafeStr_1291 * 3;
      
      public static const _SafeStr_2301:Number = 5000;
      
      public static const _SafeStr_2143:uint = 3000;
      
      private static const _SafeStr_1842:uint = 125;
      
      public static const _SafeStr_244:uint = 0;
      
      public static const _SafeStr_2145:uint = 1;
      
      public static const _SafeStr_448:uint = 2;
      
      public static const _SafeStr_315:uint = 3;
      
      public static const _SafeStr_913:uint = 4;
      
      public static const _SafeStr_441:uint = 5;
      
      public static const _SafeStr_572:uint = 6;
      
      public static const _SafeStr_292:uint = 7;
      
      public static const _SafeStr_609:uint = 3;
      
      public static const _SafeStr_2736:uint = 2;
      
      public static const _SafeStr_469:uint = 1;
      
      public static const _SafeStr_2952:uint = 2;
      
      public static const _SafeStr_194:uint = 4;
      
      public static const LOCAL:uint = 8;
      
      public static const _SafeStr_2445:uint = 16;
      
      public static const _SafeStr_906:uint = 32;
      
      public static const BOT:uint = 64;
      
      public static const _SafeStr_252:uint = 128;
      
      public static const _SafeStr_578:uint = 256;
      
      public static const _SafeStr_413:uint = 512;
      
      public static const _SafeStr_589:uint = 1024;
      
      public static const _SafeStr_502:Number = 2.5;
      
      public static const _SafeStr_1530:Number = 1.2;
      
      public static const _SafeStr_1394:Number = 4.7;
      
      public static const _SafeStr_2311:Number = 5.16;
      
      public static const _SafeStr_281:Number = 500;
      
      public static const _SafeStr_1689:Number = 50;
      
      public static var _SafeStr_1464:Number = 50;
      
      public static const _SafeStr_2842:Number = 4;
      
      public static const _SafeStr_1925:Number = 2;
      
      public static const _SafeStr_510:Number = 3;
      
      public static const _SafeStr_1713:Number = 0.85;
      
      public static const _SafeStr_2268:Number = 48;
      
      public static const _SafeStr_1260:Number = 57;
      
      public static const _SafeStr_1960:Number = 0.08;
      
      public static const _SafeStr_1014:Number = 25;
      
      public static const _SafeStr_950:Number = 45;
      
      public static const _SafeStr_2369:Number = _SafeStr_1260 - 4;
      
      public static const _SafeStr_1054:Number = 40;
      
      public static const _SafeStr_1304:Number = 2;
      
      public static const _SafeStr_779:Number = 0.8;
      
      public static const _SafeStr_386:Number = _SafeStr_1260 + 10;
      
      public static const _SafeStr_1228:Number = _SafeStr_386 * _SafeStr_386;
      
      public static const _SafeStr_1499:Number = 350;
      
      public static const _SafeStr_1975:Number = 1750;
      
      public static const _SafeStr_1502:Number = 10;
      
      public static const _SafeStr_1153:Number = _SafeStr_1530 * 1.5;
      
      public static const _SafeStr_2029:Number = 30;
      
      public static const _SafeStr_634:Number = 1000;
      
      public static const _SafeStr_1801:Number = _SafeStr_634 + 250;
      
      public static const _SafeStr_1569:Number = 50;
      
      private static const _SafeStr_2314:uint = 200;
      
      private static const _SafeStr_2427:Number = _SafeStr_2314 / 1000 * Game._SafeStr_354;
      
      private static const _SafeStr_1343:Number = 50;
      
      private static const _SafeStr_1920:Number = 10;
      
      internal static const _SafeStr_884:Number = 140;
      
      private static const _SafeStr_628:Number = 1.01;
      
      private static var _SafeStr_780:Point = new Point();
      
      private static var _SafeStr_401:Point = new Point();
      
      private static var _SafeStr_1038:Point = new Point();
      
      private static var _SafeStr_436:Point = new Point();
      
      private static var _SafeStr_1056:Point = new Point();
      
      private static var _SafeStr_2720:Point = new Point();
      
      private static var _SafeStr_331:Point = new Point();
      
      private static var _SafeStr_219:Point = new Point();
      
      private static var _SafeStr_591:Point = new Point();
      
      private static var _SafeStr_403:Point = new Point();
      
      private static var _SafeStr_363:Point = new Point();
      
      private static var _SafeStr_667:Point = new Point();
      
      private static var _SafeStr_767:Point = new Point();
      
      private static var _SafeStr_835:Rectangle = new Rectangle();
      
      public static const _SafeStr_2620:uint = 12;
      
      public static const _SafeStr_2862:uint = 4;
      
      public static const _SafeStr_1088:int = 0;
      
      public static const _SafeStr_730:int = 1;
      
      public static const _SafeStr_843:int = 2;
      
      public static const _SafeStr_1457:uint = 0;
      
      public static const _SafeStr_2848:uint = 700;
      
      private static const _SafeStr_266:Number = 0.25;
      
      private static var v:Point = new Point();
      
      private static var u:Point = new Point();
      
      private static var w:Point = new Point();
      
      private static const _SafeStr_1043:Boolean = false;
      
      public static const _SafeStr_1165:uint = 52479;
      
      public static const _SafeStr_1246:uint = 26754;
      
      public static const _SafeStr_1092:uint = 15269631;
      
      public static const _SafeStr_1293:uint = 2652034;
      
      public static const _SafeStr_1468:uint = 16646145;
      
      public static const _SafeStr_1712:uint = 8912896;
      
      internal var _SafeStr_118:Game;
      
      internal var mEntID:uint;
      
      internal var _SafeStr_395:String;
      
      internal var mCombatState:_SafeCls_26;
      
      internal var _SafeStr_137:uint;
      
      internal var _SafeStr_527:GfxType;
      
      internal var _SafeStr_203:GfxType;
      
      internal var mTeam:uint;
      
      internal var _SafeStr_284:Number;
      
      internal var _SafeStr_3142:uint;
      
      internal var _SafeStr_2637:uint;
      
      internal var _SafeStr_265:int;
      
      internal var _SafeStr_531:uint;
      
      internal var _SafeStr_550:Boolean;
      
      internal var _SafeStr_709:uint;
      
      internal var _SafeStr_1099:uint;
      
      internal var _SafeStr_125:_SafeCls_40;
      
      internal var _SafeStr_240:Sprite;
      
      internal var _SafeStr_603:Sprite;
      
      internal var _SafeStr_337:Bitmap;
      
      internal var _SafeStr_302:MovieClip;
      
      internal var _SafeStr_132:_SafeCls_24;
      
      internal var _SafeStr_2251:ControllerInput;
      
      internal var _SafeStr_585:_SafeCls_90;
      
      internal var mCurrSurface:_SafeCls_20;
      
      internal var _SafeStr_638:_SafeCls_20;
      
      internal var _SafeStr_473:_SafeCls_20;
      
      internal var _SafeStr_2393:_SafeCls_20;
      
      internal var _SafeStr_1198:Number;
      
      internal var _SafeStr_1222:Number;
      
      internal var _SafeStr_753:Number;
      
      internal var _SafeStr_970:Number;
      
      internal var _SafeStr_1452:Number;
      
      internal var _SafeStr_1497:Number;
      
      internal var _SafeStr_2462:uint;
      
      internal var mbLeft:Boolean;
      
      internal var mbBackpedal:Boolean;
      
      internal var mbRunning:Boolean;
      
      internal var mbJumping:Boolean;
      
      internal var mbDropping:Boolean;
      
      internal var _SafeStr_1978:Boolean;
      
      internal var mbFiring:Boolean;
      
      internal var _SafeStr_2237:Boolean;
      
      internal var _SafeStr_894:Boolean;
      
      internal var _SafeStr_275:Boolean;
      
      internal var _SafeStr_883:Boolean;
      
      internal var _SafeStr_2165:Boolean;
      
      internal var _SafeStr_3003:Boolean;
      
      internal var _SafeStr_1347:Boolean;
      
      internal var _SafeStr_1550:Boolean;
      
      internal var _SafeStr_3245:Boolean;
      
      internal var _SafeStr_2922:Boolean;
      
      internal var _SafeStr_3475:Boolean;
      
      internal var _SafeStr_2652:Boolean;
      
      internal var _SafeStr_1235:Boolean;
      
      internal var _SafeStr_3468:Boolean;
      
      internal var _SafeStr_2544:Boolean;
      
      internal var mWallSlidingLastFrame:int;
      
      internal var _SafeStr_3427:Boolean;
      
      internal var _SafeStr_1254:Boolean = true;
      
      internal var _SafeStr_1872:Boolean;
      
      internal var mbAirborneLastFrame:Boolean;
      
      internal var _SafeStr_2695:Boolean;
      
      internal var _SafeStr_2786:Boolean;
      
      internal var mCurrentAerialJumpCount:uint;
      
      internal var _SafeStr_182:Boolean;
      
      internal var mbAirborne:Boolean;
      
      private var _SafeStr_1598:Boolean;
      
      private var _SafeStr_2270:Boolean;
      
      internal var mWallSliding:uint;
      
      private var _SafeStr_488:Number;
      
      private var _SafeStr_1047:Boolean;
      
      internal var _SafeStr_2138:Boolean;
      
      internal var _SafeStr_192:uint;
      
      private var _SafeStr_2109:uint;
      
      private var _SafeStr_335:Boolean;
      
      private var _SafeStr_1130:Boolean;
      
      internal var mVelocityX:Number;
      
      internal var mVelocityY:Number;
      
      internal var _SafeStr_197:Number;
      
      internal var _SafeStr_181:Number;
      
      internal var _SafeStr_121:Number;
      
      internal var mPhysPosY:Number;
      
      internal var _SafeStr_152:Number;
      
      internal var _SafeStr_162:Number;
      
      internal var mPhysCenterX:Number;
      
      internal var mPhysCenterY:Number;
      
      internal var _SafeStr_215:Number;
      
      internal var _SafeStr_193:Number;
      
      internal var _SafeStr_3736:Boolean;
      
      private var _SafeStr_1116:Number;
      
      private var _SafeStr_1915:Number;
      
      private var _SafeStr_3097:Boolean;
      
      private var _SafeStr_2348:Boolean;
      
      internal var _SafeStr_267:Boolean;
      
      internal var _SafeStr_861:uint;
      
      internal var _SafeStr_1436:Boolean;
      
      internal var _SafeStr_410:Boolean;
      
      internal var _SafeStr_576:Boolean;
      
      internal var _SafeStr_809:Boolean;
      
      internal var _SafeStr_154:SpawnBot;
      
      internal var _SafeStr_934:uint;
      
      internal var _SafeStr_1300:Boolean;
      
      private var _SafeStr_701:Boolean;
      
      internal var _SafeStr_2878:Number = 0;
      
      internal var _SafeStr_3224:Number = 1;
      
      internal var _SafeStr_3588:uint;
      
      internal var _SafeStr_2778:Boolean;
      
      internal var _SafeStr_234:MovieClip;
      
      internal var _SafeStr_612:MovieClip;
      
      internal var mDebugBotGfx:MovieClip;
      
      internal var mEntState:uint;
      
      internal var _SafeStr_1623:uint;
      
      internal var _SafeStr_1174:uint;
      
      internal var _SafeStr_3747:uint;
      
      internal var _SafeStr_673:uint;
      
      private var _SafeStr_879:_SafeCls_27;
      
      internal var _SafeStr_3605:uint;
      
      internal var _SafeStr_849:Number = 0;
      
      internal var _SafeStr_923:Number = 0;
      
      internal var _SafeStr_444:Number = 0;
      
      internal var _SafeStr_300:_SafeCls_91;
      
      internal var _SafeStr_529:Boolean;
      
      internal var _SafeStr_282:TrailEffect;
      
      public var _SafeStr_544:_SafeCls_92;
      
      internal var mGameStats:_SafeCls_89;
      
      internal var _SafeStr_1877:String;
      
      internal var _SafeStr_721:SoundChannel;
      
      internal var _SafeStr_144:_SafeCls_16;
      
      internal var _SafeStr_858:_SafeCls_17;
      
      internal var _SafeStr_140:Vector.<ColorSwap>;
      
      private var _SafeStr_226:_SafeCls_34;
      
      private var _SafeStr_2772:uint;
      
      internal var _SafeStr_143:_SafeCls_25;
      
      internal var _SafeStr_2395:int;
      
      private var _SafeStr_2650:Rectangle;
      
      internal var _SafeStr_233:Number;
      
      internal var _SafeStr_1424:uint;
      
      internal var _SafeStr_2489:Number;
      
      public function _SafeCls_25(param1:Game, param2:String, param3:uint, param4:uint, param5:uint, param6:_SafeCls_16, param7:uint = 4294967295, param8:_SafeCls_17 = null, param9:Boolean = false)
      {
         var _loc10_:_SafeCls_8 = null;
         super();
         this._SafeStr_118 = param1;
         this.mEntID = param3;
         if(!param9)
         {
            this.mTeam = this._SafeStr_118.mGameMode.mNumTeams == 0 ? param3 : uint(param3 % this._SafeStr_118.mGameMode.mNumTeams);
         }
         else
         {
            this.mTeam = param7 == uint.MAX_VALUE ? param3 : param7;
         }
         this._SafeStr_137 = param4;
         this._SafeStr_121 = 0;
         this.mPhysPosY = 0;
         this._SafeStr_152 = 0;
         this._SafeStr_162 = 0;
         this.mPhysCenterX = 0;
         this.mPhysCenterY = 0;
         this._SafeStr_215 = 0;
         this._SafeStr_193 = 0;
         this.mVelocityX = 0;
         this.mVelocityY = 0;
         this._SafeStr_197 = 0;
         this._SafeStr_181 = 0;
         this._SafeStr_395 = param2;
         this.mEntState = param5;
         this._SafeStr_1623 = param5;
         if(_SafeCls_1.flags & _SafeCls_1._SafeStr_1882)
         {
            this._SafeStr_234 = new MovieClip();
            this._SafeStr_118._SafeStr_156.addChild(this._SafeStr_234);
         }
         if(_SafeCls_1.flags & _SafeCls_1._SafeStr_1934)
         {
            this._SafeStr_612 = new MovieClip();
            this._SafeStr_118._SafeStr_156.addChild(this._SafeStr_612);
         }
         if(Boolean(_SafeCls_1.flags & _SafeCls_1._SafeStr_2163) && Boolean(param4 & BOT))
         {
            this.mDebugBotGfx = new MovieClip();
            this._SafeStr_118._SafeStr_156.addChild(this.mDebugBotGfx);
         }
         if(Boolean(param4 & LOCAL) && Boolean(param4 & _SafeStr_469))
         {
            this._SafeStr_132 = new _SafeCls_24(this._SafeStr_118,this);
         }
         else if(param4 & BOT)
         {
            this._SafeStr_585 = new _SafeCls_90(this._SafeStr_118,this);
         }
         if(!(param4 & (_SafeStr_252 | BOT | _SafeStr_413)) && param9)
         {
            this._SafeStr_143 = new _SafeCls_25(param1,param2,param3 + 1000000,_SafeStr_252,param5,param6,param7,param8,param9);
         }
         if(this._SafeStr_585)
         {
            this._SafeStr_585._SafeStr_2122();
         }
         this.mCombatState = new _SafeCls_26(this);
         this._SafeStr_3539(param6);
         if(!(this._SafeStr_137 & _SafeStr_252 && !(_SafeCls_1.flags & _SafeCls_1._SafeStr_1221)))
         {
            this._SafeStr_946(param8,false);
            this._SafeStr_508();
         }
         if(!(this._SafeStr_137 & _SafeStr_252))
         {
            this._SafeStr_531 = this._SafeStr_118.mGameMode._SafeStr_1667;
            this._SafeStr_284 = _SafeStr_1457;
            this._SafeStr_265 = 0;
            this._SafeStr_267 = true;
            if(!(param4 & (_SafeStr_906 | _SafeStr_589)) && this._SafeStr_118._SafeStr_161 && this._SafeStr_132 && Boolean(param4 & LOCAL))
            {
               this._SafeStr_118._SafeStr_161._SafeStr_3441(this);
            }
            this._SafeStr_154 = new SpawnBot(this._SafeStr_118,this,_SafeCls_6._SafeStr_416["SpawnBot1"].mWorldGfxType);
            if(this._SafeStr_118.level)
            {
               this._SafeStr_154._SafeStr_2753();
               if(param5 == _SafeStr_448 && Boolean(this._SafeStr_118.level._SafeStr_253))
               {
                  this._SafeStr_121 = this._SafeStr_118.level._SafeStr_253.x + this._SafeStr_118.level._SafeStr_253.width * 0.5;
                  this.mPhysPosY = this._SafeStr_118.level._SafeStr_253.y - 200;
               }
            }
            this.mGameStats = new _SafeCls_89(param1,this);
            _loc10_ = _SafeCls_8._SafeStr_848["SmokeTrailEffect"];
            this._SafeStr_282 = new TrailEffect(this._SafeStr_118,this,_loc10_);
            this._SafeStr_544 = new _SafeCls_92(this._SafeStr_118,this);
         }
      }
      
      public static function _SafeStr_2941(param1:_SafeCls_25, param2:_SafeCls_25) : Boolean
      {
         return param1.mTeam != param2.mTeam;
      }
      
      public function DestroyEntity(param1:Boolean) : void
      {
         this._SafeStr_144 = null;
         this._SafeStr_858 = null;
         this._SafeStr_118 = null;
         this._SafeStr_527 = null;
         this.mCurrSurface = null;
         this._SafeStr_473 = null;
         this._SafeStr_638 = null;
         this._SafeStr_2393 = null;
         if(this._SafeStr_154)
         {
            this._SafeStr_154._SafeStr_3111();
            this._SafeStr_154 = null;
         }
         if(this._SafeStr_585)
         {
            this._SafeStr_585._SafeStr_3399();
            this._SafeStr_585 = null;
         }
         if(this.mCombatState)
         {
            this.mCombatState._SafeStr_3051();
            this.mCombatState = null;
         }
         if(this._SafeStr_125)
         {
            this._SafeStr_125._SafeStr_201();
            this._SafeStr_125 = null;
         }
         if(this._SafeStr_132)
         {
            this._SafeStr_132._SafeStr_3481();
            this._SafeStr_132 = null;
         }
         if(Boolean(this._SafeStr_234) && Boolean(this._SafeStr_234.parent))
         {
            this._SafeStr_234.parent.removeChild(this._SafeStr_234);
         }
         this._SafeStr_234 = null;
         if(Boolean(this._SafeStr_612) && Boolean(this._SafeStr_612.parent))
         {
            this._SafeStr_612.parent.removeChild(this._SafeStr_612);
         }
         this._SafeStr_612 = null;
         if(Boolean(this.mDebugBotGfx) && Boolean(this.mDebugBotGfx.parent))
         {
            this.mDebugBotGfx.parent.removeChild(this.mDebugBotGfx);
         }
         this.mDebugBotGfx = null;
         if(Boolean(this._SafeStr_240) && Boolean(this._SafeStr_240.parent))
         {
            this._SafeStr_240.parent.removeChild(this._SafeStr_240);
         }
         this._SafeStr_240 = null;
         if(Boolean(this._SafeStr_337) && Boolean(this._SafeStr_337.parent))
         {
            this._SafeStr_337.parent.removeChild(this._SafeStr_337);
         }
         this._SafeStr_337 = null;
         if(Boolean(this._SafeStr_603) && Boolean(this._SafeStr_603.parent))
         {
            this._SafeStr_603.parent.removeChild(this._SafeStr_603);
         }
         this._SafeStr_603 = null;
         this._SafeStr_300 = null;
         this._SafeStr_267 = false;
         if(this._SafeStr_282)
         {
            this._SafeStr_282._SafeStr_2499();
         }
         this._SafeStr_282 = null;
         if(this._SafeStr_544)
         {
            this._SafeStr_544._SafeStr_3250();
         }
         this._SafeStr_544 = null;
         this._SafeStr_1877 = null;
         if(this._SafeStr_721)
         {
            this._SafeStr_721 = _SafeCls_13._SafeStr_750(this._SafeStr_721);
         }
         this._SafeStr_721 = null;
         if(this._SafeStr_226)
         {
            if(this._SafeStr_226.mMovieClip.parent)
            {
               this._SafeStr_226.mMovieClip.parent.removeChild(this._SafeStr_226.mMovieClip);
            }
            this._SafeStr_226._SafeStr_1252();
         }
         this._SafeStr_226 = null;
         if(Boolean(this._SafeStr_302) && Boolean(this._SafeStr_302.parent))
         {
            this._SafeStr_302.parent.removeChild(this._SafeStr_302);
         }
         this._SafeStr_302 = null;
         if(this.mGameStats)
         {
            this.mGameStats._SafeStr_3452();
         }
         this.mGameStats = null;
         if(this._SafeStr_143)
         {
            this._SafeStr_143.DestroyEntity(false);
         }
         this._SafeStr_143 = null;
      }
      
      public function _SafeStr_508() : void
      {
         var _loc6_:GfxType = null;
         var _loc3_:GfxType = null;
         if(this._SafeStr_125)
         {
            if(this._SafeStr_125._SafeStr_295)
            {
               _loc3_ = this._SafeStr_125._SafeStr_295._SafeStr_238._SafeStr_166;
            }
            this._SafeStr_125._SafeStr_201();
         }
         this._SafeStr_215 = this._SafeStr_152;
         this._SafeStr_193 = this._SafeStr_162 - this._SafeStr_144._SafeStr_163 * 0.5;
         var _loc4_:_SafeCls_6 = this.mCombatState.mEquippedItem ? this.mCombatState.mEquippedItem._SafeStr_151 : _SafeCls_6._SafeStr_722;
         var _loc5_:Vector.<CustomArt> = new Vector.<CustomArt>();
         if(_loc4_)
         {
            if(_loc4_._SafeStr_418)
            {
               _loc6_ = _loc4_._SafeStr_418.GetDuplicate();
               if(_loc4_._SafeStr_418._SafeStr_301)
               {
                  _loc5_ = _loc5_.concat(_loc4_._SafeStr_418._SafeStr_301);
               }
            }
            else if(_loc4_._SafeStr_1231)
            {
               _loc6_ = _SafeCls_6._SafeStr_703._SafeStr_418.GetDuplicate();
            }
            if(_loc4_._SafeStr_1297)
            {
               _loc5_.push(_loc4_._SafeStr_1297);
            }
         }
         if(!_loc6_)
         {
            _SafeCls_22._SafeStr_135("gfx type not found for entity");
            return;
         }
         this._SafeStr_203 = _loc6_.GetDuplicate();
         this._SafeStr_203._SafeStr_301 = _loc5_;
         _SafeCls_17._SafeStr_2313(this._SafeStr_144,this._SafeStr_203);
         if(this._SafeStr_140)
         {
            this._SafeStr_203._SafeStr_254 = this._SafeStr_203._SafeStr_254.concat(this._SafeStr_140);
         }
         var _loc7_:String = this._SafeStr_144.mDisplayName;
         if((Boolean(_loc7_)) && this._SafeStr_118.gameState == Game._SafeStr_513)
         {
            this._SafeStr_395 = _loc7_;
         }
         this._SafeStr_527 = this._SafeStr_203.GetDuplicate();
         this._SafeStr_527._SafeStr_180 = "a__HeadShotAnimation";
         this._SafeStr_527.baseAnim = "Ready";
         this._SafeStr_527.animScale *= 0.8;
         this._SafeStr_527._SafeStr_975 = 1.5;
         this._SafeStr_125 = new _SafeCls_40(this._SafeStr_118,this._SafeStr_203,true);
         this._SafeStr_125._SafeStr_120.x = this._SafeStr_152;
         this._SafeStr_125._SafeStr_120.y = this._SafeStr_162;
         if(this._SafeStr_137 & (_SafeStr_194 | BOT | _SafeStr_413))
         {
            this._SafeStr_118._SafeStr_164.addChildAt(this._SafeStr_125._SafeStr_120,0);
         }
         else
         {
            this._SafeStr_118._SafeStr_164.addChild(this._SafeStr_125._SafeStr_120);
         }
         this.mCombatState._SafeStr_733 = true;
         if(_loc3_)
         {
            this._SafeStr_125._SafeStr_1729(_loc3_);
         }
      }
      
      private function _SafeStr_3156(param1:Number) : void
      {
         this._SafeStr_1254 = this._SafeStr_1254 || (this._SafeStr_1254 || this.mbDropping != this._SafeStr_2652 || this.mbRunning != this._SafeStr_1235 || this.mbLeft != this._SafeStr_2544 || this.mEntState != this._SafeStr_1623 || this.mWallSliding != this.mWallSlidingLastFrame || this.mbAirborne != this.mbAirborneLastFrame);
         this._SafeStr_2108();
         var _loc2_:Number = this._SafeStr_1198 - this._SafeStr_121;
         var _loc3_:Number = this._SafeStr_1222 - this.mPhysPosY;
         var _loc4_:Number = param1 - this.mVelocityX;
         if(_loc2_ < -0.0001 || _loc2_ > 0.0001 || _loc3_ < -0.0001 || _loc3_ > 0.0001 || _loc4_ < -0.0001 || _loc4_ > 0.0001)
         {
            this._SafeStr_1872 = true;
         }
      }
      
      private function _SafeStr_2108() : void
      {
         this._SafeStr_2652 = this.mbDropping;
         this._SafeStr_1235 = this.mbRunning;
         this._SafeStr_3468 = this._SafeStr_275;
         this._SafeStr_2544 = this.mbLeft;
         this._SafeStr_3427 = this.mbBackpedal;
         this._SafeStr_1623 = this.mEntState;
         this.mWallSlidingLastFrame = this.mWallSliding;
         this.mbAirborneLastFrame = this.mbAirborne;
         this._SafeStr_2695 = this._SafeStr_335;
      }
      
      public function _SafeStr_3486() : Boolean
      {
         var _loc1_:Number = NaN;
         this._SafeStr_1865();
         this._SafeStr_1638();
         this._SafeStr_143._SafeStr_1638();
         this._SafeStr_1175();
         this._SafeStr_2108();
         if(this._SafeStr_137 & _SafeStr_578)
         {
            if(this.mEntState == _SafeStr_315)
            {
               _loc1_ = _SafeCls_47._SafeStr_821;
               _SafeStr_835.left = this._SafeStr_121 - _loc1_;
               _SafeStr_835.right = this._SafeStr_121 + _loc1_;
               _SafeStr_835.top = this.mPhysPosY - _loc1_;
               _SafeStr_835.bottom = this.mPhysPosY + _loc1_;
               if(this._SafeStr_118.mCamera._SafeStr_223.containsRect(_SafeStr_835))
               {
                  this._SafeStr_137 &= ~_SafeStr_578;
               }
            }
            else if(this.mEntState != _SafeStr_292)
            {
               this._SafeStr_137 &= ~_SafeStr_578;
            }
         }
         return true;
      }
      
      public function _SafeStr_3102() : Boolean
      {
         var _loc1_:Number = this.mVelocityX;
         if(this._SafeStr_132)
         {
            this._SafeStr_132._SafeStr_3416();
            if(this.IsMoveLocked())
            {
               this.mbRunning = false;
            }
            else
            {
               if(this._SafeStr_275 && Boolean(this._SafeStr_673))
               {
                  this.mbRunning = true;
               }
               else
               {
                  this.mbRunning = true;
                  if(this._SafeStr_132._SafeStr_590 && this._SafeStr_132._SafeStr_790)
                  {
                     this.mbLeft = this._SafeStr_132._SafeStr_886 > this._SafeStr_132._SafeStr_928;
                  }
                  else if(this._SafeStr_132._SafeStr_590)
                  {
                     this.mbLeft = true;
                  }
                  else if(this._SafeStr_132._SafeStr_790)
                  {
                     this.mbLeft = false;
                  }
                  else
                  {
                     this.mbRunning = false;
                  }
               }
               if(this._SafeStr_132._SafeStr_547 && !this._SafeStr_132._SafeStr_640 && this._SafeStr_118.mTimeThisTick - this._SafeStr_132._SafeStr_1310 >= _SafeStr_2044)
               {
                  this.mbDropping = true;
               }
               else if(!this._SafeStr_132._SafeStr_547)
               {
                  this.mbDropping = false;
               }
            }
         }
         this._SafeStr_1497 = this.mPhysPosY;
         this._SafeStr_1452 = this._SafeStr_121;
         this._SafeStr_753 = this.mVelocityX;
         this._SafeStr_970 = this.mVelocityY;
         this._SafeStr_1865();
         if(this._SafeStr_701 && !this._SafeStr_304(this._SafeStr_118.mTimeThisTick) && this._SafeStr_753 * this._SafeStr_753 + this._SafeStr_970 * this._SafeStr_970 > _SafeStr_1228)
         {
            this._SafeStr_753 = this.mVelocityX;
            this._SafeStr_970 = this.mVelocityY;
         }
         else if(this._SafeStr_2695)
         {
            this._SafeStr_753 = this.mVelocityX;
            this._SafeStr_970 = this.mVelocityY;
            this._SafeStr_1452 = this._SafeStr_121;
            this._SafeStr_1497 = this.mPhysPosY;
         }
         if(this._SafeStr_701)
         {
            this._SafeStr_118.mCamera._SafeStr_706(_SafeCls_47._SafeStr_1083);
         }
         this._SafeStr_1638();
         this._SafeStr_1541();
         this._SafeStr_2950();
         this._SafeStr_2773();
         this._SafeStr_1175();
         this._SafeStr_3092();
         this._SafeStr_3156(_loc1_);
         return true;
      }
      
      public function _SafeStr_3188() : Boolean
      {
         this._SafeStr_585.Think();
         this._SafeStr_1865();
         this._SafeStr_1638();
         if(this._SafeStr_118.IsPlayingWithoutServer())
         {
            this._SafeStr_1541();
            this._SafeStr_2773();
            this._SafeStr_2950();
         }
         this._SafeStr_1175();
         this._SafeStr_2108();
         this.mbDropping = false;
         return true;
      }
      
      private function _SafeStr_1865() : void
      {
         var _loc8_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc19_:Number = NaN;
         this._SafeStr_1222 = this.mPhysPosY;
         this._SafeStr_1198 = this._SafeStr_121;
         var _temp_1:* = this;
         this._SafeStr_2270 = false;
         _temp_1._SafeStr_1598 = false;
         var _loc1_:uint = this._SafeStr_118.mTimeThisTick;
         this._SafeStr_154._SafeStr_2613(_loc1_);
         this._SafeStr_2900();
         if(Boolean(this._SafeStr_143) && Boolean(_SafeCls_1.flags & _SafeCls_1._SafeStr_1221))
         {
            this._SafeStr_143._SafeStr_2900();
         }
         if(Boolean(this._SafeStr_143) && Boolean(this._SafeStr_137 & LOCAL))
         {
            this._SafeStr_143.mEntState = this.mEntState;
         }
         var _loc20_:* = this.mEntState;
         switch(false)
         {
            case _SafeStr_572:
               if(!this._SafeStr_300 || !this._SafeStr_300._SafeStr_267)
               {
                  this._SafeStr_300 = null;
                  this.mEntState = _SafeStr_244;
                  break;
               }
               if(Boolean(this.mCombatState.mActivePower) && this.mCombatState.mActivePower._SafeStr_122._SafeStr_664)
               {
                  this.mCombatState.mActivePower._SafeStr_3143();
                  this._SafeStr_300 = null;
                  this.mEntState = _SafeStr_244;
                  break;
               }
               var _loc2_:_SafeCls_25 = this._SafeStr_300.mOwnerEnt;
               var _loc3_:_SafeCls_28 = null;
               break;
            case _SafeStr_448:
               this._SafeStr_444 = 0;
               this._SafeStr_121 = this._SafeStr_118.level._SafeStr_253.x + this._SafeStr_118.level._SafeStr_253.width * 0.5;
               this.mPhysPosY = this._SafeStr_118.level._SafeStr_253.y - 200;
               this._SafeStr_529 = true;
               break;
            case _SafeStr_292:
               if(!this._SafeStr_154._SafeStr_1146(SpawnBot._SafeStr_523))
               {
                  this._SafeStr_137 |= _SafeStr_578;
                  while(true)
                  {
                     if(!this._SafeStr_154._SafeStr_1146(SpawnBot._SafeStr_230))
                     {
                        this._SafeStr_154._SafeStr_229(SpawnBot._SafeStr_230);
                     }
                  }
                  addr039d:
                  this._SafeStr_444 = 0;
                  this._SafeStr_1174 = 0;
                  break;
               }
               this._SafeStr_137 &= ~_SafeStr_578;
               this.mCombatState._SafeStr_993();
               this._SafeStr_897();
            case _SafeStr_913:
            case _SafeStr_315:
            case _SafeStr_441:
               if(!this._SafeStr_1174)
               {
                  this._SafeStr_1174 = _loc1_ + _SafeStr_2143;
               }
               if(this._SafeStr_1174 <= _loc1_ || this._SafeStr_275 || this.mCombatState.mActivePower || Boolean(this.mCombatState.mEquippedItem))
               {
                  this.mEntState = _SafeStr_244;
                  this._SafeStr_1174 = 0;
               }
            case _SafeStr_244:
               this._SafeStr_529 = false;
               var _loc12_:int = (this._SafeStr_118._SafeStr_227 + this._SafeStr_444) / _SafeStr_266;
               if(_loc12_)
               {
                  var _loc15_:uint = this._SafeStr_118.mTimeThisTick - this._SafeStr_118._SafeStr_2157;
                  var _loc10_:uint = uint(NaN);
                  var _loc11_:uint = this._SafeStr_118._SafeStr_2157 + 0 - 0;
               }
               var _loc9_:int = 0;
               if(Boolean(this._SafeStr_143) && (this._SafeStr_137 & _SafeStr_194 || this._SafeStr_304(_loc1_)))
               {
                  _loc16_ = this._SafeStr_143._SafeStr_121 + this._SafeStr_143.mVelocityX - (this._SafeStr_121 + this.mVelocityX);
                  _loc17_ = this._SafeStr_143.mPhysPosY + this._SafeStr_143.mVelocityY - (this.mPhysPosY + this.mVelocityY);
                  var _loc18_:uint = this._SafeStr_118.mTimeThisTick - this._SafeStr_1424;
                  _loc19_ = _loc18_ / _SafeCls_73._SafeStr_942;
                  if(_loc19_ > 1)
                  {
                     _loc19_ = 1;
                  }
                  this._SafeStr_849 = _loc16_ * _loc19_ * _SafeStr_266;
                  this._SafeStr_923 = _loc17_ * _loc19_ * _SafeStr_266;
               }
               else
               {
                  var _temp_14:* = this;
                  this._SafeStr_923 = _loc20_ = 0;
                  _temp_14._SafeStr_849 = false;
               }
               if(_loc1_ - this._SafeStr_1424 > _SafeCls_73._SafeStr_942)
               {
                  var _temp_15:* = this;
                  this._SafeStr_923 = _loc20_ = 0;
                  _temp_15._SafeStr_849 = false;
               }
               _loc13_ = this._SafeStr_118._SafeStr_227 - 0 * _SafeStr_266;
               this._SafeStr_444 += _loc13_;
               if(this._SafeStr_143)
               {
                  this._SafeStr_143._SafeStr_444 += _loc13_;
               }
               var _loc14_:Boolean = this.mbAirborne;
               this._SafeStr_2793();
               if(this._SafeStr_143)
               {
                  this._SafeStr_143._SafeStr_2793();
               }
               if(false != this.mbAirborne && !this._SafeStr_894 && !this.mCombatState._SafeStr_344 && !(this.mCombatState._SafeStr_1061 && this.mbAirborne) && !(this.mCombatState._SafeStr_2019 && !this.mbAirborne))
               {
                  if(this.mCombatState.mActivePower)
                  {
                     this._SafeStr_576 = true;
                     this.mCombatState.mActivePower._SafeStr_1683(true);
                  }
                  if(!this.mbAirborne)
                  {
                     this._SafeStr_118.PlaySoundAtPosition(this.mEntID,this.mCombatState._SafeStr_569(_SafeCls_26._SafeStr_1095),this._SafeStr_121,this.mPhysPosY);
                  }
                  else if(this._SafeStr_1130)
                  {
                     this._SafeStr_118.PlaySoundAtPosition(this.mEntID,this.mCombatState._SafeStr_569(_SafeCls_26._SafeStr_1115),this._SafeStr_121,this.mPhysPosY);
                     this.mCombatState._SafeStr_1157(_SafeCls_2.JUMP_CLOUD_POWER_1,this,null);
                  }
               }
               if(this.mWallSliding && !this.mWallSlidingLastFrame && this.mCombatState._SafeStr_344 && !this.mCombatState._SafeStr_996)
               {
                  this._SafeStr_897();
               }
               if(this.mWallSliding != this.mWallSlidingLastFrame)
               {
                  if(this.mWallSliding)
                  {
                     this._SafeStr_118.PlaySoundAtPosition(this.mEntID,this.mCombatState._SafeStr_569(_SafeCls_26._SafeStr_1095),this._SafeStr_121,this.mPhysPosY);
                     this._SafeStr_118.PlaySoundAtPosition(this.mEntID,this.mCombatState._SafeStr_569(_SafeCls_26._SafeStr_1403),this._SafeStr_121,this.mPhysPosY);
                  }
                  else if(this._SafeStr_1130)
                  {
                     this._SafeStr_118.PlaySoundAtPosition(this.mEntID,this.mCombatState._SafeStr_569(_SafeCls_26._SafeStr_1115),this._SafeStr_121,this.mPhysPosY);
                     this.mCombatState._SafeStr_1157(_SafeCls_2._SafeStr_1385,this,null);
                  }
               }
               if(this._SafeStr_300)
               {
                  this._SafeStr_300 = null;
               }
               this._SafeStr_2786 = this._SafeStr_809;
               break;
            default:
               _SafeCls_22._SafeStr_195("Unaccounted-for entity state " + this.mEntState + " for " + this.mEntID);
               break;
            case _SafeStr_2145:
         }
         this._SafeStr_319(this._SafeStr_121,this.mPhysPosY);
         if(this._SafeStr_143)
         {
            this._SafeStr_143._SafeStr_319(this._SafeStr_143._SafeStr_121,this._SafeStr_143.mPhysPosY);
         }
      }
      
      private function _SafeStr_2793() : void
      {
         var _loc1_:Boolean = this.mbAirborne;
         this.mbAirborne = this._SafeStr_473 == null;
         if(!_loc1_ || Boolean(this.mWallSliding))
         {
            this.mCurrentAerialJumpCount = 0;
            this.mCombatState._SafeStr_2571();
         }
         if(!this.mbAirborne)
         {
            this._SafeStr_1598 = this.mbRunning && !this._SafeStr_1235;
            this._SafeStr_2270 = this._SafeStr_1235 && !this.mbRunning;
            if(this._SafeStr_137 & LOCAL)
            {
               this._SafeStr_132._SafeStr_1524 = false;
            }
         }
         if(this.mEntState == _SafeStr_244 && !this.mbAirborne && this._SafeStr_304(this._SafeStr_118.mTimeThisTick) && (_loc1_ || this._SafeStr_473 && this.mVelocityY > _SafeStr_510))
         {
            this._SafeStr_1598 = false;
            this._SafeStr_1358(this.mCurrSurface);
            this.mCurrSurface = null;
            this._SafeStr_701 = true;
            this._SafeStr_473 = null;
         }
      }
      
      private function _SafeStr_2900() : void
      {
         var _loc1_:uint = 0;
         if(this.mEntState == _SafeStr_441)
         {
            if(this._SafeStr_125._SafeStr_604 && int(this._SafeStr_118.mTimeThisTick / 100) % 3 > 0)
            {
               this._SafeStr_125._SafeStr_1105();
            }
            else if(int(this._SafeStr_118.mTimeThisTick / 100) % 3 == 0)
            {
               this._SafeStr_125._SafeStr_795(16777215,6710886);
            }
         }
         else if(this._SafeStr_275)
         {
            this._SafeStr_125._SafeStr_795(16777215,3355443);
         }
         else if(Boolean(this._SafeStr_137 & LOCAL) && this.mCurrentAerialJumpCount >= this.mCombatState.mbcJumpCount)
         {
            this._SafeStr_125._SafeStr_795(12303291,1118481);
         }
         else if(Boolean(this._SafeStr_1116) && this._SafeStr_118.mTimeThisTick - this._SafeStr_1116 <= _SafeStr_1842)
         {
            _loc1_ = this.mCombatState._SafeStr_3319(this);
            this._SafeStr_125._SafeStr_795(_SafeCls_26._SafeStr_2337[_loc1_],_SafeCls_26._SafeStr_2129[_loc1_]);
         }
         else
         {
            this._SafeStr_125._SafeStr_1105();
         }
         if(this._SafeStr_137 & _SafeStr_252)
         {
            this._SafeStr_125._SafeStr_120.alpha = 0.5;
         }
      }
      
      private function _SafeStr_2528(param1:uint) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:_SafeCls_20 = null;
         var _loc16_:_SafeCls_20 = null;
         var _loc17_:Number = NaN;
         var _loc18_:_SafeCls_20 = null;
         var _loc19_:Boolean = false;
         var _loc20_:_SafeCls_20 = null;
         var _loc2_:Number = _SafeStr_510 * this.mCombatState._SafeStr_2926;
         if(Boolean(this._SafeStr_638) && this._SafeStr_638._SafeStr_1626)
         {
            this._SafeStr_121 += this._SafeStr_638._SafeStr_198 - this._SafeStr_638._SafeStr_1651;
            this._SafeStr_638 = null;
         }
         else if(Boolean(this.mCurrSurface) && this.mCurrSurface._SafeStr_1626)
         {
            this._SafeStr_121 += this.mCurrSurface._SafeStr_198 - this.mCurrSurface._SafeStr_1651;
            this.mPhysPosY += this.mCurrSurface._SafeStr_261 - this.mCurrSurface._SafeStr_2135;
         }
         var _loc3_:uint = uint(_SafeCls_0._SafeStr_179 | _SafeCls_0._SafeStr_291);
         var _loc4_:* = this._SafeStr_473 != null;
         if(_loc4_)
         {
            this._SafeStr_1047 = true;
            if(!this._SafeStr_335 && !this.mCombatState._SafeStr_1069)
            {
               this.mVelocityY = 0;
            }
            this.mCurrentAerialJumpCount = 0;
         }
         if(this.mVelocityX)
         {
            this.mVelocityX = this._SafeStr_2965(this.mVelocityX);
         }
         if(!this._SafeStr_894 && (this.mbDropping || this._SafeStr_1300 && this._SafeStr_181 > 50))
         {
            _loc3_ = _SafeCls_0._SafeStr_179;
            if(Boolean(this.mCurrSurface) && this.mCurrSurface.type == _SafeCls_0._SafeStr_291)
            {
               this.mCurrSurface = null;
               if(this.mbDropping)
               {
                  this._SafeStr_181 += _SafeStr_1925;
               }
               else
               {
                  this._SafeStr_181 *= _SafeStr_779;
               }
               this._SafeStr_1978 = true;
            }
         }
         if(!this.IsMoveLocked())
         {
            if(this.mbRunning)
            {
               _loc11_ = _SafeStr_2029 * this.mCombatState._SafeStr_2884;
               _loc12_ = this.mbAirborne ? _SafeStr_2311 : _SafeStr_1394;
               if(this.mbLeft)
               {
                  if(this.mVelocityX > -_loc11_)
                  {
                     this.mVelocityX -= _loc12_ * _SafeStr_266;
                  }
                  if(this.mVelocityX < -_loc11_ && !this.mbAirborne)
                  {
                     this.mVelocityX = -_loc11_;
                  }
               }
               else
               {
                  if(this.mVelocityX < _loc11_)
                  {
                     this.mVelocityX += _loc12_ * _SafeStr_266;
                  }
                  if(this.mVelocityX > _loc11_ && !this.mbAirborne)
                  {
                     this.mVelocityX = _loc11_;
                  }
               }
            }
         }
         if(!this.mbAirborne || Boolean(this.mWallSliding))
         {
            this._SafeStr_2109 = _SafeStr_1291;
         }
         if(Boolean(this._SafeStr_673) && param1 - this._SafeStr_673 >= this._SafeStr_2109)
         {
            this._SafeStr_673 = 0;
            this._SafeStr_883 = false;
         }
         if(this._SafeStr_275)
         {
            if(param1 - this._SafeStr_673 >= _SafeStr_1805)
            {
               this._SafeStr_275 = false;
               if(!this._SafeStr_883)
               {
                  this.mVelocityX = 0;
                  this.mVelocityY = 0;
                  this._SafeStr_883 = true;
               }
            }
            else if(param1 >= this._SafeStr_673)
            {
               this.mVelocityX = 0;
               this.mVelocityY = 0;
               _loc13_ = this.mbAirborne ? this.mCombatState._SafeStr_1929 : this.mCombatState._SafeStr_2137;
               if((Boolean(this._SafeStr_192 & _SafeCls_24._SafeStr_268) || Boolean(this._SafeStr_192 & _SafeCls_24._SafeStr_236)) && (Boolean(this._SafeStr_192 & _SafeCls_24._SafeStr_220) || Boolean(this._SafeStr_192 & _SafeCls_24._SafeStr_221)))
               {
                  _loc13_ /= Math.SQRT2;
               }
               this._SafeStr_197 = this._SafeStr_192 & _SafeCls_24._SafeStr_220 ? -_loc13_ : (this._SafeStr_192 & _SafeCls_24._SafeStr_221 ? _loc13_ : 0);
               if(_loc13_ < 0)
               {
                  _loc13_ = -_loc13_;
               }
               this._SafeStr_181 = this._SafeStr_192 & _SafeCls_24._SafeStr_268 ? -_loc13_ : (this._SafeStr_192 & _SafeCls_24._SafeStr_236 ? _loc13_ : 0);
            }
         }
         this.mVelocityX += this._SafeStr_197;
         if(this.mCurrSurface)
         {
            _loc14_ = (this.mVelocityX + this._SafeStr_849) * _SafeStr_266;
            while(_loc14_)
            {
               _SafeStr_780.x = this.mCurrSurface._SafeStr_235 - this.mCurrSurface._SafeStr_198;
               _SafeStr_780.y = this.mCurrSurface._SafeStr_306 - this.mCurrSurface._SafeStr_261;
               _SafeStr_780.normalize(_loc14_);
               _SafeStr_401.x = _SafeStr_780.x;
               _SafeStr_401.y = _SafeStr_780.y;
               _SafeStr_1038.x = this._SafeStr_121 + _SafeStr_401.x;
               _SafeStr_1038.y = this.mPhysPosY + _SafeStr_401.y;
               _loc15_ = this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_121,this.mPhysPosY,_SafeStr_401,_SafeStr_1038,this.mCurrSurface,null,null,_loc3_,0);
               this._SafeStr_121 += _SafeStr_401.x;
               this.mPhysPosY += _SafeStr_401.y;
               if(!_loc15_)
               {
                  if(!this._SafeStr_304(param1))
                  {
                     _SafeStr_1056.x = 0;
                     _SafeStr_1056.y = _SafeStr_1343;
                     _loc16_ = this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_121,this.mPhysPosY,_SafeStr_1056,_SafeStr_1038,null,null,null,_loc3_,0);
                     if((Boolean(_loc16_)) && _loc16_ != this.mCurrSurface)
                     {
                        if(_SafeStr_1056.y < _SafeStr_1920)
                        {
                           this._SafeStr_181 += _SafeStr_1343;
                        }
                     }
                  }
                  break;
               }
               this.mCurrSurface = _loc15_;
               if(this.mCurrSurface._SafeStr_198 == this.mCurrSurface._SafeStr_235)
               {
                  if(!this._SafeStr_275 && this._SafeStr_304(param1))
                  {
                     this._SafeStr_701 = true;
                     this._SafeStr_1358(this.mCurrSurface);
                  }
                  else
                  {
                     this._SafeStr_809 = true;
                     this.mVelocityX = this.mVelocityX > 2 ? 2 : (this.mVelocityX < -2 ? -2 : this.mVelocityX);
                     this._SafeStr_121 = this.mCurrSurface._SafeStr_198;
                  }
               }
               _SafeStr_436.x = _SafeStr_401.x;
               _SafeStr_436.y = _SafeStr_401.y;
               _SafeStr_436.normalize(_SafeStr_628);
               this._SafeStr_121 -= _SafeStr_436.x;
               this.mPhysPosY -= _SafeStr_436.y;
               _loc14_ -= _SafeStr_401.length * (Math.abs(_loc14_) / _loc14_);
               if(_loc15_._SafeStr_235 - _loc15_._SafeStr_198 < 0.01)
               {
                  break;
               }
            }
         }
         this.mVelocityY += this._SafeStr_181;
         if(this._SafeStr_304(param1) && !this._SafeStr_1300)
         {
            if(this.mVelocityY > _SafeStr_386)
            {
               this.mVelocityY -= (_SafeStr_1153 * this.mCombatState._SafeStr_1650 + _loc2_) * _SafeStr_266;
            }
            else if(this.mVelocityY < -_SafeStr_386)
            {
               this.mVelocityY += _SafeStr_1153 * this.mCombatState._SafeStr_1650 * _SafeStr_266;
            }
         }
         if(!this._SafeStr_275 && !_loc4_ && !(this._SafeStr_488 && this._SafeStr_488 > param1) && !this.mCombatState._SafeStr_391)
         {
            this.mVelocityY += _loc2_ * _SafeStr_266;
         }
         if(this._SafeStr_894 || this._SafeStr_335 || this._SafeStr_275)
         {
            if(this.mVelocityY > _SafeStr_281)
            {
               this.mVelocityY = _SafeStr_281;
            }
            else if(this.mVelocityY < -_SafeStr_281)
            {
               this.mVelocityY = -_SafeStr_281;
            }
         }
         else if(this.mbDropping && this.mVelocityY > 0)
         {
            if(this.mVelocityY > _SafeStr_1464)
            {
               this.mVelocityY = _SafeStr_1464;
            }
         }
         else if(this.mVelocityY > _SafeStr_1689)
         {
            this.mVelocityY = _SafeStr_1689;
         }
         else if(this.mVelocityY < -_SafeStr_281)
         {
            this.mVelocityY = -_SafeStr_281;
         }
         if(this.mVelocityX > _SafeStr_281)
         {
            this.mVelocityX = _SafeStr_281;
         }
         else if(this.mVelocityX < -_SafeStr_281)
         {
            this.mVelocityX = -_SafeStr_281;
         }
         _SafeStr_331.x = (this.mVelocityX + this._SafeStr_849) * _SafeStr_266;
         _SafeStr_331.y = (this.mVelocityY + this._SafeStr_923) * _SafeStr_266;
         if(this.mCurrSurface)
         {
            _SafeStr_331.x = 0;
            _SafeStr_331.y += _SafeStr_628 * 2;
         }
         _SafeStr_219.x = _SafeStr_331.x;
         _SafeStr_219.y = _SafeStr_331.y;
         _SafeStr_403.x = this._SafeStr_121 + _SafeStr_219.x;
         _SafeStr_403.y = this.mPhysPosY + _SafeStr_219.y;
         var _loc5_:_SafeCls_20 = this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_121,this.mPhysPosY,_SafeStr_219,_SafeStr_403,null,null,null,_loc3_,0);
         var _loc7_:_SafeCls_20 = null;
         _SafeStr_363.x = _SafeStr_331.x;
         _SafeStr_363.y = _SafeStr_331.y;
         _SafeStr_667.x = this._SafeStr_121 + _SafeStr_363.x;
         _SafeStr_667.y = this.mPhysPosY + _SafeStr_363.y;
         var _loc8_:_SafeCls_20 = null;
         _loc7_ = this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_121,this.mPhysPosY - _SafeStr_884,_SafeStr_363,_SafeStr_667,null,null,null,_SafeCls_0._SafeStr_179,0);
         if((_loc7_) && _SafeStr_363.length && _SafeStr_363.length < _SafeStr_219.length)
         {
            _SafeStr_219.x = _SafeStr_363.x;
            _SafeStr_219.y = _SafeStr_363.y;
            _SafeStr_403.x = _SafeStr_667.x;
            _SafeStr_403.y = _SafeStr_667.y;
            if(_loc7_._SafeStr_198 != _loc7_._SafeStr_235)
            {
               if(this._SafeStr_304(param1))
               {
                  this._SafeStr_1358(_loc7_);
                  this._SafeStr_701 = true;
               }
               else
               {
                  if(this.mVelocityY < _loc2_ * _SafeStr_266)
                  {
                     this.mVelocityY = _loc2_ * _SafeStr_266;
                  }
                  _loc17_ = _SafeStr_331.length - _SafeStr_219.length;
                  _loc17_ = _loc17_ + _SafeStr_628;
                  _SafeStr_219.x = 0;
                  _SafeStr_219.y = _loc17_;
                  if(this._SafeStr_132)
                  {
                     this._SafeStr_132._SafeStr_1524 = true;
                  }
               }
            }
         }
         else
         {
            _SafeStr_363.x = 0;
            _SafeStr_363.y = -_SafeStr_884;
            _loc8_ = this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_121,this.mPhysPosY,_SafeStr_363,_SafeStr_667,null,null,null,_SafeCls_0._SafeStr_179,0);
            if((Boolean(_loc8_)) && _loc8_._SafeStr_198 != _loc8_._SafeStr_235)
            {
               _SafeStr_219.x = 0;
               _SafeStr_219.y = _SafeStr_331.length;
               this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_121,this.mPhysPosY,_SafeStr_219,_SafeStr_403,null,null,null,_loc3_,0);
               _loc5_ = null;
            }
         }
         this.mCurrSurface = _loc5_;
         if(!(this.mCurrSurface && this.mCurrSurface._SafeStr_199.y < 0) && !_loc8_ && !(this._SafeStr_137 & _SafeCls_25.BOT))
         {
            _SafeStr_591.x = _SafeStr_331.x;
            _SafeStr_591.y = _SafeStr_331.y;
            _SafeStr_403.x = this._SafeStr_121 + _SafeStr_591.x;
            _SafeStr_403.y = this.mPhysPosY + _SafeStr_591.y;
            _loc18_ = this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_121,this.mPhysPosY - _SafeStr_884 * 0.5,_SafeStr_591,_SafeStr_403,null,null,null,_SafeCls_0._SafeStr_179,0);
            if((Boolean(_loc18_)) && _loc18_._SafeStr_198 == _loc18_._SafeStr_235)
            {
               this.mCurrSurface = _loc18_;
               _SafeStr_219.x = _SafeStr_591.x;
               _SafeStr_219.y = _SafeStr_591.y;
            }
         }
         this._SafeStr_121 += _SafeStr_219.x;
         this.mPhysPosY += _SafeStr_219.y;
         if(this.mPhysPosY < this._SafeStr_118.mCamera._SafeStr_188.top - _SafeStr_1801)
         {
            this.mPhysPosY = this._SafeStr_118.mCamera._SafeStr_188.top - _SafeStr_1801;
         }
         var _loc9_:* = this.mWallSliding != _SafeStr_1088;
         this.mWallSliding = _SafeStr_1088;
         this._SafeStr_473 = null;
         if(this.mCurrSurface)
         {
            _SafeStr_767.x = _SafeStr_219.x;
            _SafeStr_767.y = _SafeStr_219.y;
            _SafeStr_767.normalize(_SafeStr_628);
            this._SafeStr_121 -= _SafeStr_767.x;
            this.mPhysPosY -= _SafeStr_767.y;
            if(this.mCurrSurface._SafeStr_198 == this.mCurrSurface._SafeStr_235 && !(this.mCurrSurface.type & Game._SafeStr_1505))
            {
               _loc19_ = false;
               if(!this._SafeStr_275 && this._SafeStr_304(param1))
               {
                  _loc19_ = true;
               }
               else if(this.mbAirborne)
               {
                  this.mWallSliding = this.mCurrSurface._SafeStr_198 <= this._SafeStr_121 ? uint(_SafeStr_730) : uint(_SafeStr_843);
                  if(!_loc9_ && this.mVelocityY > 0)
                  {
                     this.mVelocityY = 0;
                  }
                  if(this._SafeStr_1047 && Boolean(this.mCurrSurface.type & Game._SafeStr_1338))
                  {
                     if(!this._SafeStr_488)
                     {
                        this._SafeStr_488 = param1 + _SafeStr_2301;
                     }
                     else if(this._SafeStr_488 > param1)
                     {
                        this.mVelocityY = 0;
                     }
                     else
                     {
                        this._SafeStr_1047 = false;
                        this._SafeStr_488 = 0;
                     }
                  }
                  else if(this.mVelocityY > _loc2_ * _SafeStr_1713)
                  {
                     this.mVelocityY -= _loc2_ * _SafeStr_1713 * _SafeStr_266;
                  }
               }
               if(_loc19_)
               {
                  this._SafeStr_701 = true;
                  this._SafeStr_1358(this.mCurrSurface);
                  _SafeStr_219.x = this.mVelocityX * _SafeStr_266;
               }
               else
               {
                  _SafeStr_219.x = 0;
                  if(!this._SafeStr_2138)
                  {
                     this.mVelocityX = this.mWallSliding == _SafeStr_730 ? -_SafeStr_1502 : _SafeStr_1502;
                  }
               }
               _SafeStr_219.y = this.mVelocityY * _SafeStr_266;
               _loc20_ = this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_121,this.mPhysPosY,_SafeStr_219,_SafeStr_403,null,null,null,_loc3_,0);
               this._SafeStr_121 += _SafeStr_219.x;
               this.mPhysPosY += _SafeStr_219.y;
               if(!_loc20_)
               {
                  this._SafeStr_638 = this.mCurrSurface;
               }
               else
               {
                  this.mPhysPosY -= _SafeStr_628;
                  this._SafeStr_638 = null;
               }
               this.mCurrSurface = _loc20_;
            }
            if(this.mCurrSurface)
            {
               if(this.mCurrSurface._SafeStr_199.y < 0)
               {
                  this._SafeStr_473 = this.mCurrSurface;
               }
               else
               {
                  var _temp_42:* = this;
                  this.mCurrSurface = null;
                  _temp_42._SafeStr_473 = null;
                  this.mPhysPosY += _SafeStr_628 + _SafeStr_628;
               }
            }
         }
         else
         {
            if(this._SafeStr_1047 && this._SafeStr_488 && this._SafeStr_488 > param1)
            {
               this._SafeStr_1047 = false;
            }
            this._SafeStr_488 = 0;
            this._SafeStr_2138 = false;
         }
         this._SafeStr_197 = 0;
         this._SafeStr_181 = 0;
         var _loc10_:Rectangle = this._SafeStr_118.mCamera._SafeStr_188;
         if((Boolean(_loc10_)) && (Math.abs(_SafeCls_19._SafeStr_546(_loc10_.right,_loc10_.left,this._SafeStr_121) - this._SafeStr_121) > _SafeStr_634 || this.mPhysPosY - _loc10_.bottom > _SafeStr_634 || this._SafeStr_304(param1) && _loc10_.top - this.mPhysPosY > _SafeStr_634))
         {
            this._SafeStr_1436 = true;
         }
      }
      
      public function _SafeStr_2206() : void
      {
         var _loc3_:_SafeCls_2 = null;
         this._SafeStr_1130 = true;
         var _loc1_:Boolean = true;
         var _loc2_:Number = this.mCombatState._SafeStr_2935 * (this._SafeStr_2922 ? 0.65 : 1);
         if(this._SafeStr_3003)
         {
            _loc2_ *= 0.8;
         }
         if(this.mCurrSurface)
         {
            this.mCurrSurface = null;
            this._SafeStr_181 -= _SafeStr_2268 * _loc2_;
            if(this._SafeStr_2786)
            {
               this._SafeStr_197 += this.mbLeft ? _SafeStr_950 / 2 : -_SafeStr_950 / 2;
               this.mVelocityX = 0;
            }
            else if(this.mbRunning)
            {
               this._SafeStr_197 += this.mbLeft ? -_SafeStr_1014 : _SafeStr_1014;
               this.mVelocityX = 0;
            }
         }
         else if(this.mWallSliding)
         {
            this.mCurrSurface = null;
            this._SafeStr_181 -= _SafeStr_2369 * _loc2_;
            this.mVelocityY = this.mVelocityX = 0;
            if(!this.mbRunning)
            {
               this.mbLeft = this._SafeStr_182;
            }
            if(this.mWallSliding == _SafeStr_730)
            {
               this._SafeStr_197 += _SafeStr_950 * (this.mbLeft ? 0.9 : 1);
            }
            else
            {
               this._SafeStr_197 -= _SafeStr_950 * (this.mbLeft ? 1 : 0.9);
            }
         }
         else if(this.mCurrentAerialJumpCount < this.mCombatState.mbcJumpCount || Boolean(this._SafeStr_137 & _SafeStr_194))
         {
            this.mVelocityY = 0;
            this._SafeStr_181 -= _SafeStr_1260 * (1 - this.mCurrentAerialJumpCount * _SafeStr_1960) * _loc2_;
            ++this.mCurrentAerialJumpCount;
            if(this.mbRunning && this.mbLeft)
            {
               this._SafeStr_197 -= _SafeStr_1014;
               this.mVelocityX = 0;
            }
            if(this.mbRunning && !this.mbLeft)
            {
               this._SafeStr_197 += _SafeStr_1014;
               this.mVelocityX = 0;
            }
            if(!(this._SafeStr_137 & _SafeStr_252))
            {
               this._SafeStr_118.PlaySoundAtPosition(this.mEntID,this.mCombatState._SafeStr_569(_SafeCls_26._SafeStr_1398),this._SafeStr_121,this.mPhysPosY);
               if(this.mCurrentAerialJumpCount >= this.mCombatState.mbcJumpCount)
               {
                  _loc3_ = _SafeCls_2.JUMP_CLOUD_POWER_3;
               }
               else
               {
                  _loc3_ = _SafeCls_2.JUMP_CLOUD_POWER_2;
               }
               if(_loc3_)
               {
                  this.mCombatState._SafeStr_1157(_loc3_,this,null);
               }
            }
         }
         else
         {
            _loc1_ = false;
            if(!(this._SafeStr_137 & LOCAL))
            {
            }
         }
         this.mbJumping = false;
         if(_loc1_ && this._SafeStr_137 & LOCAL && !this._SafeStr_118.IsPlayingWithoutServer() && Boolean(this._SafeStr_118._SafeStr_161))
         {
            this._SafeStr_118._SafeStr_161._SafeStr_3391(this);
         }
      }
      
      public function _SafeStr_1843() : void
      {
         this._SafeStr_275 = true;
         this._SafeStr_673 = this._SafeStr_118.mTimeThisTick + (this.mbAirborne ? this.mCombatState._SafeStr_1367 : this.mCombatState._SafeStr_1791);
         this.mVelocityY = 0;
         this.mVelocityX = 0;
         this._SafeStr_2109 = this.mbAirborne ? _SafeStr_2305 : _SafeStr_1291;
         if(this._SafeStr_132)
         {
            this._SafeStr_192 = this._SafeStr_132._SafeStr_192;
            this._SafeStr_132._SafeStr_192 = _SafeCls_24._SafeStr_329;
            if(!this._SafeStr_192 || this.mbAirborne)
            {
               if(this._SafeStr_132._SafeStr_590 && !(this._SafeStr_192 & _SafeCls_24._SafeStr_221))
               {
                  this._SafeStr_192 |= _SafeCls_24._SafeStr_220;
               }
               else if(this._SafeStr_132._SafeStr_790 && !(this._SafeStr_192 & _SafeCls_24._SafeStr_220))
               {
                  this._SafeStr_192 |= _SafeCls_24._SafeStr_221;
               }
               if(this._SafeStr_132._SafeStr_547)
               {
                  this._SafeStr_192 = this.mbAirborne ? uint(this._SafeStr_192 | _SafeCls_24._SafeStr_236) : _SafeCls_24._SafeStr_236;
               }
               if(!this._SafeStr_192)
               {
                  this._SafeStr_192 = this._SafeStr_182 ? _SafeCls_24._SafeStr_220 : _SafeCls_24._SafeStr_221;
               }
            }
            if(!this.mbAirborne && this._SafeStr_192 != _SafeCls_24._SafeStr_236)
            {
               this.mbLeft = !this.mbLeft;
            }
            if(this.mWallSliding == _SafeStr_730 || this._SafeStr_809 && !this._SafeStr_182)
            {
               this._SafeStr_192 &= ~_SafeCls_24._SafeStr_220;
               this._SafeStr_192 |= _SafeCls_24._SafeStr_221;
            }
            else if(this.mWallSliding == _SafeStr_843 || this._SafeStr_809 && this._SafeStr_182)
            {
               this._SafeStr_192 &= ~_SafeCls_24._SafeStr_221;
               this._SafeStr_192 |= _SafeCls_24._SafeStr_220;
            }
         }
         this._SafeStr_118.PlaySoundAtPosition(this.mEntID,this.mCombatState._SafeStr_569(_SafeCls_26._SafeStr_1544),this._SafeStr_215,this._SafeStr_193);
      }
      
      public function _SafeStr_2831() : Boolean
      {
         return true;
      }
      
      public function _SafeStr_3074(param1:Number) : Boolean
      {
         if(param1 < 0)
         {
            return true;
         }
         var _loc2_:_SafeCls_20 = this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_121,this.mPhysPosY,new Point(0,param1),new Point(),null,null,null,_SafeCls_0._SafeStr_291 | _SafeCls_0._SafeStr_179,0);
         return !_loc2_;
      }
      
      private function _SafeStr_1638() : void
      {
         var _loc6_:Number = NaN;
         if(!(this._SafeStr_137 & _SafeStr_252) && this.mEntState == _SafeStr_292)
         {
            this._SafeStr_125._SafeStr_120.visible = false;
            return;
         }
         var _loc1_:Boolean = this._SafeStr_182;
         if(!this._SafeStr_550)
         {
            this._SafeStr_182 = this.mbLeft != this._SafeStr_809 && this.mWallSliding == _SafeStr_1088 || this.mWallSliding == _SafeStr_843;
         }
         if(Boolean(this._SafeStr_137 & _SafeStr_252) && !(_SafeCls_1.flags & _SafeCls_1._SafeStr_1221))
         {
            return;
         }
         this._SafeStr_125._SafeStr_120.scaleX = this._SafeStr_182 == this._SafeStr_125._SafeStr_238._SafeStr_166._SafeStr_875 ? 1 : -1;
         this._SafeStr_304(this._SafeStr_118.mTimeThisTick);
         var _loc2_:* = this.mVelocityX * this.mVelocityX + this.mVelocityY * this.mVelocityY > _SafeStr_1228;
         var _loc3_:uint = 0;
         if(this.mEntState == _SafeStr_315)
         {
            _loc3_ |= this._SafeStr_529 ? _SafeCls_88._SafeStr_1170 : _SafeCls_88._SafeStr_698;
         }
         else if(this._SafeStr_1623 == _SafeStr_315)
         {
            _loc3_ |= _SafeCls_88._SafeStr_1289;
         }
         else if(this.mEntState == _SafeStr_572)
         {
            _loc3_ |= _SafeCls_88._SafeStr_771;
         }
         if(this.mbRunning && !this.mbAirborne)
         {
            _loc3_ |= _SafeCls_88._SafeStr_621;
         }
         if(this.mbDropping && !this.mCurrSurface)
         {
            _loc3_ |= _SafeCls_88._SafeStr_648;
         }
         if(this._SafeStr_1130)
         {
            _loc3_ |= _SafeCls_88._SafeStr_752 | _SafeCls_88._SafeStr_1345;
            this._SafeStr_410 = false;
            this._SafeStr_576 = false;
            this._SafeStr_1130 = false;
         }
         if(this.mbAirborne)
         {
            if(this._SafeStr_410)
            {
               if(this.mEntState == _SafeStr_441)
               {
                  _loc3_ |= _SafeCls_88._SafeStr_1580;
               }
               else if(_loc2_ && this.mEntState == _SafeStr_244)
               {
                  _loc3_ |= _SafeCls_88._SafeStr_754;
               }
               else
               {
                  _loc3_ |= _SafeCls_88._SafeStr_468;
               }
            }
            else
            {
               _loc3_ |= _SafeCls_88._SafeStr_468;
            }
         }
         else if(this._SafeStr_410)
         {
            _loc3_ |= _SafeCls_88._SafeStr_1143;
            this._SafeStr_410 = false;
            this._SafeStr_576 = false;
            if(this._SafeStr_137 & LOCAL)
            {
               this._SafeStr_118.mCamera._SafeStr_706((_SafeCls_47._SafeStr_1083 + _SafeCls_47._SafeStr_1716) / 2);
            }
         }
         else if(this._SafeStr_576 || this.mbAirborneLastFrame)
         {
            _loc3_ |= _SafeCls_88._SafeStr_1143;
            this._SafeStr_576 = false;
         }
         if(this._SafeStr_1598)
         {
            _loc3_ |= _SafeCls_88._SafeStr_1447;
         }
         if(this._SafeStr_2270)
         {
            _loc3_ |= _SafeCls_88._SafeStr_1459;
         }
         if(this._SafeStr_182 != _loc1_)
         {
            _loc3_ |= _SafeCls_88._SafeStr_971;
         }
         if(this._SafeStr_2237)
         {
            _loc3_ |= _SafeCls_88._SafeStr_1672;
            this._SafeStr_2237 = false;
         }
         if(Boolean(this.mWallSliding) && !this._SafeStr_550)
         {
            _loc3_ |= _SafeCls_88._SafeStr_1360;
            this._SafeStr_410 = false;
            this._SafeStr_576 = false;
         }
         if(this._SafeStr_809)
         {
            _loc3_ |= _SafeCls_88._SafeStr_1573;
            this._SafeStr_809 = false;
         }
         if(this._SafeStr_1978)
         {
            _loc3_ |= _SafeCls_88._SafeStr_1594;
            this._SafeStr_1978 = false;
         }
         if(this._SafeStr_275)
         {
            _loc3_ |= _SafeCls_88.DODGE;
            this._SafeStr_410 = false;
            this._SafeStr_576 = false;
            if(this._SafeStr_192 == _SafeCls_24._SafeStr_236)
            {
               _loc3_ |= _SafeCls_88._SafeStr_648;
            }
         }
         if(this._SafeStr_2165)
         {
            _loc3_ |= _SafeCls_88._SafeStr_1406;
         }
         if(this._SafeStr_701)
         {
            _loc3_ |= _SafeCls_88._SafeStr_754 | _SafeCls_88._SafeStr_752;
            this._SafeStr_701 = false;
            this._SafeStr_410 = true;
            this._SafeStr_576 = false;
         }
         if(this._SafeStr_1300)
         {
            if(_loc2_)
            {
               _loc3_ |= _SafeCls_88._SafeStr_754 | _SafeCls_88._SafeStr_752;
            }
            else
            {
               _loc3_ |= this._SafeStr_2348 ? _SafeCls_88.HIT_REACT2 : _SafeCls_88._SafeStr_771;
            }
            this._SafeStr_1300 = false;
            this._SafeStr_410 = true;
            this._SafeStr_576 = false;
         }
         else if(this._SafeStr_335 && !this.mbAirborne)
         {
            _loc3_ |= this._SafeStr_2348 ? _SafeCls_88.HIT_REACT2 : _SafeCls_88._SafeStr_771;
         }
         if(_loc3_ & _SafeCls_88._SafeStr_754 && !this._SafeStr_550 && !this._SafeStr_894)
         {
            this._SafeStr_182 = this.mbLeft = this.mVelocityX == 0 ? this.mbLeft : this.mVelocityX > 0;
            this._SafeStr_125._SafeStr_120.rotation = Math.atan(this.mVelocityY / this.mVelocityX) * 180 / Math.PI;
            if(this.mVelocityX == 0 && !this.mbLeft)
            {
               this._SafeStr_125._SafeStr_120.rotation *= -1;
            }
            if(this._SafeStr_282 && !this._SafeStr_282.mbRunning && this._SafeStr_335 && (Math.abs(this.mVelocityX) > 55 || Math.abs(this.mVelocityY) > 55))
            {
               this._SafeStr_282._SafeStr_3369();
            }
         }
         else
         {
            this._SafeStr_125._SafeStr_120.rotation = 0;
            if(this._SafeStr_282 && this._SafeStr_282.mbRunning && !this._SafeStr_335)
            {
               this._SafeStr_282._SafeStr_750();
            }
         }
         if(Boolean(this._SafeStr_282) && this.mEntState != _SafeStr_441)
         {
            this._SafeStr_282._SafeStr_3031();
         }
         var _loc4_:_SafeCls_88 = this._SafeStr_125._SafeStr_138;
         _loc4_._SafeStr_160 = _loc3_;
         var _loc5_:String = null;
         if(_loc4_._SafeStr_175 == _loc4_._SafeStr_369)
         {
            _loc5_ = this.mCombatState._SafeStr_569(_SafeCls_26._SafeStr_1473);
         }
         if(_loc5_ != this._SafeStr_1877)
         {
            if(this._SafeStr_721)
            {
               this._SafeStr_721 = _SafeCls_13._SafeStr_750(this._SafeStr_721);
            }
            if(_loc5_)
            {
               _loc6_ = Number(_SafeCls_3._SafeStr_343[_loc5_]);
               if(!_loc6_)
               {
                  _loc6_ = 1;
               }
               this._SafeStr_721 = _SafeCls_13._SafeStr_622(_loc5_,_loc6_,true);
            }
         }
         this._SafeStr_1877 = _loc5_;
      }
      
      private function _SafeStr_2965(param1:Number) : Number
      {
         var _loc2_:Number = this.mbAirborne ? _SafeStr_1530 + (this._SafeStr_335 ? _SafeStr_1153 * this.mCombatState._SafeStr_1650 : 0) : _SafeStr_502;
         var _loc3_:Number = param1 > 0 ? 1 : -1;
         var _loc4_:Number = _loc3_ * param1 - _loc2_ * _SafeStr_266;
         if(_loc4_ < 0)
         {
            _loc4_ = 0;
         }
         return _loc4_ * _loc3_;
      }
      
      private function _SafeStr_1358(param1:_SafeCls_20) : void
      {
         var _loc2_:Number = NaN;
         this._SafeStr_118.PlaySoundAtPosition(this.mEntID,"player_bounce",this._SafeStr_121,this.mPhysPosY);
         v.x = this.mVelocityX;
         v.y = this.mVelocityY;
         if(param1._SafeStr_198 == param1._SafeStr_235)
         {
            if(v.length >= _SafeStr_386 * 0.5)
            {
               this.mVelocityX *= -_SafeStr_779;
            }
            else
            {
               this.mVelocityX = 0;
            }
         }
         else if(param1._SafeStr_261 == param1._SafeStr_306)
         {
            if(v.length >= _SafeStr_386 * 0.5)
            {
               this.mVelocityY *= -_SafeStr_779;
            }
            else
            {
               this.mVelocityY = 0;
            }
         }
         else
         {
            _loc2_ = v.x * param1._SafeStr_199.x + v.y * param1._SafeStr_199.y;
            u.x = _loc2_ * param1._SafeStr_199.x;
            u.y = _loc2_ * param1._SafeStr_199.y;
            w.x = this.mVelocityX - u.x;
            w.y = this.mVelocityY - u.y;
            w.normalize(Math.max(w.length - _SafeStr_502,0));
            u.x *= _SafeStr_779;
            u.y *= _SafeStr_779;
            v.x = w.x - u.x;
            v.y = w.y - u.y;
            if(v.length >= _SafeStr_386 * 0.5)
            {
               this.mVelocityX = v.x;
               this.mVelocityY = v.y;
            }
         }
      }
      
      public function _SafeStr_319(param1:Number, param2:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Rectangle = null;
         var _loc9_:Matrix = null;
         this._SafeStr_121 = param1;
         this.mPhysPosY = param2;
         this._SafeStr_3034();
         var _loc3_:Rectangle = this._SafeStr_118.mCamera._SafeStr_223;
         var _loc4_:uint = _SafeCls_24._SafeStr_329;
         if(!_SafeStr_1043)
         {
            do
            {
               if(!(this._SafeStr_137 & _SafeStr_252) && this.mEntState == _SafeStr_244)
               {
                  if(this._SafeStr_121 < _loc3_.left)
                  {
                     this._SafeStr_152 = _loc3_.left + this._SafeStr_233;
                     _loc4_ |= _SafeCls_24._SafeStr_220;
                  }
                  else if(this._SafeStr_121 > _loc3_.right)
                  {
                     this._SafeStr_152 = _loc3_.right - this._SafeStr_233;
                     _loc4_ |= _SafeCls_24._SafeStr_221;
                  }
                  else
                  {
                     this._SafeStr_152 = this._SafeStr_121;
                  }
                  if(this.mPhysPosY < _loc3_.top)
                  {
                     this._SafeStr_162 = _loc3_.top + this._SafeStr_233 + this._SafeStr_144._SafeStr_163 * 0.5;
                     _loc4_ |= _SafeCls_24._SafeStr_268;
                     break;
                  }
                  if(this.mPhysPosY > _loc3_.bottom)
                  {
                     this._SafeStr_162 = _loc3_.bottom - this._SafeStr_233 + this._SafeStr_144._SafeStr_163 * 0.5;
                     _loc4_ |= _SafeCls_24._SafeStr_236;
                     break;
                  }
                  this._SafeStr_162 = this.mPhysPosY;
                  break;
               }
               this._SafeStr_152 = this._SafeStr_121;
               this._SafeStr_162 = this.mPhysPosY;
               break;
            }
            while(false);
         }
         _loc5_ = this._SafeStr_121;
         _loc6_ = this.mPhysPosY - this._SafeStr_144._SafeStr_163 * 0.5;
         if(!(this._SafeStr_137 & _SafeStr_252) && this.mEntState == _SafeStr_244)
         {
            if(this._SafeStr_121 + this._SafeStr_144._SafeStr_237 / 2 < _loc3_.left)
            {
               _loc4_ |= _SafeCls_24._SafeStr_220;
               _loc5_ = _loc3_.left + this._SafeStr_233;
            }
            else
            {
               while(true)
               {
                  if(this._SafeStr_121 - this._SafeStr_144._SafeStr_237 / 2 > _loc3_.right)
                  {
                     _loc4_ |= _SafeCls_24._SafeStr_221;
                     _loc5_ = _loc3_.right - this._SafeStr_233;
                  }
               }
               addr0252:
               this._SafeStr_152 = this._SafeStr_121;
            }
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     if(this.mPhysPosY < _loc3_.top)
                     {
                        _loc4_ |= _SafeCls_24._SafeStr_268;
                        _loc6_ = _loc3_.top + this._SafeStr_233;
                        break;
                     }
                     if(this.mPhysPosY - this._SafeStr_144._SafeStr_163 > _loc3_.bottom)
                     {
                        _loc4_ |= _SafeCls_24._SafeStr_236;
                        _loc6_ = _loc3_.bottom - this._SafeStr_233;
                     }
                     break;
                  }
               }
               addr0247:
               this._SafeStr_162 = this.mPhysPosY;
            }
            addr0104:
            this.mPhysCenterX = this._SafeStr_121;
            this.mPhysCenterY = this.mPhysPosY - this._SafeStr_144._SafeStr_163 * 0.5;
            this._SafeStr_215 = this._SafeStr_152;
            this._SafeStr_193 = this._SafeStr_162 - this._SafeStr_144._SafeStr_163 * 0.5;
            if(this._SafeStr_125)
            {
               this._SafeStr_125._SafeStr_120.x = this._SafeStr_152;
               this._SafeStr_125._SafeStr_120.y = this._SafeStr_162;
            }
            if(Boolean(_loc4_) && !(this._SafeStr_137 & _SafeStr_252))
            {
               if(_SafeStr_1043)
               {
                  _loc7_ = this._SafeStr_233 * 2.5;
                  _loc8_ = this._SafeStr_125._SafeStr_120.getBounds(this._SafeStr_118._SafeStr_156);
                  _loc8_.x -= (_loc7_ - _loc8_.width) * 0.5;
                  _loc8_.y -= (_loc7_ - _loc8_.height) * 0.5;
                  _loc9_ = new Matrix();
                  _loc9_.translate(-_loc8_.x,-_loc8_.y);
                  _loc9_.scale(0.75,0.75);
                  this._SafeStr_337.bitmapData.fillRect(this._SafeStr_2650,0);
                  this._SafeStr_337.bitmapData.draw(this._SafeStr_118._SafeStr_156,_loc9_);
                  _loc5_ = _SafeCls_19._SafeStr_546(_loc5_,_loc3_.left + this._SafeStr_233,_loc3_.right - this._SafeStr_233);
                  _loc6_ = _SafeCls_19._SafeStr_546(_loc6_,_loc3_.top + this._SafeStr_233,_loc3_.bottom - this._SafeStr_233);
                  this._SafeStr_240.x = _loc5_;
                  this._SafeStr_240.y = _loc6_;
                  this._SafeStr_337.x = _loc5_ - this._SafeStr_233;
                  this._SafeStr_337.y = _loc6_ - this._SafeStr_233;
                  this._SafeStr_337.visible = true;
               }
               else
               {
                  this._SafeStr_240.x = this._SafeStr_215;
                  this._SafeStr_240.y = this._SafeStr_193;
               }
               this._SafeStr_240.visible = true;
               switch(_loc4_)
               {
                  case _SafeCls_24._SafeStr_221:
                     this._SafeStr_240.rotation = 0;
                     break;
                  case _SafeCls_24._SafeStr_221 | _SafeCls_24._SafeStr_236:
                     this._SafeStr_240.rotation = 45;
                     break;
                  case _SafeCls_24._SafeStr_236:
                     this._SafeStr_240.rotation = 90;
                     break;
                  case _SafeCls_24._SafeStr_236 | _SafeCls_24._SafeStr_220:
                     this._SafeStr_240.rotation = 135;
                     break;
                  case _SafeCls_24._SafeStr_220:
                     this._SafeStr_240.rotation = 180;
                     break;
                  case _SafeCls_24._SafeStr_220 | _SafeCls_24._SafeStr_268:
                     this._SafeStr_240.rotation = 225;
                     break;
                  case _SafeCls_24._SafeStr_268:
                     this._SafeStr_240.rotation = 270;
                     break;
                  case _SafeCls_24._SafeStr_268 | _SafeCls_24._SafeStr_221:
                     this._SafeStr_240.rotation = 315;
               }
            }
            if(!(this._SafeStr_137 & _SafeStr_252))
            {
               this._SafeStr_3325();
            }
            return;
         }
         this._SafeStr_152 = this._SafeStr_121;
         this._SafeStr_162 = this.mPhysPosY;
      }
      
      private function _SafeStr_3034() : void
      {
         var _loc1_:Graphics = null;
         var _loc2_:Number = NaN;
         if(this._SafeStr_240 == null)
         {
            this._SafeStr_240 = new Sprite();
            _loc1_ = this._SafeStr_240.graphics;
            this._SafeStr_233 = Math.max(this._SafeStr_144._SafeStr_163,this._SafeStr_144._SafeStr_237);
            _loc1_.lineStyle(10,2236962,1);
            _loc1_.beginFill(16777215,0.4);
            _loc1_.drawCircle(0,0,this._SafeStr_233);
            _loc1_.beginFill(2236962,1);
            _loc1_.moveTo(this._SafeStr_233,-25);
            _loc1_.lineTo(this._SafeStr_233,25);
            _loc1_.lineTo(this._SafeStr_233 + 50,0);
            _loc1_.lineTo(this._SafeStr_233,-25);
            _loc1_.endFill();
            this._SafeStr_118._SafeStr_707.addChildAt(this._SafeStr_240,0);
            if(_SafeStr_1043)
            {
               this._SafeStr_603 = new Sprite();
               _loc1_ = this._SafeStr_603.graphics;
               _loc1_.lineStyle(10,16777215,1);
               _loc1_.beginFill(16777215);
               _loc1_.drawCircle(0,0,this._SafeStr_233);
               _loc1_.endFill();
               this._SafeStr_240.addChild(this._SafeStr_603);
               _loc2_ = this._SafeStr_233 * 2.5;
               this._SafeStr_337 = new Bitmap(new BitmapData(_loc2_,_loc2_,true,0));
               this._SafeStr_2650 = new Rectangle(0,0,_loc2_,_loc2_);
               this._SafeStr_118._SafeStr_707.addChildAt(this._SafeStr_337,0);
               this._SafeStr_337.mask = this._SafeStr_603;
            }
            this._SafeStr_233 += 50;
         }
         this._SafeStr_240.visible = false;
         if(_SafeStr_1043)
         {
            this._SafeStr_337.visible = false;
         }
      }
      
      public function _SafeStr_665() : Boolean
      {
         return this._SafeStr_182;
      }
      
      public function _SafeStr_1193() : Boolean
      {
         return !this._SafeStr_275 && this.mEntState == _SafeStr_244;
      }
      
      public function _SafeStr_3387(param1:Number, param2:Boolean, param3:_SafeCls_25, param4:_SafeCls_2 = null, param5:uint = 0) : void
      {
         if(!this._SafeStr_267 || !param1)
         {
            return;
         }
         if(Boolean(this._SafeStr_137 & _SafeCls_25.LOCAL) || this._SafeStr_118.IsPlayingWithoutServer())
         {
            if(this._SafeStr_118.IsPlayingWithoutServer())
            {
               param3.mGameStats._SafeStr_3420(param1);
               this.mGameStats._SafeStr_3322(param1);
            }
            this._SafeStr_284 += param1;
            if(this._SafeStr_284 < 0)
            {
               this._SafeStr_284 = 0;
            }
         }
      }
      
      public function _SafeStr_1541() : Boolean
      {
         var _loc1_:String = null;
         var _loc2_:uint = 0;
         var _loc3_:String = null;
         var _loc4_:_SafeCls_25 = null;
         var _loc5_:_SafeCls_6 = null;
         var _loc6_:Boolean = false;
         var _loc7_:_SafeCls_87 = null;
         if(this._SafeStr_1436)
         {
            if(this._SafeStr_118.IsPlayingWithoutServer())
            {
               this._SafeStr_284 = _SafeStr_1457;
            }
            this._SafeStr_282._SafeStr_2748();
            if(this._SafeStr_709)
            {
               _loc4_ = this._SafeStr_118._SafeStr_200(this._SafeStr_709);
               if((Boolean(_loc4_)) && _loc4_ != this)
               {
                  _loc1_ = _loc4_._SafeStr_395;
                  if(this._SafeStr_118.IsPlayingWithoutServer())
                  {
                     _loc4_.mGameStats._SafeStr_2536(this,_loc4_.mCombatState.mEquippedItem);
                  }
                  else if(_loc4_.mTeam != this.mTeam)
                  {
                     ++_loc4_.mGameStats.mKills;
                  }
                  if(Boolean(_loc4_._SafeStr_544) && _loc4_.mTeam != this.mTeam)
                  {
                     _loc4_._SafeStr_544._SafeStr_2647(this);
                  }
               }
            }
            _loc2_ = 0;
            _loc3_ = "a_Icon_Suicide";
            if(Boolean(_loc4_) && _loc4_ != this)
            {
               _loc2_ = this._SafeStr_2637;
               _loc5_ = _SafeCls_6._SafeStr_712[_loc2_];
               _loc3_ = Boolean(_loc2_) && Boolean(_loc5_) ? _loc5_._SafeStr_978 : "a_Icon_Unarmed";
            }
            ++this.mGameStats.mDeaths;
            if(!_loc4_ || _loc4_ == this)
            {
               ++this.mGameStats._SafeStr_844;
            }
            if(Boolean(this._SafeStr_118._SafeStr_161) && !this._SafeStr_118.IsPlayingWithoutServer())
            {
               this.mEntState = _SafeStr_315;
               this._SafeStr_118._SafeStr_161._SafeStr_3451(this.mEntID,_loc2_,this._SafeStr_709);
               if(this._SafeStr_118.mGameMode._SafeStr_485 > 4)
               {
                  this._SafeStr_118._SafeStr_651._SafeStr_1427(this._SafeStr_395,_loc3_,_loc1_,this,_loc4_);
               }
            }
            else
            {
               --this._SafeStr_531;
               _loc6_ = this._SafeStr_531 > 0 || this._SafeStr_118.mGameMode._SafeStr_1667 == 0;
               this._SafeStr_2097(_loc6_);
               if(this.mCombatState.mEquippedItem)
               {
                  _loc7_ = this.mCombatState.mEquippedItem;
                  this.mCombatState._SafeStr_845(true);
               }
               this._SafeStr_118._SafeStr_2836(this._SafeStr_709);
            }
            this._SafeStr_1436 = false;
            return true;
         }
         return false;
      }
      
      private function _SafeStr_2950() : void
      {
         if(this._SafeStr_118.IsPlayingWithoutServer())
         {
            switch(this._SafeStr_118.mGameMode.mScoringType)
            {
               case _SafeCls_4._SafeStr_1063:
                  this._SafeStr_265 = this.mGameStats.mKills - this.mGameStats.mDeaths - this.mGameStats.GetAccidents();
                  break;
               case _SafeCls_4._SafeStr_705:
                  this._SafeStr_265 = this._SafeStr_531;
            }
         }
      }
      
      public function _SafeStr_2773() : void
      {
         var _loc1_:_SafeCls_8 = null;
         if(!this._SafeStr_709)
         {
            return;
         }
         if(Boolean(this._SafeStr_1099) && this._SafeStr_118.mTimeThisTick >= this._SafeStr_1099)
         {
            this._SafeStr_1099 = 0;
         }
         if(!this._SafeStr_1099 && this._SafeStr_473 && !this._SafeStr_304(this._SafeStr_118.mTimeThisTick))
         {
            this._SafeStr_709 = 0;
            _loc1_ = _SafeCls_8._SafeStr_848[this._SafeStr_144._SafeStr_282];
            if(_loc1_)
            {
               this._SafeStr_2568(_loc1_);
            }
         }
      }
      
      public function _SafeStr_2097(param1:Boolean) : void
      {
         if((this._SafeStr_137 & _SafeStr_194 || !param1) && this.mEntState != _SafeStr_448 && this._SafeStr_118.mEntities && this._SafeStr_118.mEntities.length >= _SafeCls_47._SafeStr_1420)
         {
            this._SafeStr_137 |= _SafeStr_578;
         }
         if(this.mEntState == _SafeStr_448 && this._SafeStr_118.level && Boolean(this._SafeStr_118.level._SafeStr_253))
         {
            this._SafeStr_121 = this._SafeStr_118.level._SafeStr_253.x + this._SafeStr_118.level._SafeStr_253.width * 0.5;
            this.mPhysPosY = this._SafeStr_118.level._SafeStr_253.y - 200;
            this._SafeStr_529 = true;
         }
         this._SafeStr_2371();
         if(this._SafeStr_143)
         {
            this._SafeStr_143._SafeStr_2371();
         }
         if(this._SafeStr_118.IsPlayingWithoutServer())
         {
            this.mCombatState._SafeStr_3377();
            if(this.mEntState != _SafeStr_448)
            {
               this.mGameStats._SafeStr_2288(this._SafeStr_118.mTimeThisTick - this._SafeStr_934,true);
            }
            this._SafeStr_934 = this._SafeStr_118.mTimeThisTick;
         }
         this.mEntState = param1 ? _SafeStr_315 : _SafeStr_292;
         if(param1 && Boolean(this._SafeStr_154))
         {
            if(this._SafeStr_118.IsPlayingWithoutServer())
            {
               var _temp_11:* = this;
               var _loc2_:*;
               var _temp_10:* = (_loc2_ = this._SafeStr_118._SafeStr_1839)[this._SafeStr_118.mGameMode.mNumTeams ? this.mTeam : 0];
               var _loc4_:* = _temp_10 + 1;
               _loc2_[0] = _loc4_;
               _temp_11._SafeStr_861 = uint(_temp_10);
            }
            this._SafeStr_154._SafeStr_2762();
         }
         if(this._SafeStr_144 && this._SafeStr_144._SafeStr_755 && this._SafeStr_118.IsPlayingWithoutServer())
         {
            this.mCombatState._SafeStr_860(_SafeCls_18._SafeStr_346[this._SafeStr_144._SafeStr_755],this);
         }
      }
      
      public function _SafeStr_2144() : Boolean
      {
         return this.IsMoveLocked() || this._SafeStr_883 || this._SafeStr_275 || Boolean(this.mCombatState.mActivePower) || this.mCombatState._SafeStr_1676;
      }
      
      public function _SafeStr_2224() : void
      {
         if(!this._SafeStr_2144() && !this.IsMoveLocked())
         {
            this._SafeStr_275 = true;
         }
         else if(this.mCombatState._SafeStr_1599)
         {
            this._SafeStr_897();
            this._SafeStr_275 = true;
         }
         if(this._SafeStr_275)
         {
            this._SafeStr_1843();
            if(this._SafeStr_137 & LOCAL && !this._SafeStr_118.IsPlayingWithoutServer() && Boolean(this._SafeStr_118._SafeStr_161))
            {
               this._SafeStr_118._SafeStr_161._SafeStr_3351(this);
            }
         }
      }
      
      public function IsMoveLocked() : Boolean
      {
         var _loc1_:Boolean = true;
         switch(this.mEntState)
         {
            case _SafeStr_244:
            case _SafeStr_441:
               _loc1_ = this._SafeStr_1347 || this._SafeStr_275 || this._SafeStr_335 || Boolean(this.mCombatState._SafeStr_438);
         }
         return _loc1_;
      }
      
      public function _SafeStr_3010() : Boolean
      {
         var _loc1_:Boolean = true;
         switch(this.mEntState)
         {
            case _SafeStr_244:
            case _SafeStr_441:
               _loc1_ = this._SafeStr_1550 || this._SafeStr_275 || this._SafeStr_304(this._SafeStr_118.mTimeThisTick) || Boolean(this.mCombatState._SafeStr_438);
         }
         return _loc1_;
      }
      
      public function _SafeStr_304(param1:uint) : Boolean
      {
         if(this._SafeStr_335 && this._SafeStr_1116 + this._SafeStr_1915 < param1 && (this.mVelocityX * this.mVelocityX + this.mVelocityY * this.mVelocityY <= _SafeStr_1228 || this._SafeStr_1116 + _SafeStr_1975 < param1))
         {
            var _temp_4:* = this;
            this._SafeStr_2778 = false;
            _temp_4._SafeStr_335 = false;
            this._SafeStr_137 &= ~_SafeStr_906;
         }
         return this._SafeStr_335;
      }
      
      public function _SafeStr_1175() : void
      {
         if(this._SafeStr_234)
         {
            this._SafeStr_234.graphics.clear();
            this._SafeStr_234.graphics.beginFill(8947712,0.5);
            this._SafeStr_234.graphics.drawRoundRect(this._SafeStr_152 - 0.5 * this._SafeStr_144._SafeStr_237,this._SafeStr_162 - this._SafeStr_144._SafeStr_163,this._SafeStr_144._SafeStr_237,this._SafeStr_144._SafeStr_163,this._SafeStr_144._SafeStr_237,this._SafeStr_144._SafeStr_237);
            this._SafeStr_234.graphics.endFill();
         }
      }
      
      public function InputCmdJump(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.mbJumping = !this.IsMoveLocked() && !this._SafeStr_3010() && (!(this.mbAirborne && this.mCurrentAerialJumpCount >= this.mCombatState.mbcJumpCount) || Boolean(this.mWallSliding));
         this._SafeStr_2922 = this.mbJumping && param1 && !this.mbAirborne && !param2;
         this._SafeStr_3003 = param2;
         if(this.mbJumping)
         {
            this._SafeStr_2206();
         }
      }
      
      public function _SafeStr_1112(param1:Number, param2:Number, param3:Number = 350) : void
      {
         if(Boolean(this.mCombatState.mActivePower) && this.mCombatState.mActivePower._SafeStr_122._SafeStr_664)
         {
            return;
         }
         if(param1 != 0 || param2 != 0)
         {
            var _temp_3:* = this;
            this.mVelocityY = 0;
            _temp_3.mVelocityX = 0;
         }
         this._SafeStr_197 = param1;
         this._SafeStr_181 = param2;
         this._SafeStr_2348 = this._SafeStr_182 && param1 < 0 || !this._SafeStr_182 && param1 > 0;
         if(param3)
         {
            this._SafeStr_137 |= _SafeStr_906;
            this._SafeStr_335 = true;
            this._SafeStr_1116 = this._SafeStr_118.mTimeThisTick;
            this._SafeStr_1915 = param3;
            this._SafeStr_1300 = true;
            this._SafeStr_3097 = this.mCombatState.mActivePower != null;
            this._SafeStr_897();
            if(this._SafeStr_137 & LOCAL)
            {
               this.mCombatState._SafeStr_1697(_SafeCls_18._SafeStr_995);
               this.mCombatState._SafeStr_1479 = false;
               this.mCombatState._SafeStr_438 = 0;
            }
         }
      }
      
      public function _SafeStr_897() : void
      {
         if(this.mCombatState.mActivePower)
         {
            this.mCombatState.mActivePower._SafeStr_267 = false;
            if(this._SafeStr_125)
            {
               this._SafeStr_125._SafeStr_138._SafeStr_2912();
            }
         }
      }
      
      public function _SafeStr_3582() : Boolean
      {
         return this._SafeStr_410;
      }
      
      public function _SafeStr_2067(param1:_SafeCls_91 = null) : void
      {
         var _loc2_:Boolean = !this._SafeStr_300 || !this._SafeStr_300._SafeStr_267;
         if(param1 && param1._SafeStr_267 && (this.mEntState == _SafeStr_244 || _loc2_ || this._SafeStr_300.mOwnerEnt == param1.mOwnerEnt))
         {
            this.mEntState = _SafeStr_572;
            this._SafeStr_300 = param1;
         }
         else if(_loc2_)
         {
            if(this.mEntState == _SafeStr_572)
            {
               this.mEntState = _SafeStr_244;
            }
            this._SafeStr_300 = null;
         }
      }
      
      public function _SafeStr_3388(param1:_SafeCls_25 = null) : void
      {
         if(!this._SafeStr_300 || !this._SafeStr_300._SafeStr_267 || this._SafeStr_300.mOwnerEnt == param1)
         {
            if(this.mEntState == _SafeStr_572)
            {
               this.mEntState = _SafeStr_244;
            }
            this._SafeStr_300 = null;
         }
      }
      
      public function _SafeStr_3125() : void
      {
         this._SafeStr_894 = true;
      }
      
      public function _SafeStr_2535() : void
      {
         this._SafeStr_894 = false;
      }
      
      public function _SafeStr_2593() : void
      {
         if(this.mWallSliding)
         {
            this.mbLeft = !this.mbLeft;
            this._SafeStr_2033();
            if(this._SafeStr_137 & LOCAL && !this._SafeStr_118.IsPlayingWithoutServer() && Boolean(this._SafeStr_118._SafeStr_161))
            {
               this._SafeStr_118._SafeStr_161._SafeStr_3208(this);
            }
         }
      }
      
      public function _SafeStr_2033() : void
      {
         this._SafeStr_2138 = true;
         this.mVelocityX = 0;
         this._SafeStr_197 = this.mbLeft ? _SafeStr_1569 : -_SafeStr_1569;
      }
      
      public function _SafeStr_2835() : void
      {
         this._SafeStr_1047 = false;
         this._SafeStr_488 = 0;
      }
      
      public function _SafeStr_3340(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this._SafeStr_193 - param2;
         var _loc4_:Number = param1 - this._SafeStr_215;
         var _loc5_:String = this._SafeStr_125._SafeStr_138._SafeStr_3158(_loc3_,_loc4_);
         this._SafeStr_125._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,_loc5_,false);
      }
      
      public function _SafeStr_2568(param1:_SafeCls_8) : void
      {
         if(Boolean(this._SafeStr_282) && this._SafeStr_282._SafeStr_479 == param1)
         {
            return;
         }
         if(this._SafeStr_282)
         {
            this._SafeStr_282._SafeStr_2499();
         }
         this._SafeStr_282 = param1 ? new TrailEffect(this._SafeStr_118,this,param1) : null;
      }
      
      public function _SafeStr_3539(param1:_SafeCls_16) : void
      {
         if(this._SafeStr_144 && this._SafeStr_144._SafeStr_755 && this._SafeStr_118.IsPlayingWithoutServer())
         {
            this.mCombatState._SafeStr_1697(_SafeCls_18._SafeStr_346[this._SafeStr_144._SafeStr_755]);
         }
         this._SafeStr_144 = param1;
         if(this._SafeStr_118.gameState == Game._SafeStr_513)
         {
            this._SafeStr_395 = param1.mDisplayName;
         }
         if(this._SafeStr_144 && this._SafeStr_144._SafeStr_755 && this._SafeStr_118.IsPlayingWithoutServer())
         {
            this.mCombatState._SafeStr_860(_SafeCls_18._SafeStr_346[this._SafeStr_144._SafeStr_755],this);
         }
      }
      
      public function _SafeStr_946(param1:_SafeCls_17, param2:Boolean = true) : void
      {
         var _loc3_:_SafeCls_17 = _SafeCls_17._SafeStr_289[this._SafeStr_144._SafeStr_616];
         if(!_loc3_)
         {
            return;
         }
         if(param1)
         {
            this._SafeStr_858 = param1;
         }
         else
         {
            this._SafeStr_858 = _loc3_;
         }
         this._SafeStr_140 = _loc3_._SafeStr_2384(param1);
         if(param2)
         {
            this._SafeStr_508();
         }
         if(this._SafeStr_544)
         {
            this._SafeStr_544._SafeStr_2782();
         }
      }
      
      private function _SafeStr_3092() : void
      {
         var _loc1_:_SafeCls_27 = null;
         var _loc2_:String = null;
         if(this._SafeStr_137 & LOCAL && this._SafeStr_137 & _SafeStr_469 && this._SafeStr_132 && (!this._SafeStr_226 || this._SafeStr_2772 != this._SafeStr_132._SafeStr_297))
         {
            switch(this._SafeStr_132._SafeStr_297)
            {
               case _SafeCls_24._SafeStr_889:
                  _loc2_ = "a_KeyboardButton_Bindable_Icon_Animation";
                  break;
               case _SafeCls_24._SafeStr_877:
                  _loc2_ = "a_MouseButton_LeftClick_Icon_Animation";
                  break;
               case _SafeCls_24._SafeStr_1094:
                  _loc2_ = "a_KeyboardButton_J_Icon_Animation";
                  break;
               case _SafeCls_24._SafeStr_932:
                  _loc2_ = "a_KeyboardButton_C_Icon_Animation";
                  break;
               case _SafeCls_24._SafeStr_1156:
                  _loc2_ = "a_Button_A_Icon_Animation";
                  break;
               case _SafeCls_24._SafeStr_847:
               default:
                  _loc2_ = "a_Button_X_Icon_Animation";
            }
            if(this._SafeStr_226)
            {
               if(this._SafeStr_226.mMovieClip.parent)
               {
                  this._SafeStr_226.mMovieClip.parent.removeChild(this._SafeStr_226.mMovieClip);
               }
               this._SafeStr_226._SafeStr_1252();
            }
            this._SafeStr_226 = new _SafeCls_34(this._SafeStr_118,_SafeCls_12._SafeStr_294(_loc2_));
            if(this._SafeStr_132._SafeStr_297 == _SafeCls_24._SafeStr_889)
            {
               this._SafeStr_226.mMovieClip.am_Icon.am_LetterText.text = this._SafeStr_132._SafeStr_2812;
            }
            this._SafeStr_118._SafeStr_707.addChild(this._SafeStr_226.mMovieClip);
            this._SafeStr_226._SafeStr_1582();
            this._SafeStr_226.Hide();
            this._SafeStr_2772 = this._SafeStr_132._SafeStr_297;
            this._SafeStr_879 = null;
         }
         if(!this._SafeStr_226)
         {
            return;
         }
         if(this._SafeStr_137 & (BOT | _SafeStr_413))
         {
            this._SafeStr_226._SafeStr_1252();
            this._SafeStr_226 = null;
            return;
         }
         if(!this.mbJumping && !this.mCombatState.mEquippedItem && !this._SafeStr_335 && (this.mEntState == _SafeStr_244 || this.mEntState == _SafeStr_441))
         {
            _loc1_ = this.mCombatState.FindDefaultPickup();
         }
         if(Boolean(_loc1_) && !this._SafeStr_879)
         {
            this._SafeStr_226.Show();
            this._SafeStr_226.PlayAnimation("Display");
         }
         else if(!_loc1_ && Boolean(this._SafeStr_879))
         {
            this._SafeStr_226.PlayAnimation("Hide",_SafeCls_34._SafeStr_303);
         }
         this._SafeStr_879 = _loc1_;
         if(this._SafeStr_879)
         {
            this._SafeStr_226.mMovieClip.x = this._SafeStr_879._SafeStr_215;
            this._SafeStr_226.mMovieClip.y = this._SafeStr_879._SafeStr_193 + 40;
         }
         this._SafeStr_226._SafeStr_1582();
      }
      
      private function _SafeStr_3325() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:Boolean = false;
         var _loc3_:_SafeCls_25 = null;
         var _loc4_:uint = 0;
         var _loc5_:String = null;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         if(this._SafeStr_118._SafeStr_557 && this._SafeStr_118.mGameMode._SafeStr_485 < 5)
         {
            if(!this._SafeStr_302)
            {
               this._SafeStr_302 = _SafeCls_12._SafeStr_294("a_NameFloater");
               this._SafeStr_118._SafeStr_707.addChild(this._SafeStr_302);
               this._SafeStr_302.alpha = 0.75;
            }
            if(Boolean(this._SafeStr_302) && Boolean(this._SafeStr_302.am_Field))
            {
               for each(_loc3_ in this._SafeStr_118.mEntities)
               {
                  if(_loc3_ != this)
                  {
                     if(_loc3_._SafeStr_265 > this._SafeStr_265)
                     {
                        _loc1_++;
                     }
                     else if(_loc3_._SafeStr_265 == this._SafeStr_265)
                     {
                        _loc2_ = true;
                     }
                  }
               }
               _loc4_ = _loc1_ + 1;
               _loc5_ = this._SafeStr_395 + "\n" + (_loc2_ ? "T-" : "") + _SafeCls_19._SafeStr_3402(_loc4_);
               if(this._SafeStr_118.mGameMode.mScoringType == _SafeCls_4._SafeStr_1063)
               {
                  _loc5_ += (this._SafeStr_265 >= 0 ? "  +" : "  ") + this._SafeStr_265;
               }
               _loc6_ = _loc4_ == 1 ? _SafeStr_1165 : _SafeStr_1092;
               _loc7_ = _loc4_ == 1 ? _SafeStr_1246 : _SafeStr_1293;
               _SafeCls_19._SafeStr_1136(this._SafeStr_302.am_Field as TextField,_loc5_,_loc6_,_loc7_);
               this._SafeStr_302.x = this._SafeStr_121;
               this._SafeStr_302.y = this.mPhysPosY - this._SafeStr_144._SafeStr_163;
               this._SafeStr_302.visible = true;
            }
         }
         else if(this._SafeStr_302)
         {
            this._SafeStr_302.visible = false;
         }
      }
      
      public function _SafeStr_3086() : void
      {
         if(this.mEntState != _SafeCls_25._SafeStr_292)
         {
            this._SafeStr_529 = true;
            this._SafeStr_861 = this.mEntID;
            this.mEntState = _SafeCls_25._SafeStr_315;
            this._SafeStr_154._SafeStr_3094();
            this._SafeStr_2371();
         }
         else
         {
            this._SafeStr_2606();
         }
      }
      
      public function _SafeStr_2606() : void
      {
         this.mEntState = _SafeCls_25._SafeStr_292;
         this.mCombatState._SafeStr_993();
         if(this._SafeStr_118.IsPlayingWithoutServer())
         {
            this.mGameStats._SafeStr_2288(this._SafeStr_118.mTimeThisTick - this._SafeStr_934,false);
         }
         this._SafeStr_897();
         this._SafeStr_125._SafeStr_120.visible = false;
         this._SafeStr_154._SafeStr_229(SpawnBot._SafeStr_230);
      }
      
      private function _SafeStr_2371() : void
      {
         this.mVelocityX = 0;
         this.mVelocityY = 0;
         this._SafeStr_197 = 0;
         this._SafeStr_181 = 0;
         this._SafeStr_897();
         this._SafeStr_1436 = false;
         this.mbRunning = false;
         this._SafeStr_1235 = false;
         this._SafeStr_410 = false;
         this._SafeStr_275 = false;
         this._SafeStr_883 = false;
         this._SafeStr_673 = 0;
         this.mbJumping = false;
         this.mbAirborne = true;
         this.mCurrentAerialJumpCount = 0;
         this.mCombatState._SafeStr_2571();
         this._SafeStr_335 = false;
      }
      
      public function _SafeStr_1000(param1:uint) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this._SafeStr_143)
         {
            this._SafeStr_2489 = param1;
            this._SafeStr_1424 = this._SafeStr_118.mTimeThisTick;
            if(!((this.mEntState == _SafeStr_315 || this.mEntState == _SafeStr_913) && (this._SafeStr_143.mEntState == _SafeStr_315 || this._SafeStr_143.mEntState == _SafeStr_913)))
            {
               var _loc2_:uint = this._SafeStr_2489 + (this._SafeStr_118.mTimeThisTick - this._SafeStr_1424);
               _loc3_ = this._SafeStr_143._SafeStr_121 + this._SafeStr_143.mVelocityX - (this._SafeStr_121 + this.mVelocityX);
               _loc4_ = this._SafeStr_143.mPhysPosY + this._SafeStr_143.mVelocityY - (this.mPhysPosY + this.mVelocityY);
               _loc5_ = 1000 / (Game._SafeStr_354 * _SafeCls_73._SafeStr_942);
               if(_loc5_ > 1)
               {
                  _loc5_ = 1;
               }
               if(Math.abs(_loc3_) < 350 && Math.abs(_loc4_) < 350)
               {
                  this._SafeStr_849 = _loc3_ * _loc5_;
                  this._SafeStr_923 = _loc4_ * _loc5_;
               }
               else
               {
                  this._SafeStr_319(this._SafeStr_143._SafeStr_121,this._SafeStr_143.mPhysPosY);
                  this._SafeStr_849 = this._SafeStr_923 = 0;
               }
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_2 = "_-jR"
 * @identifier _SafeCls_3 = "_-nK"
 * @identifier _SafeCls_4 = "_-Kq"
 * @identifier _SafeCls_6 = "_-0u"
 * @identifier _SafeCls_8 = "_-So"
 * @identifier _SafeCls_12 = "_-G5"
 * @identifier _SafeCls_13 = "_-Mg"
 * @identifier _SafeCls_16 = "_-DS"
 * @identifier _SafeCls_17 = "_-TF"
 * @identifier _SafeCls_18 = "_-Nn"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_20 = "_-9f"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_24 = "_-3h"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_26 = "_-LQ"
 * @identifier _SafeCls_27 = "_-C7"
 * @identifier _SafeCls_28 = "_-sE"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_47 = "_-Km"
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_87 = "_-CY"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeCls_89 = "_-wU"
 * @identifier _SafeCls_90 = "_-JT"
 * @identifier _SafeCls_91 = "_-Lt"
 * @identifier _SafeCls_92 = "_-JZ"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_121 = "_-Dk"
 * @identifier _SafeStr_122 = "_-dn"
 * @identifier _SafeStr_125 = "_-5"
 * @identifier _SafeStr_132 = "_-wb"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_137 = "_-3"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_140 = "_-qo"
 * @identifier _SafeStr_143 = "_-mK"
 * @identifier _SafeStr_144 = "_-Z"
 * @identifier _SafeStr_151 = "_-0w"
 * @identifier _SafeStr_152 = "_-PC"
 * @identifier _SafeStr_154 = "_-1N"
 * @identifier _SafeStr_156 = "_-gH"
 * @identifier _SafeStr_160 = "_-CV"
 * @identifier _SafeStr_161 = "_-ve"
 * @identifier _SafeStr_162 = "_-a4"
 * @identifier _SafeStr_163 = "_-eC"
 * @identifier _SafeStr_164 = "_-QU"
 * @identifier _SafeStr_165 = "_-Ix"
 * @identifier _SafeStr_166 = "_-PJ"
 * @identifier _SafeStr_174 = "_-Mt"
 * @identifier _SafeStr_175 = "_-1l"
 * @identifier _SafeStr_179 = "_-BZ"
 * @identifier _SafeStr_180 = "_-az"
 * @identifier _SafeStr_181 = "_-Xr"
 * @identifier _SafeStr_182 = "_-af"
 * @identifier _SafeStr_188 = "_-qs"
 * @identifier _SafeStr_192 = "_-av"
 * @identifier _SafeStr_193 = "_-MG"
 * @identifier _SafeStr_194 = "_-rD"
 * @identifier _SafeStr_195 = "_-70"
 * @identifier _SafeStr_197 = "_-hJ"
 * @identifier _SafeStr_198 = "_-Jk"
 * @identifier _SafeStr_199 = "_-rq"
 * @identifier _SafeStr_200 = "_-H-"
 * @identifier _SafeStr_201 = "_-x"
 * @identifier _SafeStr_203 = "_-2b"
 * @identifier _SafeStr_215 = "_-Hm"
 * @identifier _SafeStr_219 = "_-u5"
 * @identifier _SafeStr_220 = "_-g7"
 * @identifier _SafeStr_221 = "_-P6"
 * @identifier _SafeStr_223 = "_-8x"
 * @identifier _SafeStr_226 = "_-S"
 * @identifier _SafeStr_227 = "_-XT"
 * @identifier _SafeStr_229 = "_-Jj"
 * @identifier _SafeStr_230 = "_-51"
 * @identifier _SafeStr_233 = "_-JB"
 * @identifier _SafeStr_234 = "_-Cy"
 * @identifier _SafeStr_235 = "_-KF"
 * @identifier _SafeStr_236 = "_-JI"
 * @identifier _SafeStr_237 = "_-Q6"
 * @identifier _SafeStr_238 = "_-0F"
 * @identifier _SafeStr_240 = "_-lB"
 * @identifier _SafeStr_244 = "_-HJ"
 * @identifier _SafeStr_252 = "_-E3"
 * @identifier _SafeStr_253 = "_-BW"
 * @identifier _SafeStr_254 = "_-H5"
 * @identifier _SafeStr_261 = "_-dm"
 * @identifier _SafeStr_265 = "_-pC"
 * @identifier _SafeStr_266 = "native"
 * @identifier _SafeStr_267 = "_-0V"
 * @identifier _SafeStr_268 = "_-as"
 * @identifier _SafeStr_275 = "_-Hp"
 * @identifier _SafeStr_281 = "_-Ii"
 * @identifier _SafeStr_282 = "_-5u"
 * @identifier _SafeStr_284 = "_-Ak"
 * @identifier _SafeStr_289 = "_-MO"
 * @identifier _SafeStr_291 = "_-Ce"
 * @identifier _SafeStr_292 = "_-6U"
 * @identifier _SafeStr_294 = "_-2P"
 * @identifier _SafeStr_295 = "_-Op"
 * @identifier _SafeStr_297 = "_-wi"
 * @identifier _SafeStr_298 = "_-j2"
 * @identifier _SafeStr_300 = "_-BK"
 * @identifier _SafeStr_301 = "_-4c"
 * @identifier _SafeStr_302 = "_-Ga"
 * @identifier _SafeStr_303 = "_-rS"
 * @identifier _SafeStr_304 = "_-FZ"
 * @identifier _SafeStr_306 = "_-r9"
 * @identifier _SafeStr_307 = "_-mp"
 * @identifier _SafeStr_315 = "_-ME"
 * @identifier _SafeStr_319 = "_-vX"
 * @identifier _SafeStr_329 = "_-vi"
 * @identifier _SafeStr_331 = "_-nv"
 * @identifier _SafeStr_335 = "_-Fb"
 * @identifier _SafeStr_337 = "_-Cq"
 * @identifier _SafeStr_343 = "_-i8"
 * @identifier _SafeStr_344 = "_-aP"
 * @identifier _SafeStr_346 = "_-QB"
 * @identifier _SafeStr_354 = "_-4x"
 * @identifier _SafeStr_363 = "_-Wi"
 * @identifier _SafeStr_369 = " in"
 * @identifier _SafeStr_386 = "_-in"
 * @identifier _SafeStr_391 = "_-T1"
 * @identifier _SafeStr_395 = "_-Ck"
 * @identifier _SafeStr_401 = "_-LX"
 * @identifier _SafeStr_403 = "_-HW"
 * @identifier _SafeStr_410 = "_-tN"
 * @identifier _SafeStr_413 = "_-a3"
 * @identifier _SafeStr_416 = "_-DY"
 * @identifier _SafeStr_418 = "_-me"
 * @identifier _SafeStr_436 = "_-RG"
 * @identifier _SafeStr_438 = "_-2E"
 * @identifier _SafeStr_441 = "_-9S"
 * @identifier _SafeStr_444 = "_-vk"
 * @identifier _SafeStr_448 = "_-Hc"
 * @identifier _SafeStr_468 = "_-g-"
 * @identifier _SafeStr_469 = "_-Rq"
 * @identifier _SafeStr_473 = "_-i9"
 * @identifier _SafeStr_479 = "_-5f"
 * @identifier _SafeStr_485 = "_-q3"
 * @identifier _SafeStr_488 = "_-gJ"
 * @identifier _SafeStr_502 = "_-l2"
 * @identifier _SafeStr_508 = "_-Fj"
 * @identifier _SafeStr_510 = "_-U3"
 * @identifier _SafeStr_513 = "_-VF"
 * @identifier _SafeStr_523 = "_-Me"
 * @identifier _SafeStr_527 = "_-2S"
 * @identifier _SafeStr_529 = "_-mi"
 * @identifier _SafeStr_531 = "_-ZO"
 * @identifier _SafeStr_544 = "_-TJ"
 * @identifier _SafeStr_546 = "_-ej"
 * @identifier _SafeStr_547 = "_-d9"
 * @identifier _SafeStr_550 = "_-Qb"
 * @identifier _SafeStr_557 = "_-61"
 * @identifier _SafeStr_569 = "_-Za"
 * @identifier _SafeStr_572 = "_-6j"
 * @identifier _SafeStr_576 = "_-ep"
 * @identifier _SafeStr_578 = "_-M6"
 * @identifier _SafeStr_585 = "_-76"
 * @identifier _SafeStr_589 = "_-Qp"
 * @identifier _SafeStr_590 = "_-AP"
 * @identifier _SafeStr_591 = "_-3H"
 * @identifier _SafeStr_603 = "_-bv"
 * @identifier _SafeStr_604 = "_-AI"
 * @identifier _SafeStr_609 = "_-vD"
 * @identifier _SafeStr_612 = "_-P4"
 * @identifier _SafeStr_616 = "_-ud"
 * @identifier _SafeStr_621 = "_-p-"
 * @identifier _SafeStr_622 = "_-i2"
 * @identifier _SafeStr_628 = "_-Ox"
 * @identifier _SafeStr_634 = "_-ei"
 * @identifier _SafeStr_638 = "_-Tr"
 * @identifier _SafeStr_640 = "_-uw"
 * @identifier _SafeStr_648 = "_-b8"
 * @identifier _SafeStr_651 = "_-XQ"
 * @identifier _SafeStr_664 = "_-4m"
 * @identifier _SafeStr_665 = "_-oQ"
 * @identifier _SafeStr_667 = "_-K6"
 * @identifier _SafeStr_673 = "_-Gh"
 * @identifier _SafeStr_698 = "_-bd"
 * @identifier _SafeStr_701 = "_-6Q"
 * @identifier _SafeStr_703 = "_-ig"
 * @identifier _SafeStr_705 = "_-Q0"
 * @identifier _SafeStr_706 = "_-mP"
 * @identifier _SafeStr_707 = "_-nM"
 * @identifier _SafeStr_709 = "_-bz"
 * @identifier _SafeStr_712 = "_-rt"
 * @identifier _SafeStr_721 = "_-Ep"
 * @identifier _SafeStr_722 = "_-c0"
 * @identifier _SafeStr_730 = "_-sL"
 * @identifier _SafeStr_733 = "_-MF"
 * @identifier _SafeStr_750 = "_-2a"
 * @identifier _SafeStr_752 = "_-tc"
 * @identifier _SafeStr_753 = "_-Ar"
 * @identifier _SafeStr_754 = "_-rO"
 * @identifier _SafeStr_755 = "_-DP"
 * @identifier _SafeStr_767 = "_-gF"
 * @identifier _SafeStr_771 = "_-o-"
 * @identifier _SafeStr_779 = "_-nH"
 * @identifier _SafeStr_780 = "_-mX"
 * @identifier _SafeStr_790 = "_-Fd"
 * @identifier _SafeStr_795 = "_-f0"
 * @identifier _SafeStr_809 = "_-Xg"
 * @identifier _SafeStr_821 = "_-Ke"
 * @identifier _SafeStr_835 = "_-6"
 * @identifier _SafeStr_843 = "_-WN"
 * @identifier _SafeStr_844 = "_-4V"
 * @identifier _SafeStr_845 = "_-e6"
 * @identifier _SafeStr_847 = "_-g5"
 * @identifier _SafeStr_848 = "_-pp"
 * @identifier _SafeStr_849 = "_-Fr"
 * @identifier _SafeStr_858 = "_-gq"
 * @identifier _SafeStr_860 = "_-n5"
 * @identifier _SafeStr_861 = "_-ge"
 * @identifier _SafeStr_875 = "_-cK"
 * @identifier _SafeStr_877 = "_-p5"
 * @identifier _SafeStr_879 = "_-t1"
 * @identifier _SafeStr_883 = "_-GK"
 * @identifier _SafeStr_884 = "_-Wf"
 * @identifier _SafeStr_886 = "_-Lx"
 * @identifier _SafeStr_889 = "_-R"
 * @identifier _SafeStr_894 = "_-mz"
 * @identifier _SafeStr_897 = "_-Go"
 * @identifier _SafeStr_906 = "_-fn"
 * @identifier _SafeStr_913 = "_-tL"
 * @identifier _SafeStr_923 = "_-Kw"
 * @identifier _SafeStr_928 = "_-9i"
 * @identifier _SafeStr_932 = "_-AY"
 * @identifier _SafeStr_934 = "_-1U"
 * @identifier _SafeStr_942 = "_-bP"
 * @identifier _SafeStr_946 = "_-Ac"
 * @identifier _SafeStr_950 = "_-Zy"
 * @identifier _SafeStr_970 = "_-m3"
 * @identifier _SafeStr_971 = "_-dB"
 * @identifier _SafeStr_975 = "_-W3"
 * @identifier _SafeStr_978 = "_-Gs"
 * @identifier _SafeStr_993 = "_-7H"
 * @identifier _SafeStr_995 = "_-wr"
 * @identifier _SafeStr_996 = "null "
 * @identifier _SafeStr_1000 = "_-pq"
 * @identifier _SafeStr_1014 = "_-vQ"
 * @identifier _SafeStr_1038 = "_-e"
 * @identifier _SafeStr_1043 = "_-Z6"
 * @identifier _SafeStr_1047 = "_-4n"
 * @identifier _SafeStr_1054 = "_-p6"
 * @identifier _SafeStr_1056 = "_-bU"
 * @identifier _SafeStr_1061 = "_-GH"
 * @identifier _SafeStr_1063 = "_-tt"
 * @identifier _SafeStr_1069 = "_-49"
 * @identifier _SafeStr_1083 = "_-c5"
 * @identifier _SafeStr_1088 = "_-5M"
 * @identifier _SafeStr_1092 = "_-i"
 * @identifier _SafeStr_1094 = "_-nj"
 * @identifier _SafeStr_1095 = "_-0d"
 * @identifier _SafeStr_1099 = "_-do"
 * @identifier _SafeStr_1105 = "_-Eo"
 * @identifier _SafeStr_1112 = "_-EZ"
 * @identifier _SafeStr_1115 = "_-Ja"
 * @identifier _SafeStr_1116 = "_-Kh"
 * @identifier _SafeStr_1130 = "_-En"
 * @identifier _SafeStr_1136 = "_-th"
 * @identifier _SafeStr_1143 = "_-va"
 * @identifier _SafeStr_1146 = "_-XC"
 * @identifier _SafeStr_1153 = "_-10"
 * @identifier _SafeStr_1156 = "_-d5"
 * @identifier _SafeStr_1157 = "_-qJ"
 * @identifier _SafeStr_1165 = "_-DC"
 * @identifier _SafeStr_1170 = "_-T0"
 * @identifier _SafeStr_1174 = "_-LW"
 * @identifier _SafeStr_1175 = "_-BT"
 * @identifier _SafeStr_1193 = "_-I3"
 * @identifier _SafeStr_1198 = "_-4h"
 * @identifier _SafeStr_1221 = "_-WY"
 * @identifier _SafeStr_1222 = "_-Jw"
 * @identifier _SafeStr_1228 = "_-1X"
 * @identifier _SafeStr_1231 = "_-sD"
 * @identifier _SafeStr_1235 = "_-Py"
 * @identifier _SafeStr_1246 = "_-tP"
 * @identifier _SafeStr_1252 = "_-MV"
 * @identifier _SafeStr_1254 = "_-uh"
 * @identifier _SafeStr_1260 = "_-Us"
 * @identifier _SafeStr_1289 = "_-bJ"
 * @identifier _SafeStr_1291 = "_-BO"
 * @identifier _SafeStr_1293 = "_-Ft"
 * @identifier _SafeStr_1297 = "_-kY"
 * @identifier _SafeStr_1300 = "_-sb"
 * @identifier _SafeStr_1304 = "_-OX"
 * @identifier _SafeStr_1310 = "_-3T"
 * @identifier _SafeStr_1338 = "_-3C"
 * @identifier _SafeStr_1343 = "_-oV"
 * @identifier _SafeStr_1345 = "_-AS"
 * @identifier _SafeStr_1347 = "_-2q"
 * @identifier _SafeStr_1358 = "_-6d"
 * @identifier _SafeStr_1360 = "_-8X"
 * @identifier _SafeStr_1367 = "_-bq"
 * @identifier _SafeStr_1385 = "_-wL"
 * @identifier _SafeStr_1394 = "_-ok"
 * @identifier _SafeStr_1398 = "_-Aq"
 * @identifier _SafeStr_1403 = "_-qf"
 * @identifier _SafeStr_1406 = "_-Nq"
 * @identifier _SafeStr_1420 = "_-Dt"
 * @identifier _SafeStr_1424 = "_-Am"
 * @identifier _SafeStr_1427 = "_-5I"
 * @identifier _SafeStr_1436 = "_-2T"
 * @identifier _SafeStr_1447 = "_-S1"
 * @identifier _SafeStr_1452 = "_-EH"
 * @identifier _SafeStr_1457 = "_-ow"
 * @identifier _SafeStr_1459 = "_-jL"
 * @identifier _SafeStr_1464 = "_-IP"
 * @identifier _SafeStr_1468 = "implements"
 * @identifier _SafeStr_1473 = "_-Z9"
 * @identifier _SafeStr_1479 = "_-FM"
 * @identifier _SafeStr_1497 = "_-e4"
 * @identifier _SafeStr_1499 = "_-lv"
 * @identifier _SafeStr_1502 = "_-3M"
 * @identifier _SafeStr_1505 = "_-mw"
 * @identifier _SafeStr_1524 = "_-7A"
 * @identifier _SafeStr_1530 = "_-qi"
 * @identifier _SafeStr_1541 = "_-fo"
 * @identifier _SafeStr_1544 = "_-VQ"
 * @identifier _SafeStr_1550 = "_-tu"
 * @identifier _SafeStr_1569 = "_-EI"
 * @identifier _SafeStr_1573 = "_-IA"
 * @identifier _SafeStr_1580 = "_-Yx"
 * @identifier _SafeStr_1582 = "_-dc"
 * @identifier _SafeStr_1594 = "_-je"
 * @identifier _SafeStr_1598 = "_-mc"
 * @identifier _SafeStr_1599 = "_-1m"
 * @identifier _SafeStr_1623 = "_-SC"
 * @identifier _SafeStr_1626 = "_-Gw"
 * @identifier _SafeStr_1638 = "_-w4"
 * @identifier _SafeStr_1650 = "_-CK"
 * @identifier _SafeStr_1651 = "_-l1"
 * @identifier _SafeStr_1667 = "_-ZR"
 * @identifier _SafeStr_1672 = "_-B0"
 * @identifier _SafeStr_1676 = "_-pg"
 * @identifier _SafeStr_1683 = "_-RI"
 * @identifier _SafeStr_1689 = "_-Q7"
 * @identifier _SafeStr_1697 = "_-f-"
 * @identifier _SafeStr_1712 = "_-dM"
 * @identifier _SafeStr_1713 = "_-Y6"
 * @identifier _SafeStr_1716 = "_-Cf"
 * @identifier _SafeStr_1729 = "_-0h"
 * @identifier _SafeStr_1791 = "_-qV"
 * @identifier _SafeStr_1801 = "_-cR"
 * @identifier _SafeStr_1805 = "_-Sr"
 * @identifier _SafeStr_1839 = "_-nR"
 * @identifier _SafeStr_1842 = "_-PK"
 * @identifier _SafeStr_1843 = "_-Em"
 * @identifier _SafeStr_1865 = "_-2V"
 * @identifier _SafeStr_1872 = "_-oT"
 * @identifier _SafeStr_1877 = "_-HL"
 * @identifier _SafeStr_1882 = "_-BP"
 * @identifier _SafeStr_1915 = "_-ap"
 * @identifier _SafeStr_1920 = "_-j1"
 * @identifier _SafeStr_1925 = "override"
 * @identifier _SafeStr_1929 = "_-El"
 * @identifier _SafeStr_1934 = "_-g3"
 * @identifier _SafeStr_1960 = "_-SN"
 * @identifier _SafeStr_1975 = "_-Ma"
 * @identifier _SafeStr_1978 = "_-PU"
 * @identifier _SafeStr_2019 = "_-Lw"
 * @identifier _SafeStr_2029 = "_-jI"
 * @identifier _SafeStr_2033 = "_-wq"
 * @identifier _SafeStr_2044 = "_-Tj"
 * @identifier _SafeStr_2067 = "_-dP"
 * @identifier _SafeStr_2097 = "_-gs"
 * @identifier _SafeStr_2108 = "_-1d"
 * @identifier _SafeStr_2109 = "_-fH"
 * @identifier _SafeStr_2122 = "package"
 * @identifier _SafeStr_2129 = "_-Zo"
 * @identifier _SafeStr_2135 = "_-d3"
 * @identifier _SafeStr_2137 = "_-0L"
 * @identifier _SafeStr_2138 = "_-Wk"
 * @identifier _SafeStr_2143 = "_-W"
 * @identifier _SafeStr_2144 = "_-VS"
 * @identifier _SafeStr_2145 = "_-7k"
 * @identifier _SafeStr_2157 = "_-eL"
 * @identifier _SafeStr_2163 = "_-my"
 * @identifier _SafeStr_2165 = "_-X3"
 * @identifier _SafeStr_2206 = "_-ng"
 * @identifier _SafeStr_2224 = "_-Ph"
 * @identifier _SafeStr_2237 = "_-po"
 * @identifier _SafeStr_2241 = "_-dL"
 * @identifier _SafeStr_2251 = "_-kh"
 * @identifier _SafeStr_2268 = "_-qR"
 * @identifier _SafeStr_2270 = "_-QO"
 * @identifier _SafeStr_2288 = "_-di"
 * @identifier _SafeStr_2301 = "_-vx"
 * @identifier _SafeStr_2305 = "_-ux"
 * @identifier _SafeStr_2311 = "_-mM"
 * @identifier _SafeStr_2313 = "_-EL"
 * @identifier _SafeStr_2314 = "_-KB"
 * @identifier _SafeStr_2337 = "_-AZ"
 * @identifier _SafeStr_2348 = "_-Hy"
 * @identifier _SafeStr_2369 = "_-ba"
 * @identifier _SafeStr_2371 = "_-CR"
 * @identifier _SafeStr_2384 = "_-bj"
 * @identifier _SafeStr_2393 = "_-ar"
 * @identifier _SafeStr_2395 = "_-Xq"
 * @identifier _SafeStr_2427 = "_-bL"
 * @identifier _SafeStr_2445 = "_-WZ"
 * @identifier _SafeStr_2462 = "_-Qg"
 * @identifier _SafeStr_2489 = "_-82"
 * @identifier _SafeStr_2499 = "_-7E"
 * @identifier _SafeStr_2528 = "_-p9"
 * @identifier _SafeStr_2535 = "_-cP"
 * @identifier _SafeStr_2536 = "_-bk"
 * @identifier _SafeStr_2544 = "_-FN"
 * @identifier _SafeStr_2550 = "_-dA"
 * @identifier _SafeStr_2568 = "_-JH"
 * @identifier _SafeStr_2571 = "_-3g"
 * @identifier _SafeStr_2593 = "_-85"
 * @identifier _SafeStr_2606 = "_-HY"
 * @identifier _SafeStr_2613 = "_-ni"
 * @identifier _SafeStr_2620 = "_-9Y"
 * @identifier _SafeStr_2637 = "_-5m"
 * @identifier _SafeStr_2647 = "_-tf"
 * @identifier _SafeStr_2650 = "_-wX"
 * @identifier _SafeStr_2652 = "_-HE"
 * @identifier _SafeStr_2695 = "_-5O"
 * @identifier _SafeStr_2720 = "_-be"
 * @identifier _SafeStr_2736 = "_-lK"
 * @identifier _SafeStr_2748 = "_-s2"
 * @identifier _SafeStr_2753 = "_-cJ"
 * @identifier _SafeStr_2762 = "_-mD"
 * @identifier _SafeStr_2772 = "_-0C"
 * @identifier _SafeStr_2773 = "_-VU"
 * @identifier _SafeStr_2778 = "_-8a"
 * @identifier _SafeStr_2782 = "_-gr"
 * @identifier _SafeStr_2786 = "_-N5"
 * @identifier _SafeStr_2793 = "_-4B"
 * @identifier _SafeStr_2812 = "_-kz"
 * @identifier _SafeStr_2831 = "_-RR"
 * @identifier _SafeStr_2835 = "_-dj"
 * @identifier _SafeStr_2836 = "_-lo"
 * @identifier _SafeStr_2842 = "_-pD"
 * @identifier _SafeStr_2848 = "_-J5"
 * @identifier _SafeStr_2862 = "_-Ru"
 * @identifier _SafeStr_2878 = "_-qC"
 * @identifier _SafeStr_2884 = "_-Av"
 * @identifier _SafeStr_2900 = "_-1y"
 * @identifier _SafeStr_2912 = "_-Zk"
 * @identifier _SafeStr_2922 = "_-s9"
 * @identifier _SafeStr_2926 = "_-wf"
 * @identifier _SafeStr_2935 = "_-og"
 * @identifier _SafeStr_2941 = "_-Ev"
 * @identifier _SafeStr_2950 = "_-6x"
 * @identifier _SafeStr_2952 = "_-ZA"
 * @identifier _SafeStr_2965 = "_-PO"
 * @identifier _SafeStr_2992 = "_-2Z"
 * @identifier _SafeStr_3003 = "_-YO"
 * @identifier _SafeStr_3010 = "_-7i"
 * @identifier _SafeStr_3031 = "_-8e"
 * @identifier _SafeStr_3034 = "_-pA"
 * @identifier _SafeStr_3051 = "_-5X"
 * @identifier _SafeStr_3074 = "_-H7"
 * @identifier _SafeStr_3086 = "_-TZ"
 * @identifier _SafeStr_3092 = "_-9a"
 * @identifier _SafeStr_3094 = "_-il"
 * @identifier _SafeStr_3097 = "_-OU"
 * @identifier _SafeStr_3102 = "_-7x"
 * @identifier _SafeStr_3111 = "_-7c"
 * @identifier _SafeStr_3125 = "_-vn"
 * @identifier _SafeStr_3142 = "_-gV"
 * @identifier _SafeStr_3143 = "_-IQ"
 * @identifier _SafeStr_3156 = "_-ph"
 * @identifier _SafeStr_3158 = "_-gA"
 * @identifier _SafeStr_3188 = "_-vR"
 * @identifier _SafeStr_3208 = " try"
 * @identifier _SafeStr_3224 = "_-2j"
 * @identifier _SafeStr_3245 = "_-8"
 * @identifier _SafeStr_3250 = "_-J3"
 * @identifier _SafeStr_3319 = "_-rP"
 * @identifier _SafeStr_3322 = "_-Gq"
 * @identifier _SafeStr_3325 = "_-B3"
 * @identifier _SafeStr_3340 = "_-wC"
 * @identifier _SafeStr_3351 = "_-AE"
 * @identifier _SafeStr_3369 = "_-i-"
 * @identifier _SafeStr_3377 = "_-QX"
 * @identifier _SafeStr_3387 = "_-9c"
 * @identifier _SafeStr_3388 = "_-oA"
 * @identifier _SafeStr_3391 = "_-nm"
 * @identifier _SafeStr_3399 = "_-ZM"
 * @identifier _SafeStr_3402 = "_-6R"
 * @identifier _SafeStr_3416 = "_-uL"
 * @identifier _SafeStr_3420 = "_-MM"
 * @identifier _SafeStr_3427 = "_-n"
 * @identifier _SafeStr_3441 = "_-p4"
 * @identifier _SafeStr_3451 = "_-OH"
 * @identifier _SafeStr_3452 = "_-4w"
 * @identifier _SafeStr_3468 = "_-ub"
 * @identifier _SafeStr_3475 = "_-t8"
 * @identifier _SafeStr_3481 = "_-Z2"
 * @identifier _SafeStr_3486 = "_-Fh"
 * @identifier _SafeStr_3539 = "_-0k"
 * @identifier _SafeStr_3582 = "_-IV"
 * @identifier _SafeStr_3588 = "_-j3"
 * @identifier _SafeStr_3605 = "_-G4"
 * @identifier _SafeStr_3736 = "_-T5"
 * @identifier _SafeStr_3747 = "_-PZ"
 */
