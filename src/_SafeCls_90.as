package
{
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class _SafeCls_90
   {
      
      public static const _SafeStr_1592:int = 30000;
      
      public static const _SafeStr_2379:uint = 1000;
      
      public static const _SafeStr_1714:uint = 35;
      
      public static const _SafeStr_1869:uint = 55;
      
      public static const _SafeStr_2265:uint = 1000;
      
      public static const _SafeStr_1272:uint = 0;
      
      public static const _SafeStr_564:uint = 1;
      
      public static const _SafeStr_588:uint = 2;
      
      public static const _SafeStr_559:uint = 3;
      
      public static const _SafeStr_1443:uint = 4;
      
      public static const _SafeStr_1160:uint = 5;
      
      public static const _SafeStr_781:uint = 6;
      
      private static const _SafeStr_2081:uint = 650;
      
      private static const _SafeStr_2049:uint = 300;
      
      private static const _SafeStr_2350:uint = 400;
      
      private static const _SafeStr_2110:uint = 200;
      
      private static const _SafeStr_2409:uint = 200;
      
      private static const _SafeStr_2027:uint = 0;
      
      private static const _SafeStr_1990:uint = 0;
      
      private static const _SafeStr_2273:uint = 300;
      
      private static const _SafeStr_2040:uint = 600;
      
      private static const _SafeStr_2221:uint = 200;
      
      private static const _SafeStr_2360:uint = 300;
      
      private static const _SafeStr_2226:uint = 0;
      
      private static const _SafeStr_2072:uint = 0;
      
      public static const _SafeStr_2175:uint = 0;
      
      public static const _SafeStr_1889:uint = 1;
      
      public static const _SafeStr_2238:uint = 2;
      
      internal var _SafeStr_118:Game;
      
      internal var mOwnerEnt:_SafeCls_25;
      
      internal var mTarget:_SafeCls_25 = null;
      
      internal var _SafeStr_827:Dictionary;
      
      internal var mMostHatedEnt:_SafeCls_25;
      
      internal var _SafeStr_1071:int;
      
      internal var _SafeStr_3505:uint;
      
      internal var _SafeStr_380:_SafeCls_113 = null;
      
      internal var _SafeStr_977:Dictionary = null;
      
      internal var _SafeStr_3669:uint = 550;
      
      internal var mTargetRange:int = 250;
      
      internal var mTargetMinRange:int = 0;
      
      internal var mPowerAction:uint = 0;
      
      internal var mFailedMinRangeCount:uint = 0;
      
      internal var mCurrNode:_SafeCls_112;
      
      internal var mLastNode:_SafeCls_112;
      
      internal var mDestNode:_SafeCls_112;
      
      internal var mNavMesh:_SafeCls_109;
      
      internal var _SafeStr_593:Vector.<_SafeCls_112>;
      
      internal var nodeAttemptTime:uint = 0;
      
      internal var _SafeStr_1775:_SafeCls_6;
      
      internal var mWeaponType:uint;
      
      public var mCheckWeaponTime:uint = 0;
      
      private var _SafeStr_1767:uint;
      
      private var _SafeStr_1508:uint;
      
      internal var _SafeStr_985:uint = 0;
      
      private var _SafeStr_1784:uint;
      
      private var _SafeStr_1647:uint;
      
      internal var _SafeStr_1179:uint = 0;
      
      internal var _SafeStr_2790:uint;
      
      public function _SafeCls_90(param1:Game, param2:_SafeCls_25, param3:uint = 1)
      {
         super();
         this._SafeStr_118 = param1;
         this.mOwnerEnt = param2;
         this.ClearHateList();
         this.mNavMesh = this._SafeStr_118.level.mNavMesh;
         this._SafeStr_2790 = param3;
      }
      
      public function _SafeStr_3399() : void
      {
         this._SafeStr_118 = null;
         this._SafeStr_977 = null;
         this.mOwnerEnt = null;
         this.mTarget = null;
         this._SafeStr_827 = null;
         this.mMostHatedEnt = null;
         this._SafeStr_380._SafeStr_2867();
         this._SafeStr_380 = null;
         this.mNavMesh = null;
         this.mCurrNode = null;
         this.mLastNode = null;
         this.mDestNode = null;
         this._SafeStr_593 = null;
         this._SafeStr_1775 = null;
      }
      
      public function _SafeStr_2122() : void
      {
         var _loc1_:_SafeCls_25 = null;
         this._SafeStr_3229();
         this._SafeStr_380 = new _SafeCls_114(this.mOwnerEnt);
         this._SafeStr_380.EnterState(true);
         this._SafeStr_977 = new Dictionary();
         this._SafeStr_977[this._SafeStr_380._SafeStr_1330] = 1;
         for each(_loc1_ in this._SafeStr_118.mEntities)
         {
            if(_loc1_.mTeam != this.mOwnerEnt.mTeam)
            {
               this.AddHate(_loc1_,1,false);
            }
         }
      }
      
      private function _SafeStr_3229() : void
      {
         switch(this._SafeStr_2790)
         {
            case _SafeStr_2175:
               this._SafeStr_1784 = _SafeStr_2273;
               this._SafeStr_1647 = _SafeStr_2040;
               this._SafeStr_1767 = _SafeStr_2049;
               this._SafeStr_1508 = _SafeStr_2350;
               break;
            case _SafeStr_1889:
               this._SafeStr_1784 = _SafeStr_2221;
               this._SafeStr_1647 = _SafeStr_2360;
               this._SafeStr_1767 = _SafeStr_2110;
               this._SafeStr_1508 = _SafeStr_2409;
               break;
            case _SafeStr_2238:
               this._SafeStr_1784 = _SafeStr_2226;
               this._SafeStr_1647 = _SafeStr_2072;
               this._SafeStr_1767 = _SafeStr_2027;
               this._SafeStr_1508 = _SafeStr_1990;
         }
      }
      
      public function ClearHateList() : void
      {
         this._SafeStr_827 = new Dictionary();
         this.mMostHatedEnt = null;
         this._SafeStr_1071 = -1;
      }
      
      public function FindClosestEnemy(param1:Boolean) : _SafeCls_25
      {
         var _loc5_:_SafeCls_25 = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:_SafeCls_25 = null;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Array = this._SafeStr_118._SafeStr_430(this.mOwnerEnt,this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY,_SafeStr_1592,_SafeStr_1592,Game._SafeStr_580);
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = _loc5_.mPhysCenterX - this.mOwnerEnt.mPhysCenterX;
            _loc7_ = _loc5_.mPhysCenterY - this.mOwnerEnt.mPhysCenterY;
            _loc8_ = _loc6_ * _loc6_ + _loc7_ * _loc7_;
            if(_loc8_ < _loc3_)
            {
               _loc3_ = _loc8_;
               _loc2_ = _loc5_;
            }
         }
         return _loc2_;
      }
      
      public function _SafeStr_2060() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         this.mMostHatedEnt = null;
         this._SafeStr_1071 = -1;
         for(_loc1_ in this._SafeStr_827)
         {
            _loc2_ = int(this._SafeStr_827[_loc1_]);
            if(_loc2_ > this._SafeStr_1071)
            {
               var _loc3_:_SafeCls_25 = this._SafeStr_118._SafeStr_200(int(_loc1_));
               delete this._SafeStr_827[_loc1_];
            }
         }
      }
      
      public function AddHate(param1:_SafeCls_25, param2:int, param3:Boolean) : void
      {
         if(!param1 || !param1._SafeStr_267 || !param1._SafeStr_1193() || param1.mEntState == _SafeCls_25._SafeStr_315)
         {
            return;
         }
         if(this.mOwnerEnt.mTeam == param1.mTeam)
         {
            return;
         }
         var _loc4_:int = int(this._SafeStr_827[param1.mEntID]) + param2;
         this._SafeStr_827[param1.mEntID] = _loc4_;
         this._SafeStr_3505 = this._SafeStr_118.mTimeThisTick;
         var _loc5_:* = this.mMostHatedEnt != null;
         if(param2 < 0)
         {
            this._SafeStr_2060();
         }
         else if(_loc4_ > this._SafeStr_1071)
         {
            this._SafeStr_1071 = _loc4_;
            this.mMostHatedEnt = param1;
         }
      }
      
      public function FirePowers() : void
      {
         var _loc3_:_SafeCls_6 = null;
         var _loc4_:uint = 0;
         var _loc5_:Boolean = false;
         var _loc1_:uint = this._SafeStr_118.mTimeThisTick;
         var _loc2_:_SafeCls_26 = this.mOwnerEnt.mCombatState;
         if(_loc1_ > this.mCheckWeaponTime)
         {
            _loc3_ = _loc2_.mEquippedItem ? _loc2_.mEquippedItem._SafeStr_151 : null;
            this.mWeaponType = this._SafeStr_2694(_loc3_);
            this.mTargetRange = this._SafeStr_3271(_loc3_);
            this.mTargetMinRange = this._SafeStr_3112(_loc3_);
            this.mCheckWeaponTime = _loc1_ + _SafeStr_2081;
         }
         if(this._SafeStr_3105())
         {
            if(!_loc3_)
            {
               _loc3_ = _loc2_.mEquippedItem ? _loc2_.mEquippedItem._SafeStr_151 : null;
               this.mWeaponType = this._SafeStr_2694(_loc3_);
            }
            if(!this._SafeStr_985 && !_loc2_.mActivePower)
            {
               this._SafeStr_985 = _loc1_ + uint(Math.random() * this._SafeStr_1508) + this._SafeStr_1767;
            }
            else if(_loc1_ > this._SafeStr_985)
            {
               if(this.mWeaponType == _SafeStr_1160)
               {
                  _loc2_._SafeStr_1134();
               }
               else if(this.mWeaponType == _SafeStr_781)
               {
                  _loc4_ = this._SafeStr_3015();
                  if(_loc4_)
                  {
                     if(_loc4_ & _SafeCls_24._SafeStr_220)
                     {
                        this.mOwnerEnt._SafeStr_182 = true;
                        this.mOwnerEnt.mbLeft = true;
                     }
                     else if(_loc4_ & _SafeCls_24._SafeStr_221)
                     {
                        this.mOwnerEnt._SafeStr_182 = false;
                        this.mOwnerEnt.mbLeft = false;
                     }
                     _loc2_._SafeStr_1134(_loc4_);
                     this.mWeaponType = _SafeStr_1272;
                     this._SafeStr_1775 = null;
                     this.mTargetRange = 250;
                     this.mTargetMinRange = 0;
                  }
               }
               else
               {
                  this.mPowerAction = this._SafeStr_3106();
                  if(this.mPowerAction)
                  {
                     _loc5_ = _loc2_.QueuePower(this.mPowerAction);
                     if((_loc5_) && this.mOwnerEnt.mCombatState.mActivePower && this.mOwnerEnt.mCombatState.mActivePower._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_658)
                     {
                        this._SafeStr_1179 = _loc1_ + uint(Math.random() * this._SafeStr_1647) + this._SafeStr_1784;
                     }
                     if(_loc5_)
                     {
                        if(this.mOwnerEnt.mWallSliding)
                        {
                           this.mOwnerEnt.InputCmdJump(false);
                        }
                        this._SafeStr_985 = 0;
                     }
                  }
               }
            }
         }
      }
      
      public function _SafeStr_3105() : Boolean
      {
         var _loc1_:Number = this.mTarget ? Math.abs(this.mTarget.mPhysCenterX - this.mOwnerEnt.mPhysCenterX) : 0;
         var _loc2_:Number = this.mTarget ? Math.abs(this.mTarget.mPhysCenterY - this.mOwnerEnt.mPhysCenterY) : 0;
         var _loc3_:Boolean = _loc1_ <= this.mTargetMinRange && _loc2_ <= this.mTargetMinRange;
         if(_loc3_)
         {
            ++this.mFailedMinRangeCount;
            if(this.mFailedMinRangeCount >= _SafeStr_1869)
            {
               _loc3_ = false;
               this.mFailedMinRangeCount = 0;
            }
         }
         else
         {
            this.mFailedMinRangeCount = 0;
         }
         return _loc1_ && _loc1_ < this.mTargetRange && _loc2_ < this.mTargetRange && !_loc3_;
      }
      
      public function ChangeTarget(param1:_SafeCls_25) : void
      {
         if(this.mTarget == param1)
         {
            return;
         }
         this.mTarget = param1;
      }
      
      public function Think() : void
      {
         var _loc3_:uint = 0;
         if(this.mOwnerEnt._SafeStr_304(this._SafeStr_118.mTimeThisTick) || this._SafeStr_118.mbGlobalInputLock || this.mOwnerEnt.mEntState == _SafeCls_25._SafeStr_572 || this.mOwnerEnt.mEntState == _SafeCls_25._SafeStr_315 || this.mOwnerEnt.mEntState == _SafeCls_25._SafeStr_292)
         {
            this._SafeStr_985 = 0;
            return;
         }
         if(this.mOwnerEnt.mEntState != _SafeCls_25._SafeStr_244 && this.mOwnerEnt.mEntState != _SafeCls_25._SafeStr_441)
         {
            this._SafeStr_985 = 0;
            return;
         }
         if(Boolean(this.mMostHatedEnt) && (!this.mMostHatedEnt._SafeStr_267 || !this.mMostHatedEnt._SafeStr_1193() || this.mMostHatedEnt.mEntState == _SafeCls_25._SafeStr_315))
         {
            this._SafeStr_2060();
         }
         if(Boolean(this.mTarget) && (!this.mTarget._SafeStr_267 || this.mTarget.mEntState == _SafeCls_25._SafeStr_315))
         {
            this.ChangeTarget(null);
            this._SafeStr_2060();
         }
         var _loc1_:Class = this._SafeStr_380.TickState();
         if(_loc1_)
         {
            _loc3_ = uint(this._SafeStr_977[this._SafeStr_380._SafeStr_1330]);
            this._SafeStr_380._SafeStr_3144(_loc3_ == 1);
            this._SafeStr_380._SafeStr_2867();
            this._SafeStr_380 = new _loc1_(this.mOwnerEnt) as _SafeCls_113;
            _loc3_ = uint(this._SafeStr_977[this._SafeStr_380._SafeStr_1330]);
            this._SafeStr_380.EnterState(!_loc3_);
            this._SafeStr_977[this._SafeStr_380._SafeStr_1330] = _loc3_ + 1;
         }
         var _loc2_:_SafeCls_91 = this.mOwnerEnt.mCombatState.mActivePower;
         if(Boolean(_loc2_) && !_loc2_._SafeStr_190)
         {
            this.mOwnerEnt.mbRunning = false;
         }
         if(this._SafeStr_1179)
         {
            if(Boolean(_loc2_) && this._SafeStr_118.mTimeThisTick >= this._SafeStr_1179)
            {
               _loc2_._SafeStr_1683(true);
               this._SafeStr_1179 = 0;
            }
            else if(!_loc2_)
            {
               this._SafeStr_1179 = 0;
            }
         }
      }
      
      public function _SafeStr_3694(param1:Number, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Number = param1 * param1 * 0.5;
         if(_loc4_ < 5)
         {
            _loc4_ = 5;
         }
         var _loc5_:Number = Math.abs(param2 - param3);
         return _loc5_ <= _loc4_;
      }
      
      public function GetTarget() : _SafeCls_25
      {
         return null;
      }
      
      public function _SafeStr_2694(param1:_SafeCls_6) : uint
      {
         var _loc3_:String = null;
         var _loc2_:uint = this.mWeaponType;
         if(param1 != this._SafeStr_1775)
         {
            _loc3_ = param1 ? param1._SafeStr_258 : null;
            if(!_loc3_)
            {
               _loc2_ = _SafeStr_1272;
            }
            else if(_loc3_.indexOf("Sword") >= 0)
            {
               _loc2_ = _SafeStr_564;
            }
            else if(_loc3_.indexOf("Hammer") >= 0)
            {
               _loc2_ = _SafeStr_588;
            }
            else if(_loc3_.indexOf("Lance") >= 0)
            {
               _loc2_ = _SafeStr_559;
            }
            else if(_loc3_.indexOf("Pistol") >= 0)
            {
               _loc2_ = _SafeStr_1443;
            }
            else if(Boolean(param1) && param1._SafeStr_1979)
            {
               _loc2_ = _SafeStr_1160;
            }
            else if(Boolean(param1) && param1._SafeStr_1231)
            {
               _loc2_ = _SafeStr_781;
            }
            this._SafeStr_1775 = param1;
         }
         return _loc2_;
      }
      
      public function _SafeStr_3271(param1:_SafeCls_6) : uint
      {
         var _loc2_:uint = 250;
         switch(this.mWeaponType)
         {
            case _SafeStr_1160:
               if(Boolean(param1) && param1._SafeStr_258 == "SpawnBotFlyby")
               {
                  _loc2_ = 1300;
               }
               break;
            case _SafeStr_781:
               _loc2_ = 900;
         }
         return _loc2_;
      }
      
      public function _SafeStr_3112(param1:_SafeCls_6) : uint
      {
         var _loc2_:uint = 0;
         switch(this.mWeaponType)
         {
            case _SafeStr_781:
               if(Boolean(param1) && Boolean(param1._SafeStr_2169))
               {
                  _loc2_ = 400;
                  break;
               }
               _loc2_ = 0;
         }
         return _loc2_;
      }
      
      public function _SafeStr_3106() : uint
      {
         var _loc1_:uint = 0;
         if(!this.mTarget)
         {
            return _loc1_;
         }
         var _loc2_:Number = Math.abs(this.mTarget.mPhysCenterX - this.mOwnerEnt.mPhysCenterX);
         var _loc3_:Number = Math.abs(this.mTarget.mPhysCenterY - this.mOwnerEnt.mPhysCenterY);
         var _loc4_:uint = this.mTarget._SafeStr_284;
         var _loc5_:* = _loc4_ > 50;
         var _loc6_:Boolean = this.mOwnerEnt.mbAirborne || Boolean(this.mOwnerEnt.mWallSliding) || Boolean(this.mOwnerEnt.mVelocityY);
         switch(this.mWeaponType)
         {
            case _SafeStr_1443:
               if(_loc6_)
               {
                  if(_loc2_ > 200)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_419;
                     break;
                  }
                  if(this.mTarget.mPhysCenterY > this.mOwnerEnt.mPhysCenterY)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_537;
                     break;
                  }
                  _loc1_ = _SafeCls_26._SafeStr_415;
                  break;
               }
               if(_loc5_)
               {
                  if(_loc2_ > 150 && _loc3_ > 150)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_439;
                     break;
                  }
                  if(_loc2_ > 250)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_461;
                     break;
                  }
                  if(_loc2_ > 95)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_483;
                     break;
                  }
                  _loc1_ = _SafeCls_26._SafeStr_475;
                  break;
               }
               if(_loc2_ > 250)
               {
                  _loc1_ = _SafeCls_26._SafeStr_478;
                  break;
               }
               if(_loc2_ > 150)
               {
                  _loc1_ = _SafeCls_26.ACTION_ATTACK_COMBO1;
                  break;
               }
               _loc1_ = _SafeCls_26._SafeStr_475;
               break;
            case _SafeStr_559:
               if(_loc6_)
               {
                  if(_loc2_ > 150 && this.mTarget.mPhysCenterY > this.mOwnerEnt.mPhysCenterY + 150)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_537;
                     break;
                  }
                  if(_loc2_ > 150)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_419;
                     break;
                  }
                  _loc1_ = _SafeCls_26._SafeStr_460;
                  break;
               }
               if(_loc5_)
               {
                  if(_loc2_ > 150 && _loc3_ > 150)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_439;
                     break;
                  }
                  if(_loc2_ > 250)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_483;
                     break;
                  }
                  _loc1_ = _SafeCls_26._SafeStr_461;
                  break;
               }
               if(_loc2_ > 350)
               {
                  _loc1_ = _SafeCls_26._SafeStr_461;
                  break;
               }
               if(_loc2_ > 200)
               {
                  _loc1_ = _SafeCls_26._SafeStr_478;
                  break;
               }
               if(_loc2_ > 100)
               {
                  _loc1_ = _SafeCls_26.ACTION_ATTACK_COMBO1;
                  break;
               }
               _loc1_ = _SafeCls_26._SafeStr_475;
               break;
            case _SafeStr_588:
               if(_loc6_)
               {
                  if(_loc3_ < 120)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_419;
                     break;
                  }
                  if(_loc2_ < 100 && this.mTarget.mPhysCenterY > this.mOwnerEnt.mPhysCenterY + 150)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_537;
                     break;
                  }
                  _loc1_ = _SafeCls_26._SafeStr_460;
                  break;
               }
               if(_loc5_)
               {
                  if(_loc2_ > 200 && _loc3_ < 120)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_461;
                     break;
                  }
                  if(_loc2_ > 120 && _loc3_ < 120)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_483;
                     break;
                  }
                  _loc1_ = _SafeCls_26._SafeStr_439;
                  break;
               }
               if(_loc2_ > 250 && !this.mTarget.mbAirborne && !this.mTarget.mWallSliding)
               {
                  _loc1_ = _SafeCls_26._SafeStr_475;
                  break;
               }
               if(_loc2_ < 150)
               {
                  _loc1_ = _SafeCls_26.ACTION_ATTACK_COMBO1;
                  break;
               }
               _loc1_ = _SafeCls_26._SafeStr_478;
               break;
            case _SafeStr_564:
               if(_loc6_)
               {
                  if(_loc3_ < 120)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_419;
                     break;
                  }
                  if(_loc2_ < 150 && this.mTarget.mPhysCenterY > this.mOwnerEnt.mPhysCenterY + 100)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_537;
                     break;
                  }
                  _loc1_ = _SafeCls_26._SafeStr_460;
                  break;
               }
               if(_loc5_)
               {
                  if(_loc2_ > 100 && _loc3_ < 120)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_461;
                     break;
                  }
                  if(_loc3_ > 120)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_439;
                     break;
                  }
                  _loc1_ = _SafeCls_26._SafeStr_483;
                  break;
               }
               if(_loc2_ > 250 && !this.mTarget.mbAirborne && !this.mTarget.mWallSliding)
               {
                  _loc1_ = _SafeCls_26._SafeStr_475;
                  break;
               }
               if(_loc2_ < 150)
               {
                  _loc1_ = _SafeCls_26.ACTION_ATTACK_COMBO1;
                  break;
               }
               _loc1_ = _SafeCls_26._SafeStr_478;
               break;
            case _SafeStr_1272:
            default:
               if(_loc6_)
               {
                  if(_loc2_ < 150 && _loc3_ < 130)
                  {
                     _loc1_ = Math.random() > 0.8 ? _SafeCls_26._SafeStr_460 : _SafeCls_26._SafeStr_419;
                     break;
                  }
                  if(_loc2_ > 150 && this.mTarget.mPhysCenterY - this.mOwnerEnt.mPhysCenterY < 100)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_537;
                     break;
                  }
                  _loc1_ = _SafeCls_26._SafeStr_1728;
                  break;
               }
               if(_loc5_)
               {
                  if(_loc2_ > 120 && _loc3_ < 85)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_461;
                     break;
                  }
                  if(this.mTarget.mPhysCenterY - this.mOwnerEnt.mPhysCenterY < -70 && _loc2_ < 100)
                  {
                     _loc1_ = _SafeCls_26._SafeStr_439;
                     break;
                  }
                  _loc1_ = _SafeCls_26._SafeStr_483;
                  break;
               }
               if(_loc2_ > 180 && !this.mTarget.mbAirborne && !this.mTarget.mWallSliding)
               {
                  _loc1_ = _SafeCls_26._SafeStr_475;
                  break;
               }
               if(_loc2_ > 160)
               {
                  _loc1_ = _SafeCls_26._SafeStr_478;
                  break;
               }
               _loc1_ = _SafeCls_26.ACTION_ATTACK_COMBO1;
         }
         return _loc1_;
      }
      
      public function _SafeStr_3015() : uint
      {
         var _loc1_:uint = 0;
         if(!this.mTarget)
         {
            return _loc1_;
         }
         var _loc2_:Point = new Point();
         var _loc3_:Point = new Point(this.mTarget.mPhysCenterX - this.mOwnerEnt.mPhysCenterX,this.mTarget.mPhysCenterY - this.mOwnerEnt.mPhysCenterY);
         if(this._SafeStr_118._SafeStr_165._SafeStr_174(this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY,_loc3_,_loc2_,null,null,null,_SafeCls_0._SafeStr_179 | _SafeCls_0._SafeStr_291,0) != null)
         {
            return _loc1_;
         }
         _loc3_.normalize(1);
         if(_loc3_.y < -0.9)
         {
            _loc1_ = _SafeCls_24._SafeStr_268;
         }
         else if(_loc3_.y < -0.45)
         {
            _loc1_ = _loc3_.x > 0 ? uint(_SafeCls_24._SafeStr_268 | _SafeCls_24._SafeStr_221) : uint(_SafeCls_24._SafeStr_268 | _SafeCls_24._SafeStr_220);
         }
         else if(_loc3_.y < 0.45)
         {
            _loc1_ = _loc3_.x > 0 ? _SafeCls_24._SafeStr_221 : _SafeCls_24._SafeStr_220;
         }
         else if(_loc3_.y < 0.8)
         {
            _loc1_ = _loc3_.x > 0 ? uint(_SafeCls_24._SafeStr_236 | _SafeCls_24._SafeStr_221) : uint(_SafeCls_24._SafeStr_236 | _SafeCls_24._SafeStr_220);
         }
         return _loc1_;
      }
      
      public function InitializePathingToTarget() : void
      {
         if(!this.mTarget)
         {
            return;
         }
         this.mLastNode = null;
         this.mCurrNode = this.mNavMesh._SafeStr_1251(this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY,true);
         this.mDestNode = this.mNavMesh._SafeStr_1251(this.mTarget.mPhysCenterX,this.mTarget.mPhysCenterY,false);
         this._SafeStr_593 = this.mNavMesh._SafeStr_2656(this.mCurrNode,this.mDestNode);
         this.nodeAttemptTime = this._SafeStr_118.mTimeThisTick;
      }
      
      public function GetNextNode(param1:Boolean = true) : void
      {
         if(!this._SafeStr_593 || !this._SafeStr_593.length)
         {
            this.InitializePathingToTarget();
         }
         if((!this._SafeStr_593 || !this._SafeStr_593.length) && Boolean(this.mTarget))
         {
            this.InitializePathingToTarget();
         }
         this.mLastNode = this.mCurrNode;
         this.mCurrNode = this._SafeStr_593.pop();
         this.nodeAttemptTime = this._SafeStr_118.mTimeThisTick;
      }
      
      public function _SafeStr_3745() : Boolean
      {
         return !this.mDestNode || this.mNavMesh._SafeStr_1251(this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY,true) == this.mDestNode;
      }
      
      public function FindSafeNode(param1:Boolean = false) : void
      {
         this.mLastNode = null;
         this.mCurrNode = this.mNavMesh._SafeStr_3023(this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY);
         var _loc2_:_SafeCls_25 = Boolean(this.mTarget) && !param1 ? this.mTarget : this.mOwnerEnt;
         this.mDestNode = this.mNavMesh._SafeStr_1251(_loc2_.mPhysCenterX,_loc2_.mPhysCenterY,false,_SafeCls_112._SafeStr_1120);
         this._SafeStr_593 = this.mNavMesh._SafeStr_2656(this.mCurrNode,this.mDestNode);
         this.nodeAttemptTime = this._SafeStr_118.mTimeThisTick;
      }
      
      public function CheckValidNextNode() : Boolean
      {
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc1_:* = false;
         if(Boolean(this.mCurrNode) && this.mCurrNode.mNodeType != _SafeCls_112._SafeStr_482)
         {
            _loc3_ = new Point();
            _loc4_ = new Point(this.mCurrNode.mPosX - this.mOwnerEnt.mPhysCenterX,this.mCurrNode.mPosY - this.mOwnerEnt.mPhysCenterY);
            _loc1_ = this._SafeStr_118._SafeStr_165._SafeStr_174(this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY,_loc4_,_loc3_,null,null,null,_SafeCls_0._SafeStr_179,0) != null;
         }
         if(_loc1_)
         {
            _loc4_ = new Point(this.mCurrNode.mPosX - this.mOwnerEnt.mPhysCenterX,0);
            _loc5_ = new Point(0,this.mCurrNode.mPosY - this.mOwnerEnt.mPhysCenterY);
            if(!this._SafeStr_118._SafeStr_165._SafeStr_174(this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY,_loc4_,_loc3_,null,null,null,_SafeCls_0._SafeStr_179,0) && !this._SafeStr_118._SafeStr_165._SafeStr_174(this.mCurrNode.mPosX,this.mOwnerEnt.mPhysCenterY,_loc5_,_loc3_,null,null,null,_SafeCls_0._SafeStr_179,0) || !this._SafeStr_118._SafeStr_165._SafeStr_174(this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY,_loc5_,_loc3_,null,null,null,_SafeCls_0._SafeStr_179,0) && !this._SafeStr_118._SafeStr_165._SafeStr_174(this.mOwnerEnt.mPhysCenterX,this.mCurrNode.mPosY,_loc4_,_loc3_,null,null,null,_SafeCls_0._SafeStr_179,0))
            {
               _loc1_ = false;
            }
         }
         var _loc2_:_SafeCls_112 = this.mNavMesh._SafeStr_1251(this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY,true);
         if(!this.mCurrNode || _loc1_ || _loc2_ != this.mCurrNode && _loc2_ != this.mLastNode)
         {
            return false;
         }
         return true;
      }
      
      public function _SafeStr_3634() : void
      {
         var _loc2_:_SafeCls_112 = null;
         var _loc1_:String = "Remaining Stack: ";
         for each(_loc2_ in this._SafeStr_593)
         {
            _loc1_ += _loc2_._SafeStr_2407 + ", ";
         }
      }
      
      public function HateSomebody() : void
      {
         var _loc1_:_SafeCls_25 = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.ClearHateList();
         for each(_loc1_ in this._SafeStr_118.mEntities)
         {
            if(_loc1_.mTeam != this.mOwnerEnt.mTeam)
            {
               _loc2_ = Math.abs(_loc1_.mPhysCenterX - this.mOwnerEnt.mPhysCenterX);
               _loc3_ = Math.abs(_loc1_.mPhysCenterY - this.mOwnerEnt.mPhysCenterY);
               if(_loc2_ < 1000)
               {
                  this.AddHate(_loc1_,1000 - _loc2_,false);
               }
               if(_loc3_ < 1000)
               {
                  this.AddHate(_loc1_,1000 - _loc3_,false);
               }
            }
         }
      }
      
      public function CheckForNearbyMine() : Boolean
      {
         var _loc1_:int = Math.abs(this.mOwnerEnt.mVelocityX * 3) + 150;
         if(this.mOwnerEnt.mVelocityX < 0)
         {
            _loc1_ *= -1;
         }
         var _loc2_:int = Math.abs(this.mOwnerEnt.mVelocityY * 3) + 150;
         if(this.mOwnerEnt.mVelocityY < 0)
         {
            _loc2_ *= -1;
         }
         var _loc3_:Array = this._SafeStr_118._SafeStr_2222(this.mOwnerEnt,this.mOwnerEnt.mPhysCenterX + _loc1_,this.mOwnerEnt.mPhysPosY + _loc2_,200,200,Game._SafeStr_1752);
         return _loc3_.length > 0;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "_-jR"
 * @identifier _SafeCls_6 = "_-0u"
 * @identifier _SafeCls_24 = "_-3h"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_26 = "_-LQ"
 * @identifier _SafeCls_90 = "_-JT"
 * @identifier _SafeCls_91 = "_-Lt"
 * @identifier _SafeCls_109 = "_-Zs"
 * @identifier _SafeCls_112 = "_-Pl"
 * @identifier _SafeCls_113 = "_-Gn"
 * @identifier _SafeCls_114 = "_-5g"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_122 = "_-dn"
 * @identifier _SafeStr_127 = "_-jo"
 * @identifier _SafeStr_151 = "_-0w"
 * @identifier _SafeStr_165 = "_-Ix"
 * @identifier _SafeStr_174 = "_-Mt"
 * @identifier _SafeStr_179 = "_-BZ"
 * @identifier _SafeStr_182 = "_-af"
 * @identifier _SafeStr_190 = "_-cc"
 * @identifier _SafeStr_200 = "_-H-"
 * @identifier _SafeStr_220 = "_-g7"
 * @identifier _SafeStr_221 = "_-P6"
 * @identifier _SafeStr_236 = "_-JI"
 * @identifier _SafeStr_244 = "_-HJ"
 * @identifier _SafeStr_258 = "_-ES"
 * @identifier _SafeStr_267 = "_-0V"
 * @identifier _SafeStr_268 = "_-as"
 * @identifier _SafeStr_284 = "_-Ak"
 * @identifier _SafeStr_291 = "_-Ce"
 * @identifier _SafeStr_292 = "_-6U"
 * @identifier _SafeStr_304 = "_-FZ"
 * @identifier _SafeStr_315 = "_-ME"
 * @identifier _SafeStr_380 = "_-ox"
 * @identifier _SafeStr_415 = "_-WH"
 * @identifier _SafeStr_419 = "_-Ys"
 * @identifier _SafeStr_430 = "_-kA"
 * @identifier _SafeStr_439 = "_-QR"
 * @identifier _SafeStr_441 = "_-9S"
 * @identifier _SafeStr_460 = "_-VV"
 * @identifier _SafeStr_461 = "_-UT"
 * @identifier _SafeStr_475 = "_-qb"
 * @identifier _SafeStr_478 = "_-fy"
 * @identifier _SafeStr_482 = "_-wA"
 * @identifier _SafeStr_483 = "_-ta"
 * @identifier _SafeStr_537 = "_-Hs"
 * @identifier _SafeStr_559 = "_-h7"
 * @identifier _SafeStr_564 = "_-Uu"
 * @identifier _SafeStr_572 = "_-6j"
 * @identifier _SafeStr_580 = "_-4J"
 * @identifier _SafeStr_588 = "_-m5"
 * @identifier _SafeStr_593 = "_-Oy"
 * @identifier _SafeStr_658 = "_-HC"
 * @identifier _SafeStr_781 = "_-fV"
 * @identifier _SafeStr_827 = "_-Gz"
 * @identifier _SafeStr_977 = "_-2o"
 * @identifier _SafeStr_985 = "_-Ti"
 * @identifier _SafeStr_1071 = "_-K2"
 * @identifier _SafeStr_1120 = "true "
 * @identifier _SafeStr_1134 = "_-ak"
 * @identifier _SafeStr_1160 = "_-JR"
 * @identifier _SafeStr_1179 = "_-hV"
 * @identifier _SafeStr_1193 = "_-I3"
 * @identifier _SafeStr_1231 = "_-sD"
 * @identifier _SafeStr_1251 = "_-w3"
 * @identifier _SafeStr_1272 = "_-SS"
 * @identifier _SafeStr_1330 = "_-oE"
 * @identifier _SafeStr_1443 = "_-5y"
 * @identifier _SafeStr_1508 = "_-H0"
 * @identifier _SafeStr_1592 = "_-n1"
 * @identifier _SafeStr_1647 = "extends"
 * @identifier _SafeStr_1683 = "_-RI"
 * @identifier _SafeStr_1714 = "_-fA"
 * @identifier _SafeStr_1728 = "_-LT"
 * @identifier _SafeStr_1752 = "_-cf"
 * @identifier _SafeStr_1767 = "_-nr"
 * @identifier _SafeStr_1775 = "_-kt"
 * @identifier _SafeStr_1784 = "_-nq"
 * @identifier _SafeStr_1869 = "const"
 * @identifier _SafeStr_1889 = "_-qg"
 * @identifier _SafeStr_1979 = "_-QS"
 * @identifier _SafeStr_1990 = "_-ua"
 * @identifier _SafeStr_2027 = "_-3G"
 * @identifier _SafeStr_2040 = "_-h0"
 * @identifier _SafeStr_2049 = "_-cs"
 * @identifier _SafeStr_2060 = "_-UQ"
 * @identifier _SafeStr_2072 = "_-qv"
 * @identifier _SafeStr_2081 = "_-lM"
 * @identifier _SafeStr_2110 = "_-eO"
 * @identifier _SafeStr_2122 = "package"
 * @identifier _SafeStr_2169 = "_-PR"
 * @identifier _SafeStr_2175 = "_-XO"
 * @identifier _SafeStr_2221 = "_-fU"
 * @identifier _SafeStr_2222 = "_-v1"
 * @identifier _SafeStr_2226 = "_-FL"
 * @identifier _SafeStr_2238 = "_-pi"
 * @identifier _SafeStr_2265 = "_-mb"
 * @identifier _SafeStr_2273 = "_-hr"
 * @identifier _SafeStr_2350 = "_-As"
 * @identifier _SafeStr_2360 = "_-d-"
 * @identifier _SafeStr_2379 = "_-9I"
 * @identifier _SafeStr_2407 = "_-Pf"
 * @identifier _SafeStr_2409 = "_-tD"
 * @identifier _SafeStr_2656 = "_-au"
 * @identifier _SafeStr_2694 = "_-fG"
 * @identifier _SafeStr_2790 = "_-F3"
 * @identifier _SafeStr_2867 = "_-Xm"
 * @identifier _SafeStr_3015 = "_-KY"
 * @identifier _SafeStr_3023 = "_-a6"
 * @identifier _SafeStr_3105 = "_-P7"
 * @identifier _SafeStr_3106 = "_-VM"
 * @identifier _SafeStr_3112 = "_-bC"
 * @identifier _SafeStr_3144 = "_-FG"
 * @identifier _SafeStr_3229 = "_-iG"
 * @identifier _SafeStr_3271 = "_-fE"
 * @identifier _SafeStr_3399 = "_-ZM"
 * @identifier _SafeStr_3505 = "_-Eh"
 * @identifier _SafeStr_3634 = "_-KA"
 * @identifier _SafeStr_3669 = "_-S9"
 * @identifier _SafeStr_3694 = "_-6h"
 * @identifier _SafeStr_3745 = "_-pM"
 */
