package
{
   import flash.display.Graphics;
   
   public class _SafeCls_116 extends _SafeCls_113
   {
      
      private static const _SafeStr_2559:uint = 1000;
      
      private static const _SafeStr_2562:uint = 400;
      
      public static const _SafeStr_1258:uint = 2000;
      
      private static const _SafeStr_1620:uint = 600;
      
      internal var _SafeStr_1838:Boolean = true;
      
      internal var _SafeStr_1140:uint = 0;
      
      public function _SafeCls_116(param1:_SafeCls_25, param2:String = "Pursuit")
      {
         super(param1,param2);
      }
      
      override public function EnterState(param1:Boolean) : void
      {
      }
      
      override public function TickState() : Class
      {
         var _loc8_:int = 0;
         var _loc1_:uint = uint(_SafeStr_118.mTimeThisTick);
         if(mOwnerEnt.mCurrSurface && !mOwnerEnt.mbAirborne && !mOwnerEnt.mWallSliding && !mOwnerEnt.mWallSlidingLastFrame && !mOwnerEnt.mbAirborneLastFrame)
         {
            return _SafeStr_136.mTarget ? _SafeCls_115 : _SafeCls_114;
         }
         if(this._SafeStr_1838)
         {
            this._SafeStr_1838 = false;
            _SafeStr_136.FindSafeNode(true);
         }
         if(_SafeStr_136.mCurrNode && Math.abs(mOwnerEnt.mPhysCenterX - _SafeStr_136.mCurrNode.mPosX) < 250 && Math.abs(mOwnerEnt.mPhysCenterY - _SafeStr_136.mCurrNode.mPosY) < 250)
         {
            _SafeStr_136.GetNextNode();
         }
         if(!_SafeStr_136.mCurrNode)
         {
            _SafeStr_136.FindSafeNode(true);
         }
         var _loc2_:Number = Number(_SafeStr_136.mCurrNode.mPosX);
         var _loc3_:Number = Number(_SafeStr_136.mCurrNode.mPosY);
         var _loc4_:Number = mOwnerEnt.mVelocityX * mOwnerEnt.mVelocityX * 0.5;
         var _loc5_:Number = _loc2_;
         var _loc6_:* = mOwnerEnt.mPhysCenterX >= _loc5_;
         if(_loc6_)
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
            mOwnerEnt.mbRunning = !mOwnerEnt.IsMoveLocked() && mOwnerEnt.mPhysCenterX - _loc5_ - _loc4_ > 20;
         }
         else
         {
            if(mOwnerEnt.mbLeft)
            {
               mOwnerEnt.mbBackpedal = true;
               mOwnerEnt.mbLeft = false;
            }
            else
            {
               mOwnerEnt.mbBackpedal = false;
            }
            mOwnerEnt.mbRunning = !mOwnerEnt.IsMoveLocked() && _loc5_ - _loc4_ - mOwnerEnt.mPhysCenterX > 20;
         }
         if(_loc1_ >= this._SafeStr_1140)
         {
            _loc8_ = _loc3_ - _SafeStr_136.mOwnerEnt.mPhysCenterY;
            if(Boolean(mOwnerEnt.mbAirborne) && _loc8_ < 0)
            {
               if(mOwnerEnt.mCurrentAerialJumpCount < mOwnerEnt.mCombatState.mbcJumpCount)
               {
                  mOwnerEnt.InputCmdJump();
               }
               else if(!mOwnerEnt.mCombatState.mbAirControlExhausted)
               {
                  mOwnerEnt.mCombatState.QueuePower(_SafeCls_26._SafeStr_415);
               }
            }
            else if(_loc8_ < -50 || _loc8_ < 50 && mOwnerEnt.mVelocityY >= 0)
            {
               mOwnerEnt.InputCmdJump();
            }
            else if(_loc8_ < 100 && (_SafeStr_136.mCurrNode && _SafeStr_136.mCurrNode.mNodeType == _SafeCls_112._SafeStr_482) || _SafeStr_136.mLastNode && _SafeStr_136.mLastNode.mNodeType == _SafeCls_112._SafeStr_482)
            {
               mOwnerEnt.InputCmdJump();
            }
            else if(_loc8_ > _SafeStr_136.mTargetRange)
            {
               if(Boolean(mOwnerEnt.mCurrSurface) && mOwnerEnt.mCurrSurface.type == _SafeCls_0._SafeStr_291)
               {
                  mOwnerEnt.mbDropping = true;
               }
            }
            this._SafeStr_1140 = mOwnerEnt.mbJumping ? uint(_loc1_ + _SafeStr_1620 / 2) : uint(_loc1_ + _SafeStr_1620);
         }
         mOwnerEnt.mbFiring = true;
         _SafeStr_136.FirePowers();
         if(mOwnerEnt.mDebugBotGfx ? mOwnerEnt.mDebugBotGfx.graphics : null)
         {
            var _gfx:Graphics = mOwnerEnt.mDebugBotGfx.graphics;
            _gfx.clear();
            if(_SafeStr_136.mCurrNode)
            {
               _gfx.beginFill(11141290,0.5);
               _gfx.drawCircle(_SafeStr_136.mCurrNode.mPosX,_SafeStr_136.mCurrNode.mPosY,120);
            }
            if(_SafeStr_136.mDestNode)
            {
               _gfx.beginFill(16716032,0.8);
               _gfx.drawCircle(_SafeStr_136.mDestNode.mPosX,_SafeStr_136.mDestNode.mPosY,90);
            }
            _gfx.beginFill(13369344);
            _gfx.drawCircle(_loc2_,_loc3_,50);
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
 * @identifier _SafeCls_112 = "_-Pl"
 * @identifier _SafeCls_113 = "_-Gn"
 * @identifier _SafeCls_114 = "_-5g"
 * @identifier _SafeCls_115 = "_-bh"
 * @identifier _SafeCls_116 = "_-pc"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_136 = "_-q1"
 * @identifier _SafeStr_291 = "_-Ce"
 * @identifier _SafeStr_415 = "_-WH"
 * @identifier _SafeStr_482 = "_-wA"
 * @identifier _SafeStr_1140 = "_-UW"
 * @identifier _SafeStr_1258 = "_-6a"
 * @identifier _SafeStr_1620 = "_-cn"
 * @identifier _SafeStr_1838 = "_-Pe"
 * @identifier _SafeStr_2559 = "_-pQ"
 * @identifier _SafeStr_2562 = "_-YM"
 */
