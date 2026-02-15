package
{
   public class _SafeCls_117 extends _SafeCls_113
   {
      
      private static const _SafeStr_2195:uint = 100;
      
      private static const _SafeStr_2103:uint = 0;
      
      internal var _SafeStr_1428:uint = 0;
      
      internal var _SafeStr_1182:uint = 100;
      
      internal var _SafeStr_2034:uint = 0;
      
      public function _SafeCls_117(param1:_SafeCls_25, param2:String = "Melee")
      {
         super(param1,param2);
      }
      
      override public function TickState() : Class
      {
         if(!_SafeStr_136.mTarget)
         {
            return _SafeCls_116;
         }
         if(_SafeStr_136.mTarget != _SafeStr_136.mMostHatedEnt)
         {
            _SafeStr_136.ChangeTarget(_SafeStr_136.mMostHatedEnt);
         }
         var _loc1_:Number = Math.abs(_SafeStr_136.mTarget.mPhysCenterX - mOwnerEnt.mPhysCenterX);
         var _loc2_:Number = Math.abs(_SafeStr_136.mTarget.mPhysCenterY - mOwnerEnt.mPhysCenterY);
         var _loc3_:Boolean = _loc1_ > this._SafeStr_1182 || _loc2_ > this._SafeStr_1182;
         if(!_loc3_)
         {
            this._SafeStr_1428 = 0;
         }
         else if(!this._SafeStr_1428)
         {
            this._SafeStr_1428 = _SafeStr_118.mTimeThisTick + _SafeCls_90._SafeStr_2379;
         }
         else if(_SafeStr_118.mTimeThisTick >= this._SafeStr_1428)
         {
            return _SafeCls_115;
         }
         if(!mOwnerEnt.mCombatState.mActivePower)
         {
            mOwnerEnt.mbBackpedal = false;
            mOwnerEnt.mbLeft = mOwnerEnt.mPhysCenterX > _SafeStr_136.mTarget.mPhysCenterX;
         }
         mOwnerEnt.mbFiring = true;
         mOwnerEnt.mbRunning = false;
         _SafeStr_136.FirePowers();
         if(_SafeStr_136.mFailedMinRangeCount >= _SafeCls_90._SafeStr_1714)
         {
            return _SafeCls_116;
         }
         return null;
      }
      
      public function _SafeStr_3622() : void
      {
         var _loc1_:_SafeCls_2 = mOwnerEnt.mCombatState.GetPowerTypeFromAction(_SafeStr_136.mPowerAction);
         if(_SafeStr_136.mWeaponType == _SafeCls_90._SafeStr_781)
         {
            this._SafeStr_1182 = _SafeStr_136.mTargetRange;
            this._SafeStr_2034 = _SafeStr_136.mTargetMinRange;
         }
         else if(!_loc1_)
         {
            this._SafeStr_1182 = _SafeStr_2195;
            this._SafeStr_2034 = _SafeStr_2103;
         }
         else
         {
            this._SafeStr_1182 = _loc1_._SafeStr_595 + _loc1_._SafeStr_505;
            this._SafeStr_2034 = _loc1_._SafeStr_505;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "_-jR"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_90 = "_-JT"
 * @identifier _SafeCls_113 = "_-Gn"
 * @identifier _SafeCls_115 = "_-bh"
 * @identifier _SafeCls_116 = "_-pc"
 * @identifier _SafeCls_117 = "_-63"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_136 = "_-q1"
 * @identifier _SafeStr_505 = "_-A"
 * @identifier _SafeStr_595 = "_-Jm"
 * @identifier _SafeStr_781 = "_-fV"
 * @identifier _SafeStr_1182 = "_-o4"
 * @identifier _SafeStr_1428 = "_-ft"
 * @identifier _SafeStr_1714 = "_-fA"
 * @identifier _SafeStr_2034 = "_-aF"
 * @identifier _SafeStr_2103 = "_-ug"
 * @identifier _SafeStr_2195 = "_-94"
 * @identifier _SafeStr_2379 = "_-9I"
 * @identifier _SafeStr_3622 = "_-8G"
 */
