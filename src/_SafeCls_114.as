package
{
   public class _SafeCls_114 extends _SafeCls_113
   {
      
      private static const _SafeStr_1665:uint = 2000;
      
      internal var _SafeStr_2355:uint;
      
      internal var _SafeStr_3001:Boolean;
      
      internal var _SafeStr_3358:Boolean;
      
      public function _SafeCls_114(param1:_SafeCls_25, param2:String = "Sleep")
      {
         super(param1,param2);
         this._SafeStr_2355 = _SafeStr_118.mTimeThisTick + Math.random() * _SafeStr_1665;
         this._SafeStr_3001 = true;
         this._SafeStr_3358 = true;
         mOwnerEnt.mbRunning = false;
      }
      
      override public function TickState() : Class
      {
         var _loc3_:_SafeCls_25 = null;
         if(!mOwnerEnt.mCurrSurface || Boolean(mOwnerEnt.mbAirborne))
         {
            return _SafeCls_116;
         }
         if(_SafeStr_136.mMostHatedEnt)
         {
            return _SafeCls_115;
         }
         var _loc1_:_SafeCls_25 = _SafeStr_136.GetTarget();
         if(_loc1_)
         {
            _SafeStr_136.AddHate(_loc1_,0,false);
         }
         var _loc2_:uint = uint(_SafeStr_118.mTimeThisTick);
         if(this._SafeStr_3001 || _loc2_ - this._SafeStr_2355 >= _SafeStr_1665)
         {
            _loc3_ = _SafeStr_136.FindClosestEnemy(false);
            if(_loc3_)
            {
               _SafeStr_136.AddHate(_loc3_,0,true);
               return _SafeCls_115;
            }
            this._SafeStr_2355 = _loc2_;
         }
         return null;
      }
      
      override public function EnterState(param1:Boolean) : void
      {
         _SafeStr_136.ClearHateList();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_113 = "_-Gn"
 * @identifier _SafeCls_114 = "_-5g"
 * @identifier _SafeCls_115 = "_-bh"
 * @identifier _SafeCls_116 = "_-pc"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_136 = "_-q1"
 * @identifier _SafeStr_1665 = "_-Pw"
 * @identifier _SafeStr_2355 = "_-1b"
 * @identifier _SafeStr_3001 = "_-iX"
 * @identifier _SafeStr_3358 = "_-k6"
 */
