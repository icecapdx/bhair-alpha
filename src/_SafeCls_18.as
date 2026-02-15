package
{
   import flash.utils.Dictionary;
   
   public class _SafeCls_18
   {
      
      public static var _SafeStr_995:_SafeCls_18;
      
      public static var _SafeStr_346:Dictionary = new Dictionary();
      
      public static var _SafeStr_1267:Array = new Array();
      
      public static const _SafeStr_407:uint = 3;
      
      public static const _SafeStr_630:Vector.<Number> = new Vector.<Number>(_SafeStr_407,true);
      
      public static const _SafeStr_955:Vector.<uint> = new Vector.<uint>(_SafeStr_407,true);
      
      _SafeStr_630[0] = 0.375;
      _SafeStr_630[1] = 0.625;
      _SafeStr_630[2] = 1;
      _SafeStr_955[0] = 0;
      _SafeStr_955[1] = 100;
      _SafeStr_955[2] = 150;
      
      internal var _SafeStr_573:uint;
      
      internal var _SafeStr_400:String;
      
      internal var _SafeStr_1371:Boolean;
      
      internal var _SafeStr_2509:Boolean = false;
      
      internal var mDuration:uint;
      
      internal var _SafeStr_2984:Number = 0;
      
      internal var _SafeStr_2757:Number = 0;
      
      internal var _SafeStr_2622:Number = 0;
      
      internal var _SafeStr_2923:Number = 0;
      
      internal var _SafeStr_3438:Number = 0;
      
      internal var _SafeStr_3197:Number = 0;
      
      internal var _SafeStr_3522:Number = 0;
      
      internal var _SafeStr_2880:int = _SafeCls_25._SafeStr_1304;
      
      internal var _SafeStr_3046:Number = 0;
      
      internal var _SafeStr_2967:Number = 0;
      
      internal var _SafeStr_2370:Number = _SafeCls_25._SafeStr_1054;
      
      internal var _SafeStr_2765:Number = 0;
      
      internal var _SafeStr_1911:Number = _SafeCls_25._SafeStr_1054;
      
      internal var _SafeStr_2526:Number = 0;
      
      internal var _SafeStr_822:uint = 0;
      
      internal var _SafeStr_2002:uint = 0;
      
      internal var _SafeStr_2426:Boolean = false;
      
      internal var _SafeStr_2476:Boolean = false;
      
      internal var _SafeStr_2646:GfxType = null;
      
      internal var _SafeStr_1829:uint = 0;
      
      internal var _SafeStr_521:Vector.<GfxType> = null;
      
      internal var _SafeStr_456:Vector.<GfxType> = null;
      
      internal var _SafeStr_1051:uint = 0;
      
      internal var _SafeStr_2278:uint = 0;
      
      internal var _SafeStr_497:uint = 1;
      
      internal var _SafeStr_3217:Boolean = false;
      
      internal var _SafeStr_3303:Boolean = false;
      
      internal var _SafeStr_1722:Boolean = false;
      
      internal var _SafeStr_1200:Boolean = false;
      
      internal var _SafeStr_968:Boolean = false;
      
      internal var _SafeStr_1030:Boolean = false;
      
      internal var _SafeStr_3157:Boolean = false;
      
      public function _SafeCls_18()
      {
         super();
      }
      
      public static function _SafeStr_280(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:_SafeCls_18 = null;
         var _loc5_:XMLList = null;
         var _loc6_:XML = null;
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:Array = null;
         var _loc10_:GfxType = null;
         var _loc11_:GfxType = null;
         var _loc12_:Vector.<GfxType> = null;
         var _loc13_:int = 0;
         var _loc14_:uint = 0;
         var _loc15_:Number = NaN;
         var _loc16_:uint = 0;
         var _loc17_:String = null;
         var _loc18_:GfxType = null;
         var _loc2_:XMLList = param1.children();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = new _SafeCls_18();
            _loc4_._SafeStr_400 = _loc3_.attribute("BuffName");
            _loc5_ = _loc3_.children();
            for each(_loc6_ in _loc5_)
            {
               _loc7_ = _loc6_.name().toString();
               if(_loc7_ == "BuffID")
               {
                  _loc4_._SafeStr_573 = uint(_loc6_);
               }
               else if(_loc7_ == "Attack")
               {
                  _loc4_._SafeStr_1371 = _SafeCls_19._SafeStr_185(_loc6_);
               }
               else if(_loc7_ == "Duration")
               {
                  _loc4_.mDuration = uint(_loc6_);
               }
               else if(_loc7_ == "StackCount")
               {
                  _loc4_._SafeStr_497 = uint(_loc6_);
               }
               else if(_loc7_ == "DamageMult")
               {
                  _loc4_._SafeStr_2984 = Number(_loc6_);
               }
               else if(_loc7_ == "ImpulseMult")
               {
                  _loc4_._SafeStr_2757 = Number(_loc6_);
               }
               else if(_loc7_ == "GravityMult")
               {
                  _loc4_._SafeStr_3197 = 0;
               }
               else if(_loc7_ == "JumpMult")
               {
                  _loc4_._SafeStr_3522 = 0;
               }
               else if(_loc7_ == "JumpCount")
               {
                  _loc4_._SafeStr_2880 = _SafeCls_25._SafeStr_1304;
               }
               else if(_loc7_ == "RecoveryMult")
               {
                  _loc4_._SafeStr_3046 = 0;
               }
               else if(_loc7_ == "DashDelay")
               {
                  _loc4_._SafeStr_2967 = Number(_loc6_);
               }
               else if(_loc7_ == "DashVelocity")
               {
                  _loc4_._SafeStr_2370 = Number(_loc6_);
               }
               else if(_loc7_ == "AirDashDelay")
               {
                  _loc4_._SafeStr_2765 = Number(_loc6_);
               }
               else if(_loc7_ == "AirDashVelocity")
               {
                  _loc4_._SafeStr_1911 = Number(_loc6_);
               }
               else if(_loc7_ == "ReflectItems")
               {
                  _loc4_._SafeStr_2426 = _SafeCls_19._SafeStr_185(_loc6_);
               }
               else if(_loc7_ == "DisableDash")
               {
                  _loc4_._SafeStr_2476 = _SafeCls_19._SafeStr_185(_loc6_);
               }
               else if(_loc7_ == "DamageDefense")
               {
                  _loc8_ = Number(_loc6_);
                  if(_loc8_ < -1 || _loc8_ >= 1)
                  {
                     _SafeCls_22._SafeStr_135("Damage Defense outside of valid range -1 to .99:" + _loc4_._SafeStr_400 + ": " + _loc8_);
                  }
                  else
                  {
                     _loc4_._SafeStr_2622 = Number(_loc6_);
                  }
               }
               else if(_loc7_ == "ImpulseDefense")
               {
                  _loc8_ = Number(_loc6_);
                  if(_loc8_ < -1 || _loc8_ >= 1)
                  {
                     _SafeCls_22._SafeStr_135("Impulse Defense outside of valid range -1 to .99:" + _loc4_._SafeStr_400 + ": " + _loc8_);
                  }
                  else
                  {
                     _loc4_._SafeStr_2923 = Number(_loc6_);
                  }
               }
               else if(_loc7_ == "DoTDamage")
               {
                  _loc4_._SafeStr_2526 = Number(_loc6_);
               }
               else if(_loc7_ == "DoTTickLength")
               {
                  _loc4_._SafeStr_822 = uint(_loc6_);
               }
               else if(_loc7_ != "Effect")
               {
                  if(_loc7_ == "SpeedChange")
                  {
                     _loc4_._SafeStr_3438 = Number(_loc6_);
                  }
                  else if(_loc7_ == "RemoveOnDamage")
                  {
                     _loc4_._SafeStr_3217 = _SafeCls_19._SafeStr_185(_loc6_);
                  }
                  else if(_loc7_ == "EntTint")
                  {
                     _loc9_ = _loc6_.toString().split("+");
                     _loc4_._SafeStr_1051 = uint(_loc9_[0]);
                     if(_loc9_.length > 1)
                     {
                        _loc4_._SafeStr_2278 = uint(_loc9_[1]);
                     }
                  }
                  else if(_loc7_ == "GfxType")
                  {
                     _loc11_ = GfxType._SafeStr_299(_loc6_,null);
                     if(_loc11_)
                     {
                        _loc12_ = GfxType._SafeStr_1448(_loc11_,_loc6_);
                        if(_loc12_)
                        {
                           _loc4_._SafeStr_3303 = true;
                           _loc13_ = int(_loc12_.length);
                           _loc4_._SafeStr_521 = new Vector.<GfxType>(_SafeStr_407 * _loc13_,true);
                           _loc14_ = 0;
                           while(_loc14_ < _loc13_)
                           {
                              _loc15_ = _loc12_[_loc14_].animScale;
                              _loc16_ = 0;
                              while(_loc16_ < _SafeStr_407)
                              {
                                 _loc11_ = _loc16_ ? _loc12_[_loc14_].GetDuplicate() : _loc12_[_loc14_];
                                 _loc11_.animScale = _loc15_ * _SafeStr_630[_loc16_];
                                 _loc4_._SafeStr_521[_loc14_ * _SafeStr_407 + _loc16_] = _loc11_;
                                 _loc10_ = GfxType._SafeStr_1789(_loc11_,_loc6_);
                                 if(_loc10_)
                                 {
                                    if(!_loc4_._SafeStr_456)
                                    {
                                       _loc4_._SafeStr_456 = new Vector.<GfxType>(_SafeStr_407 * _loc13_,true);
                                    }
                                    _loc4_._SafeStr_456[_loc14_ * _SafeStr_407 + _loc16_] = _loc10_;
                                    _loc10_.animScale *= _SafeStr_630[_loc16_];
                                 }
                                 _loc16_++;
                              }
                              _loc14_++;
                           }
                        }
                        else
                        {
                           _loc4_._SafeStr_521 = new Vector.<GfxType>(_SafeStr_407,true);
                           _loc16_ = 0;
                           while(_loc16_ < _SafeStr_407)
                           {
                              _loc11_ = _loc16_ ? GfxType._SafeStr_299(_loc6_,null) : _loc11_;
                              _loc11_.animScale *= _SafeStr_630[_loc16_];
                              _loc4_._SafeStr_521[_loc16_] = _loc11_;
                              _loc10_ = GfxType._SafeStr_1789(_loc11_,_loc6_);
                              if(_loc10_)
                              {
                                 if(!_loc4_._SafeStr_456)
                                 {
                                    _loc4_._SafeStr_456 = new Vector.<GfxType>(3,true);
                                 }
                                 _loc4_._SafeStr_456[_loc16_] = _loc10_;
                                 _loc10_.animScale *= _SafeStr_630[_loc16_];
                              }
                              _loc16_++;
                           }
                        }
                     }
                  }
                  else if(_loc7_ == "BuffLoc")
                  {
                     _loc17_ = _loc6_.toString();
                     if(_loc17_ == "Chest")
                     {
                        _loc4_._SafeStr_1200 = true;
                     }
                     else if(_loc17_ == "Head")
                     {
                        _loc4_._SafeStr_1722 = true;
                     }
                     else if(_loc17_ == "FeetBack")
                     {
                        _loc4_._SafeStr_1030 = true;
                     }
                     else if(_loc17_ == "ChestBack")
                     {
                        _loc4_._SafeStr_1200 = true;
                        _loc4_._SafeStr_1030 = true;
                     }
                     else if(_loc17_ == "HeadBack")
                     {
                        _loc4_._SafeStr_1722 = true;
                        _loc4_._SafeStr_1030 = true;
                     }
                     else if(_loc17_ == "Tick")
                     {
                        _loc4_._SafeStr_968 = true;
                        _loc4_._SafeStr_1200 = true;
                     }
                     else if(_loc17_ == "Feet")
                     {
                        _loc4_._SafeStr_1030 = false;
                     }
                     else if(_loc17_ == "Socket")
                     {
                        _loc4_._SafeStr_1030 = false;
                        _loc4_._SafeStr_3157 = true;
                     }
                     else
                     {
                        _SafeCls_22._SafeStr_135("Unrecognized BuffLoc in " + _loc4_._SafeStr_400 + ": " + _loc17_);
                     }
                  }
                  else if(_loc7_ != "BuffIcon")
                  {
                     if(_loc7_ != "HitReactGfx")
                     {
                        if(_loc7_ == "HitReactPriority")
                        {
                           _loc4_._SafeStr_1829 = uint(_loc6_);
                        }
                        else
                        {
                           _SafeCls_22._SafeStr_135("Unrecognized Property in " + _loc4_._SafeStr_400 + ": " + _loc7_);
                        }
                     }
                  }
               }
            }
            if(_loc4_._SafeStr_822)
            {
               _loc4_._SafeStr_2002 = _loc4_.mDuration / _loc4_._SafeStr_822;
            }
            if(_loc4_._SafeStr_968)
            {
               if(_loc4_._SafeStr_521)
               {
                  for each(_loc18_ in _loc4_._SafeStr_521)
                  {
                     _loc18_._SafeStr_290 = true;
                  }
               }
               if(_loc4_._SafeStr_456)
               {
                  for each(_loc18_ in _loc4_._SafeStr_456)
                  {
                     _loc18_._SafeStr_290 = true;
                  }
               }
            }
            if(_loc4_._SafeStr_1030)
            {
               _loc4_._SafeStr_456 = _loc4_._SafeStr_521;
               _loc4_._SafeStr_521 = null;
            }
            if(_loc4_._SafeStr_573)
            {
               if(_SafeStr_1267[_loc4_._SafeStr_573])
               {
                  _SafeCls_22._SafeStr_135("Duplicate ID for buff with name: " + _loc4_._SafeStr_400);
               }
               if(_SafeStr_346[_loc4_._SafeStr_400])
               {
                  _SafeCls_22._SafeStr_135("Multiple buffs with name: " + _loc4_._SafeStr_400);
               }
               if(!_loc4_._SafeStr_497)
               {
                  _SafeCls_22._SafeStr_135("Stack count must be non-zero: " + _loc4_._SafeStr_400);
               }
               if(Boolean(_loc4_._SafeStr_822) && _loc4_.mDuration != _loc4_._SafeStr_822 * _loc4_._SafeStr_2002)
               {
                  _SafeCls_22._SafeStr_135("Buff TickLength must divide evenly into duration: " + _loc4_._SafeStr_400);
               }
               _SafeStr_346[_loc4_._SafeStr_400] = _loc4_;
               _SafeStr_1267[_loc4_._SafeStr_573] = _loc4_;
            }
         }
         _SafeStr_995 = _SafeStr_346["ChargeThrowFx"];
         _SafeStr_995._SafeStr_2509 = true;
         if(!_SafeStr_995)
         {
            _SafeCls_22._SafeStr_135("Required buff ChargeThrowFx not found");
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_18 = "_-Nn"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_185 = "_-im"
 * @identifier _SafeStr_280 = "_-4e"
 * @identifier _SafeStr_290 = "_-lH"
 * @identifier _SafeStr_299 = "_-e3"
 * @identifier _SafeStr_346 = "_-QB"
 * @identifier _SafeStr_400 = "_-5W"
 * @identifier _SafeStr_407 = "_-vK"
 * @identifier _SafeStr_456 = "_-La"
 * @identifier _SafeStr_497 = "_-O5"
 * @identifier _SafeStr_521 = "_-o1"
 * @identifier _SafeStr_573 = "_-A-"
 * @identifier _SafeStr_630 = "_-CH"
 * @identifier _SafeStr_822 = "_-KR"
 * @identifier _SafeStr_955 = "_-kV"
 * @identifier _SafeStr_968 = "_-tp"
 * @identifier _SafeStr_995 = "_-wr"
 * @identifier _SafeStr_1030 = "_-h3"
 * @identifier _SafeStr_1051 = "_-ED"
 * @identifier _SafeStr_1054 = "_-p6"
 * @identifier _SafeStr_1200 = "_-Cv"
 * @identifier _SafeStr_1267 = "_-vG"
 * @identifier _SafeStr_1304 = "_-OX"
 * @identifier _SafeStr_1371 = "_-f9"
 * @identifier _SafeStr_1448 = "_-4K"
 * @identifier _SafeStr_1722 = "_-GV"
 * @identifier _SafeStr_1789 = "_-2O"
 * @identifier _SafeStr_1829 = "_-Fc"
 * @identifier _SafeStr_1911 = "_-qG"
 * @identifier _SafeStr_2002 = "_-PD"
 * @identifier _SafeStr_2278 = "_-wH"
 * @identifier _SafeStr_2370 = "_-DX"
 * @identifier _SafeStr_2426 = "_-Bp"
 * @identifier _SafeStr_2476 = "_-5c"
 * @identifier _SafeStr_2509 = "_-AF"
 * @identifier _SafeStr_2526 = "_-wv"
 * @identifier _SafeStr_2622 = "_-KX"
 * @identifier _SafeStr_2646 = "_-RK"
 * @identifier _SafeStr_2757 = "_-At"
 * @identifier _SafeStr_2765 = "_-jT"
 * @identifier _SafeStr_2880 = "_-0m"
 * @identifier _SafeStr_2923 = "_-jD"
 * @identifier _SafeStr_2967 = "_-KE"
 * @identifier _SafeStr_2984 = "_-wN"
 * @identifier _SafeStr_3046 = "_-lX"
 * @identifier _SafeStr_3157 = "_-GF"
 * @identifier _SafeStr_3197 = "_-Gx"
 * @identifier _SafeStr_3217 = "_-2x"
 * @identifier _SafeStr_3303 = "_-UJ"
 * @identifier _SafeStr_3438 = "_-tB"
 * @identifier _SafeStr_3522 = "_-p8"
 */
