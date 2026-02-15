package
{
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class _SafeCls_26
   {
      
      public static const _SafeStr_1983:uint = 1200;
      
      public static const _SafeStr_2421:Number = 25;
      
      public static const _SafeStr_2577:int = -50;
      
      public static const _SafeStr_2505:uint = 50;
      
      private static const _SafeStr_1359:Number = 4;
      
      private static const _SafeStr_1671:Number = 0.25;
      
      private static const _SafeStr_1441:Number = 4;
      
      private static const _SafeStr_1612:Number = 0.25;
      
      private static const _SafeStr_974:Number = 1.75;
      
      private static const _SafeStr_908:Number = 0.25;
      
      private static const _SafeStr_2336:Number = 0.5;
      
      public static const _SafeStr_2960:uint = 0;
      
      public static const _SafeStr_2434:uint = 1;
      
      public static const _SafeStr_2035:uint = 2;
      
      public static const _SafeStr_2366:uint = 3;
      
      public static const ACTION_ATTACK_COMBO1:uint = 4;
      
      public static const ACTION_ATTACK_COMBO2:uint = 5;
      
      public static const ACTION_ATTACK_COMBO3:uint = 6;
      
      public static const ACTION_ATTACK_COMBO4:uint = 7;
      
      public static const _SafeStr_1826:uint = 8;
      
      public static const _SafeStr_478:uint = 9;
      
      public static const _SafeStr_475:uint = 10;
      
      public static const _SafeStr_1728:uint = 11;
      
      public static const _SafeStr_460:uint = 12;
      
      public static const _SafeStr_419:uint = 13;
      
      public static const _SafeStr_537:uint = 14;
      
      public static const _SafeStr_483:uint = 15;
      
      public static const _SafeStr_461:uint = 16;
      
      public static const _SafeStr_439:uint = 17;
      
      public static const _SafeStr_415:uint = 18;
      
      public static const _SafeStr_1195:uint = 19;
      
      public static const _SafeStr_1199:uint = 20;
      
      public static const _SafeStr_2584:uint = 21;
      
      public static const _SafeStr_2243:uint = 22;
      
      public static const _SafeStr_2098:uint = 23;
      
      public static const _SafeStr_1149:uint = 24;
      
      public static const _SafeStr_2250:uint = 25;
      
      public static const _SafeStr_1964:Number = 40;
      
      public static const _SafeStr_1738:uint = 1000;
      
      public static const _SafeStr_1992:uint = _SafeCls_24._SafeStr_937;
      
      public static const _SafeStr_1950:Number = 1.575;
      
      public static const _SafeStr_2038:uint = 400;
      
      private static var _SafeStr_296:uint = 0;
      
      private static const _SafeStr_2211:uint = ++_SafeStr_296;
      
      private static const _SafeStr_2392:uint = ++_SafeStr_296;
      
      private static const _SafeStr_1903:uint = ++_SafeStr_296;
      
      private static const _SafeStr_2166:uint = ++_SafeStr_296;
      
      private static const _SafeStr_2245:uint = ++_SafeStr_296;
      
      public static const _SafeStr_1533:Boolean = false;
      
      public static const _SafeStr_2277:Number = 0.009;
      
      public static const _SafeStr_1981:Number = 0.015;
      
      private static var _SafeStr_2951:Point = new Point();
      
      public static const _SafeStr_1473:uint = 1;
      
      public static const _SafeStr_1115:uint = 2;
      
      public static const _SafeStr_1398:uint = 3;
      
      public static const _SafeStr_1095:uint = 4;
      
      public static const _SafeStr_1403:uint = 5;
      
      public static const _SafeStr_2365:uint = 6;
      
      public static const _SafeStr_1617:uint = 7;
      
      public static const _SafeStr_1544:uint = 8;
      
      public static const _SafeStr_1616:uint = 150;
      
      public static const _SafeStr_2013:uint = 75;
      
      public static const _SafeStr_2970:Array = [1,1.15,1.25,1,35,1.45,1.55];
      
      public static const _SafeStr_2337:Array = [16777215,16777215,15263034,15504657,15728652,9895943];
      
      public static const _SafeStr_2129:Array = [16777215,15263034,15504657,15728652,9895943,6160388];
      
      private static var _SafeStr_2640:Number = 10;
      
      private static var _SafeStr_433:Point = new Point();
      
      private static var _SafeStr_392:Point = new Point();
      
      public var _SafeStr_118:Game;
      
      public var _SafeStr_126:_SafeCls_25;
      
      public var mEquippedItem:_SafeCls_87;
      
      public var mActivePower:_SafeCls_91;
      
      internal var _SafeStr_480:Vector.<_SafeCls_91> = null;
      
      internal var _SafeStr_811:uint;
      
      internal var _SafeStr_1282:uint;
      
      internal var _SafeStr_334:Vector.<_SafeCls_94>;
      
      internal var _SafeStr_391:Boolean = false;
      
      internal var _SafeStr_344:Boolean = false;
      
      internal var _SafeStr_1599:Boolean = false;
      
      internal var _SafeStr_1069:Boolean = false;
      
      internal var _SafeStr_1061:Boolean = false;
      
      internal var _SafeStr_2019:Boolean = false;
      
      internal var _SafeStr_996:Boolean = false;
      
      internal var mbAirControlExhausted:Boolean = false;
      
      internal var _SafeStr_1902:Number;
      
      internal var _SafeStr_2021:Number;
      
      internal var _SafeStr_757:Vector.<_SafeCls_40>;
      
      internal var _SafeStr_1765:uint = 1;
      
      internal var _SafeStr_733:Boolean = true;
      
      internal var _SafeStr_635:Number = 1;
      
      internal var _SafeStr_704:Number = 1;
      
      internal var _SafeStr_687:Number = 1;
      
      internal var _SafeStr_663:Number = 1;
      
      internal var _SafeStr_2884:Number = 1;
      
      internal var _SafeStr_2926:Number = 1;
      
      internal var _SafeStr_2989:GfxType;
      
      internal var _SafeStr_2389:uint = 0;
      
      internal var _SafeStr_1357:uint = 0;
      
      internal var _SafeStr_2935:Number = 1;
      
      internal var mbcJumpCount:int = 2;
      
      internal var _SafeStr_1650:Number = 1;
      
      internal var _SafeStr_1791:Number = 0;
      
      internal var _SafeStr_2137:Number = 40;
      
      internal var _SafeStr_1367:Number = 0;
      
      internal var _SafeStr_1929:Number = 40;
      
      internal var _SafeStr_1479:Boolean = false;
      
      internal var _SafeStr_1415:Boolean = false;
      
      internal var _SafeStr_1676:Boolean = false;
      
      internal var _SafeStr_1945:Boolean = false;
      
      internal var _SafeStr_438:uint = 0;
      
      internal var _SafeStr_1178:uint = 0;
      
      public var _SafeStr_1668:uint = 0;
      
      public var _SafeStr_3638:uint = 0;
      
      public var _SafeStr_1184:uint = 0;
      
      public var _SafeStr_1145:uint = 0;
      
      public var _SafeStr_2454:Number = 0;
      
      public var _SafeStr_2470:Number = 0;
      
      public var _SafeStr_2155:uint = 0;
      
      public function _SafeCls_26(param1:_SafeCls_25)
      {
         super();
         this._SafeStr_1902 = param1._SafeStr_152;
         this._SafeStr_2021 = param1._SafeStr_162;
         this._SafeStr_126 = param1;
         this._SafeStr_118 = this._SafeStr_126._SafeStr_118;
         this._SafeStr_757 = new Vector.<_SafeCls_40>();
         this._SafeStr_334 = new Vector.<_SafeCls_94>();
         this._SafeStr_480 = new Vector.<_SafeCls_91>();
      }
      
      public static function _SafeStr_2707(param1:uint) : Number
      {
         return Math.max(_SafeStr_1992,Math.min(_SafeStr_1738,param1)) / _SafeStr_1738;
      }
      
      public static function _SafeStr_2979(param1:Point, param2:Point, param3:_SafeCls_25, param4:Number = 10) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = param3._SafeStr_144._SafeStr_237;
         var _loc7_:Number = param3._SafeStr_144._SafeStr_163;
         if(_loc6_ < _loc7_)
         {
            _loc5_ = _loc6_ * 0.5;
            _SafeStr_433.x = param3._SafeStr_121;
            _SafeStr_433.y = param3.mPhysPosY - _loc5_;
            _SafeStr_392.x = 0;
            _SafeStr_392.y = -_loc7_ + _loc6_;
         }
         else
         {
            _loc5_ = _loc7_ * 0.5;
            _SafeStr_433.x = param3._SafeStr_121 - _loc6_ * 0.5 + _loc5_;
            _SafeStr_433.y = param3.mPhysCenterY;
            _SafeStr_392.x = _loc6_ - _loc7_;
            _SafeStr_392.y = 0;
         }
         return _SafeCls_19._SafeStr_2971(param1,param2,param4,_SafeStr_433,_SafeStr_392,_loc5_);
      }
      
      public static function _SafeStr_3412(param1:Point, param2:Point, param3:_SafeCls_27, param4:Number = 10) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = param3._SafeStr_151._SafeStr_237;
         var _loc7_:Number = param3._SafeStr_151._SafeStr_163;
         if(_loc6_ < _loc7_)
         {
            _loc5_ = _loc6_ * 0.5;
            _SafeStr_433.x = param3._SafeStr_152;
            _SafeStr_433.y = param3._SafeStr_162 - _loc5_;
            _SafeStr_392.x = 0;
            _SafeStr_392.y = -_loc7_ + _loc6_;
         }
         else
         {
            _loc5_ = _loc7_ * 0.5;
            _SafeStr_433.x = param3._SafeStr_152 - _loc6_ * 0.5 + _loc5_;
            _SafeStr_433.y = param3._SafeStr_193;
            _SafeStr_392.x = _loc6_ - _loc7_;
            _SafeStr_392.y = 0;
         }
         return _SafeCls_19._SafeStr_2971(param1,param2,param4,_SafeStr_433,_SafeStr_392,_loc5_);
      }
      
      public function _SafeStr_3051() : void
      {
         var _loc1_:_SafeCls_94 = null;
         var _loc2_:_SafeCls_91 = null;
         this._SafeStr_126 = null;
         this._SafeStr_118 = null;
         this.mEquippedItem = null;
         for each(_loc1_ in this._SafeStr_334)
         {
            _loc1_._SafeStr_1348();
         }
         this._SafeStr_334 = null;
         for each(_loc2_ in this._SafeStr_480)
         {
            _loc2_._SafeStr_956();
         }
         this._SafeStr_480 = null;
         if(this.mActivePower)
         {
            this.mActivePower._SafeStr_956();
         }
         this.mActivePower = null;
      }
      
      public function _SafeStr_2701(param1:uint) : void
      {
         var _loc7_:_SafeCls_40 = null;
         var _loc8_:_SafeCls_91 = null;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:_SafeCls_2 = null;
         var _loc12_:uint = 0;
         var _loc13_:Boolean = false;
         var _loc14_:_SafeCls_25 = null;
         var _loc15_:Boolean = false;
         var _loc16_:Point = null;
         var _loc17_:Boolean = false;
         var _loc18_:String = null;
         var _loc19_:_SafeCls_2 = null;
         var _loc20_:_SafeCls_94 = null;
         var _loc2_:Number = this._SafeStr_126._SafeStr_152 - this._SafeStr_1902;
         var _loc3_:Number = this._SafeStr_126._SafeStr_162 - this._SafeStr_2021;
         var _loc4_:* = int(this._SafeStr_757.length - 1);
         while(_loc4_ >= 0)
         {
            _loc7_ = this._SafeStr_757[_loc4_];
            if(_loc7_._SafeStr_716)
            {
               this._SafeStr_757.splice(_loc4_,1);
            }
            else
            {
               _loc7_._SafeStr_120.x += _loc2_;
               _loc7_._SafeStr_120.y += _loc3_;
            }
            _loc4_--;
         }
         this._SafeStr_1902 = this._SafeStr_126._SafeStr_152;
         this._SafeStr_2021 = this._SafeStr_126._SafeStr_162;
         this._SafeStr_3446();
         var _loc5_:* = int(this._SafeStr_480.length - 1);
         while(_loc5_ >= 0)
         {
            _loc8_ = this._SafeStr_480[_loc5_];
            if(!_loc8_._SafeStr_2236(param1))
            {
               _loc8_._SafeStr_956();
               this._SafeStr_480.splice(_loc5_,1);
            }
            _loc5_--;
         }
         if(this.mActivePower)
         {
            _loc9_ = this.mActivePower._SafeStr_2236(param1);
            _loc10_ = Boolean(this.mActivePower._SafeStr_1450) && param1 >= this.mActivePower._SafeStr_1450;
            if(!_loc9_ || _loc10_)
            {
               _loc11_ = this.mActivePower._SafeStr_122;
               _loc12_ = this.mActivePower._SafeStr_514;
               _loc13_ = this.mActivePower._SafeStr_267;
               _loc14_ = this.mActivePower._SafeStr_318;
               _loc15_ = this.mActivePower._SafeStr_920;
               _loc16_ = this.mActivePower._SafeStr_225;
               _loc17_ = this.mActivePower._SafeStr_471;
               if(_loc11_._SafeStr_1786)
               {
                  this.mbAirControlExhausted = true;
               }
               _loc18_ = _loc11_._SafeStr_626;
               if(Boolean(_loc11_._SafeStr_495) && Boolean(this.mActivePower._SafeStr_981))
               {
                  _loc18_ = _loc11_._SafeStr_495;
               }
               else if(Boolean(_loc11_._SafeStr_819) && _loc15_)
               {
                  _loc18_ = _loc11_._SafeStr_819;
               }
               if(_loc14_ && _loc14_.mCombatState._SafeStr_1945 && _loc18_ == "HammerSmashHitWitch")
               {
                  _loc18_ = "HammerSmashStunCancelWitch";
               }
               if(_loc10_)
               {
                  _loc11_ = this.mActivePower._SafeStr_122;
                  this._SafeStr_480.push(this.mActivePower);
                  this.mActivePower = null;
               }
               else
               {
                  this.mActivePower._SafeStr_956();
                  this.mActivePower = null;
               }
               if(Boolean(_loc18_) && _loc13_)
               {
                  _loc19_ = _SafeCls_2._SafeStr_232[_loc18_];
                  if((Boolean(_loc19_)) && this._SafeStr_1280(_loc19_,_loc12_))
                  {
                     if(!_loc19_._SafeStr_2351)
                     {
                        this.mActivePower._SafeStr_471 = _loc17_;
                     }
                     if(_loc19_._SafeStr_276)
                     {
                        this._SafeStr_126._SafeStr_1347 = true;
                     }
                     this._SafeStr_126._SafeStr_550 = true;
                     if(!_loc19_._SafeStr_921)
                     {
                        this._SafeStr_126._SafeStr_1550 = true;
                     }
                     if(!_loc19_._SafeStr_592)
                     {
                        this.mActivePower._SafeStr_2602 = true;
                     }
                     if(_loc19_._SafeStr_3174)
                     {
                        this.mActivePower._SafeStr_225 = _loc16_;
                     }
                     if(_loc19_._SafeStr_799)
                     {
                        this.mActivePower._SafeStr_318 = _loc14_;
                     }
                     if(_loc19_._SafeStr_2920)
                     {
                        this.mActivePower._SafeStr_920 = _loc15_;
                     }
                  }
               }
            }
         }
         if(this._SafeStr_1668)
         {
            if(!this._SafeStr_126._SafeStr_304(this._SafeStr_118.mTimeThisTick) && !this._SafeStr_126._SafeStr_410)
            {
               this._SafeStr_3288();
            }
         }
         this._SafeStr_3376();
         var _loc6_:* = int(this._SafeStr_334.length - 1);
         while(_loc6_ >= 0)
         {
            _loc20_ = this._SafeStr_334[_loc6_];
            if(!_loc20_._SafeStr_3005())
            {
               _loc20_._SafeStr_1348();
               this._SafeStr_334.splice(_loc6_,1);
               this._SafeStr_733 = true;
            }
            _loc6_--;
         }
      }
      
      public function QueuePower(param1:uint, param2:Boolean = false) : Boolean
      {
         var _loc3_:Boolean = param1 >= ACTION_ATTACK_COMBO1 && param1 <= ACTION_ATTACK_COMBO4;
         var _loc4_:_SafeCls_2 = this.GetPowerTypeFromAction(param1);
         var _loc5_:Boolean = param1 == _SafeStr_415 && this.mbAirControlExhausted;
         if((_loc5_) && this._SafeStr_126.mCurrentAerialJumpCount >= this.mbcJumpCount)
         {
            return false;
         }
         var _loc6_:Boolean = this._SafeStr_1280(_loc4_);
         if((_loc6_) && _loc3_)
         {
            this._SafeStr_811 = param1;
            this._SafeStr_1282 = this._SafeStr_118.mTimeThisTick;
         }
         if(_loc6_ && _loc5_)
         {
            this._SafeStr_126.InputCmdJump(false,true);
         }
         return _loc6_;
      }
      
      public function GetPowerTypeFromAction(param1:uint) : _SafeCls_2
      {
         var _loc3_:String = null;
         var _loc4_:_SafeCls_2 = null;
         var _loc6_:uint = 0;
         var _loc2_:_SafeCls_6 = this.mEquippedItem ? this.mEquippedItem._SafeStr_151 : _SafeCls_6._SafeStr_722;
         if(_loc2_._SafeStr_1231)
         {
            _loc2_ = _SafeCls_6._SafeStr_703;
         }
         var _loc5_:Boolean = param1 >= ACTION_ATTACK_COMBO1 && param1 <= ACTION_ATTACK_COMBO4;
         if((_loc5_) && this._SafeStr_811 && this._SafeStr_118.mTimeThisTick < this._SafeStr_1282 + _SafeStr_1983)
         {
            _loc6_ = ACTION_ATTACK_COMBO1 + _loc2_._SafeStr_552 - 1;
            if(this._SafeStr_811 >= _loc6_)
            {
               param1 = _loc2_._SafeStr_2324;
            }
            else
            {
               param1 = this._SafeStr_811 + 1;
            }
         }
         else
         {
            this._SafeStr_1282 = 0;
            this._SafeStr_811 = 0;
         }
         if(Boolean(_loc2_) && param1 != _SafeStr_1149)
         {
            _loc3_ = _loc2_._SafeStr_243[param1];
         }
         _loc4_ = _SafeCls_2._SafeStr_232[_loc3_];
         if((_loc4_) && this.mbAirControlExhausted && Boolean(_loc4_._SafeStr_1861))
         {
            _loc4_ = _SafeCls_2._SafeStr_232[_loc4_._SafeStr_1861];
         }
         return _loc4_;
      }
      
      public function _SafeStr_1280(param1:_SafeCls_2, param2:uint = 0) : Boolean
      {
         if(!this._SafeStr_2807(param1))
         {
            return false;
         }
         if(param1._SafeStr_3047)
         {
            this._SafeStr_845();
         }
         var _loc3_:uint = param1._SafeStr_739 ? uint(this._SafeStr_1765++) : 0;
         this.mActivePower = new _SafeCls_91(this._SafeStr_118,param1,this._SafeStr_126,_loc3_,param2);
         return true;
      }
      
      public function _SafeStr_3563(param1:_SafeCls_2) : Boolean
      {
         if(!this._SafeStr_2807(param1))
         {
            return false;
         }
         var _loc2_:uint = param1._SafeStr_739 ? uint(this._SafeStr_1765++) : uint(0);
         this.mActivePower = new _SafeCls_91(this._SafeStr_118,param1,this._SafeStr_126,_loc2_);
         return true;
      }
      
      public function _SafeStr_2807(param1:_SafeCls_2) : Boolean
      {
         if(!param1)
         {
            return false;
         }
         if(this.mActivePower)
         {
            return false;
         }
         return true;
      }
      
      public function QueuePickup(param1:Boolean = false) : Boolean
      {
         if(this._SafeStr_126.IsMoveLocked())
         {
            return false;
         }
         if(this.mActivePower)
         {
            return false;
         }
         var _loc2_:_SafeCls_27 = this.FindDefaultPickup(param1);
         if(Boolean(_loc2_) && !_loc2_._SafeStr_474)
         {
            if(Boolean(this._SafeStr_126._SafeStr_137 & _SafeCls_25.LOCAL) && !this._SafeStr_118.IsPlayingWithoutServer())
            {
               this._SafeStr_118._SafeStr_161._SafeStr_3169(this._SafeStr_126,_loc2_._SafeStr_159);
            }
            else
            {
               if(_loc2_._SafeStr_159._SafeStr_151._SafeStr_258 == "InventoryBox")
               {
                  _loc2_._SafeStr_159._SafeStr_151 = _SafeCls_6._SafeStr_416["BasicSword"];
                  _loc2_._SafeStr_1944(_loc2_._SafeStr_159);
               }
               this._SafeStr_2485(_loc2_);
            }
            return true;
         }
         return false;
      }
      
      public function FindDefaultPickup(param1:Boolean = false) : _SafeCls_27
      {
         var _loc6_:uint = 0;
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:_SafeCls_27 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:uint = param1 ? _SafeStr_2013 : _SafeStr_1616;
         var _loc3_:Array = this._SafeStr_118._SafeStr_2222(this._SafeStr_126,this._SafeStr_126.mPhysCenterX,this._SafeStr_126.mPhysCenterY,_loc2_,_loc2_,Game._SafeStr_1483);
         var _loc4_:_SafeCls_27 = null;
         var _loc5_:uint = uint.MAX_VALUE;
         if(_loc3_.length > 0)
         {
            for each(_loc9_ in _loc3_)
            {
               _loc7_ = _loc9_._SafeStr_159._SafeStr_151._SafeStr_258.toUpperCase();
               if(_loc9_._SafeStr_153 == _SafeCls_27._SafeStr_358 && this._SafeStr_126._SafeStr_154._SafeStr_1146(SpawnBot._SafeStr_396) && this._SafeStr_126._SafeStr_154._SafeStr_147 && this._SafeStr_126._SafeStr_154._SafeStr_147._SafeStr_159._SafeStr_173 == _loc9_._SafeStr_159._SafeStr_173)
               {
                  _loc6_ = _SafeStr_2211;
               }
               else if(_loc9_._SafeStr_159._SafeStr_1405 == this._SafeStr_126.mEntID)
               {
                  _loc6_ = _SafeStr_2392;
               }
               else if(_loc7_ == "BOUNCYBOMB")
               {
                  _loc6_ = _SafeStr_1903;
               }
               else if(_loc7_ == "DOOR")
               {
                  _loc6_ = _SafeStr_2245;
               }
               else
               {
                  _loc6_ = _SafeStr_2166;
               }
               if(_loc5_ > _loc6_)
               {
                  _loc5_ = _loc6_;
                  _loc4_ = _loc9_;
               }
               else if(_loc5_ == _loc6_)
               {
                  if(isNaN(_loc8_))
                  {
                     _loc10_ = _loc4_._SafeStr_215 - this._SafeStr_126.mPhysCenterX;
                     _loc11_ = _loc4_._SafeStr_193 - this._SafeStr_126.mPhysCenterY;
                     _loc8_ = _loc10_ * _loc10_ + _loc11_ * _loc11_;
                  }
                  _loc10_ = _loc9_._SafeStr_215 - this._SafeStr_126.mPhysCenterX;
                  _loc11_ = _loc9_._SafeStr_193 - this._SafeStr_126.mPhysCenterY;
                  _loc12_ = _loc10_ * _loc10_ + _loc11_ * _loc11_;
                  if(_loc12_ < _loc8_)
                  {
                     _loc4_ = _loc9_;
                     _loc8_ = _loc12_;
                  }
               }
            }
         }
         if(_loc4_ && _loc4_._SafeStr_153 == _SafeCls_27._SafeStr_358 && (!this._SafeStr_126._SafeStr_154._SafeStr_147 || this._SafeStr_126._SafeStr_154._SafeStr_147._SafeStr_159._SafeStr_173 != _loc4_._SafeStr_159._SafeStr_173))
         {
            _loc4_ = null;
         }
         return _loc4_;
      }
      
      public function _SafeStr_2485(param1:_SafeCls_27) : void
      {
         if(!param1 || param1._SafeStr_474)
         {
            return;
         }
         var _loc2_:_SafeCls_87 = param1._SafeStr_159;
         this._SafeStr_126._SafeStr_2237 = true;
         if(param1._SafeStr_154)
         {
            param1._SafeStr_154._SafeStr_3296();
         }
         this._SafeStr_118.PlaySoundAtPosition(this._SafeStr_126.mEntID,_loc2_._SafeStr_151._SafeStr_2220,this._SafeStr_126._SafeStr_121,this._SafeStr_126.mPhysPosY);
         if(_loc2_._SafeStr_2876)
         {
            if(this._SafeStr_3211(_loc2_))
            {
               if(_loc2_._SafeStr_151._SafeStr_2916)
               {
                  param1._SafeStr_474 = true;
               }
               else
               {
                  this.mActivePower._SafeStr_903 = param1;
               }
            }
         }
         else
         {
            this._SafeStr_845(false);
            this._SafeStr_2919(_loc2_);
            param1._SafeStr_474 = true;
         }
      }
      
      public function _SafeStr_3211(param1:_SafeCls_87) : Boolean
      {
         var _loc2_:_SafeCls_2 = _SafeCls_2._SafeStr_232[param1._SafeStr_151._SafeStr_1715];
         if(!_loc2_)
         {
            return false;
         }
         return this._SafeStr_3563(_loc2_);
      }
      
      public function _SafeStr_2919(param1:_SafeCls_87) : void
      {
         var _loc2_:_SafeCls_18 = null;
         if(param1)
         {
            param1._SafeStr_3551(this._SafeStr_126);
         }
         this.mEquippedItem = param1;
         this._SafeStr_1178 = this._SafeStr_118.mTimeThisTick;
         this._SafeStr_126._SafeStr_508();
         param1._SafeStr_972 = 0;
         if(Boolean(this._SafeStr_126._SafeStr_137 & _SafeCls_25.LOCAL) && this._SafeStr_118.IsPlayingWithoutServer())
         {
            _loc2_ = _SafeCls_18._SafeStr_346[param1._SafeStr_151._SafeStr_2045];
            if(_loc2_)
            {
               this._SafeStr_860(_loc2_,this._SafeStr_126);
            }
         }
         this._SafeStr_811 = 0;
         this._SafeStr_1282 = 0;
      }
      
      public function _SafeStr_993() : void
      {
         if(!this.mEquippedItem)
         {
            return;
         }
         var _loc1_:_SafeCls_18 = _SafeCls_18._SafeStr_346[this.mEquippedItem._SafeStr_151._SafeStr_2045];
         if(Boolean(_loc1_) && this._SafeStr_118.IsPlayingWithoutServer())
         {
            this._SafeStr_1697(_loc1_);
         }
         if(this._SafeStr_118.IsPlayingWithoutServer())
         {
            this._SafeStr_126.mGameStats.HeldItem(this.mEquippedItem._SafeStr_151,this._SafeStr_118.mTimeThisTick - this._SafeStr_1178);
         }
         this.mEquippedItem = null;
         this._SafeStr_126._SafeStr_508();
         this._SafeStr_1282 = 0;
         this._SafeStr_811 = 0;
      }
      
      public function _SafeStr_1401() : void
      {
         if(this._SafeStr_1479)
         {
            return;
         }
         this._SafeStr_1280(_SafeCls_2._SafeStr_738);
         this._SafeStr_438 = this._SafeStr_118.mTimeThisTick;
      }
      
      public function _SafeStr_1134(param1:uint = 0) : _SafeCls_27
      {
         var _loc2_:_SafeCls_2 = null;
         var _loc3_:_SafeCls_18 = null;
         if(!this.mEquippedItem)
         {
            return null;
         }
         if(this.mEquippedItem._SafeStr_151._SafeStr_1979)
         {
            switch(this.mEquippedItem._SafeStr_151._SafeStr_258)
            {
               case "WeaponSummoner":
                  if(this._SafeStr_126._SafeStr_154._SafeStr_1146(SpawnBot._SafeStr_565) || Boolean(this._SafeStr_126._SafeStr_137 & _SafeCls_25._SafeStr_194))
                  {
                     this._SafeStr_126._SafeStr_154._SafeStr_229(SpawnBot._SafeStr_1013);
                     break;
                  }
                  return null;
                  break;
               case "SpawnBotFlyby":
                  if(this._SafeStr_118.IsPlayingWithoutServer())
                  {
                     this._SafeStr_126._SafeStr_154._SafeStr_2689(this._SafeStr_118._SafeStr_760._SafeStr_2939(SpawnBot._SafeStr_396,this._SafeStr_118.mCamera._SafeStr_188.right + SpawnBot._SafeStr_899,0),this._SafeStr_126._SafeStr_121,this._SafeStr_126.mPhysPosY);
                  }
            }
            _loc2_ = _SafeCls_2._SafeStr_232[this.mEquippedItem._SafeStr_151._SafeStr_1438];
            if(!_loc2_ || !_loc2_.castAnim)
            {
               this._SafeStr_126._SafeStr_125._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,_SafeCls_88._SafeStr_1932,false);
            }
            else if(_loc2_)
            {
               this._SafeStr_1280(_loc2_);
            }
            if(this._SafeStr_118.IsPlayingWithoutServer())
            {
               _loc3_ = _SafeCls_18._SafeStr_346[this.mEquippedItem._SafeStr_151._SafeStr_2007];
               if(_loc3_)
               {
                  this._SafeStr_860(_loc3_,this._SafeStr_126);
               }
            }
            if(!(this._SafeStr_126._SafeStr_137 & _SafeCls_25._SafeStr_194) && !this._SafeStr_118.IsPlayingWithoutServer())
            {
               this._SafeStr_118._SafeStr_161._SafeStr_3323(this._SafeStr_126,this.mEquippedItem);
            }
            this._SafeStr_993();
            return null;
         }
         if(this._SafeStr_1280(_SafeCls_2._SafeStr_738))
         {
            this.mActivePower._SafeStr_2236(this._SafeStr_118.mTimeThisTick);
         }
         return this._SafeStr_1596(null,_SafeStr_2038,param1);
      }
      
      public function _SafeStr_1596(param1:Point = null, param2:uint = 0, param3:uint = 0) : _SafeCls_27
      {
         var _loc4_:_SafeCls_27 = null;
         var _loc5_:Number = NaN;
         if(this._SafeStr_126.mEntState == _SafeCls_25._SafeStr_292 && this._SafeStr_126._SafeStr_154._SafeStr_1146(SpawnBot._SafeStr_523) && Boolean(this._SafeStr_126._SafeStr_154._SafeStr_147))
         {
            _loc4_ = this._SafeStr_126._SafeStr_154._SafeStr_147;
            this._SafeStr_126._SafeStr_154._SafeStr_147 = null;
            _loc4_._SafeStr_154 = null;
            this._SafeStr_126._SafeStr_154._SafeStr_229(SpawnBot._SafeStr_230);
         }
         else
         {
            if(!this.mEquippedItem)
            {
               return null;
            }
            _loc4_ = new _SafeCls_27(this._SafeStr_118,this.mEquippedItem,this._SafeStr_126.mPhysCenterX,this._SafeStr_126.mPhysCenterY);
            _loc5_ = this.mEquippedItem._SafeStr_151._SafeStr_163 - _SafeCls_25._SafeStr_884;
            if(this._SafeStr_126.mbAirborne && this._SafeStr_126._SafeStr_3074(_loc5_))
            {
               _loc4_.mPhysPosY = this._SafeStr_126.mPhysPosY + _loc5_;
            }
            switch(this.mEquippedItem._SafeStr_151._SafeStr_258)
            {
               case "WeaponSummoner":
                  this._SafeStr_126._SafeStr_154._SafeStr_2533();
            }
         }
         param1 ||= this._SafeStr_3063(param2,param3);
         _loc4_._SafeStr_1719(param1,this._SafeStr_126.mEntID);
         _loc4_._SafeStr_2692 = this._SafeStr_118.mTimeThisTick;
         if(!(this._SafeStr_126._SafeStr_137 & _SafeCls_25._SafeStr_194) && !this._SafeStr_118.IsPlayingWithoutServer())
         {
            this._SafeStr_118._SafeStr_161._SafeStr_2877(this._SafeStr_126,_loc4_,param1);
         }
         if(this.mEquippedItem)
         {
            this._SafeStr_118._SafeStr_270.push(_loc4_);
            this._SafeStr_438 = 0;
            this._SafeStr_118.PlaySoundAtPosition(this._SafeStr_126.mEntID,this._SafeStr_569(_SafeStr_1617),this._SafeStr_126.mPhysCenterX,this._SafeStr_126.mPhysCenterY);
         }
         this._SafeStr_993();
         if(Boolean(this.mActivePower) && this.mActivePower._SafeStr_122 == _SafeCls_2._SafeStr_738)
         {
            this.mActivePower._SafeStr_225 = new Point(this._SafeStr_126.mPhysCenterX + param1.x,this._SafeStr_126.mPhysCenterY + param1.y);
            this.mActivePower._SafeStr_1683();
         }
         return _loc4_;
      }
      
      private function _SafeStr_3063(param1:uint, param2:uint) : Point
      {
         var _loc3_:Point = new Point();
         var _loc4_:Number = _SafeStr_1964 * (1 + _SafeStr_1950 * _SafeStr_2707(param1));
         if(Boolean(param2) && !this._SafeStr_126.mWallSliding)
         {
            if(Boolean(param2 & (_SafeCls_24._SafeStr_268 | _SafeCls_24._SafeStr_236)) && Boolean(param2 & (_SafeCls_24._SafeStr_220 | _SafeCls_24._SafeStr_221)))
            {
               _loc4_ /= Math.SQRT2;
            }
            _loc3_.y = param2 & _SafeCls_24._SafeStr_268 ? -_loc4_ : (param2 & _SafeCls_24._SafeStr_236 ? _loc4_ : 0);
            _loc3_.x = param2 & _SafeCls_24._SafeStr_220 ? -_loc4_ : (param2 & _SafeCls_24._SafeStr_221 ? _loc4_ : 0);
         }
         else
         {
            _loc3_.x = this._SafeStr_126._SafeStr_182 ? -_loc4_ : _loc4_;
         }
         _loc3_.x += this._SafeStr_126.mVelocityX;
         _loc3_.y += this._SafeStr_126.mVelocityY / 2;
         return _loc3_;
      }
      
      public function _SafeStr_845(param1:Boolean = true) : _SafeCls_27
      {
         if(!this.mEquippedItem)
         {
            return null;
         }
         switch(this.mEquippedItem._SafeStr_151._SafeStr_258)
         {
            case "WeaponSummoner":
               this._SafeStr_126._SafeStr_154._SafeStr_2533();
         }
         var _loc2_:_SafeCls_27 = new _SafeCls_27(this._SafeStr_118,this.mEquippedItem,this._SafeStr_126.mPhysCenterX,this._SafeStr_126.mPhysCenterY);
         _loc2_._SafeStr_1104 = 0;
         _loc2_._SafeStr_197 = this._SafeStr_126._SafeStr_182 ? 20 : -20;
         _loc2_._SafeStr_181 = -25;
         _loc2_._SafeStr_153 = _SafeCls_27._SafeStr_633;
         this._SafeStr_118._SafeStr_270.push(_loc2_);
         if(param1 && !(this._SafeStr_126._SafeStr_137 & _SafeCls_25._SafeStr_194) && !this._SafeStr_118.IsPlayingWithoutServer())
         {
            this._SafeStr_118._SafeStr_161._SafeStr_2877(this._SafeStr_126,_loc2_);
         }
         this._SafeStr_993();
         return _loc2_;
      }
      
      public function _SafeStr_1942(param1:_SafeCls_2, param2:_SafeCls_40, param3:uint, param4:_SafeCls_25, param5:Point, param6:uint) : void
      {
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Point = null;
         var _loc12_:_SafeCls_0 = null;
         var _loc13_:_SafeCls_20 = null;
         var _loc14_:_SafeCls_20 = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         switch(param3)
         {
            case _SafeCls_2._SafeStr_1618:
               param2._SafeStr_120.x = this._SafeStr_126._SafeStr_152;
               param2._SafeStr_120.y = this._SafeStr_126._SafeStr_162;
               break;
            case _SafeCls_2._SafeStr_1652:
               param2._SafeStr_120.x = this._SafeStr_126._SafeStr_152;
               param2._SafeStr_120.y = this._SafeStr_126._SafeStr_162 - this._SafeStr_126._SafeStr_144._SafeStr_163;
               break;
            case _SafeCls_2._SafeStr_1440:
               _loc7_ = param1._SafeStr_333 ? param1._SafeStr_333[param6] : param1._SafeStr_505;
               param2._SafeStr_120.x = this._SafeStr_126._SafeStr_152 + (this._SafeStr_126._SafeStr_665() ? -_loc7_ : _loc7_);
               param2._SafeStr_120.y = this._SafeStr_126._SafeStr_162;
               break;
            case _SafeCls_2._SafeStr_1628:
               param2._SafeStr_120.x = param5.x;
               param2._SafeStr_120.y = param5.y;
               break;
            case _SafeCls_2._SafeStr_1741:
               _loc8_ = param5.x;
               _loc9_ = param5.y;
               _loc10_ = new Point();
               _loc11_ = new Point();
               _loc12_ = this._SafeStr_118._SafeStr_165;
               if(param1._SafeStr_127 == _SafeCls_2._SafeStr_723)
               {
                  _loc19_ = param1._SafeStr_333 ? param1._SafeStr_333[param6] : param1._SafeStr_505;
                  _loc20_ = this._SafeStr_126._SafeStr_665() ? -1 : 1;
                  _loc8_ += _loc20_ * _loc19_;
               }
               _loc13_ = _loc12_._SafeStr_174(_loc8_,_loc9_ + 1,new Point(0,-202),_loc10_,null,null,null,_SafeCls_0._SafeStr_179 | _SafeCls_0._SafeStr_291,_SafeCls_0._SafeStr_1605);
               _loc14_ = _loc12_._SafeStr_174(_loc8_,_loc9_ - 1,new Point(0,202),_loc11_,null,null,null,_SafeCls_0._SafeStr_179 | _SafeCls_0._SafeStr_291,0);
               _loc15_ = _loc13_ ? Math.abs(_loc10_.y - _loc9_) : 10000;
               _loc16_ = _loc14_ ? Math.abs(_loc11_.y - _loc9_) : 10000;
               if(_loc16_ <= 200 && _loc16_ <= _loc15_)
               {
                  param5.x = _loc11_.x;
                  param5.y = _loc11_.y;
               }
               else if(_loc15_ <= 200 && _loc15_ <= _loc16_)
               {
                  param5.x = _loc10_.x;
                  param5.y = _loc10_.y;
               }
               _loc17_ = param1._SafeStr_367 ? param1._SafeStr_367[param6] : param1._SafeStr_669;
               param5.y += _loc17_;
               param2._SafeStr_120.x = param5.x;
               param2._SafeStr_120.y = param5.y;
               break;
            case _SafeCls_2._SafeStr_1399:
               param2._SafeStr_120.x = this._SafeStr_126._SafeStr_215;
               param2._SafeStr_120.y = this._SafeStr_126._SafeStr_193;
               break;
            case _SafeCls_2._SafeStr_1797:
               _loc7_ = param1._SafeStr_333 ? param1._SafeStr_333[param6] : param1._SafeStr_505;
               _loc17_ = param1._SafeStr_367 ? param1._SafeStr_367[param6] : param1._SafeStr_669;
               _loc18_ = this._SafeStr_126._SafeStr_665() ? int(-_loc7_) : _loc7_;
               param2._SafeStr_120.x = this._SafeStr_126._SafeStr_215 + _loc18_;
               param2._SafeStr_120.y = this._SafeStr_126._SafeStr_193 + _loc17_;
               break;
            case _SafeCls_2._SafeStr_1796:
               param2._SafeStr_120.x = param4._SafeStr_152;
               param2._SafeStr_120.y = param4._SafeStr_162;
               break;
            case _SafeCls_2._SafeStr_1632:
               param2._SafeStr_120.x = param4._SafeStr_152;
               param2._SafeStr_120.y = param4._SafeStr_162 - param4._SafeStr_144._SafeStr_163;
               break;
            case _SafeCls_2._SafeStr_1754:
               param2._SafeStr_120.x = param4._SafeStr_215;
               param2._SafeStr_120.y = param4._SafeStr_193;
         }
      }
      
      public function _SafeStr_3319(param1:_SafeCls_25) : uint
      {
         if(!param1)
         {
            return 0;
         }
         var _loc2_:uint = 0;
         if(param1._SafeStr_284 > 400)
         {
            _loc2_ = 5;
         }
         else if(param1._SafeStr_284 > 300)
         {
            _loc2_ = 4;
         }
         else if(param1._SafeStr_284 > 200)
         {
            _loc2_ = 3;
         }
         else if(param1._SafeStr_284 > 100)
         {
            _loc2_ = 2;
         }
         else if(param1._SafeStr_284 > 50)
         {
            _loc2_ = 1;
         }
         return _loc2_;
      }
      
      public function _SafeStr_2573(param1:_SafeCls_2, param2:_SafeCls_25, param3:uint) : void
      {
         if(param1._SafeStr_2446 && param3 < param1._SafeStr_274.length && !param1._SafeStr_274[param3])
         {
            return;
         }
         if(param1._SafeStr_893)
         {
            var _loc4_:GfxType = param1._SafeStr_893[uint(Math.random() * param1._SafeStr_893.length)];
         }
         else if(param1._SafeStr_1390)
         {
            _loc4_ = param1._SafeStr_1390[param3 % param1._SafeStr_1390.length];
         }
         if(Boolean(param1._SafeStr_925) && (!param1._SafeStr_2766 || this.mActivePower && param1 == this.mActivePower._SafeStr_122 && !this.mActivePower._SafeStr_981))
         {
            if(param1._SafeStr_1734)
            {
               if(param3 < param1._SafeStr_1734.length)
               {
                  this._SafeStr_118.PlaySoundAtPosition(this._SafeStr_126.mEntID,param1._SafeStr_1734[param3],this._SafeStr_126._SafeStr_215,this._SafeStr_126._SafeStr_193);
               }
            }
            else
            {
               this._SafeStr_118.PlaySoundAtPosition(this._SafeStr_126.mEntID,param1._SafeStr_925,this._SafeStr_126._SafeStr_215,this._SafeStr_126._SafeStr_193);
            }
         }
      }
      
      public function _SafeStr_2614(param1:_SafeCls_2, param2:_SafeCls_91, param3:Point, param4:Point, param5:Array, param6:uint, param7:uint, param8:Dictionary, param9:uint, param10:uint = 0, param11:Boolean = false, param12:uint = 0, param13:Point = null) : uint
      {
         var _loc15_:Point = null;
         var _loc16_:Object = null;
         var _loc17_:Vector.<String> = null;
         var _loc18_:_SafeCls_25 = null;
         var _loc19_:Point = null;
         var _loc20_:Point = null;
         var _loc21_:Point = null;
         var _loc22_:Point = null;
         var _loc23_:Boolean = false;
         var _loc24_:Point = null;
         var _loc25_:SpawnBot = null;
         var _loc26_:String = null;
         var _loc27_:_SafeCls_18 = null;
         var _loc14_:uint = param7;
         for each(_loc16_ in param5)
         {
            if(_loc16_ is _SafeCls_25)
            {
               _loc18_ = _loc16_ as _SafeCls_25;
               if(param1._SafeStr_1583 && _loc18_.mEntState == _SafeCls_25._SafeStr_572 && (!param8 || !param8[_loc18_]))
               {
                  _loc18_._SafeStr_3388(this._SafeStr_126);
               }
               if(_loc18_._SafeStr_1193() && (!param8 || !param8[_loc18_]) && (!param1._SafeStr_872 || !_loc18_.mCombatState.mActivePower || !_loc18_.mCombatState.mActivePower._SafeStr_122._SafeStr_664))
               {
                  _loc19_ = !param1._SafeStr_2651 || _loc18_ == param2._SafeStr_318 ? param13 : null;
                  param4 = new Point(_loc18_.mPhysCenterX,_loc18_.mPhysCenterY);
                  _loc15_ = this._SafeStr_2500(param3,param4,param1,param6,_loc19_,param11);
                  if(!_loc15_ || _loc15_.length == 0)
                  {
                     _loc15_ ||= new Point();
                     _loc15_.y = 1;
                     _loc15_.x = this._SafeStr_126._SafeStr_182 ? -1 : 1;
                  }
                  if(param1._SafeStr_241 == "ForcefieldBounce" && (Boolean(_loc18_.mVelocityX) || Boolean(_loc18_.mVelocityY)))
                  {
                     _loc15_.x = -_loc18_.mVelocityX;
                     _loc15_.y = -_loc18_.mVelocityY;
                  }
                  _loc20_ = new Point();
                  _loc21_ = new Point(param4.x - param3.x,param4.y - param3.y);
                  _loc22_ = new Point();
                  _loc23_ = !param1._SafeStr_2475 && this._SafeStr_118._SafeStr_165._SafeStr_174(param3.x,param3.y,_loc21_,_loc20_,null,null,null,_SafeCls_0._SafeStr_179,0) != null;
                  if(_loc23_)
                  {
                     _loc24_ = param4.y > param3.y ? new Point(param3.x,param3.y + 100) : new Point(param3.x,param3.y - 100);
                     _loc21_ = new Point(_loc24_.x - param3.x,_loc24_.y - param3.y);
                     _loc22_ = new Point(param4.x - _loc24_.x,param4.y - _loc24_.y);
                     _loc23_ = Boolean(this._SafeStr_118._SafeStr_165._SafeStr_174(param3.x,param3.y,_loc21_,_loc20_,null,null,null,_SafeCls_0._SafeStr_179,0)) || Boolean(this._SafeStr_118._SafeStr_165._SafeStr_174(_loc24_.x,_loc24_.y,_loc22_,_loc20_,null,null,null,_SafeCls_0._SafeStr_179,0));
                     if(_loc23_)
                     {
                        _loc24_ = param4.x > param3.x ? new Point(param3.x + 100,param3.y) : new Point(param3.x - 100,param3.y);
                        _loc21_ = new Point(_loc24_.x - param3.x,_loc24_.y - param3.y);
                        _loc22_ = new Point(param4.x - _loc24_.x,param4.y - _loc24_.y);
                        _loc23_ = Boolean(this._SafeStr_118._SafeStr_165._SafeStr_174(param3.x,param3.y,_loc21_,_loc20_,null,null,null,_SafeCls_0._SafeStr_179,0)) || Boolean(this._SafeStr_118._SafeStr_165._SafeStr_174(_loc24_.x,_loc24_.y,_loc22_,_loc20_,null,null,null,_SafeCls_0._SafeStr_179,0));
                     }
                  }
                  if(!_loc23_)
                  {
                     _loc14_++;
                     this._SafeStr_2907(param1,_loc18_,_loc15_,param6,_loc14_ == 1,_loc14_,param9,param10,param12);
                  }
               }
            }
            else if(_loc16_ is SpawnBot)
            {
               _loc25_ = _loc16_ as SpawnBot;
               if(!param8 || !param8[_loc25_])
               {
                  param4 = new Point(_loc25_.mPhysCenterX,_loc25_.mPhysCenterY);
                  _loc15_ = this._SafeStr_2500(param3,param4,param1,param6,null,param11);
                  if(!_loc15_ || _loc15_.length == 0)
                  {
                     _loc15_ ||= new Point();
                     _loc15_.y = 1;
                     _loc15_.x = this._SafeStr_126._SafeStr_182 ? -1 : 1;
                  }
                  _loc14_++;
                  this._SafeStr_3235(param1,_loc25_,_loc15_,param6);
               }
            }
         }
         _loc17_ = param1._SafeStr_1086 ? param1._SafeStr_1086.slice() : null;
         if((Boolean(_loc17_)) && (!param1._SafeStr_3185 || !param6))
         {
            for each(_loc26_ in _loc17_)
            {
               _loc27_ = _SafeCls_18._SafeStr_346[_loc26_];
               if(_loc27_)
               {
                  this._SafeStr_860(_loc27_,this._SafeStr_126,param1);
               }
            }
         }
         return _loc14_;
      }
      
      public function _SafeStr_2907(param1:_SafeCls_2, param2:_SafeCls_25, param3:Point, param4:uint, param5:Boolean, param6:uint, param7:uint, param8:uint, param9:uint = 0) : void
      {
         var _loc10_:uint = 0;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:_SafeCls_26 = null;
         var _loc14_:Boolean = false;
         var _loc15_:uint = 0;
         var _loc16_:Number = NaN;
         var _loc17_:uint = 0;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:int = 0;
         var _loc22_:Number = NaN;
         var _loc23_:_SafeCls_8 = null;
         var _loc24_:Vector.<String> = null;
         var _loc25_:String = null;
         var _loc26_:_SafeCls_18 = null;
         var _loc27_:int = 0;
         if(Boolean(this._SafeStr_118._SafeStr_161) && !this._SafeStr_118.IsPlayingWithoutServer())
         {
            this._SafeStr_118._SafeStr_161._SafeStr_3027(this._SafeStr_126,param1,param2,param7,param4,param3,param8,param9);
         }
         else
         {
            this._SafeStr_2573(param1,param2,param4);
            _loc10_ = param1._SafeStr_274.length;
            _loc11_ = param4 < _loc10_ ? param1._SafeStr_274[param4] : param1._SafeStr_274[0];
            _loc12_ = param9 * param1._SafeStr_1989;
            _loc13_ = param2.mCombatState;
            _loc11_ += _loc12_;
            _loc11_ = _loc11_ * (this._SafeStr_635 / _loc13_._SafeStr_704);
            if(_loc11_ < 0)
            {
               _loc21_ = -1 * param2._SafeStr_284;
               _loc11_ = _loc21_ < _loc11_ ? _loc11_ : _loc21_;
            }
            _loc14_ = param1._SafeStr_1584 || _SafeCls_25._SafeStr_2941(this._SafeStr_126,param2);
            if((_loc14_) && _loc11_ < 0 || !_loc14_ && _loc11_ > 0)
            {
               return;
            }
            _loc15_ = param1._SafeStr_366.length;
            _loc16_ = param4 < _loc15_ ? param1._SafeStr_366[param4] : param1._SafeStr_366[0];
            _loc17_ = param1._SafeStr_385.length;
            _loc18_ = param4 < _loc17_ ? param1._SafeStr_385[param4] : param1._SafeStr_385[0];
            _loc19_ = param9 * param1._SafeStr_2991 * 0.5;
            if(param1._SafeStr_325)
            {
               _loc22_ = 1 + (param1._SafeStr_560 ? param8 / param1._SafeStr_560 * _SafeStr_2336 : 0);
               _loc11_ *= _loc22_;
               _loc16_ *= _loc22_;
            }
            _loc20_ = param2.mCombatState._SafeStr_3506(this._SafeStr_126,_loc16_ + _loc19_,_loc11_);
            _loc20_ = _loc20_ + (_loc18_ + _loc19_);
            param3.normalize(_loc20_);
            if(_loc11_)
            {
               param2.mCombatState._SafeStr_2529(this._SafeStr_126,_loc11_,param1,param1._SafeStr_539);
            }
            if(_loc20_)
            {
               param2.mCombatState._SafeStr_1856(this._SafeStr_126,param3,param1);
               param2.mCombatState._SafeStr_3171(_loc11_);
               _loc23_ = _SafeCls_8._SafeStr_848[this._SafeStr_126._SafeStr_144._SafeStr_282];
               if(_loc23_)
               {
                  param2._SafeStr_2568(_loc23_);
               }
            }
            if(param1._SafeStr_2091 && param1 == this.mActivePower._SafeStr_122)
            {
               param2._SafeStr_2067(this.mActivePower);
            }
         }
         if(!(this._SafeStr_126._SafeStr_137 & _SafeCls_25._SafeStr_194) && this._SafeStr_118.IsPlayingWithoutServer())
         {
            _loc24_ = param1._SafeStr_1206 ? param1._SafeStr_1206.slice() : null;
            if(param1._SafeStr_3378 && _loc24_ && _loc24_.length > param4)
            {
               _loc24_ = _loc24_.slice(param4,param4 + 1);
            }
            if(_loc24_)
            {
               if(!param1._SafeStr_2255 && (!param1._SafeStr_3037 || param6 == 1))
               {
                  for each(_loc25_ in _loc24_)
                  {
                     _loc26_ = _SafeCls_18._SafeStr_346[_loc25_];
                     if(_loc26_)
                     {
                        if((!param1._SafeStr_2697 || param4 == param1._SafeStr_260.length - 1) && (!param1._SafeStr_2719 || param4 == 0))
                        {
                           param2.mCombatState._SafeStr_860(_loc26_,this._SafeStr_126,param1);
                        }
                     }
                  }
               }
               else if(param1._SafeStr_2255)
               {
                  _loc27_ = Math.random() * _loc24_.length;
                  _loc25_ = _loc24_[_loc27_];
                  _loc26_ = _SafeCls_18._SafeStr_346[_loc25_];
                  if((Boolean(_loc26_)) && !_loc26_._SafeStr_1371)
                  {
                     if((!param1._SafeStr_2697 || param4 == param1._SafeStr_260.length - 1) && (!param1._SafeStr_2719 || param4 == 0))
                     {
                        param2.mCombatState._SafeStr_860(_loc26_,this._SafeStr_126,param1);
                     }
                  }
               }
            }
         }
      }
      
      private function _SafeStr_3235(param1:_SafeCls_2, param2:SpawnBot, param3:Point, param4:uint) : void
      {
         if(this._SafeStr_118._SafeStr_161)
         {
            this._SafeStr_118._SafeStr_161._SafeStr_3167(param1,param2,param3,param4);
         }
      }
      
      public function _SafeStr_2529(param1:_SafeCls_25, param2:Number, param3:_SafeCls_2, param4:uint) : void
      {
         this._SafeStr_126._SafeStr_3387(param2,false,param1,param3,param4);
         if(Boolean(this.mEquippedItem) && this._SafeStr_118.IsPlayingWithoutServer())
         {
            this.mEquippedItem._SafeStr_972 += param2;
         }
         if(Boolean(param3) && param2 > 0)
         {
            if(param1)
            {
               this._SafeStr_126._SafeStr_2878 += param2;
               this._SafeStr_126._SafeStr_3224 = this._SafeStr_126._SafeStr_152 < param1._SafeStr_152 ? -1 : 1;
            }
         }
      }
      
      public function _SafeStr_1856(param1:_SafeCls_25, param2:Point, param3:_SafeCls_2 = null) : void
      {
         var _loc7_:_SafeCls_6 = null;
         if(!param2)
         {
            return;
         }
         var _loc4_:Number = param3 ? param3._SafeStr_1915 : _SafeCls_25._SafeStr_1499;
         if(Boolean(param3) && param3._SafeStr_241 == "PlayerCollision")
         {
            this._SafeStr_126._SafeStr_2778 = true;
         }
         var _loc5_:Number = param2.length;
         if(_loc5_)
         {
            this._SafeStr_126._SafeStr_1112(param2.x,param2.y,_loc4_);
         }
         if(Boolean(this.mEquippedItem) && this._SafeStr_118.IsPlayingWithoutServer())
         {
            _loc7_ = this.mEquippedItem._SafeStr_151;
            if(this.mEquippedItem._SafeStr_972 >= _loc7_._SafeStr_2814 && _loc5_ >= _loc7_._SafeStr_2774)
            {
               this._SafeStr_845(true);
            }
         }
         var _loc6_:uint = uint(_SafeCls_25._SafeStr_194 | _SafeCls_25.BOT | _SafeCls_25._SafeStr_413 | _SafeCls_25._SafeStr_252);
         if(Boolean(param3) && param3._SafeStr_2440)
         {
            this._SafeStr_118.mCamera._SafeStr_706(this._SafeStr_126._SafeStr_137 & _loc6_ ? _SafeCls_47._SafeStr_2047 : _SafeCls_47._SafeStr_2412);
         }
         else if(!(this._SafeStr_126._SafeStr_137 & _loc6_) || param1 && !(param1._SafeStr_137 & _loc6_))
         {
            if(Boolean(param3) && Boolean(param3._SafeStr_859))
            {
               this._SafeStr_118.mCamera._SafeStr_706(param3._SafeStr_859);
            }
            else if(_loc5_ >= _SafeCls_25._SafeStr_386)
            {
               this._SafeStr_118.mCamera._SafeStr_706(_SafeCls_47._SafeStr_1868);
            }
            else if(_loc5_ >= _SafeCls_25._SafeStr_386 / 2)
            {
               this._SafeStr_118.mCamera._SafeStr_706(_SafeCls_47._SafeStr_1083);
            }
            else if(_loc5_ > 0)
            {
               this._SafeStr_118.mCamera._SafeStr_706(_SafeCls_47._SafeStr_1716);
            }
         }
         if(param1)
         {
            this._SafeStr_126._SafeStr_709 = param1.mEntID;
            this._SafeStr_126._SafeStr_1099 = this._SafeStr_118.mTimeThisTick + _SafeCls_25._SafeStr_2241;
         }
      }
      
      public function _SafeStr_2500(param1:Point, param2:Point, param3:_SafeCls_2, param4:uint, param5:Point = null, param6:Boolean = false) : Point
      {
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(!param1 || !param2)
         {
            return null;
         }
         if(param5)
         {
            _loc7_ = new Point(param5.x,param5.y);
         }
         else
         {
            _loc7_ = new Point(param2.x - param1.x,param2.y - param1.y);
         }
         if(param3)
         {
            _loc8_ = param3._SafeStr_1931 ? param3._SafeStr_1931[param4] : param3._SafeStr_1418;
            _loc9_ = param3._SafeStr_1848 ? param3._SafeStr_1848[param4] : param3._SafeStr_1815;
            _loc7_.x += param6 ? -1 * _loc8_ : _loc8_;
            _loc7_.y += _loc9_;
            if(param3._SafeStr_2192)
            {
               _loc10_ = Math.abs(_loc7_.x);
               _loc11_ = Math.abs(_loc7_.y);
               if(_loc10_ > _loc11_)
               {
                  _loc7_.y = _loc7_.y > 0 ? _loc10_ : -_loc10_;
               }
               else if(_loc10_ < _loc11_)
               {
                  _loc7_.x = _loc7_.x > 0 ? _loc11_ : -_loc11_;
               }
            }
         }
         _loc7_.normalize(1);
         if(!_loc7_.x && !_loc7_.y)
         {
            _loc7_.y = -1;
         }
         return _loc7_;
      }
      
      public function _SafeStr_3506(param1:_SafeCls_25, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = (this._SafeStr_126._SafeStr_284 + param3) / 100;
         return param2 * (_loc4_ + _loc4_ * _loc4_ / 2) * param1.mCombatState._SafeStr_687 / this._SafeStr_663;
      }
      
      public function _SafeStr_2248(param1:_SafeCls_18) : _SafeCls_94
      {
         var _loc2_:_SafeCls_94 = null;
         for each(_loc2_ in this._SafeStr_334)
         {
            if(param1 == _loc2_._SafeStr_202)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _SafeStr_860(param1:_SafeCls_18, param2:_SafeCls_25, param3:_SafeCls_2 = null, param4:uint = 1) : void
      {
         var _loc5_:Boolean = _SafeCls_25._SafeStr_2941(param2,this._SafeStr_126) || Boolean(param3) && param3._SafeStr_1584;
         if((_loc5_) && !param1._SafeStr_1371 || !_loc5_ && param1._SafeStr_1371)
         {
            return;
         }
         var _loc6_:uint = param2.mEntID;
         if(param1._SafeStr_2509 && !(this._SafeStr_126._SafeStr_137 & _SafeCls_25._SafeStr_194) && this._SafeStr_118._SafeStr_161 && !this._SafeStr_118.IsPlayingWithoutServer())
         {
            this._SafeStr_118._SafeStr_161._SafeStr_3405(this._SafeStr_126,_loc6_,param1._SafeStr_573);
         }
         this._SafeStr_2818(param1,_loc6_,param4);
      }
      
      public function _SafeStr_3377() : void
      {
         var _loc2_:_SafeCls_94 = null;
         var _loc1_:* = int(this._SafeStr_334.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this._SafeStr_334[_loc1_];
            this._SafeStr_1697(_loc2_._SafeStr_202);
            _loc1_--;
         }
      }
      
      public function _SafeStr_1697(param1:_SafeCls_18) : void
      {
         var _loc2_:_SafeCls_94 = this._SafeStr_2248(param1);
         if(_loc2_)
         {
            _loc2_._SafeStr_2799();
            _loc2_._SafeStr_1348();
            this._SafeStr_334.splice(this._SafeStr_334.indexOf(_loc2_),1);
            this._SafeStr_733 = true;
         }
      }
      
      public function _SafeStr_2818(param1:_SafeCls_18, param2:uint, param3:uint) : void
      {
         var _loc4_:_SafeCls_94 = this._SafeStr_2248(param1);
         if(!_loc4_)
         {
            var _loc5_:_SafeCls_25 = this._SafeStr_118._SafeStr_200(param2);
            _loc4_ = new _SafeCls_94(this._SafeStr_126,param1);
            this._SafeStr_334.push(_loc4_);
            this._SafeStr_733 = true;
         }
         _loc4_._SafeStr_3283(param2,param3);
         if(param1._SafeStr_497 > 1)
         {
            this._SafeStr_733 = true;
         }
      }
      
      public function _SafeStr_3348(param1:_SafeCls_18, param2:uint) : void
      {
         var _loc3_:_SafeCls_94 = this._SafeStr_2248(param1);
         if(_loc3_)
         {
            if(_loc3_._SafeStr_3008(param2))
            {
               this._SafeStr_334.splice(this._SafeStr_334.indexOf(_loc3_),1);
               this._SafeStr_733 = true;
            }
         }
      }
      
      private function _SafeStr_3446() : void
      {
         var _loc1_:_SafeCls_94 = null;
         var _loc2_:_SafeCls_18 = null;
         var _loc3_:Boolean = false;
         var _loc4_:uint = 0;
         var _loc5_:_SafeCls_93 = null;
         if(!this._SafeStr_733)
         {
            return;
         }
         this._SafeStr_635 = 1;
         this._SafeStr_704 = 1;
         this._SafeStr_687 = 1;
         this._SafeStr_663 = 1;
         this._SafeStr_2884 = 1;
         this._SafeStr_2926 = 1;
         this._SafeStr_2989 = null;
         this._SafeStr_2389 = 0;
         this._SafeStr_1357 = 0;
         this._SafeStr_2935 = 1;
         this.mbcJumpCount = _SafeCls_25._SafeStr_1304;
         this._SafeStr_1650 = 1;
         this._SafeStr_1791 = 0;
         this._SafeStr_2137 = _SafeCls_25._SafeStr_1054;
         this._SafeStr_1367 = 0;
         this._SafeStr_1929 = _SafeCls_25._SafeStr_1054;
         this._SafeStr_1479 = false;
         this._SafeStr_1415 = false;
         this._SafeStr_1676 = false;
         this._SafeStr_1945 = false;
         for each(_loc1_ in this._SafeStr_334)
         {
            _loc2_ = _loc1_._SafeStr_202;
            _loc3_ = false;
            _loc4_ = _loc1_._SafeStr_2630();
            for each(_loc5_ in _loc1_._SafeStr_411)
            {
               if(_loc5_.mEntID == this._SafeStr_118.clientEntID)
               {
                  _loc3_ = true;
                  break;
               }
            }
            this._SafeStr_635 += _loc2_._SafeStr_2984;
            this._SafeStr_687 += _loc2_._SafeStr_2757;
            this._SafeStr_704 += _loc2_._SafeStr_2622;
            this._SafeStr_663 += _loc2_._SafeStr_2923;
            this._SafeStr_1791 = Math.max(this._SafeStr_1791,_loc2_._SafeStr_2967);
            this._SafeStr_2137 = _loc2_._SafeStr_2370;
            this._SafeStr_1367 = Math.max(this._SafeStr_1367,_loc2_._SafeStr_2765);
            this._SafeStr_1929 = _loc2_._SafeStr_1911;
            this._SafeStr_1415 = _loc2_._SafeStr_2426 || this._SafeStr_1415;
            this._SafeStr_1676 = _loc2_._SafeStr_2476 || this._SafeStr_1676;
            if(Boolean(_loc2_._SafeStr_2646) && _loc2_._SafeStr_1829 > this._SafeStr_2389)
            {
               this._SafeStr_2989 = _loc2_._SafeStr_2646;
               this._SafeStr_2389 = _loc2_._SafeStr_1829;
            }
            if(_loc2_._SafeStr_1051)
            {
               this._SafeStr_1357 = _loc2_._SafeStr_1051;
            }
            if(_loc2_ == _SafeCls_18._SafeStr_995)
            {
               this._SafeStr_1479 = true;
               if(!this._SafeStr_438)
               {
                  this._SafeStr_438 = this._SafeStr_118.mTimeThisTick;
               }
            }
            if(_loc2_._SafeStr_400 == "WitchStun")
            {
               this._SafeStr_1945 = true;
            }
         }
         this._SafeStr_733 = false;
         if(this._SafeStr_635 > _SafeStr_1359)
         {
            this._SafeStr_635 = _SafeStr_1359;
         }
         else if(this._SafeStr_635 < _SafeStr_1671)
         {
            this._SafeStr_635 = _SafeStr_1671;
         }
         if(this._SafeStr_687 > _SafeStr_1441)
         {
            this._SafeStr_687 = _SafeStr_1441;
         }
         else if(this._SafeStr_687 < _SafeStr_1612)
         {
            this._SafeStr_687 = _SafeStr_1612;
         }
         if(this._SafeStr_704 > _SafeStr_974)
         {
            this._SafeStr_704 = _SafeStr_974;
         }
         else if(this._SafeStr_704 < _SafeStr_908)
         {
            this._SafeStr_704 = _SafeStr_908;
         }
         if(this._SafeStr_663 > _SafeStr_974)
         {
            this._SafeStr_663 = _SafeStr_974;
         }
         else if(this._SafeStr_663 < _SafeStr_908)
         {
            this._SafeStr_663 = _SafeStr_908;
         }
         if(this._SafeStr_1357)
         {
            this._SafeStr_126._SafeStr_125._SafeStr_795(this._SafeStr_1357);
         }
      }
      
      public function _SafeStr_1242(param1:Boolean = false) : void
      {
         if(this.mActivePower)
         {
            this.mActivePower._SafeStr_1683(param1);
         }
      }
      
      public function _SafeStr_2685(param1:uint) : void
      {
         if(this.mActivePower)
         {
            this.mActivePower._SafeStr_3176(param1);
         }
      }
      
      public function _SafeStr_3514(param1:_SafeCls_2, param2:_SafeCls_25, param3:Point, param4:Point, param5:_SafeCls_27, param6:Point, param7:Number) : _SafeCls_91
      {
         var _loc8_:_SafeCls_91 = new _SafeCls_91(this._SafeStr_118,param1,this._SafeStr_126,0,0,param3);
         _loc8_._SafeStr_318 = param2;
         _loc8_._SafeStr_1075 = true;
         _loc8_._SafeStr_676 = param4;
         _loc8_._SafeStr_903 = param5;
         _loc8_._SafeStr_2197 = param7;
         _loc8_._SafeStr_2987 = param6 ? uint(param6.length) : 0;
         if(param6)
         {
            _loc8_._SafeStr_2232 = param6;
            _loc8_._SafeStr_471 = param6.x < 0;
         }
         this._SafeStr_480.push(_loc8_);
         return _loc8_;
      }
      
      public function _SafeStr_1157(param1:_SafeCls_2, param2:_SafeCls_25, param3:Point) : _SafeCls_91
      {
         var _loc4_:_SafeCls_91 = new _SafeCls_91(this._SafeStr_118,param1,this._SafeStr_126,0,0,param3);
         _loc4_._SafeStr_318 = param2;
         _loc4_._SafeStr_1075 = true;
         this._SafeStr_480.push(_loc4_);
         return _loc4_;
      }
      
      public function _SafeStr_3609(param1:_SafeCls_2) : _SafeCls_91
      {
         var _loc2_:_SafeCls_91 = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this._SafeStr_480)
         {
            if(_loc2_._SafeStr_122 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _SafeStr_3288() : void
      {
         if(!_SafeStr_1533)
         {
            return;
         }
         this._SafeStr_1668 = 0;
         this._SafeStr_1184 = 0;
         this._SafeStr_1145 = 0;
         this._SafeStr_2454 = 0;
         this._SafeStr_2470 = 0;
      }
      
      public function _SafeStr_3171(param1:int) : void
      {
         if(!_SafeStr_1533)
         {
            return;
         }
         if(!this._SafeStr_1668)
         {
            this._SafeStr_1668 = this._SafeStr_118.mTimeThisTick;
         }
         ++this._SafeStr_1184;
         this._SafeStr_1145 += param1;
         this._SafeStr_2454 = this._SafeStr_1145 * _SafeStr_2277;
         this._SafeStr_2470 = this._SafeStr_1145 * _SafeStr_1981;
         this._SafeStr_2155 = this._SafeStr_1184 > this._SafeStr_2155 ? this._SafeStr_1184 : this._SafeStr_2155;
      }
      
      public function _SafeStr_3376() : void
      {
         this._SafeStr_391 = false;
         this._SafeStr_344 = false;
         this._SafeStr_1599 = false;
         this._SafeStr_1069 = false;
         this._SafeStr_1061 = false;
         this._SafeStr_2019 = false;
         this._SafeStr_996 = false;
         if(!this.mActivePower)
         {
            return;
         }
         var _loc1_:_SafeCls_2 = this.mActivePower._SafeStr_122;
         this._SafeStr_391 = _loc1_._SafeStr_391 && !this.mActivePower._SafeStr_368;
         this._SafeStr_344 = _loc1_._SafeStr_344 || _loc1_._SafeStr_127 != _SafeCls_2._SafeStr_658 && !_loc1_._SafeStr_2304;
         this._SafeStr_2019 = true;
         this._SafeStr_1599 = _loc1_._SafeStr_496;
         this._SafeStr_1069 = _loc1_._SafeStr_1069;
         this._SafeStr_1061 = _loc1_._SafeStr_1061;
         this._SafeStr_996 = _loc1_._SafeStr_996;
      }
      
      public function _SafeStr_2571() : void
      {
         this.mbAirControlExhausted = false;
      }
      
      public function _SafeStr_569(param1:uint) : String
      {
         var _loc3_:String = null;
         var _loc2_:_SafeCls_6 = this.mEquippedItem ? this.mEquippedItem._SafeStr_151 : _SafeCls_6._SafeStr_722;
         switch(param1)
         {
            case _SafeStr_1115:
               _loc3_ = _loc2_._SafeStr_2615;
               break;
            case _SafeStr_1398:
               _loc3_ = _loc2_._SafeStr_2759;
               break;
            case _SafeStr_1473:
               _loc3_ = _loc2_._SafeStr_2901;
               break;
            case _SafeStr_1095:
               _loc3_ = _loc2_._SafeStr_2447;
               break;
            case _SafeStr_1403:
               _loc3_ = _loc2_._SafeStr_2443;
               break;
            case _SafeStr_1544:
               _loc3_ = _loc2_._SafeStr_2464;
               break;
            case _SafeStr_2365:
               _loc3_ = _loc2_._SafeStr_2220;
               break;
            case _SafeStr_1617:
               _loc3_ = _loc2_._SafeStr_2871;
         }
         return _loc3_;
      }
      
      public function _SafeStr_3603(param1:uint) : void
      {
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "_-jR"
 * @identifier _SafeCls_6 = "_-0u"
 * @identifier _SafeCls_8 = "_-So"
 * @identifier _SafeCls_18 = "_-Nn"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_20 = "_-9f"
 * @identifier _SafeCls_24 = "_-3h"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_26 = "_-LQ"
 * @identifier _SafeCls_27 = "_-C7"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_47 = "_-Km"
 * @identifier _SafeCls_87 = "_-CY"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeCls_91 = "_-Lt"
 * @identifier _SafeCls_93 = "_-3a"
 * @identifier _SafeCls_94 = "_-mr"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_121 = "_-Dk"
 * @identifier _SafeStr_122 = "_-dn"
 * @identifier _SafeStr_125 = "_-5"
 * @identifier _SafeStr_126 = "_-Wp"
 * @identifier _SafeStr_127 = "_-jo"
 * @identifier _SafeStr_137 = "_-3"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_144 = "_-Z"
 * @identifier _SafeStr_147 = "_-fd"
 * @identifier _SafeStr_151 = "_-0w"
 * @identifier _SafeStr_152 = "_-PC"
 * @identifier _SafeStr_153 = "_-2k"
 * @identifier _SafeStr_154 = "_-1N"
 * @identifier _SafeStr_159 = "_-eE"
 * @identifier _SafeStr_161 = "_-ve"
 * @identifier _SafeStr_162 = "_-a4"
 * @identifier _SafeStr_163 = "_-eC"
 * @identifier _SafeStr_165 = "_-Ix"
 * @identifier _SafeStr_173 = "_-KG"
 * @identifier _SafeStr_174 = "_-Mt"
 * @identifier _SafeStr_179 = "_-BZ"
 * @identifier _SafeStr_181 = "_-Xr"
 * @identifier _SafeStr_182 = "_-af"
 * @identifier _SafeStr_188 = "_-qs"
 * @identifier _SafeStr_193 = "_-MG"
 * @identifier _SafeStr_194 = "_-rD"
 * @identifier _SafeStr_197 = "_-hJ"
 * @identifier _SafeStr_200 = "_-H-"
 * @identifier _SafeStr_202 = "_-9e"
 * @identifier _SafeStr_215 = "_-Hm"
 * @identifier _SafeStr_220 = "_-g7"
 * @identifier _SafeStr_221 = "_-P6"
 * @identifier _SafeStr_225 = "_-eG"
 * @identifier _SafeStr_229 = "_-Jj"
 * @identifier _SafeStr_230 = "_-51"
 * @identifier _SafeStr_232 = "_-6u"
 * @identifier _SafeStr_236 = "_-JI"
 * @identifier _SafeStr_237 = "_-Q6"
 * @identifier _SafeStr_241 = "_-iM"
 * @identifier _SafeStr_243 = "_-6i"
 * @identifier _SafeStr_252 = "_-E3"
 * @identifier _SafeStr_258 = "_-ES"
 * @identifier _SafeStr_260 = "_-Ie"
 * @identifier _SafeStr_267 = "_-0V"
 * @identifier _SafeStr_268 = "_-as"
 * @identifier _SafeStr_270 = "_-ts"
 * @identifier _SafeStr_274 = "_-ch"
 * @identifier _SafeStr_276 = "_-Td"
 * @identifier _SafeStr_282 = "_-5u"
 * @identifier _SafeStr_284 = "_-Ak"
 * @identifier _SafeStr_291 = "_-Ce"
 * @identifier _SafeStr_292 = "_-6U"
 * @identifier _SafeStr_296 = "_-fC"
 * @identifier _SafeStr_298 = "_-j2"
 * @identifier _SafeStr_304 = "_-FZ"
 * @identifier _SafeStr_307 = "_-mp"
 * @identifier _SafeStr_318 = "_-Zw"
 * @identifier _SafeStr_325 = "_-1L"
 * @identifier _SafeStr_333 = "_-rX"
 * @identifier _SafeStr_334 = "_-qP"
 * @identifier _SafeStr_344 = "_-aP"
 * @identifier _SafeStr_346 = "_-QB"
 * @identifier _SafeStr_358 = "_-la"
 * @identifier _SafeStr_366 = "_-L3"
 * @identifier _SafeStr_367 = "_-4Z"
 * @identifier _SafeStr_368 = "_-aY"
 * @identifier _SafeStr_385 = "_-fb"
 * @identifier _SafeStr_386 = "_-in"
 * @identifier _SafeStr_391 = "_-T1"
 * @identifier _SafeStr_392 = "_-bt"
 * @identifier _SafeStr_396 = "_-Fy"
 * @identifier _SafeStr_400 = "_-5W"
 * @identifier _SafeStr_410 = "_-tN"
 * @identifier _SafeStr_411 = "_-2D"
 * @identifier _SafeStr_413 = "_-a3"
 * @identifier _SafeStr_415 = "_-WH"
 * @identifier _SafeStr_416 = "_-DY"
 * @identifier _SafeStr_419 = "_-Ys"
 * @identifier _SafeStr_433 = "_-r3"
 * @identifier _SafeStr_438 = "_-2E"
 * @identifier _SafeStr_439 = "_-QR"
 * @identifier _SafeStr_460 = "_-VV"
 * @identifier _SafeStr_461 = "_-UT"
 * @identifier _SafeStr_471 = "_-4i"
 * @identifier _SafeStr_474 = "_-WB"
 * @identifier _SafeStr_475 = "_-qb"
 * @identifier _SafeStr_478 = "_-fy"
 * @identifier _SafeStr_480 = "_-tT"
 * @identifier _SafeStr_483 = "_-ta"
 * @identifier _SafeStr_495 = "_-C"
 * @identifier _SafeStr_496 = "_-fw"
 * @identifier _SafeStr_497 = "_-O5"
 * @identifier _SafeStr_505 = "_-A"
 * @identifier _SafeStr_508 = "_-Fj"
 * @identifier _SafeStr_514 = "_-5K"
 * @identifier _SafeStr_523 = "_-Me"
 * @identifier _SafeStr_537 = "_-Hs"
 * @identifier _SafeStr_539 = "_-Se"
 * @identifier _SafeStr_550 = "_-Qb"
 * @identifier _SafeStr_552 = "_-mm"
 * @identifier _SafeStr_560 = "_-er"
 * @identifier _SafeStr_565 = "_-el"
 * @identifier _SafeStr_569 = "_-Za"
 * @identifier _SafeStr_572 = "_-6j"
 * @identifier _SafeStr_573 = "_-A-"
 * @identifier _SafeStr_592 = "_-Hf"
 * @identifier _SafeStr_626 = "_-N"
 * @identifier _SafeStr_633 = "_-en"
 * @identifier _SafeStr_635 = "_-Du"
 * @identifier _SafeStr_658 = "_-HC"
 * @identifier _SafeStr_663 = "_-4S"
 * @identifier _SafeStr_664 = "_-4m"
 * @identifier _SafeStr_665 = "_-oQ"
 * @identifier _SafeStr_669 = "_-hf"
 * @identifier _SafeStr_676 = "_-WM"
 * @identifier _SafeStr_687 = "_-mC"
 * @identifier _SafeStr_703 = "_-ig"
 * @identifier _SafeStr_704 = "_-X7"
 * @identifier _SafeStr_706 = "_-mP"
 * @identifier _SafeStr_709 = "_-bz"
 * @identifier _SafeStr_716 = "_-ND"
 * @identifier _SafeStr_722 = "_-c0"
 * @identifier _SafeStr_723 = "_-eB"
 * @identifier _SafeStr_733 = "_-MF"
 * @identifier _SafeStr_738 = "_-Q-"
 * @identifier _SafeStr_739 = "_-Y"
 * @identifier _SafeStr_757 = "_-lt"
 * @identifier _SafeStr_760 = "_-2G"
 * @identifier _SafeStr_795 = "_-f0"
 * @identifier _SafeStr_799 = "_-MN"
 * @identifier _SafeStr_811 = "_-oy"
 * @identifier _SafeStr_819 = "_-hE"
 * @identifier _SafeStr_845 = "_-e6"
 * @identifier _SafeStr_848 = "_-pp"
 * @identifier _SafeStr_859 = "_-p7"
 * @identifier _SafeStr_860 = "_-n5"
 * @identifier _SafeStr_872 = "_-0e"
 * @identifier _SafeStr_884 = "_-Wf"
 * @identifier _SafeStr_893 = "_-ip"
 * @identifier _SafeStr_899 = "_-LO"
 * @identifier _SafeStr_903 = "_-Tu"
 * @identifier _SafeStr_908 = "_-uv"
 * @identifier _SafeStr_920 = "_-pj"
 * @identifier _SafeStr_921 = "_-gU"
 * @identifier _SafeStr_925 = "_-p1"
 * @identifier _SafeStr_937 = " use"
 * @identifier _SafeStr_956 = "_-Rk"
 * @identifier _SafeStr_972 = "_-f3"
 * @identifier _SafeStr_974 = "_-oM"
 * @identifier _SafeStr_981 = "_-ju"
 * @identifier _SafeStr_993 = "_-7H"
 * @identifier _SafeStr_995 = "_-wr"
 * @identifier _SafeStr_996 = "null "
 * @identifier _SafeStr_1013 = "_-8v"
 * @identifier _SafeStr_1051 = "_-ED"
 * @identifier _SafeStr_1054 = "_-p6"
 * @identifier _SafeStr_1061 = "_-GH"
 * @identifier _SafeStr_1069 = "_-49"
 * @identifier _SafeStr_1075 = "_-Ks"
 * @identifier _SafeStr_1083 = "_-c5"
 * @identifier _SafeStr_1086 = "_-XB"
 * @identifier _SafeStr_1095 = "_-0d"
 * @identifier _SafeStr_1099 = "_-do"
 * @identifier _SafeStr_1104 = "_-cI"
 * @identifier _SafeStr_1112 = "_-EZ"
 * @identifier _SafeStr_1115 = "_-Ja"
 * @identifier _SafeStr_1134 = "_-ak"
 * @identifier _SafeStr_1145 = "_-M8"
 * @identifier _SafeStr_1146 = "_-XC"
 * @identifier _SafeStr_1149 = "_-f6"
 * @identifier _SafeStr_1157 = "_-qJ"
 * @identifier _SafeStr_1178 = "_-FV"
 * @identifier _SafeStr_1184 = "_-5q"
 * @identifier _SafeStr_1193 = "_-I3"
 * @identifier _SafeStr_1195 = "_-Kg"
 * @identifier _SafeStr_1199 = "_-6L"
 * @identifier _SafeStr_1206 = "_-F5"
 * @identifier _SafeStr_1231 = "_-sD"
 * @identifier _SafeStr_1242 = "_-Zg"
 * @identifier _SafeStr_1280 = "_-fs"
 * @identifier _SafeStr_1282 = "_-Fe"
 * @identifier _SafeStr_1304 = "_-OX"
 * @identifier _SafeStr_1347 = "_-2q"
 * @identifier _SafeStr_1348 = "_-YS"
 * @identifier _SafeStr_1357 = "_-Tt"
 * @identifier _SafeStr_1359 = "_-Nb"
 * @identifier _SafeStr_1367 = "_-bq"
 * @identifier _SafeStr_1371 = "_-f9"
 * @identifier _SafeStr_1390 = "_-qU"
 * @identifier _SafeStr_1398 = "_-Aq"
 * @identifier _SafeStr_1399 = "_-sU"
 * @identifier _SafeStr_1401 = "_-Ol"
 * @identifier _SafeStr_1403 = "_-qf"
 * @identifier _SafeStr_1405 = "_-wK"
 * @identifier _SafeStr_1415 = "_-Yv"
 * @identifier _SafeStr_1418 = "_-h"
 * @identifier _SafeStr_1438 = "_-5H"
 * @identifier _SafeStr_1440 = "_-4p"
 * @identifier _SafeStr_1441 = "_-6g"
 * @identifier _SafeStr_1450 = "_-ui"
 * @identifier _SafeStr_1473 = "_-Z9"
 * @identifier _SafeStr_1479 = "_-FM"
 * @identifier _SafeStr_1483 = "_-dI"
 * @identifier _SafeStr_1499 = "_-lv"
 * @identifier _SafeStr_1533 = "_-Mp"
 * @identifier _SafeStr_1544 = "_-VQ"
 * @identifier _SafeStr_1550 = "_-tu"
 * @identifier _SafeStr_1583 = "case "
 * @identifier _SafeStr_1584 = "_-SR"
 * @identifier _SafeStr_1596 = "_-br"
 * @identifier _SafeStr_1599 = "_-1m"
 * @identifier _SafeStr_1605 = "_-3O"
 * @identifier _SafeStr_1612 = "_-ST"
 * @identifier _SafeStr_1616 = "_-Cp"
 * @identifier _SafeStr_1617 = "_-1M"
 * @identifier _SafeStr_1618 = "_-GI"
 * @identifier _SafeStr_1628 = "_-JX"
 * @identifier _SafeStr_1632 = "_-lI"
 * @identifier _SafeStr_1650 = "_-CK"
 * @identifier _SafeStr_1652 = "_-RS"
 * @identifier _SafeStr_1668 = "_-VK"
 * @identifier _SafeStr_1671 = "_-Gj"
 * @identifier _SafeStr_1676 = "_-pg"
 * @identifier _SafeStr_1683 = "_-RI"
 * @identifier _SafeStr_1697 = "_-f-"
 * @identifier _SafeStr_1715 = "_-dw"
 * @identifier _SafeStr_1716 = "_-Cf"
 * @identifier _SafeStr_1719 = "_-nG"
 * @identifier _SafeStr_1728 = "_-LT"
 * @identifier _SafeStr_1734 = "try"
 * @identifier _SafeStr_1738 = "_-1x"
 * @identifier _SafeStr_1741 = "_-Dv"
 * @identifier _SafeStr_1754 = "_-8T"
 * @identifier _SafeStr_1765 = "_-GL"
 * @identifier _SafeStr_1786 = "_-V3"
 * @identifier _SafeStr_1791 = "_-qV"
 * @identifier _SafeStr_1796 = "_-ay"
 * @identifier _SafeStr_1797 = "_-5a"
 * @identifier _SafeStr_1815 = "_-kf"
 * @identifier _SafeStr_1826 = "_-Ao"
 * @identifier _SafeStr_1829 = "_-Fc"
 * @identifier _SafeStr_1848 = "_-Tc"
 * @identifier _SafeStr_1856 = "_-5P"
 * @identifier _SafeStr_1861 = "_-5G"
 * @identifier _SafeStr_1868 = "_-rb"
 * @identifier _SafeStr_1902 = "_-L8"
 * @identifier _SafeStr_1903 = "_-BH"
 * @identifier _SafeStr_1911 = "_-qG"
 * @identifier _SafeStr_1915 = "_-ap"
 * @identifier _SafeStr_1929 = "_-El"
 * @identifier _SafeStr_1931 = "_-sy"
 * @identifier _SafeStr_1932 = "_-rQ"
 * @identifier _SafeStr_1942 = "_-cl"
 * @identifier _SafeStr_1944 = "_-4-"
 * @identifier _SafeStr_1945 = "_-Nl"
 * @identifier _SafeStr_1950 = "_-I8"
 * @identifier _SafeStr_1964 = "_-Iu"
 * @identifier _SafeStr_1979 = "_-QS"
 * @identifier _SafeStr_1981 = "_-Jd"
 * @identifier _SafeStr_1983 = "_-8p"
 * @identifier _SafeStr_1989 = "_-nf"
 * @identifier _SafeStr_1992 = "_-FA"
 * @identifier _SafeStr_2007 = "_-7U"
 * @identifier _SafeStr_2013 = "_-d0"
 * @identifier _SafeStr_2019 = "_-Lw"
 * @identifier _SafeStr_2021 = "_-P5"
 * @identifier _SafeStr_2035 = "_-2v"
 * @identifier _SafeStr_2038 = "_-Wb"
 * @identifier _SafeStr_2045 = "_-9l"
 * @identifier _SafeStr_2047 = "_-iI"
 * @identifier _SafeStr_2067 = "_-dP"
 * @identifier _SafeStr_2091 = "_-fO"
 * @identifier _SafeStr_2098 = "_-RJ"
 * @identifier _SafeStr_2129 = "_-Zo"
 * @identifier _SafeStr_2137 = "_-0L"
 * @identifier _SafeStr_2155 = "_-8L"
 * @identifier _SafeStr_2166 = "_-rm"
 * @identifier _SafeStr_2192 = "_-9k"
 * @identifier _SafeStr_2197 = "_-GU"
 * @identifier _SafeStr_2211 = "_-Eb"
 * @identifier _SafeStr_2220 = "_-Ci"
 * @identifier _SafeStr_2222 = "_-v1"
 * @identifier _SafeStr_2232 = "_-NE"
 * @identifier _SafeStr_2236 = "_-hS"
 * @identifier _SafeStr_2237 = "_-po"
 * @identifier _SafeStr_2241 = "_-dL"
 * @identifier _SafeStr_2243 = "_-TY"
 * @identifier _SafeStr_2245 = "_-tx"
 * @identifier _SafeStr_2248 = "_-v8"
 * @identifier _SafeStr_2250 = "_-0G"
 * @identifier _SafeStr_2255 = "_-Li"
 * @identifier _SafeStr_2277 = "_-jm"
 * @identifier _SafeStr_2304 = "_-3K"
 * @identifier _SafeStr_2324 = "_-Zn"
 * @identifier _SafeStr_2336 = "_-WL"
 * @identifier _SafeStr_2337 = "_-AZ"
 * @identifier _SafeStr_2351 = "_-Z1"
 * @identifier _SafeStr_2365 = "_-1w"
 * @identifier _SafeStr_2366 = "_-2A"
 * @identifier _SafeStr_2370 = "_-DX"
 * @identifier _SafeStr_2389 = "_-Im"
 * @identifier _SafeStr_2392 = "_-w7"
 * @identifier _SafeStr_2412 = "_-m8"
 * @identifier _SafeStr_2421 = "_-U7"
 * @identifier _SafeStr_2426 = "_-Bp"
 * @identifier _SafeStr_2434 = "_-EV"
 * @identifier _SafeStr_2440 = "_-Oq"
 * @identifier _SafeStr_2443 = "_-2u"
 * @identifier _SafeStr_2446 = "_-cv"
 * @identifier _SafeStr_2447 = "_-oq"
 * @identifier _SafeStr_2454 = "_-DQ"
 * @identifier _SafeStr_2464 = "_-D2"
 * @identifier _SafeStr_2470 = "_-Gp"
 * @identifier _SafeStr_2475 = "_-QT"
 * @identifier _SafeStr_2476 = "_-5c"
 * @identifier _SafeStr_2485 = "_-Ho"
 * @identifier _SafeStr_2500 = "_-cM"
 * @identifier _SafeStr_2505 = "_-eh"
 * @identifier _SafeStr_2509 = "_-AF"
 * @identifier _SafeStr_2529 = "_-o0"
 * @identifier _SafeStr_2533 = "_-v"
 * @identifier _SafeStr_2568 = "_-JH"
 * @identifier _SafeStr_2571 = "_-3g"
 * @identifier _SafeStr_2573 = "_-Ra"
 * @identifier _SafeStr_2577 = "_-A2"
 * @identifier _SafeStr_2584 = "_-Vg"
 * @identifier _SafeStr_2602 = "_-C8"
 * @identifier _SafeStr_2614 = "_-uj"
 * @identifier _SafeStr_2615 = "_-2W"
 * @identifier _SafeStr_2622 = "_-KX"
 * @identifier _SafeStr_2630 = "_-Vv"
 * @identifier _SafeStr_2640 = "_-Qe"
 * @identifier _SafeStr_2646 = "_-RK"
 * @identifier _SafeStr_2651 = "_-td"
 * @identifier _SafeStr_2685 = "_-nB"
 * @identifier _SafeStr_2689 = "_-iR"
 * @identifier _SafeStr_2692 = "_-K5"
 * @identifier _SafeStr_2697 = "_-Jg"
 * @identifier _SafeStr_2701 = "_-e7"
 * @identifier _SafeStr_2707 = "_-PF"
 * @identifier _SafeStr_2719 = "_-tM"
 * @identifier _SafeStr_2757 = "_-At"
 * @identifier _SafeStr_2759 = "_-fk"
 * @identifier _SafeStr_2765 = "_-jT"
 * @identifier _SafeStr_2766 = "_-r4"
 * @identifier _SafeStr_2774 = "_-pG"
 * @identifier _SafeStr_2778 = "_-8a"
 * @identifier _SafeStr_2799 = "_-cp"
 * @identifier _SafeStr_2807 = "_-38"
 * @identifier _SafeStr_2814 = "_-0K"
 * @identifier _SafeStr_2818 = "_-4T"
 * @identifier _SafeStr_2871 = "_-DB"
 * @identifier _SafeStr_2876 = "_-Q8"
 * @identifier _SafeStr_2877 = "_-MB"
 * @identifier _SafeStr_2878 = "_-qC"
 * @identifier _SafeStr_2884 = "_-Av"
 * @identifier _SafeStr_2901 = "_-5b"
 * @identifier _SafeStr_2907 = "_-XA"
 * @identifier _SafeStr_2916 = "_-kN"
 * @identifier _SafeStr_2919 = "_-O3"
 * @identifier _SafeStr_2920 = "_-J7"
 * @identifier _SafeStr_2923 = "_-jD"
 * @identifier _SafeStr_2926 = "_-wf"
 * @identifier _SafeStr_2935 = "_-og"
 * @identifier _SafeStr_2939 = "_-Yj"
 * @identifier _SafeStr_2941 = "_-Ev"
 * @identifier _SafeStr_2951 = "_-SX"
 * @identifier _SafeStr_2960 = "_-sr"
 * @identifier _SafeStr_2967 = "_-KE"
 * @identifier _SafeStr_2970 = "_-0-"
 * @identifier _SafeStr_2971 = "_-Fn"
 * @identifier _SafeStr_2979 = "_-jt"
 * @identifier _SafeStr_2984 = "_-wN"
 * @identifier _SafeStr_2987 = "_-15"
 * @identifier _SafeStr_2989 = "_-IJ"
 * @identifier _SafeStr_2991 = "_-3Y"
 * @identifier _SafeStr_3005 = "_-By"
 * @identifier _SafeStr_3008 = "_-Ng"
 * @identifier _SafeStr_3027 = "_-Je"
 * @identifier _SafeStr_3037 = "_-W9"
 * @identifier _SafeStr_3047 = "_-Sl"
 * @identifier _SafeStr_3051 = "_-5X"
 * @identifier _SafeStr_3063 = "_-OZ"
 * @identifier _SafeStr_3074 = "_-H7"
 * @identifier _SafeStr_3167 = "_-iW"
 * @identifier _SafeStr_3169 = "_-VW"
 * @identifier _SafeStr_3171 = "_-l-"
 * @identifier _SafeStr_3174 = "_-eI"
 * @identifier _SafeStr_3176 = "_-o3"
 * @identifier _SafeStr_3185 = "_-MW"
 * @identifier _SafeStr_3211 = "_-Vl"
 * @identifier _SafeStr_3224 = "_-2j"
 * @identifier _SafeStr_3235 = "_-Tl"
 * @identifier _SafeStr_3283 = "_-ra"
 * @identifier _SafeStr_3288 = "_-Kv"
 * @identifier _SafeStr_3296 = "_-B7"
 * @identifier _SafeStr_3319 = "_-rP"
 * @identifier _SafeStr_3323 = "_-NG"
 * @identifier _SafeStr_3348 = "_-A9"
 * @identifier _SafeStr_3376 = "_-aL"
 * @identifier _SafeStr_3377 = "_-QX"
 * @identifier _SafeStr_3378 = "_-hD"
 * @identifier _SafeStr_3387 = "_-9c"
 * @identifier _SafeStr_3388 = "_-oA"
 * @identifier _SafeStr_3405 = "_-6O"
 * @identifier _SafeStr_3412 = "_-hG"
 * @identifier _SafeStr_3446 = "_-4U"
 * @identifier _SafeStr_3506 = "_-4R"
 * @identifier _SafeStr_3514 = "_-E1"
 * @identifier _SafeStr_3551 = "_-G6"
 * @identifier _SafeStr_3563 = "_-F2"
 * @identifier _SafeStr_3603 = "_-vP"
 * @identifier _SafeStr_3609 = "_-6D"
 * @identifier _SafeStr_3638 = "_-S4"
 */
