package
{
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class _SafeCls_63
   {
      
      private var _SafeStr_118:Game;
      
      public var _SafeStr_1445:uint;
      
      private var _SafeStr_1190:int;
      
      private var _SafeStr_2747:uint;
      
      private var _SafeStr_1229:int;
      
      private var _SafeStr_1634:int;
      
      private var _SafeStr_1913:Number;
      
      private var _SafeStr_689:Dictionary;
      
      public function _SafeCls_63(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_2829();
      }
      
      public function _SafeStr_2829() : void
      {
         this._SafeStr_1913 = Math.random();
         this._SafeStr_689 = null;
         this._SafeStr_1634 = 1;
         this._SafeStr_1229 = 1;
      }
      
      public function _SafeStr_3357() : void
      {
         var _loc3_:_SafeCls_27 = null;
         var _loc4_:uint = 0;
         var _loc5_:_SafeCls_25 = null;
         var _loc1_:uint = this._SafeStr_118.mTimeThisTick;
         var _loc2_:Boolean = this._SafeStr_118.IsPlayingWithoutServer();
         for each(_loc3_ in this._SafeStr_118._SafeStr_270)
         {
            if(_loc2_ && _loc1_ - _loc3_._SafeStr_159._SafeStr_1809 > _loc3_._SafeStr_159._SafeStr_151.mDuration)
            {
               _loc3_._SafeStr_153 = _SafeCls_27._SafeStr_351;
            }
            else if(_loc1_ - _loc3_._SafeStr_159._SafeStr_1809 > _loc3_._SafeStr_159._SafeStr_151.mDuration - 2500)
            {
               if(_loc3_._SafeStr_125._SafeStr_604 && int(this._SafeStr_118.mTimeThisTick / 100) % 3 > 0)
               {
                  _loc3_._SafeStr_125._SafeStr_1105();
               }
               else if(int(this._SafeStr_118.mTimeThisTick / 100) % 3 == 0)
               {
                  _loc3_._SafeStr_125._SafeStr_795(16777215,6710886);
               }
            }
            else
            {
               _loc3_._SafeStr_125._SafeStr_1105();
            }
         }
         if(_loc2_)
         {
            _loc4_ = this._SafeStr_118._SafeStr_270.length;
            for each(_loc5_ in this._SafeStr_118.mEntities)
            {
               if(_loc5_.mCombatState.mEquippedItem)
               {
                  _loc4_++;
               }
            }
            for each(_loc3_ in this._SafeStr_118._SafeStr_270)
            {
               if(_loc3_._SafeStr_2046())
               {
                  _loc4_--;
               }
            }
            if(_loc4_ < this._SafeStr_118.mEntities.length * 2)
            {
               if(this._SafeStr_3396(_loc4_))
               {
                  if(int(Math.random() * (this._SafeStr_1634 + this._SafeStr_1229)) >= this._SafeStr_1229)
                  {
                     this._SafeStr_2939();
                     ++this._SafeStr_1229;
                  }
                  else
                  {
                     this._SafeStr_3043();
                     ++this._SafeStr_1634;
                  }
                  this._SafeStr_1913 = Math.random();
                  this._SafeStr_1445 = this._SafeStr_118.mTimeThisTick;
               }
            }
            else if(this._SafeStr_1445)
            {
               this._SafeStr_1445 = 0;
            }
         }
      }
      
      private function _SafeStr_3396(param1:uint) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         var _loc2_:uint = this._SafeStr_118.mEntities.length;
         var _loc3_:uint = (uint(this._SafeStr_1913 * (param1 + param1)) + uint(param1 * 1.5)) / (_loc2_ > 2 ? _loc2_ >> 1 : 1);
         return this._SafeStr_1445 + 1000 * _loc3_ < this._SafeStr_118.mTimeThisTick;
      }
      
      public function _SafeStr_2939(param1:uint = 0, param2:int = 0, param3:int = 0) : _SafeCls_27
      {
         if(!this._SafeStr_118.IsPlayingWithoutServer())
         {
            return null;
         }
         return this._SafeStr_2751(_SafeCls_6._SafeStr_936,param1,param2,param3);
      }
      
      public function _SafeStr_3043() : _SafeCls_27
      {
         if(!this._SafeStr_118.IsPlayingWithoutServer())
         {
            return null;
         }
         return this._SafeStr_2751(_SafeCls_6._SafeStr_951);
      }
      
      private function _SafeStr_2751(param1:Vector.<_SafeCls_6>, param2:uint = 0, param3:int = 0, param4:int = 0) : _SafeCls_27
      {
         var _loc5_:int = 0;
         var _loc6_:_SafeCls_6 = null;
         var _loc7_:int = 0;
         var _loc8_:_SafeCls_6 = null;
         if(!this._SafeStr_689)
         {
            this._SafeStr_689 = new Dictionary();
            for each(_loc8_ in _SafeCls_6._SafeStr_951)
            {
               this._SafeStr_689[_loc8_._SafeStr_173] = 1;
            }
            for each(_loc8_ in _SafeCls_6._SafeStr_936)
            {
               this._SafeStr_689[_loc8_._SafeStr_173] = 1;
            }
         }
         for each(_loc6_ in param1)
         {
            _loc5_ += this._SafeStr_689[_loc6_._SafeStr_173];
         }
         _loc7_ = Math.random() * (_loc5_ * (param1.length - 1));
         for each(_loc6_ in param1)
         {
            _loc7_ -= _loc5_ - this._SafeStr_689[_loc6_._SafeStr_173];
            if(_loc7_ <= 0)
            {
               break;
            }
         }
         ++this._SafeStr_689[_loc6_._SafeStr_173];
         return this._SafeStr_1121(this._SafeStr_2747++,_loc6_,param3,param4,param2,0,true);
      }
      
      public function _SafeStr_1121(param1:uint, param2:_SafeCls_6, param3:int = 0, param4:int = 0, param5:uint = 0, param6:uint = 0, param7:Boolean = false, param8:uint = 0) : _SafeCls_27
      {
         var _loc10_:Vector.<Rectangle> = null;
         var _loc11_:_SafeCls_87 = null;
         var _loc12_:Rectangle = null;
         var _loc13_:_SafeCls_25 = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Rectangle = null;
         var _loc21_:Rectangle = null;
         var _loc22_:_SafeCls_25 = null;
         var _loc9_:_SafeCls_27 = null;
         if(param2)
         {
            _loc10_ = this._SafeStr_118.level._SafeStr_1431;
            if(param3 == 0 && param4 == 0 && !param8 && (!param5 || param5 == SpawnBot._SafeStr_666))
            {
               if(Boolean(_loc10_) && _loc10_.length > 0)
               {
                  if(param6)
                  {
                     _loc13_ = this._SafeStr_118._SafeStr_200(param6);
                     if(!_loc13_)
                     {
                        param6 = 0;
                     }
                     else
                     {
                        _loc16_ = Number.MAX_VALUE;
                        _loc17_ = Number.MAX_VALUE;
                        _loc18_ = _loc13_.mEntState == _SafeCls_25._SafeStr_244 ? _loc13_._SafeStr_121 : _loc13_._SafeStr_154._SafeStr_711;
                        _loc19_ = _loc13_.mEntState == _SafeCls_25._SafeStr_244 ? _loc13_.mPhysPosY : _loc13_._SafeStr_154._SafeStr_700;
                        for each(_loc20_ in _loc10_)
                        {
                           _loc14_ = Math.abs(_SafeCls_19._SafeStr_546(_loc20_.x,_loc20_.right,_loc18_) - _loc18_);
                           _loc15_ = _loc20_.y - _loc19_;
                           if(_loc15_ <= 0 || _loc17_ > 0)
                           {
                              if(_loc14_ < _loc16_ || _loc14_ == _loc16_ && _loc15_ > _loc17_)
                              {
                                 _loc12_ = _loc20_;
                                 _loc16_ = _loc14_;
                                 _loc17_ = _loc15_;
                              }
                           }
                        }
                     }
                  }
                  if(!param6 || !_loc12_)
                  {
                     if(this._SafeStr_1190 >= _loc10_.length || this._SafeStr_1190 == 0)
                     {
                        this._SafeStr_1190 = 0;
                        _SafeCls_19._SafeStr_3274(_loc10_);
                     }
                     _loc12_ = _loc10_[this._SafeStr_1190++];
                  }
                  param4 = int(int(_loc12_.y) || true);
                  param3 = _loc12_.x + Math.random() * _loc12_.width;
               }
               else if(this._SafeStr_118.level._SafeStr_253)
               {
                  _loc21_ = this._SafeStr_118.level._SafeStr_253;
                  param4 = _loc21_.y;
                  param3 = Math.random() * (_loc21_.width / 2) + _loc21_.x + _loc21_.width / 4;
               }
               if(this._SafeStr_118._SafeStr_161 && this._SafeStr_118._SafeStr_365 && !this._SafeStr_118.IsPlayingWithoutServer())
               {
                  this._SafeStr_118._SafeStr_161._SafeStr_3550(param1,param2._SafeStr_173,param3,param4,param5,param6);
               }
            }
            _loc11_ = new _SafeCls_87(param2,this._SafeStr_118.mTimeThisTick,param1,param6);
            if(param8)
            {
               _loc22_ = this._SafeStr_118._SafeStr_200(param8);
               if(!_loc22_)
               {
                  return null;
               }
               if(!(_loc22_.mCombatState.mEquippedItem && _loc22_.mCombatState.mEquippedItem._SafeStr_173 == _loc11_._SafeStr_173))
               {
                  _loc22_.mCombatState._SafeStr_2919(_loc11_);
               }
            }
            else
            {
               _loc9_ = new _SafeCls_27(this._SafeStr_118,_loc11_,param3,param4,param7);
               this._SafeStr_118._SafeStr_270.push(_loc9_);
               if(param2._SafeStr_2390)
               {
                  this._SafeStr_118.PlaySoundAtPosition(0,param2._SafeStr_2390,param3,param4);
               }
            }
            if(param5)
            {
               _loc9_._SafeStr_153 = _SafeCls_27._SafeStr_1349;
            }
            if(this._SafeStr_118.IsPlayingWithoutServer() && !param1 && param2._SafeStr_258 == "Door" && !this._SafeStr_118._SafeStr_2508(param2,true,_loc9_).length)
            {
               this._SafeStr_1121(0,param2);
            }
         }
         return _loc9_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_6 = "_-0u"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_27 = "_-C7"
 * @identifier _SafeCls_63 = "_-TM"
 * @identifier _SafeCls_87 = "_-CY"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_121 = "_-Dk"
 * @identifier _SafeStr_125 = "_-5"
 * @identifier _SafeStr_151 = "_-0w"
 * @identifier _SafeStr_153 = "_-2k"
 * @identifier _SafeStr_154 = "_-1N"
 * @identifier _SafeStr_159 = "_-eE"
 * @identifier _SafeStr_161 = "_-ve"
 * @identifier _SafeStr_173 = "_-KG"
 * @identifier _SafeStr_200 = "_-H-"
 * @identifier _SafeStr_244 = "_-HJ"
 * @identifier _SafeStr_253 = "_-BW"
 * @identifier _SafeStr_258 = "_-ES"
 * @identifier _SafeStr_270 = "_-ts"
 * @identifier _SafeStr_351 = "_-Mq"
 * @identifier _SafeStr_365 = "_-eH"
 * @identifier _SafeStr_546 = "_-ej"
 * @identifier _SafeStr_604 = "_-AI"
 * @identifier _SafeStr_666 = "_-nd"
 * @identifier _SafeStr_689 = "_-Dd"
 * @identifier _SafeStr_700 = "_-1u"
 * @identifier _SafeStr_711 = "_-SH"
 * @identifier _SafeStr_795 = "_-f0"
 * @identifier _SafeStr_936 = "_-co"
 * @identifier _SafeStr_951 = "_-fi"
 * @identifier _SafeStr_1105 = "_-Eo"
 * @identifier _SafeStr_1121 = "_-H"
 * @identifier _SafeStr_1190 = "_-E0"
 * @identifier _SafeStr_1229 = "_-W4"
 * @identifier _SafeStr_1349 = "_-6n"
 * @identifier _SafeStr_1431 = "_-NI"
 * @identifier _SafeStr_1445 = "_-eA"
 * @identifier _SafeStr_1634 = "_-ti"
 * @identifier _SafeStr_1809 = "_-cb"
 * @identifier _SafeStr_1913 = "_-YP"
 * @identifier _SafeStr_2046 = "_-vY"
 * @identifier _SafeStr_2390 = "_-fg"
 * @identifier _SafeStr_2508 = "_-Cg"
 * @identifier _SafeStr_2747 = "_-5o"
 * @identifier _SafeStr_2751 = "_-Ye"
 * @identifier _SafeStr_2829 = "_-T7"
 * @identifier _SafeStr_2919 = "_-O3"
 * @identifier _SafeStr_2939 = "_-Yj"
 * @identifier _SafeStr_3043 = "_-1I"
 * @identifier _SafeStr_3274 = "_-gv"
 * @identifier _SafeStr_3357 = "_-N1"
 * @identifier _SafeStr_3396 = "_-J1"
 * @identifier _SafeStr_3550 = "_-HP"
 */
