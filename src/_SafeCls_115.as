package
{
   import flash.display.Graphics;
   import flash.geom.Point;
   
   public class _SafeCls_115 extends _SafeCls_113
   {
      
      private static const _SafeStr_2559:uint = 1000;
      
      private static const _SafeStr_2562:uint = 400;
      
      public static const _SafeStr_1258:uint = 2000;
      
      private static const _SafeStr_2326:uint = 1500;
      
      private static const _SafeStr_2561:uint = 3000;
      
      private static const _SafeStr_1620:uint = 600;
      
      private static const _SafeStr_2363:uint = 250;
      
      private static const _SafeStr_2847:uint = 500;
      
      private static const _SafeStr_2037:uint = 5000;
      
      private static const _SafeStr_2084:uint = 150;
      
      internal var _SafeStr_1838:Boolean = true;
      
      internal var _SafeStr_2931:uint = 0;
      
      internal var _SafeStr_3140:int = 0;
      
      internal var _SafeStr_3746:int = 0;
      
      internal var _SafeStr_3707:uint = 0;
      
      internal var _SafeStr_1140:uint = 0;
      
      internal var _SafeStr_2775:uint = 0;
      
      internal var _SafeStr_3686:uint = 0;
      
      internal var _SafeStr_3685:Boolean = false;
      
      private var _SafeStr_3698:Boolean = false;
      
      internal var _SafeStr_2735:uint = 0;
      
      internal var _SafeStr_2429:uint = 0;
      
      internal var _SafeStr_1949:Boolean = false;
      
      public function _SafeCls_115(param1:_SafeCls_25, param2:String = "Pursuit")
      {
         super(param1,param2);
      }
      
      override public function EnterState(param1:Boolean) : void
      {
      }
      
      override public function TickState() : Class
      {
         var _loc10_:_SafeCls_27 = null;
         var _loc11_:int = 0;
         var _loc1_:uint = uint(_SafeStr_118.mTimeThisTick);
         if(_loc1_ > this._SafeStr_2735)
         {
            _SafeStr_136.HateSomebody();
            this._SafeStr_2735 = _loc1_ + _SafeStr_2037;
         }
         if(_SafeStr_136.mTarget != _SafeStr_136.mMostHatedEnt)
         {
            _SafeStr_136.ChangeTarget(_SafeStr_136.mMostHatedEnt);
         }
         if(_loc1_ - _SafeStr_136.nodeAttemptTime > _SafeCls_90._SafeStr_2265)
         {
            _SafeStr_136.InitializePathingToTarget();
         }
         var _loc2_:uint = this._SafeStr_1949 ? uint(400) : uint(250);
         if(_SafeStr_136.mCurrNode && Math.abs(mOwnerEnt.mPhysCenterX - _SafeStr_136.mCurrNode.mPosX) < _loc2_ && Math.abs(mOwnerEnt.mPhysCenterY - _SafeStr_136.mCurrNode.mPosY) < _loc2_)
         {
            _SafeStr_136.GetNextNode();
         }
         else if(Boolean(_SafeStr_136.mTarget) && !_SafeStr_136.mCurrNode)
         {
            _SafeStr_136.InitializePathingToTarget();
         }
         if(Boolean(_SafeStr_136.mCurrNode) && _loc1_ > this._SafeStr_2775)
         {
            this._SafeStr_2775 = _loc1_ + _SafeStr_2363;
            if(!_SafeStr_136.CheckValidNextNode())
            {
               if(Boolean(mOwnerEnt.mbAirborne) && mOwnerEnt.mPhysPosY > _SafeStr_136.mNavMesh.mGroundLine)
               {
                  return _SafeCls_116;
               }
               _SafeStr_136.InitializePathingToTarget();
            }
         }
         var _loc3_:Number = _SafeStr_136.mCurrNode ? Number(_SafeStr_136.mCurrNode.mPosX) : Number(mOwnerEnt.mPhysCenterX);
         var _loc4_:Number = _SafeStr_136.mCurrNode ? Number(_SafeStr_136.mCurrNode.mPosY) : Number(mOwnerEnt.mPhysCenterY);
         var _loc5_:Point = _SafeStr_136.mTarget ? new Point(_SafeStr_136.mTarget.mPhysCenterX - mOwnerEnt.mPhysCenterX,_SafeStr_136.mTarget.mPhysCenterY - mOwnerEnt.mPhysCenterY) : null;
         var _loc6_:Boolean = _SafeStr_136.mTarget ? Math.abs(_loc5_.x) < _SafeStr_136.mTargetRange && Math.abs(_loc5_.y) <= _SafeStr_136.mTargetRange : false;
         var _loc7_:Number = mOwnerEnt.mVelocityX * mOwnerEnt.mVelocityX * 0.5;
         var _loc8_:* = mOwnerEnt.mPhysCenterX >= _loc3_;
         if(_loc8_)
         {
            if(!mOwnerEnt.mbLeft)
            {
               mOwnerEnt.mbBackpedal = true;
               mOwnerEnt.mbLeft = true;
            }
            else
            {
               mOwnerEnt.mbBackpedal = false;
            }
         }
         else if(mOwnerEnt.mbLeft)
         {
            mOwnerEnt.mbBackpedal = true;
            mOwnerEnt.mbLeft = false;
         }
         else
         {
            mOwnerEnt.mbBackpedal = false;
         }
         mOwnerEnt.mbRunning = !mOwnerEnt.IsMoveLocked();
         if(!mOwnerEnt.mCombatState.mEquippedItem && (_loc1_ >= this._SafeStr_2931 || Math.abs(mOwnerEnt.mPhysCenterX - this._SafeStr_3140) > _SafeCls_26._SafeStr_1616))
         {
            _loc10_ = mOwnerEnt.mCombatState.FindDefaultPickup();
            if((Boolean(_loc10_)) && !_loc10_._SafeStr_151._SafeStr_1438)
            {
               mOwnerEnt.mCombatState.QueuePickup();
            }
            this._SafeStr_2931 = _loc1_ + _SafeStr_2326;
            _SafeStr_136.mCheckWeaponTime = 0;
         }
         if(!_SafeStr_136.mTarget || _SafeStr_136.mTarget.mEntState != _SafeCls_25._SafeStr_244 || mOwnerEnt.mPhysPosY > _SafeStr_136.mNavMesh.mPanicLine)
         {
            return _SafeCls_116;
         }
         if(!mOwnerEnt.mbRunning && _loc6_)
         {
            return _SafeCls_117;
         }
         if(_loc1_ >= this._SafeStr_1140)
         {
            _loc11_ = _loc4_ - _SafeStr_136.mOwnerEnt.mPhysCenterY;
            if(Boolean(mOwnerEnt.mbAirborne) && _loc11_ < 0)
            {
               mOwnerEnt.InputCmdJump();
            }
            else if(_loc11_ < -100)
            {
               mOwnerEnt.InputCmdJump();
            }
            else if(_loc11_ < 100 && (_SafeStr_136.mCurrNode && _SafeStr_136.mCurrNode.mNodeType == _SafeCls_112._SafeStr_482) || _SafeStr_136.mLastNode && _SafeStr_136.mLastNode.mNodeType == _SafeCls_112._SafeStr_482)
            {
               mOwnerEnt.InputCmdJump();
            }
            else if(_loc11_ > _SafeStr_136.mTargetRange)
            {
               if(Boolean(mOwnerEnt.mCurrSurface) && mOwnerEnt.mCurrSurface.type == _SafeCls_0._SafeStr_291)
               {
                  mOwnerEnt.mbDropping = true;
               }
            }
            this._SafeStr_1140 = mOwnerEnt.mbJumping ? uint(_loc1_ + _SafeStr_1620 / 2) : uint(_loc1_ + _SafeStr_1620);
         }
         this._SafeStr_1949 = false;
         if(_loc1_ >= this._SafeStr_2429)
         {
            if(_SafeStr_136.CheckForNearbyMine())
            {
               mOwnerEnt.InputCmdJump();
               this._SafeStr_1949 = true;
            }
            this._SafeStr_2429 = _loc1_ + _SafeStr_2084;
         }
         mOwnerEnt.mbFiring = true;
         _SafeStr_136.FirePowers();
         if(_SafeStr_136.mFailedMinRangeCount >= _SafeCls_90._SafeStr_1714)
         {
            return _SafeCls_116;
         }
         if(mOwnerEnt.mDebugBotGfx ? mOwnerEnt.mDebugBotGfx.graphics : null)
         {
            var _gfx:Graphics = mOwnerEnt.mDebugBotGfx.graphics;
            _gfx.clear();
            if(_SafeStr_136.mCurrNode)
            {
               _gfx.beginFill(11141290,0.5);
               _gfx.drawCircle(_SafeStr_136.mCurrNode.mPosX,_SafeStr_136.mCurrNode.mPosY,75);
            }
            if(_SafeStr_136.mDestNode)
            {
               _gfx.beginFill(34816,0.5);
               _gfx.drawCircle(_SafeStr_136.mDestNode.mPosX,_SafeStr_136.mDestNode.mPosY,60);
            }
            _gfx.beginFill(13369344);
            _gfx.drawCircle(_loc3_,_loc4_,50);
            _gfx.endFill();
         }
         return null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_26 = "_-LQ"
 * @identifier _SafeCls_27 = "_-C7"
 * @identifier _SafeCls_90 = "_-JT"
 * @identifier _SafeCls_112 = "_-Pl"
 * @identifier _SafeCls_113 = "_-Gn"
 * @identifier _SafeCls_115 = "_-bh"
 * @identifier _SafeCls_116 = "_-pc"
 * @identifier _SafeCls_117 = "_-63"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_136 = "_-q1"
 * @identifier _SafeStr_151 = "_-0w"
 * @identifier _SafeStr_244 = "_-HJ"
 * @identifier _SafeStr_291 = "_-Ce"
 * @identifier _SafeStr_482 = "_-wA"
 * @identifier _SafeStr_1140 = "_-UW"
 * @identifier _SafeStr_1258 = "_-6a"
 * @identifier _SafeStr_1438 = "_-5H"
 * @identifier _SafeStr_1616 = "_-Cp"
 * @identifier _SafeStr_1620 = "_-cn"
 * @identifier _SafeStr_1714 = "_-fA"
 * @identifier _SafeStr_1838 = "_-Pe"
 * @identifier _SafeStr_1949 = "_-g0"
 * @identifier _SafeStr_2037 = "_-ew"
 * @identifier _SafeStr_2084 = "_-AA"
 * @identifier _SafeStr_2265 = "_-mb"
 * @identifier _SafeStr_2326 = "_-Ik"
 * @identifier _SafeStr_2363 = "_-wB"
 * @identifier _SafeStr_2429 = "_-b0"
 * @identifier _SafeStr_2559 = "_-pQ"
 * @identifier _SafeStr_2561 = "_-Jp"
 * @identifier _SafeStr_2562 = "_-YM"
 * @identifier _SafeStr_2735 = "_-Pg"
 * @identifier _SafeStr_2775 = "_-k7"
 * @identifier _SafeStr_2847 = "_-vd"
 * @identifier _SafeStr_2931 = "_-SF"
 * @identifier _SafeStr_3140 = "_-3E"
 * @identifier _SafeStr_3685 = "_-l7"
 * @identifier _SafeStr_3686 = "_-oC"
 * @identifier _SafeStr_3698 = "_-vL"
 * @identifier _SafeStr_3707 = "_-Bu"
 * @identifier _SafeStr_3746 = "_-o7"
 */
