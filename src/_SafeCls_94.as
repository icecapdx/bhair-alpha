package
{
   public class _SafeCls_94
   {
      
      internal var _SafeStr_118:Game;
      
      internal var mOwnerEnt:_SafeCls_25;
      
      internal var _SafeStr_411:Vector.<_SafeCls_93> = new Vector.<_SafeCls_93>();
      
      internal var _SafeStr_203:GfxType;
      
      internal var _SafeStr_1392:GfxType;
      
      internal var _SafeStr_338:_SafeCls_40;
      
      internal var _SafeStr_349:_SafeCls_40;
      
      internal var _SafeStr_202:_SafeCls_18;
      
      internal var _SafeStr_259:uint;
      
      private var _SafeStr_940:uint;
      
      private var _SafeStr_3064:uint = 0;
      
      private var _SafeStr_1688:uint;
      
      private var _SafeStr_3543:uint;
      
      private var _SafeStr_1535:uint;
      
      private var _SafeStr_2688:uint;
      
      private var _SafeStr_1987:uint;
      
      public function _SafeCls_94(param1:_SafeCls_25, param2:_SafeCls_18)
      {
         super();
         this.mOwnerEnt = param1;
         this._SafeStr_118 = param1._SafeStr_118;
         this._SafeStr_202 = param2;
         var _loc3_:uint = this.mOwnerEnt._SafeStr_144._SafeStr_163;
         var _loc4_:uint = _SafeCls_18._SafeStr_407 - 1;
         while(Boolean(_loc4_) && _loc3_ <= _SafeCls_18._SafeStr_955[_loc4_])
         {
            _loc4_--;
         }
         if(this._SafeStr_202._SafeStr_521)
         {
            this._SafeStr_203 = this._SafeStr_202._SafeStr_521[_loc4_];
         }
         if(this._SafeStr_202._SafeStr_456)
         {
            this._SafeStr_1392 = this._SafeStr_202._SafeStr_456[_loc4_];
         }
         if(!this._SafeStr_202._SafeStr_968)
         {
            this._SafeStr_2752();
         }
         if((Boolean(this._SafeStr_202._SafeStr_1051) || Boolean(this._SafeStr_202._SafeStr_2278)) && Boolean(this.mOwnerEnt._SafeStr_125))
         {
            this.mOwnerEnt._SafeStr_125._SafeStr_795(this._SafeStr_202._SafeStr_1051,this._SafeStr_202._SafeStr_2278);
         }
      }
      
      private function _SafeStr_2752() : void
      {
         if(this._SafeStr_203)
         {
            if(this._SafeStr_203._SafeStr_911)
            {
               this.mOwnerEnt._SafeStr_125._SafeStr_1729(this._SafeStr_203);
            }
            else
            {
               this._SafeStr_338 = new _SafeCls_40(this._SafeStr_118,this._SafeStr_203,this.mOwnerEnt._SafeStr_132 != null);
               this._SafeStr_118._SafeStr_164.addChildAt(this._SafeStr_338._SafeStr_120,this._SafeStr_118._SafeStr_164.getChildIndex(this.mOwnerEnt._SafeStr_125._SafeStr_120) + 1);
            }
         }
         if(this._SafeStr_1392)
         {
            this._SafeStr_349 = new _SafeCls_40(this._SafeStr_118,this._SafeStr_1392,this.mOwnerEnt._SafeStr_132 != null);
            this._SafeStr_118._SafeStr_164.addChildAt(this._SafeStr_349._SafeStr_120,this._SafeStr_118._SafeStr_164.getChildIndex(this.mOwnerEnt._SafeStr_125._SafeStr_120));
         }
      }
      
      public function _SafeStr_3005() : Boolean
      {
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc1_:uint = this._SafeStr_118.mTimeThisTick;
         var _loc2_:uint = this._SafeStr_259 + this._SafeStr_202.mDuration;
         if(Boolean(this._SafeStr_202._SafeStr_822) && this._SafeStr_1535 < this._SafeStr_202._SafeStr_2002)
         {
            _loc3_ = this._SafeStr_2688 + this._SafeStr_202._SafeStr_822 * (1 + this._SafeStr_1987);
            if(_loc3_ <= _loc1_)
            {
               if(this._SafeStr_202._SafeStr_968)
               {
                  this._SafeStr_2752();
               }
               ++this._SafeStr_1535;
               ++this._SafeStr_1987;
               if(!(this.mOwnerEnt._SafeStr_137 & _SafeCls_25._SafeStr_194))
               {
                  _loc4_ = Math.round(this._SafeStr_202._SafeStr_2526 * this._SafeStr_3064) * this._SafeStr_2630();
                  if(_loc4_ < 0)
                  {
                     _loc5_ = this.mOwnerEnt._SafeStr_284;
                     if(_loc4_ < _loc5_)
                     {
                        _loc4_ = _loc5_ < 0 ? _loc5_ : 0;
                     }
                  }
                  if(_loc4_)
                  {
                     this.mOwnerEnt.mCombatState._SafeStr_2529(this._SafeStr_118._SafeStr_200(this._SafeStr_1688),_loc4_,null,this._SafeStr_3543);
                  }
               }
            }
         }
         this._SafeStr_319(this.mOwnerEnt._SafeStr_152,this.mOwnerEnt._SafeStr_162);
         if(this._SafeStr_118.IsPlayingWithoutServer() && this._SafeStr_202.mDuration && _loc1_ >= _loc2_)
         {
            this._SafeStr_2799();
            return false;
         }
         return true;
      }
      
      public function _SafeStr_319(param1:Number, param2:Number) : void
      {
         if(Boolean(this._SafeStr_338) && Boolean(this._SafeStr_338._SafeStr_120))
         {
            this._SafeStr_338._SafeStr_120.x = param1;
            this._SafeStr_338._SafeStr_120.y = param2;
            if(this._SafeStr_202._SafeStr_1722)
            {
               this._SafeStr_338._SafeStr_120.y -= this.mOwnerEnt._SafeStr_144._SafeStr_163;
            }
            else if(this._SafeStr_202._SafeStr_1200)
            {
               this._SafeStr_338._SafeStr_120.y -= this.mOwnerEnt._SafeStr_144._SafeStr_163 * 0.5;
            }
         }
         if(Boolean(this._SafeStr_349) && Boolean(this._SafeStr_349._SafeStr_120))
         {
            this._SafeStr_349._SafeStr_120.x = param1;
            this._SafeStr_349._SafeStr_120.y = param2;
            if(this._SafeStr_202._SafeStr_1722)
            {
               this._SafeStr_349._SafeStr_120.y -= this.mOwnerEnt._SafeStr_144._SafeStr_163;
            }
            else if(this._SafeStr_202._SafeStr_1200)
            {
               this._SafeStr_349._SafeStr_120.y -= this.mOwnerEnt._SafeStr_144._SafeStr_163 * 0.5;
            }
         }
      }
      
      public function _SafeStr_2630() : uint
      {
         return this._SafeStr_940 > this._SafeStr_202._SafeStr_497 ? this._SafeStr_202._SafeStr_497 : this._SafeStr_940;
      }
      
      private function _SafeStr_2945(param1:uint, param2:Boolean) : _SafeCls_93
      {
         var _loc3_:int = 0;
         var _loc5_:_SafeCls_93 = null;
         var _loc4_:int = int(this._SafeStr_411.length);
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            _loc5_ = this._SafeStr_411[_loc3_];
            if(_loc5_.mEntID == param1)
            {
               if(param2)
               {
                  this._SafeStr_411.splice(_loc3_,1);
               }
               return _loc5_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function _SafeStr_3283(param1:uint, param2:uint) : void
      {
         var _loc3_:_SafeCls_93 = this._SafeStr_2945(param1,false);
         if(!_loc3_)
         {
            _loc3_ = new _SafeCls_93(param1,this._SafeStr_202._SafeStr_573,0);
            this._SafeStr_411.push(_loc3_);
            this._SafeStr_2688 = this._SafeStr_118.mTimeThisTick;
         }
         this._SafeStr_1688 = param1;
         _loc3_._SafeStr_497 += param2;
         this._SafeStr_940 += param2;
         this._SafeStr_1535 = 0;
         this._SafeStr_259 = this._SafeStr_118.mTimeThisTick;
      }
      
      public function _SafeStr_3008(param1:uint) : Boolean
      {
         var _loc2_:_SafeCls_93 = this._SafeStr_2945(param1,true);
         if(_loc2_)
         {
            this._SafeStr_940 -= _loc2_._SafeStr_497;
            if(!this._SafeStr_411.length)
            {
               this._SafeStr_1348();
               return true;
            }
            if(_loc2_.mEntID == this._SafeStr_1688)
            {
               var _loc3_:_SafeCls_93 = this._SafeStr_411[this._SafeStr_411.length - 1];
               this._SafeStr_1688 = _loc3_.mEntID;
            }
         }
         return false;
      }
      
      public function _SafeStr_2799() : void
      {
         var _loc1_:_SafeCls_93 = null;
         if(!(this.mOwnerEnt._SafeStr_137 & _SafeCls_25.LOCAL) || Boolean(this.mOwnerEnt._SafeStr_137 & _SafeCls_25._SafeStr_589))
         {
            return;
         }
         if(!this._SafeStr_118._SafeStr_161)
         {
            return;
         }
         for each(_loc1_ in this._SafeStr_411)
         {
            this._SafeStr_118._SafeStr_161._SafeStr_3535(this.mOwnerEnt,_loc1_.mEntID,this._SafeStr_202._SafeStr_573);
         }
      }
      
      public function _SafeStr_1348() : void
      {
         var _loc1_:_SafeCls_93 = null;
         if(Boolean(this._SafeStr_202._SafeStr_1051) && Boolean(this.mOwnerEnt._SafeStr_125))
         {
            this.mOwnerEnt._SafeStr_125._SafeStr_1105();
         }
         if(this._SafeStr_203 && this._SafeStr_203._SafeStr_911 && Boolean(this.mOwnerEnt._SafeStr_125))
         {
            this.mOwnerEnt._SafeStr_125._SafeStr_1729(null);
         }
         if(this._SafeStr_338 && this._SafeStr_338._SafeStr_138 && !this._SafeStr_202._SafeStr_968)
         {
            this._SafeStr_338._SafeStr_138._SafeStr_574();
         }
         this._SafeStr_338 = null;
         if(this._SafeStr_349 && this._SafeStr_349._SafeStr_138 && !this._SafeStr_202._SafeStr_968)
         {
            this._SafeStr_349._SafeStr_138._SafeStr_574();
         }
         this._SafeStr_349 = null;
         for each(_loc1_ in this._SafeStr_411)
         {
            _loc1_._SafeStr_3492();
         }
         this._SafeStr_411 = null;
         this._SafeStr_203 = null;
         this._SafeStr_1392 = null;
         this._SafeStr_202 = null;
         this.mOwnerEnt = null;
         this._SafeStr_118 = null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_18 = "_-Nn"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_93 = "_-3a"
 * @identifier _SafeCls_94 = "_-mr"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_125 = "_-5"
 * @identifier _SafeStr_132 = "_-wb"
 * @identifier _SafeStr_137 = "_-3"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_144 = "_-Z"
 * @identifier _SafeStr_152 = "_-PC"
 * @identifier _SafeStr_161 = "_-ve"
 * @identifier _SafeStr_162 = "_-a4"
 * @identifier _SafeStr_163 = "_-eC"
 * @identifier _SafeStr_164 = "_-QU"
 * @identifier _SafeStr_194 = "_-rD"
 * @identifier _SafeStr_200 = "_-H-"
 * @identifier _SafeStr_202 = "_-9e"
 * @identifier _SafeStr_203 = "_-2b"
 * @identifier _SafeStr_259 = "_-cA"
 * @identifier _SafeStr_284 = "_-Ak"
 * @identifier _SafeStr_319 = "_-vX"
 * @identifier _SafeStr_338 = "_-u-"
 * @identifier _SafeStr_349 = "_-JU"
 * @identifier _SafeStr_407 = "_-vK"
 * @identifier _SafeStr_411 = "_-2D"
 * @identifier _SafeStr_456 = "_-La"
 * @identifier _SafeStr_497 = "_-O5"
 * @identifier _SafeStr_521 = "_-o1"
 * @identifier _SafeStr_573 = "_-A-"
 * @identifier _SafeStr_574 = "_-eo"
 * @identifier _SafeStr_589 = "_-Qp"
 * @identifier _SafeStr_795 = "_-f0"
 * @identifier _SafeStr_822 = "_-KR"
 * @identifier _SafeStr_911 = "_-48"
 * @identifier _SafeStr_940 = "_-DJ"
 * @identifier _SafeStr_955 = "_-kV"
 * @identifier _SafeStr_968 = "_-tp"
 * @identifier _SafeStr_1051 = "_-ED"
 * @identifier _SafeStr_1105 = "_-Eo"
 * @identifier _SafeStr_1200 = "_-Cv"
 * @identifier _SafeStr_1348 = "_-YS"
 * @identifier _SafeStr_1392 = "_-Ua"
 * @identifier _SafeStr_1535 = "_-sl"
 * @identifier _SafeStr_1688 = "_-O0"
 * @identifier _SafeStr_1722 = "_-GV"
 * @identifier _SafeStr_1729 = "_-0h"
 * @identifier _SafeStr_1987 = "_-H2"
 * @identifier _SafeStr_2002 = "_-PD"
 * @identifier _SafeStr_2278 = "_-wH"
 * @identifier _SafeStr_2526 = "_-wv"
 * @identifier _SafeStr_2529 = "_-o0"
 * @identifier _SafeStr_2630 = "_-Vv"
 * @identifier _SafeStr_2688 = "_-Hn"
 * @identifier _SafeStr_2752 = "_-C4"
 * @identifier _SafeStr_2799 = "_-cp"
 * @identifier _SafeStr_2945 = "_-Dg"
 * @identifier _SafeStr_3005 = "_-By"
 * @identifier _SafeStr_3008 = "_-Ng"
 * @identifier _SafeStr_3064 = "_-Yn"
 * @identifier _SafeStr_3283 = "_-ra"
 * @identifier _SafeStr_3492 = "_-r1"
 * @identifier _SafeStr_3535 = "_-Rr"
 * @identifier _SafeStr_3543 = "_-47"
 */
