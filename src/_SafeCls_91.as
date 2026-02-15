package
{
   import flash.geom.Point;
   import flash.media.SoundChannel;
   import flash.utils.Dictionary;
   
   public class _SafeCls_91
   {
      
      internal var _SafeStr_118:Game;
      
      internal var mOwnerEnt:_SafeCls_25;
      
      internal var _SafeStr_471:Boolean = false;
      
      internal var _SafeStr_122:_SafeCls_2 = null;
      
      internal var _SafeStr_318:_SafeCls_25 = null;
      
      internal var _SafeStr_225:Point = null;
      
      internal var _SafeStr_676:Point = null;
      
      internal var _SafeStr_1075:Boolean = false;
      
      internal var _SafeStr_368:Boolean = false;
      
      internal var _SafeStr_2187:uint = 0;
      
      private var _SafeStr_1313:Boolean = false;
      
      internal var _SafeStr_2602:Boolean = false;
      
      internal var _SafeStr_267:Boolean = true;
      
      internal var _SafeStr_2910:Boolean = false;
      
      internal var _SafeStr_259:uint = 0;
      
      internal var _SafeStr_632:uint = 0;
      
      internal var _SafeStr_555:uint = 0;
      
      internal var _SafeStr_1450:uint = 0;
      
      internal var _SafeStr_2507:uint = 0;
      
      internal var _SafeStr_442:_SafeCls_40 = null;
      
      internal var _SafeStr_466:_SafeCls_40 = null;
      
      internal var _SafeStr_190:uint = 0;
      
      internal var _SafeStr_1579:uint = 0;
      
      internal var _SafeStr_1568:SoundChannel;
      
      internal var _SafeStr_1966:uint = 0;
      
      internal var _SafeStr_1375:Dictionary;
      
      internal var _SafeStr_1085:uint;
      
      internal var _SafeStr_981:uint = 0;
      
      internal var _SafeStr_514:uint = 0;
      
      internal var _SafeStr_903:_SafeCls_27;
      
      internal var _SafeStr_629:int;
      
      internal var _SafeStr_2699:Boolean = false;
      
      internal var _SafeStr_1096:uint = 0;
      
      internal var _SafeStr_1799:Boolean = false;
      
      internal var _SafeStr_920:Boolean = false;
      
      internal var _SafeStr_2987:uint = 0;
      
      internal var _SafeStr_2232:Point;
      
      internal var _SafeStr_3633:Boolean = false;
      
      internal var _SafeStr_2197:Number = 0;
      
      public function _SafeCls_91(param1:Game, param2:_SafeCls_2, param3:_SafeCls_25, param4:uint, param5:uint = 0, param6:Point = null)
      {
         super();
         this._SafeStr_118 = param1;
         this.mOwnerEnt = param3;
         if(this.mOwnerEnt._SafeStr_137 & (_SafeCls_25._SafeStr_194 | _SafeCls_25._SafeStr_252))
         {
            this._SafeStr_1313 = true;
         }
         this._SafeStr_122 = param2;
         this._SafeStr_1966 = param4;
         this._SafeStr_471 = param3._SafeStr_665();
         this._SafeStr_225 = param6;
         if(this._SafeStr_122._SafeStr_1813)
         {
            this._SafeStr_1375 = new Dictionary();
         }
         this._SafeStr_514 = param5;
         if(this._SafeStr_122._SafeStr_518 && Boolean(this._SafeStr_122._SafeStr_260))
         {
            this._SafeStr_629 = Math.ceil((this._SafeStr_122._SafeStr_560 ? this._SafeStr_514 / this._SafeStr_122._SafeStr_560 : 0) * this._SafeStr_122._SafeStr_260.length);
            this._SafeStr_629 = Math.max(this._SafeStr_629,this._SafeStr_122._SafeStr_748);
         }
      }
      
      public function _SafeStr_2236(param1:uint) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:uint = 0;
         var _loc4_:_SafeCls_23 = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:_SafeCls_26 = null;
         var _loc8_:Boolean = false;
         var _loc9_:Array = null;
         var _loc10_:uint = 0;
         var _loc11_:uint = 0;
         var _loc12_:Object = null;
         var _loc13_:Point = null;
         var _loc14_:Array = null;
         var _loc15_:_SafeCls_27 = null;
         var _loc16_:_SafeCls_87 = null;
         if(!this._SafeStr_267)
         {
            return false;
         }
         if(this._SafeStr_2910)
         {
            this._SafeStr_837();
            return false;
         }
         if(!this._SafeStr_259)
         {
            this._SafeStr_259 = param1;
            this._SafeStr_190 = 0;
            this._SafeStr_632 = this._SafeStr_259 + this._SafeStr_122._SafeStr_260[this._SafeStr_190];
            this._SafeStr_555 = this._SafeStr_259 + this._SafeStr_122._SafeStr_675 + this._SafeStr_122._SafeStr_1204;
            this._SafeStr_1450 = this._SafeStr_122._SafeStr_1321 ? uint(this._SafeStr_259 + this._SafeStr_122._SafeStr_1321) : 0;
            this._SafeStr_2507 = this._SafeStr_122._SafeStr_859 ? uint(this._SafeStr_259 + this._SafeStr_122._SafeStr_859) : 0;
            this._SafeStr_3501();
            if(this._SafeStr_629)
            {
               this._SafeStr_555 = this._SafeStr_259 + this._SafeStr_122._SafeStr_2819(this._SafeStr_629) + this._SafeStr_122._SafeStr_1204;
            }
            if(!this._SafeStr_122._SafeStr_2351 && !this._SafeStr_1075)
            {
               this.mOwnerEnt._SafeStr_550 = true;
            }
            if(!this._SafeStr_1313)
            {
               if(!this._SafeStr_1075)
               {
                  if(this._SafeStr_122._SafeStr_276)
                  {
                     this.mOwnerEnt._SafeStr_1347 = true;
                  }
                  if(!this._SafeStr_122._SafeStr_921)
                  {
                     this.mOwnerEnt._SafeStr_1550 = true;
                  }
               }
               if(this._SafeStr_118._SafeStr_161 && !this._SafeStr_2602 && !(this.mOwnerEnt._SafeStr_137 & _SafeCls_25._SafeStr_589) && !this._SafeStr_122._SafeStr_1649)
               {
                  this._SafeStr_118._SafeStr_161._SafeStr_3103(this);
               }
            }
            if(Boolean(_SafeCls_1.flags) && Boolean(_SafeCls_1._SafeStr_1491))
            {
               _loc2_ = Game._SafeStr_354 ? 24 / Game._SafeStr_354 : 24;
               this._SafeStr_632 = this._SafeStr_259 + _loc2_ * this._SafeStr_122._SafeStr_260[this._SafeStr_190];
               this._SafeStr_555 = this._SafeStr_259 + _loc2_ * (this._SafeStr_122._SafeStr_675 + this._SafeStr_122._SafeStr_1204);
               this._SafeStr_1450 = this._SafeStr_122._SafeStr_1321 ? uint(_loc2_ * (this._SafeStr_259 + this._SafeStr_122._SafeStr_1321)) : 0;
               this._SafeStr_2507 = this._SafeStr_122._SafeStr_859 ? uint(_loc2_ * (this._SafeStr_259 + this._SafeStr_122._SafeStr_859)) : 0;
               if(this._SafeStr_629)
               {
                  this._SafeStr_555 = _loc2_ * (this._SafeStr_259 + this._SafeStr_122._SafeStr_2819(this._SafeStr_629) + this._SafeStr_122._SafeStr_1204);
               }
            }
         }
         if(!this._SafeStr_368 && this._SafeStr_2699 && this._SafeStr_122._SafeStr_1909 && this._SafeStr_118.mTimeThisTick - this._SafeStr_259 > this._SafeStr_122._SafeStr_2289)
         {
            this._SafeStr_3328();
         }
         if(!this._SafeStr_368 && (this._SafeStr_1799 || this._SafeStr_1096 && this._SafeStr_1096 & this._SafeStr_122._SafeStr_1287) && this._SafeStr_118.mTimeThisTick - this._SafeStr_259 > this._SafeStr_122._SafeStr_2289)
         {
            this._SafeStr_3414();
         }
         if(this._SafeStr_1579 < this._SafeStr_122._SafeStr_653.length)
         {
            _loc3_ = param1 - this._SafeStr_259;
            _loc4_ = this._SafeStr_122._SafeStr_653[this._SafeStr_1579];
            if(_loc3_ >= _loc4_._SafeStr_2494)
            {
               _loc5_ = Boolean(_loc4_._SafeStr_2005) && this.mOwnerEnt._SafeStr_144._SafeStr_3227 ? _loc4_._SafeStr_2005 : _loc4_._SafeStr_2882;
               if(this._SafeStr_122._SafeStr_2380)
               {
                  _loc6_ = Number(_SafeCls_3._SafeStr_343[_loc5_]);
                  if(!_loc6_)
                  {
                     _loc6_ = 1;
                  }
                  this._SafeStr_1568 = _SafeCls_13._SafeStr_622(_loc5_,_loc6_,true);
               }
               this._SafeStr_118.PlaySoundAtPosition(this.mOwnerEnt.mEntID,_loc5_,this.mOwnerEnt._SafeStr_215,this.mOwnerEnt._SafeStr_193);
               ++this._SafeStr_1579;
            }
         }
         if(!this._SafeStr_368 && param1 >= this._SafeStr_632)
         {
            if(!this._SafeStr_676)
            {
               this._SafeStr_3444();
            }
            this._SafeStr_2174();
            this._SafeStr_368 = true;
            ++this._SafeStr_2187;
            if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_311 || this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_328)
            {
               this.mOwnerEnt._SafeStr_3125();
            }
            else if(this._SafeStr_122 == _SafeCls_2._SafeStr_738)
            {
               this.mOwnerEnt._SafeStr_2165 = true;
            }
            _loc7_ = this.mOwnerEnt.mCombatState;
            if(this._SafeStr_122._SafeStr_739)
            {
               this._SafeStr_3314();
            }
            else if(!this._SafeStr_1313)
            {
               _loc8_ = Boolean(this._SafeStr_122._SafeStr_274) && (this._SafeStr_190 < this._SafeStr_122._SafeStr_274.length ? Boolean(this._SafeStr_122._SafeStr_274[this._SafeStr_190]) : Boolean(this._SafeStr_122._SafeStr_504));
               _loc8_ = (_loc8_) || Boolean(this._SafeStr_122._SafeStr_1989);
               _loc9_ = this._SafeStr_3484();
               _loc10_ = this._SafeStr_122._SafeStr_325 ? this._SafeStr_514 : 0;
               _loc11_ = 0;
               if(_loc8_ || this._SafeStr_122._SafeStr_3499)
               {
                  _loc11_ = _loc7_._SafeStr_2614(this._SafeStr_122,this,this._SafeStr_676,this._SafeStr_225,_loc9_,this._SafeStr_190,0,this._SafeStr_1375,this._SafeStr_1085,_loc10_,this._SafeStr_471,this._SafeStr_2987,this._SafeStr_2232);
               }
               this._SafeStr_981 += _loc11_;
               if(this._SafeStr_122._SafeStr_737 && _loc9_ && Boolean(_loc9_.length))
               {
                  this._SafeStr_318 = _loc9_[0];
               }
               if(this._SafeStr_122._SafeStr_1813 && _loc8_)
               {
                  for each(_loc12_ in _loc9_)
                  {
                     this._SafeStr_1375[_loc12_] = true;
                  }
               }
               if(Boolean(_loc11_) && this._SafeStr_122._SafeStr_2178)
               {
                  this._SafeStr_2557();
               }
               if(Boolean(_loc11_) && this._SafeStr_122._SafeStr_323)
               {
                  this._SafeStr_2910 = true;
               }
               if(this._SafeStr_122._SafeStr_1774)
               {
                  if(this._SafeStr_122._SafeStr_1774 == _SafeCls_2._SafeStr_2132)
                  {
                     _loc13_ = this._SafeStr_118.level._SafeStr_449[int(Math.random() * this._SafeStr_118.level._SafeStr_449.length)];
                  }
                  else if(this._SafeStr_122._SafeStr_1774 == _SafeCls_2._SafeStr_1480)
                  {
                     _loc14_ = this._SafeStr_118._SafeStr_2508(_SafeCls_6._SafeStr_416["Door"],true,this._SafeStr_903);
                     if(_loc14_.length)
                     {
                        _loc15_ = _loc14_[int(Math.random() * _loc14_.length)];
                        _loc13_ = new Point(_loc15_._SafeStr_215,_loc15_._SafeStr_193);
                        _loc15_.PlayAnimation("Open");
                     }
                  }
                  if(_loc13_)
                  {
                     this.mOwnerEnt._SafeStr_319(_loc13_.x,_loc13_.y);
                  }
               }
            }
            if(this._SafeStr_1313)
            {
               if(this._SafeStr_190 < this._SafeStr_122._SafeStr_260.length - 1 && (!this._SafeStr_122._SafeStr_518 || this._SafeStr_190 < this._SafeStr_629))
               {
                  this._SafeStr_632 += this._SafeStr_122._SafeStr_260[++this._SafeStr_190];
                  this._SafeStr_368 = false;
               }
               else
               {
                  this._SafeStr_837();
               }
            }
            else
            {
               if(this.mOwnerEnt._SafeStr_612)
               {
                  this._SafeStr_122._SafeStr_3536(this.mOwnerEnt._SafeStr_612,this.mOwnerEnt,this._SafeStr_225,this._SafeStr_190);
               }
               if((this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_311 || this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_328) && (this.mOwnerEnt._SafeStr_473 || this._SafeStr_122._SafeStr_323 && _loc11_))
               {
                  this._SafeStr_837();
                  this._SafeStr_555 = 0;
                  this.mOwnerEnt._SafeStr_2535();
                  if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_311 && Boolean(this.mOwnerEnt._SafeStr_473))
                  {
                     this._SafeStr_920 = true;
                  }
               }
               else if(this._SafeStr_190 < this._SafeStr_122._SafeStr_260.length - 1 && (!this._SafeStr_122._SafeStr_518 || this._SafeStr_190 < this._SafeStr_629))
               {
                  if(Boolean(_SafeCls_1.flags) && Boolean(_SafeCls_1._SafeStr_1491))
                  {
                     _loc2_ = Game._SafeStr_354 ? 24 / Game._SafeStr_354 - 1 : 24;
                     this._SafeStr_632 += _loc2_ * this._SafeStr_122._SafeStr_260[this._SafeStr_190 + 1];
                  }
                  this._SafeStr_632 += this._SafeStr_122._SafeStr_260[++this._SafeStr_190];
                  this._SafeStr_368 = false;
               }
               else
               {
                  this._SafeStr_837();
               }
            }
         }
         if(this._SafeStr_122._SafeStr_2439 && this._SafeStr_259 && this.mOwnerEnt.mbAirborne)
         {
            this._SafeStr_1901(true);
         }
         if(this._SafeStr_368 && param1 >= this._SafeStr_555)
         {
            if(Boolean(this._SafeStr_981) || this._SafeStr_122._SafeStr_739)
            {
               _loc16_ = this.mOwnerEnt.mCombatState.mEquippedItem;
            }
            if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_658 && !this._SafeStr_514)
            {
               this._SafeStr_514 = this._SafeStr_122._SafeStr_675;
            }
            return false;
         }
         return true;
      }
      
      public function _SafeStr_3484() : Array
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = this._SafeStr_122._SafeStr_333 ? this._SafeStr_122._SafeStr_333[this._SafeStr_190] : this._SafeStr_122._SafeStr_505;
         var _loc6_:int = this._SafeStr_122._SafeStr_367 ? this._SafeStr_122._SafeStr_367[this._SafeStr_190] : this._SafeStr_122._SafeStr_669;
         var _loc7_:int = this._SafeStr_122._SafeStr_522 ? int(this._SafeStr_122._SafeStr_522[this._SafeStr_190]) : int(this._SafeStr_122._SafeStr_595);
         var _loc8_:int = this._SafeStr_122._SafeStr_525 ? int(this._SafeStr_122._SafeStr_525[this._SafeStr_190]) : int(this._SafeStr_122._SafeStr_684);
         var _loc9_:int = this._SafeStr_471 ? int(-_loc5_) : _loc5_;
         var _loc10_:uint = this._SafeStr_122._SafeStr_504 < 0 ? Game.FRIEND : Game._SafeStr_580;
         if(this._SafeStr_122._SafeStr_1584)
         {
            _loc10_ = 0;
         }
         if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_1311)
         {
            return new Array(this.mOwnerEnt);
         }
         if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_517 || this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_1288 || this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_828)
         {
            return new Array(this._SafeStr_318);
         }
         if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_498)
         {
            return this._SafeStr_118._SafeStr_430(this.mOwnerEnt,this._SafeStr_225.x,this._SafeStr_225.y + _loc6_,_loc7_,_loc8_,_loc10_);
         }
         if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_723)
         {
            return this._SafeStr_118._SafeStr_430(this.mOwnerEnt,this._SafeStr_225.x,this._SafeStr_225.y + _loc6_,_loc7_,_loc8_,_loc10_);
         }
         if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_774)
         {
            return this._SafeStr_118._SafeStr_430(this.mOwnerEnt,this.mOwnerEnt.mPhysCenterX + _loc9_,this.mOwnerEnt.mPhysCenterY + _loc6_,_loc7_,_loc8_,_loc10_);
         }
         if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_608 || this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_311 || this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_328 || this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_452 || this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_501)
         {
            return this._SafeStr_118._SafeStr_430(this.mOwnerEnt,this.mOwnerEnt.mPhysCenterX + _loc9_,this.mOwnerEnt.mPhysCenterY + _loc6_,_loc7_,_loc8_,_loc10_);
         }
         if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_909)
         {
            return this._SafeStr_118._SafeStr_430(this.mOwnerEnt,this.mOwnerEnt.mPhysCenterX + _loc9_,this.mOwnerEnt.mPhysCenterY + _loc6_,this._SafeStr_122._SafeStr_522[this._SafeStr_190],this._SafeStr_122._SafeStr_525[this._SafeStr_190],_loc10_);
         }
         var _loc11_:uint = this._SafeStr_122._SafeStr_2865(this.mOwnerEnt);
         if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_437)
         {
            if(_loc7_)
            {
               return this._SafeStr_118._SafeStr_430(this.mOwnerEnt,this.mOwnerEnt.mPhysCenterX + _loc9_,this.mOwnerEnt.mPhysCenterY,_loc11_ + _loc7_,_loc8_,_loc10_);
            }
            if(this._SafeStr_318)
            {
               _loc1_ = Math.abs(this._SafeStr_318.mPhysCenterX - (this.mOwnerEnt.mPhysCenterX + _loc9_));
               _loc2_ = Math.abs(this._SafeStr_318.mPhysCenterY - this.mOwnerEnt.mPhysCenterY);
               _loc3_ = this._SafeStr_318._SafeStr_144._SafeStr_237 * 0.5 + this.mOwnerEnt._SafeStr_144._SafeStr_237 * 0.5;
               _loc4_ = this._SafeStr_318._SafeStr_144._SafeStr_163 * 0.5 + this.mOwnerEnt._SafeStr_144._SafeStr_163 * 0.5;
               if(_loc1_ <= _loc11_ + _loc3_ && _loc2_ <= _loc4_)
               {
                  return new Array(this._SafeStr_318);
               }
            }
            var _loc12_:Array = this._SafeStr_118._SafeStr_430(this.mOwnerEnt,this.mOwnerEnt.mPhysCenterX + _loc9_,this.mOwnerEnt.mPhysCenterY,_loc11_,this.mOwnerEnt._SafeStr_144._SafeStr_163 * 0.5,_loc10_);
            var _loc13_:_SafeCls_25 = null;
            if(!_loc13_)
            {
               _loc13_ = this._SafeStr_3307(null);
            }
            return new Array();
         }
         return new Array();
      }
      
      public function _SafeStr_3307(param1:Array) : _SafeCls_25
      {
         var _loc4_:_SafeCls_25 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:Number = Number.MAX_VALUE;
         var _loc3_:_SafeCls_25 = null;
         for each(_loc4_ in param1)
         {
            _loc5_ = _loc4_._SafeStr_152 - this.mOwnerEnt._SafeStr_152;
            _loc6_ = _loc4_._SafeStr_162 - this.mOwnerEnt._SafeStr_162;
            _loc7_ = _loc5_ * _loc5_ + _loc6_ * _loc6_;
            if(_loc7_ < _loc2_)
            {
               _loc2_ = _loc7_;
               _loc3_ = _loc4_;
            }
         }
         return _loc3_;
      }
      
      public function _SafeStr_956() : void
      {
         if(!this._SafeStr_1075)
         {
            if(this._SafeStr_122._SafeStr_276)
            {
               this.mOwnerEnt._SafeStr_1347 = false;
            }
            this.mOwnerEnt._SafeStr_550 = false;
            this.mOwnerEnt._SafeStr_1550 = false;
         }
         if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_311 || this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_328)
         {
            this.mOwnerEnt._SafeStr_2535();
         }
         if(this._SafeStr_122 == _SafeCls_2._SafeStr_738)
         {
            this.mOwnerEnt._SafeStr_2165 = false;
         }
         if(this._SafeStr_1568)
         {
            this._SafeStr_1568.stop();
         }
         this._SafeStr_1568 = null;
         if(Boolean(this._SafeStr_442) && Boolean(this._SafeStr_442._SafeStr_138))
         {
            this._SafeStr_442._SafeStr_138._SafeStr_574();
         }
         this._SafeStr_442 = null;
         if(Boolean(this._SafeStr_466) && Boolean(this._SafeStr_466._SafeStr_138))
         {
            this._SafeStr_466._SafeStr_138._SafeStr_574();
         }
         this._SafeStr_466 = null;
         this._SafeStr_2232 = null;
         this._SafeStr_1375 = null;
         this.mOwnerEnt = null;
         this._SafeStr_122 = null;
         this._SafeStr_318 = null;
         this._SafeStr_225 = null;
         this._SafeStr_676 = null;
         this._SafeStr_903 = null;
         this._SafeStr_118 = null;
         this._SafeStr_267 = false;
      }
      
      public function _SafeStr_3143() : void
      {
         if(Boolean(this._SafeStr_122.castAnim) && this._SafeStr_122._SafeStr_1442)
         {
            this.mOwnerEnt._SafeStr_125._SafeStr_138._SafeStr_2004();
         }
         this._SafeStr_267 = false;
      }
      
      private function _SafeStr_2473(param1:GfxType, param2:Boolean) : void
      {
         if(this.mOwnerEnt._SafeStr_137 & _SafeCls_25._SafeStr_252)
         {
            return;
         }
         var _loc3_:_SafeCls_26 = this.mOwnerEnt.mCombatState;
         var _loc4_:_SafeCls_40 = new _SafeCls_40(this._SafeStr_118,param1,this.mOwnerEnt._SafeStr_132 != null);
         _loc3_._SafeStr_1942(this._SafeStr_122,_loc4_,this._SafeStr_122._SafeStr_2758,this.mOwnerEnt,this._SafeStr_225,this._SafeStr_190);
         if(this._SafeStr_471)
         {
            _loc4_._SafeStr_120.scaleX = -1;
         }
         if(param2)
         {
            if(!this._SafeStr_122._SafeStr_1484._SafeStr_290)
            {
               this._SafeStr_442 = _loc4_;
            }
            if(this._SafeStr_122._SafeStr_2075)
            {
               this._SafeStr_118._SafeStr_164.addChild(_loc4_._SafeStr_120);
            }
            else if(this._SafeStr_122._SafeStr_3080)
            {
               this._SafeStr_118._SafeStr_164.addChildAt(_loc4_._SafeStr_120,0);
            }
            else
            {
               this._SafeStr_118._SafeStr_164.addChildAt(_loc4_._SafeStr_120,this._SafeStr_118._SafeStr_164.getChildIndex(this.mOwnerEnt._SafeStr_125._SafeStr_120) + 1);
            }
         }
         else
         {
            if(Boolean(this._SafeStr_122._SafeStr_1484) && !this._SafeStr_122._SafeStr_1484._SafeStr_290)
            {
               this._SafeStr_466 = _loc4_;
            }
            this._SafeStr_118._SafeStr_164.addChildAt(_loc4_._SafeStr_120,this._SafeStr_118._SafeStr_164.getChildIndex(this.mOwnerEnt._SafeStr_125._SafeStr_120));
         }
         if(!this._SafeStr_122._SafeStr_2993)
         {
            _loc3_._SafeStr_757.push(_loc4_);
         }
      }
      
      public function _SafeStr_3501() : void
      {
         var _loc1_:GfxType = null;
         if(!this._SafeStr_1313 && this._SafeStr_122._SafeStr_2405)
         {
            this.mOwnerEnt.mbLeft = !this.mOwnerEnt._SafeStr_665();
            this.mOwnerEnt._SafeStr_182 = this.mOwnerEnt.mbLeft;
            this._SafeStr_471 = this.mOwnerEnt.mbLeft;
         }
         if(!(this.mOwnerEnt._SafeStr_137 & _SafeCls_25._SafeStr_252))
         {
            if(this._SafeStr_122.castAnim)
            {
               this.mOwnerEnt._SafeStr_125._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,this._SafeStr_122.castAnim,this._SafeStr_122._SafeStr_1442);
            }
            if(this._SafeStr_122._SafeStr_773)
            {
               _loc1_ = this._SafeStr_122._SafeStr_773[uint(Math.random() * this._SafeStr_122._SafeStr_773.length)];
               this._SafeStr_2473(_loc1_,true);
            }
            if(this._SafeStr_122._SafeStr_1921)
            {
               this._SafeStr_2473(this._SafeStr_122._SafeStr_1921,false);
            }
         }
         if(this._SafeStr_122._SafeStr_1504)
         {
            this.mOwnerEnt.mVelocityX = this._SafeStr_471 ? -this._SafeStr_122._SafeStr_1504 : this._SafeStr_122._SafeStr_1504;
         }
         if(this._SafeStr_903)
         {
            if(this._SafeStr_122._SafeStr_241 == "EnterDoor")
            {
               this._SafeStr_903.PlayAnimation("Open");
            }
         }
      }
      
      private function _SafeStr_2732(param1:GfxType, param2:Boolean) : void
      {
         var _loc3_:_SafeCls_40 = null;
         if(this.mOwnerEnt._SafeStr_137 & _SafeCls_25._SafeStr_252)
         {
            return;
         }
         var _loc4_:_SafeCls_26 = this.mOwnerEnt.mCombatState;
         var _loc5_:Boolean = this._SafeStr_190 >= this._SafeStr_122._SafeStr_274.length ? Boolean(this._SafeStr_122._SafeStr_274[0]) : Boolean(this._SafeStr_122._SafeStr_274[this._SafeStr_190]);
         if((!this._SafeStr_122._SafeStr_3104 || this._SafeStr_190 == this._SafeStr_122._SafeStr_260.length - 1) && (!this._SafeStr_122._SafeStr_2879 || !this._SafeStr_190) && (_loc5_ || !this._SafeStr_122._SafeStr_2724))
         {
            _loc3_ = new _SafeCls_40(this._SafeStr_118,param1,this.mOwnerEnt._SafeStr_132 != null);
            _loc4_._SafeStr_1942(this._SafeStr_122,_loc3_,this._SafeStr_122._SafeStr_2892,this.mOwnerEnt,this._SafeStr_225,this._SafeStr_190);
            if(!this._SafeStr_122._SafeStr_2809)
            {
               _loc4_._SafeStr_757.push(_loc3_);
            }
            if(this._SafeStr_471)
            {
               _loc3_._SafeStr_120.scaleX = -1;
            }
            if(this._SafeStr_2197)
            {
               _loc3_._SafeStr_120.rotation = this._SafeStr_2197;
            }
            if(!param2)
            {
               this._SafeStr_118._SafeStr_164.addChildAt(_loc3_._SafeStr_120,this._SafeStr_118._SafeStr_164.getChildIndex(this.mOwnerEnt._SafeStr_125._SafeStr_120));
            }
            else if(this._SafeStr_122._SafeStr_2075)
            {
               this._SafeStr_118._SafeStr_164.addChild(_loc3_._SafeStr_120);
            }
            else
            {
               this._SafeStr_118._SafeStr_164.addChildAt(_loc3_._SafeStr_120,this._SafeStr_118._SafeStr_164.getChildIndex(this.mOwnerEnt._SafeStr_125._SafeStr_120) + 1);
            }
         }
      }
      
      public function _SafeStr_2174() : void
      {
         var _loc1_:GfxType = null;
         if(!(this.mOwnerEnt._SafeStr_137 & _SafeCls_25._SafeStr_252))
         {
            if(Boolean(this._SafeStr_442) && !this._SafeStr_122._SafeStr_1999)
            {
               this._SafeStr_442._SafeStr_138._SafeStr_574();
               this._SafeStr_442 = null;
            }
            if(Boolean(this._SafeStr_466) && !this._SafeStr_122._SafeStr_1999)
            {
               this._SafeStr_466._SafeStr_138._SafeStr_574();
               this._SafeStr_466 = null;
            }
            if(Boolean(this._SafeStr_122.castAnim) && Boolean(this._SafeStr_225))
            {
               if(this._SafeStr_122.castAnim == "Throw" && !this._SafeStr_122._SafeStr_675 && Boolean(this._SafeStr_225))
               {
                  this.mOwnerEnt._SafeStr_3340(this._SafeStr_225.x,this._SafeStr_225.y);
               }
            }
            if(Boolean(this._SafeStr_122._SafeStr_2148) && Boolean(this._SafeStr_2187))
            {
               this.mOwnerEnt._SafeStr_125._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,this._SafeStr_122._SafeStr_2148,false);
            }
            if(!this._SafeStr_122._SafeStr_739)
            {
               if(this._SafeStr_122._SafeStr_470)
               {
                  _loc1_ = this._SafeStr_122._SafeStr_470[uint(Math.random() * this._SafeStr_122._SafeStr_470.length)];
                  this._SafeStr_2732(_loc1_,true);
               }
               if(this._SafeStr_122._SafeStr_2387)
               {
                  this._SafeStr_2732(this._SafeStr_122._SafeStr_2387,false);
               }
               if(this._SafeStr_122._SafeStr_2398)
               {
                  this._SafeStr_118.PlaySoundAtPosition(this.mOwnerEnt.mEntID,this._SafeStr_122._SafeStr_2398,this.mOwnerEnt._SafeStr_215,this.mOwnerEnt._SafeStr_193);
               }
            }
         }
         if(!this._SafeStr_122._SafeStr_2178)
         {
            this._SafeStr_2557();
         }
      }
      
      public function _SafeStr_2557() : void
      {
         var _loc4_:int = 0;
         var _loc1_:Number = 1;
         if(this._SafeStr_122._SafeStr_1923)
         {
            _loc1_ += this._SafeStr_122._SafeStr_560 ? this._SafeStr_514 / this._SafeStr_122._SafeStr_560 : 0;
         }
         var _loc2_:Vector.<int> = this._SafeStr_122._SafeStr_1248;
         var _loc3_:Vector.<int> = this._SafeStr_122._SafeStr_1332;
         if(_loc2_)
         {
            _loc4_ = this._SafeStr_190 < _loc2_.length ? int(_loc2_[this._SafeStr_190] * _loc1_) : int(_loc2_[0] * _loc1_);
            this.mOwnerEnt.mVelocityX = this._SafeStr_471 ? -_loc4_ : _loc4_;
         }
         if(_loc3_)
         {
            _loc4_ = this._SafeStr_190 < _loc3_.length ? int(_loc3_[this._SafeStr_190] * _loc1_) : int(_loc3_[0] * _loc1_);
            this.mOwnerEnt.mVelocityY = _loc4_;
         }
      }
      
      public function _SafeStr_3314() : void
      {
         var _loc2_:_SafeCls_71 = null;
         if(this.mOwnerEnt._SafeStr_137 & _SafeCls_25._SafeStr_252)
         {
            return;
         }
         this._SafeStr_225 = new Point(this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY);
         this._SafeStr_225.x += this.mOwnerEnt._SafeStr_665() ? -100 : 100;
         var _loc1_:Point = new Point(this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY);
         _loc2_ = new _SafeCls_71(_loc1_.x,_loc1_.y,this._SafeStr_225.x,this._SafeStr_225.y,this.mOwnerEnt,this._SafeStr_122,this._SafeStr_1966,this._SafeStr_1085);
         this._SafeStr_118._SafeStr_484.push(_loc2_);
      }
      
      private function _SafeStr_837() : void
      {
         var _loc1_:_SafeCls_2 = null;
         if(this.mOwnerEnt._SafeStr_137 & _SafeCls_25._SafeStr_252)
         {
            return;
         }
         if(this._SafeStr_122._SafeStr_1442)
         {
            _loc1_ = this._SafeStr_122._SafeStr_626 ? _SafeCls_2._SafeStr_232[this._SafeStr_122._SafeStr_626] : null;
            if(Boolean(this._SafeStr_122._SafeStr_495) && Boolean(this._SafeStr_981))
            {
               _loc1_ = _SafeCls_2._SafeStr_232[this._SafeStr_122._SafeStr_495];
            }
            else if(Boolean(this._SafeStr_122._SafeStr_819) && this._SafeStr_920)
            {
               _loc1_ = _SafeCls_2._SafeStr_232[this._SafeStr_122._SafeStr_819];
            }
            this.mOwnerEnt._SafeStr_125._SafeStr_138._SafeStr_2004();
         }
         if(this._SafeStr_442)
         {
            this._SafeStr_442._SafeStr_138._SafeStr_574();
            this._SafeStr_442 = null;
         }
         if(this._SafeStr_466)
         {
            this._SafeStr_466._SafeStr_138._SafeStr_574();
            this._SafeStr_466 = null;
         }
      }
      
      private function _SafeStr_3444() : void
      {
         if((this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_437 || this._SafeStr_122._SafeStr_325) && !this._SafeStr_190)
         {
            this._SafeStr_676 = new Point(this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY);
         }
         else if(this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_311 || this._SafeStr_122._SafeStr_127 == _SafeCls_2._SafeStr_328)
         {
            this._SafeStr_676 = new Point(this.mOwnerEnt.mPhysCenterX + this._SafeStr_122._SafeStr_505,this.mOwnerEnt.mPhysCenterY + this._SafeStr_122._SafeStr_669);
         }
         else
         {
            this._SafeStr_676 = new Point(this.mOwnerEnt.mPhysCenterX,this.mOwnerEnt.mPhysCenterY);
         }
         if(!this._SafeStr_225)
         {
            this._SafeStr_225 = this._SafeStr_676;
         }
      }
      
      public function _SafeStr_1683(param1:Boolean = false) : void
      {
         this._SafeStr_2699 = true;
         this._SafeStr_1799 = this._SafeStr_1799 || param1;
      }
      
      public function _SafeStr_3176(param1:uint) : void
      {
         this._SafeStr_1096 = param1;
      }
      
      private function _SafeStr_3328() : void
      {
         var _loc1_:int = 0;
         if(this._SafeStr_122._SafeStr_1909)
         {
            this._SafeStr_920 = true;
            this._SafeStr_368 = true;
            this._SafeStr_555 = 0;
            this._SafeStr_837();
            _loc1_ = this._SafeStr_118.mTimeThisTick - this._SafeStr_259;
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            this._SafeStr_514 = _loc1_;
         }
      }
      
      private function _SafeStr_3414() : void
      {
         var _loc1_:int = 0;
         if(this._SafeStr_1096 && this._SafeStr_122._SafeStr_1287 & this._SafeStr_1096 || this._SafeStr_122._SafeStr_1287 && this._SafeStr_1799)
         {
            this._SafeStr_920 = true;
            this._SafeStr_368 = true;
            this._SafeStr_555 = 0;
            this._SafeStr_837();
            _loc1_ = this._SafeStr_118.mTimeThisTick - this._SafeStr_259;
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            this._SafeStr_514 = _loc1_;
         }
      }
      
      public function _SafeStr_1901(param1:Boolean = false) : void
      {
         if(this._SafeStr_122._SafeStr_450)
         {
            this._SafeStr_368 = true;
            this._SafeStr_555 = 0;
            this._SafeStr_837();
            this._SafeStr_267 = this._SafeStr_267 && param1;
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
 * @identifier _SafeCls_6 = "_-0u"
 * @identifier _SafeCls_13 = "_-Mg"
 * @identifier _SafeCls_23 = "_-Wd"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_26 = "_-LQ"
 * @identifier _SafeCls_27 = "_-C7"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_71 = "_-vp"
 * @identifier _SafeCls_87 = "_-CY"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeCls_91 = "_-Lt"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_122 = "_-dn"
 * @identifier _SafeStr_125 = "_-5"
 * @identifier _SafeStr_127 = "_-jo"
 * @identifier _SafeStr_132 = "_-wb"
 * @identifier _SafeStr_137 = "_-3"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_144 = "_-Z"
 * @identifier _SafeStr_152 = "_-PC"
 * @identifier _SafeStr_161 = "_-ve"
 * @identifier _SafeStr_162 = "_-a4"
 * @identifier _SafeStr_163 = "_-eC"
 * @identifier _SafeStr_164 = "_-QU"
 * @identifier _SafeStr_182 = "_-af"
 * @identifier _SafeStr_190 = "_-cc"
 * @identifier _SafeStr_193 = "_-MG"
 * @identifier _SafeStr_194 = "_-rD"
 * @identifier _SafeStr_215 = "_-Hm"
 * @identifier _SafeStr_225 = "_-eG"
 * @identifier _SafeStr_232 = "_-6u"
 * @identifier _SafeStr_237 = "_-Q6"
 * @identifier _SafeStr_241 = "_-iM"
 * @identifier _SafeStr_252 = "_-E3"
 * @identifier _SafeStr_259 = "_-cA"
 * @identifier _SafeStr_260 = "_-Ie"
 * @identifier _SafeStr_267 = "_-0V"
 * @identifier _SafeStr_274 = "_-ch"
 * @identifier _SafeStr_276 = "_-Td"
 * @identifier _SafeStr_290 = "_-lH"
 * @identifier _SafeStr_298 = "_-j2"
 * @identifier _SafeStr_307 = "_-mp"
 * @identifier _SafeStr_311 = "_-qu"
 * @identifier _SafeStr_318 = "_-Zw"
 * @identifier _SafeStr_319 = "_-vX"
 * @identifier _SafeStr_323 = "_-gh"
 * @identifier _SafeStr_325 = "_-1L"
 * @identifier _SafeStr_328 = "_-oP"
 * @identifier _SafeStr_333 = "_-rX"
 * @identifier _SafeStr_343 = "_-i8"
 * @identifier _SafeStr_354 = "_-4x"
 * @identifier _SafeStr_367 = "_-4Z"
 * @identifier _SafeStr_368 = "_-aY"
 * @identifier _SafeStr_416 = "_-DY"
 * @identifier _SafeStr_430 = "_-kA"
 * @identifier _SafeStr_437 = "_-Mf"
 * @identifier _SafeStr_442 = "_-SE"
 * @identifier _SafeStr_449 = "_-UC"
 * @identifier _SafeStr_450 = "_-EQ"
 * @identifier _SafeStr_452 = "_-mL"
 * @identifier _SafeStr_466 = "_-Mm"
 * @identifier _SafeStr_470 = "_-W0"
 * @identifier _SafeStr_471 = "_-4i"
 * @identifier _SafeStr_473 = "_-i9"
 * @identifier _SafeStr_484 = "_-QQ"
 * @identifier _SafeStr_495 = "_-C"
 * @identifier _SafeStr_498 = "_-Po"
 * @identifier _SafeStr_501 = "_-a9"
 * @identifier _SafeStr_504 = "_-V4"
 * @identifier _SafeStr_505 = "_-A"
 * @identifier _SafeStr_514 = "_-5K"
 * @identifier _SafeStr_517 = "_-M9"
 * @identifier _SafeStr_518 = "_-P2"
 * @identifier _SafeStr_522 = "_-uI"
 * @identifier _SafeStr_525 = "_-PL"
 * @identifier _SafeStr_550 = "_-Qb"
 * @identifier _SafeStr_555 = "_-vj"
 * @identifier _SafeStr_560 = "_-er"
 * @identifier _SafeStr_574 = "_-eo"
 * @identifier _SafeStr_580 = "_-4J"
 * @identifier _SafeStr_589 = "_-Qp"
 * @identifier _SafeStr_595 = "_-Jm"
 * @identifier _SafeStr_608 = "_-ZD"
 * @identifier _SafeStr_612 = "_-P4"
 * @identifier _SafeStr_622 = "_-i2"
 * @identifier _SafeStr_626 = "_-N"
 * @identifier _SafeStr_629 = "_-gp"
 * @identifier _SafeStr_632 = "_-AG"
 * @identifier _SafeStr_653 = "_-Ba"
 * @identifier _SafeStr_658 = "_-HC"
 * @identifier _SafeStr_665 = "_-oQ"
 * @identifier _SafeStr_669 = "_-hf"
 * @identifier _SafeStr_675 = "_-bE"
 * @identifier _SafeStr_676 = "_-WM"
 * @identifier _SafeStr_684 = "_-rW"
 * @identifier _SafeStr_723 = "_-eB"
 * @identifier _SafeStr_737 = "_-em"
 * @identifier _SafeStr_738 = "_-Q-"
 * @identifier _SafeStr_739 = "_-Y"
 * @identifier _SafeStr_748 = "_-mn"
 * @identifier _SafeStr_757 = "_-lt"
 * @identifier _SafeStr_773 = "_-gM"
 * @identifier _SafeStr_774 = "_-q5"
 * @identifier _SafeStr_819 = "_-hE"
 * @identifier _SafeStr_828 = "_-ov"
 * @identifier _SafeStr_837 = "_-Kr"
 * @identifier _SafeStr_859 = "_-p7"
 * @identifier _SafeStr_903 = "_-Tu"
 * @identifier _SafeStr_909 = "_-lP"
 * @identifier _SafeStr_920 = "_-pj"
 * @identifier _SafeStr_921 = "_-gU"
 * @identifier _SafeStr_956 = "_-Rk"
 * @identifier _SafeStr_981 = "_-ju"
 * @identifier _SafeStr_1075 = "_-Ks"
 * @identifier _SafeStr_1085 = "_-YN"
 * @identifier _SafeStr_1096 = "_-6r"
 * @identifier _SafeStr_1204 = "_-e9"
 * @identifier _SafeStr_1248 = "_-2M"
 * @identifier _SafeStr_1287 = "_-qS"
 * @identifier _SafeStr_1288 = "_-Rb"
 * @identifier _SafeStr_1311 = "_-k9"
 * @identifier _SafeStr_1313 = "_-0A"
 * @identifier _SafeStr_1321 = "_-0J"
 * @identifier _SafeStr_1332 = "_-0c"
 * @identifier _SafeStr_1347 = "_-2q"
 * @identifier _SafeStr_1375 = "_-WW"
 * @identifier _SafeStr_1442 = "_-oh"
 * @identifier _SafeStr_1450 = "_-ui"
 * @identifier _SafeStr_1480 = "_-j-"
 * @identifier _SafeStr_1484 = "_-nL"
 * @identifier _SafeStr_1491 = "else "
 * @identifier _SafeStr_1504 = "_-eS"
 * @identifier _SafeStr_1550 = "_-tu"
 * @identifier _SafeStr_1568 = "_-jA"
 * @identifier _SafeStr_1579 = "_-XZ"
 * @identifier _SafeStr_1584 = "_-SR"
 * @identifier _SafeStr_1649 = "_-2"
 * @identifier _SafeStr_1683 = "_-RI"
 * @identifier _SafeStr_1774 = "_-Tg"
 * @identifier _SafeStr_1799 = "_-KU"
 * @identifier _SafeStr_1813 = "_-uu"
 * @identifier _SafeStr_1901 = "_-hc"
 * @identifier _SafeStr_1909 = "_-iy"
 * @identifier _SafeStr_1921 = "_-Xf"
 * @identifier _SafeStr_1923 = "_-Ab"
 * @identifier _SafeStr_1942 = "_-cl"
 * @identifier _SafeStr_1966 = "_-qh"
 * @identifier _SafeStr_1989 = "_-nf"
 * @identifier _SafeStr_1999 = "_-oc"
 * @identifier _SafeStr_2004 = "_-Uh"
 * @identifier _SafeStr_2005 = "_-2y"
 * @identifier _SafeStr_2075 = "_-Vn"
 * @identifier _SafeStr_2132 = "_-df"
 * @identifier _SafeStr_2148 = "_-B4"
 * @identifier _SafeStr_2165 = "_-X3"
 * @identifier _SafeStr_2174 = "_-Fl"
 * @identifier _SafeStr_2178 = "_-P9"
 * @identifier _SafeStr_2187 = "_-ls"
 * @identifier _SafeStr_2197 = "_-GU"
 * @identifier _SafeStr_2232 = "_-NE"
 * @identifier _SafeStr_2236 = "_-hS"
 * @identifier _SafeStr_2289 = "_-vM"
 * @identifier _SafeStr_2351 = "_-Z1"
 * @identifier _SafeStr_2380 = "_-6E"
 * @identifier _SafeStr_2387 = "_-Yi"
 * @identifier _SafeStr_2398 = "_-Y0"
 * @identifier _SafeStr_2405 = "_-tb"
 * @identifier _SafeStr_2439 = "_-1J"
 * @identifier _SafeStr_2473 = "_-ps"
 * @identifier _SafeStr_2494 = "_-9q"
 * @identifier _SafeStr_2507 = "_-l5"
 * @identifier _SafeStr_2508 = "_-Cg"
 * @identifier _SafeStr_2535 = "_-cP"
 * @identifier _SafeStr_2557 = "_-nx"
 * @identifier _SafeStr_2602 = "_-C8"
 * @identifier _SafeStr_2614 = "_-uj"
 * @identifier _SafeStr_2699 = "_-SL"
 * @identifier _SafeStr_2724 = "_-kO"
 * @identifier _SafeStr_2732 = "_-Lb"
 * @identifier _SafeStr_2758 = "_-uE"
 * @identifier _SafeStr_2809 = "_-b6"
 * @identifier _SafeStr_2819 = "_-3i"
 * @identifier _SafeStr_2865 = "_-j8"
 * @identifier _SafeStr_2879 = "_-GN"
 * @identifier _SafeStr_2882 = "_-gO"
 * @identifier _SafeStr_2892 = "_-YB"
 * @identifier _SafeStr_2910 = "_-Gg"
 * @identifier _SafeStr_2987 = "_-15"
 * @identifier _SafeStr_2993 = "_-w"
 * @identifier _SafeStr_3080 = "_-Md"
 * @identifier _SafeStr_3103 = "_-1a"
 * @identifier _SafeStr_3104 = "_-sz"
 * @identifier _SafeStr_3125 = "_-vn"
 * @identifier _SafeStr_3143 = "_-IQ"
 * @identifier _SafeStr_3176 = "_-o3"
 * @identifier _SafeStr_3227 = "_-G2"
 * @identifier _SafeStr_3307 = "_-R3"
 * @identifier _SafeStr_3314 = "_-vS"
 * @identifier _SafeStr_3328 = "_-d8"
 * @identifier _SafeStr_3340 = "_-wC"
 * @identifier _SafeStr_3414 = "_-Kj"
 * @identifier _SafeStr_3444 = "break"
 * @identifier _SafeStr_3484 = "_-OE"
 * @identifier _SafeStr_3499 = "_-bR"
 * @identifier _SafeStr_3501 = "_-lu"
 * @identifier _SafeStr_3536 = "_-1F"
 * @identifier _SafeStr_3633 = "_-UX"
 */
