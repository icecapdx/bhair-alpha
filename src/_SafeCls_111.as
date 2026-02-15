package
{
   import flash.display.Sprite;
   
   public class _SafeCls_111
   {
      
      private var _SafeStr_118:Game;
      
      private var _SafeStr_3628:Boolean;
      
      private var _SafeStr_1691:uint;
      
      private var _SafeStr_2947:uint;
      
      private var _SafeStr_2230:uint;
      
      private var _SafeStr_1500:uint;
      
      private var _SafeStr_1938:Boolean;
      
      private var _SafeStr_203:GfxType;
      
      private var _SafeStr_2893:uint;
      
      private var _SafeStr_584:_SafeCls_14;
      
      public var mbRunning:Boolean;
      
      public var _SafeStr_2066:Number;
      
      public var _SafeStr_2303:Number;
      
      public function _SafeCls_111(param1:Game, param2:_SafeCls_14, param3:Number = 0, param4:Number = 0)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_203 = new GfxType();
         this._SafeStr_3431(param2);
         this._SafeStr_2066 = param3;
         this._SafeStr_2303 = param4;
         this.Reset();
      }
      
      public function _SafeStr_2545() : void
      {
         this._SafeStr_750();
         this._SafeStr_118 = null;
         this._SafeStr_584 = null;
         this._SafeStr_203 = null;
      }
      
      public function _SafeStr_3423() : Boolean
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         var _loc3_:_SafeCls_40 = null;
         var _loc4_:Sprite = null;
         if(!this.mbRunning)
         {
            return true;
         }
         if(this._SafeStr_1691)
         {
            _loc1_ = this._SafeStr_118.mTimeThisTick;
            if(_loc1_ - this._SafeStr_2947 > this._SafeStr_1691)
            {
               if(this._SafeStr_1938)
               {
                  this._SafeStr_2545();
                  return false;
               }
               this._SafeStr_750();
               return true;
            }
         }
         if(_loc1_ - this._SafeStr_1500 > this._SafeStr_2230)
         {
            _loc2_ = Math.random() * this._SafeStr_2893;
            this._SafeStr_203._SafeStr_180 = this._SafeStr_584._SafeStr_1562[_loc2_];
            _loc3_ = new _SafeCls_40(this._SafeStr_118,this._SafeStr_203,false);
            _loc4_ = _loc3_._SafeStr_120;
            _loc4_.x = this._SafeStr_2066;
            _loc4_.y = this._SafeStr_2303;
            this._SafeStr_118._SafeStr_164.addChildAt(_loc4_,0);
            this._SafeStr_1500 = _loc1_;
         }
         return true;
      }
      
      public function Reset() : void
      {
         var _loc1_:uint = this._SafeStr_118.mTimeThisTick;
         this._SafeStr_2947 = _loc1_;
         this._SafeStr_1500 = _loc1_;
         if(!this.mbRunning)
         {
            this.mbRunning = true;
         }
      }
      
      public function _SafeStr_750() : void
      {
         this.mbRunning = false;
      }
      
      public function _SafeStr_3607(param1:uint) : void
      {
         this._SafeStr_1691 = param1;
      }
      
      public function _SafeStr_3673(param1:uint) : void
      {
         this._SafeStr_2230 = param1;
         this._SafeStr_1500 = this._SafeStr_118.mTimeThisTick;
      }
      
      public function _SafeStr_3672(param1:Boolean) : void
      {
         this._SafeStr_1938 = param1;
      }
      
      public function _SafeStr_3630(param1:GfxType) : void
      {
         if(!param1)
         {
            return;
         }
         this._SafeStr_203 = param1;
         this._SafeStr_203._SafeStr_290 = true;
      }
      
      public function _SafeStr_3431(param1:_SafeCls_14) : void
      {
         this._SafeStr_584 = param1;
         this._SafeStr_3079();
      }
      
      public function _SafeStr_3079() : void
      {
         this._SafeStr_1691 = this._SafeStr_584._SafeStr_1691;
         this._SafeStr_2230 = this._SafeStr_584._SafeStr_2230;
         this._SafeStr_1938 = this._SafeStr_584._SafeStr_1938;
         this._SafeStr_2893 = this._SafeStr_584._SafeStr_1562.length;
         this._SafeStr_203._SafeStr_228 = "SFX_1.swf";
         this._SafeStr_203.animScale = this._SafeStr_584._SafeStr_2469;
         this._SafeStr_203.moveAnimSpeed = this._SafeStr_584._SafeStr_2776;
         this._SafeStr_203._SafeStr_290 = true;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_14 = "_-fx"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_111 = "_-Xb"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_164 = "_-QU"
 * @identifier _SafeStr_180 = "_-az"
 * @identifier _SafeStr_203 = "_-2b"
 * @identifier _SafeStr_228 = "_-QK"
 * @identifier _SafeStr_290 = "_-lH"
 * @identifier _SafeStr_584 = "_-FX"
 * @identifier _SafeStr_750 = "_-2a"
 * @identifier _SafeStr_1500 = "_-FP"
 * @identifier _SafeStr_1562 = "_-bg"
 * @identifier _SafeStr_1691 = "_-Bb"
 * @identifier _SafeStr_1938 = "_-Q9"
 * @identifier _SafeStr_2066 = "_-SJ"
 * @identifier _SafeStr_2230 = "_-H8"
 * @identifier _SafeStr_2303 = "_-B8"
 * @identifier _SafeStr_2469 = "_-nN"
 * @identifier _SafeStr_2545 = "_-AC"
 * @identifier _SafeStr_2776 = "_-ZK"
 * @identifier _SafeStr_2893 = "_-sh"
 * @identifier _SafeStr_2947 = "_-Xp"
 * @identifier _SafeStr_3079 = "_-qa"
 * @identifier _SafeStr_3423 = "_-lq"
 * @identifier _SafeStr_3431 = "_-dg"
 * @identifier _SafeStr_3607 = "_-Uj"
 * @identifier _SafeStr_3628 = "_-Iz"
 * @identifier _SafeStr_3630 = "_-pS"
 * @identifier _SafeStr_3672 = "_-4I"
 * @identifier _SafeStr_3673 = "_-S0"
 */
