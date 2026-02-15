package
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class _SafeCls_42
   {
      
      private static const _SafeStr_1876:String = "am_Platform_";
      
      public static const _SafeStr_2364:String = "am_Parallax";
      
      public static const _SafeStr_2402:String = "a_Scene_";
      
      public static const _SafeStr_2074:String = "a_Animation";
      
      public static const _SafeStr_1897:String = "am_Platform";
      
      public static const _SafeStr_1376:String = "baseAnim";
      
      public static const _SafeStr_1335:String = "moveAnimSpeed";
      
      public static const _SafeStr_1703:String = "startAnim";
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_702:Vector.<_SafeCls_103> = new Vector.<_SafeCls_103>();
      
      internal var _SafeStr_938:Vector.<_SafeCls_105> = new Vector.<_SafeCls_105>();
      
      internal var _SafeStr_657:Vector.<_SafeCls_102> = new Vector.<_SafeCls_102>();
      
      internal var _SafeStr_625:Sprite;
      
      internal var _SafeStr_594:Sprite;
      
      internal var _SafeStr_563:Sprite;
      
      internal var _SafeStr_605:Sprite;
      
      internal var _SafeStr_803:Sprite;
      
      internal var _SafeStr_1042:Sprite;
      
      internal var _SafeStr_1976:Boolean = false;
      
      public function _SafeCls_42(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_625 = _SafeCls_19._SafeStr_283();
         this._SafeStr_594 = _SafeCls_19._SafeStr_283();
         this._SafeStr_563 = _SafeCls_19._SafeStr_283();
         this._SafeStr_605 = _SafeCls_19._SafeStr_283();
         this._SafeStr_803 = _SafeCls_19._SafeStr_283();
         this._SafeStr_1042 = _SafeCls_19._SafeStr_283();
      }
      
      public function _SafeStr_3696() : void
      {
         this._SafeStr_2628();
         this._SafeStr_702 = null;
         this._SafeStr_938 = null;
         this._SafeStr_118 = null;
         if(this._SafeStr_625.parent)
         {
            this._SafeStr_625.parent.removeChild(this._SafeStr_625);
         }
         this._SafeStr_625 = null;
         if(this._SafeStr_594.parent)
         {
            this._SafeStr_594.parent.removeChild(this._SafeStr_594);
         }
         this._SafeStr_594 = null;
         if(this._SafeStr_563.parent)
         {
            this._SafeStr_563.parent.removeChild(this._SafeStr_563);
         }
         this._SafeStr_563 = null;
         if(this._SafeStr_803.parent)
         {
            this._SafeStr_803.parent.removeChild(this._SafeStr_803);
         }
         this._SafeStr_803 = null;
         if(this._SafeStr_605.parent)
         {
            this._SafeStr_605.parent.removeChild(this._SafeStr_605);
         }
         this._SafeStr_605 = null;
         if(this._SafeStr_1042.parent)
         {
            this._SafeStr_1042.parent.removeChild(this._SafeStr_1042);
         }
         this._SafeStr_1042 = null;
      }
      
      public function _SafeStr_2628() : void
      {
         var _loc1_:_SafeCls_104 = null;
         var _loc2_:_SafeCls_103 = null;
         var _loc3_:_SafeCls_105 = null;
         var _loc4_:_SafeCls_102 = null;
         for each(_loc2_ in this._SafeStr_702)
         {
            for each(_loc1_ in _loc2_._SafeStr_979)
            {
               this._SafeStr_118._SafeStr_1031._SafeStr_2386(_loc1_._SafeStr_776);
               _loc1_._SafeStr_3495();
            }
            _loc2_._SafeStr_3368();
         }
         this._SafeStr_702 = new Vector.<_SafeCls_103>();
         for each(_loc3_ in this._SafeStr_938)
         {
            _loc3_._SafeStr_1327._SafeStr_238._SafeStr_1677();
            _loc3_._SafeStr_3487();
         }
         this._SafeStr_938 = new Vector.<_SafeCls_105>();
         for each(_loc4_ in this._SafeStr_657)
         {
            _loc4_._SafeStr_3173();
         }
         this._SafeStr_657 = new Vector.<_SafeCls_102>();
      }
      
      public function _SafeStr_3344(param1:Vector.<Sprite>) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:Sprite = null;
         var _loc5_:Array = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1.length)
         {
            _loc2_ = new MovieClip();
            _loc2_.name = "am_GlobalParallax";
            this._SafeStr_118.level._SafeStr_322.addChild(_loc2_);
            _loc3_ = 0;
            while(_loc3_ < param1.length)
            {
               _loc2_.addChild(param1[_loc3_]);
               _loc4_ = param1[_loc3_];
               _loc5_ = _loc4_.name.split("_");
               _loc6_ = int(_loc5_[2]) * 0.01;
               _loc7_ = int(_loc5_[3]) * 0.01;
               if(this._SafeStr_118.main._SafeStr_1705)
               {
                  _loc4_.x = 0;
                  _loc4_.y = 0;
               }
               else
               {
                  _loc4_.x -= 576 - _loc6_ * 576;
                  _loc4_.y -= 334;
               }
               if(_loc7_ != 0)
               {
                  _SafeCls_22._SafeStr_195("Y shift on Global Parallax" + _loc4_.name);
               }
               _loc3_++;
            }
            this._SafeStr_2643(_loc2_,true,false);
            this._SafeStr_118.level._SafeStr_322.removeChild(_loc2_);
         }
      }
      
      public function _SafeStr_2643(param1:MovieClip, param2:Boolean = false, param3:Boolean = false) : _SafeCls_103
      {
         var _loc4_:Rectangle = null;
         var _loc9_:MovieClip = null;
         var _loc10_:_SafeCls_103 = null;
         var _loc11_:Sprite = null;
         var _loc12_:String = null;
         var _loc5_:Vector.<MovieClip> = new Vector.<MovieClip>();
         var _loc6_:uint = uint(param1.numChildren);
         if(param1.scaleX != 1 || param1.scaleY != 1)
         {
            _SafeCls_22._SafeStr_195("No Scaling is allowed on scene objects!: " + getQualifiedClassName(param1));
         }
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc11_ = param1.getChildAt(_loc7_) as Sprite;
            _loc12_ = _loc11_.name;
            if(_loc12_ == "am_Frame")
            {
               if(_loc4_)
               {
                  _SafeCls_22._SafeStr_195("Multiple am_Frame objects exist inside Scene: " + getQualifiedClassName(param1));
               }
               _loc4_ = _loc11_.getRect(_loc11_.stage);
            }
            else if(_loc12_.indexOf("am_Parallax"))
            {
               _SafeCls_22._SafeStr_195("Unknown object: " + _loc12_ + " in Scene: " + getQualifiedClassName(param1));
            }
            else
            {
               if(_loc11_.scaleX > 0.99 && _loc11_.scaleX < 1.01)
               {
                  _loc11_.scaleX = 1;
               }
               if(_loc11_.scaleY > 0.99 && _loc11_.scaleY < 1.01)
               {
                  _loc11_.scaleY = 1;
               }
               _loc5_.push(_loc11_);
            }
            _loc7_++;
         }
         if(!_loc5_.length)
         {
            _SafeCls_22._SafeStr_195("No parallax objects found inside Scene: " + getQualifiedClassName(param1));
            return null;
         }
         var _loc8_:Vector.<_SafeCls_104> = new Vector.<_SafeCls_104>();
         for each(_loc9_ in _loc5_)
         {
            _loc8_.push(this._SafeStr_3009(_loc9_));
         }
         _loc8_.fixed = true;
         _loc10_ = new _SafeCls_103();
         _loc10_._SafeStr_2944 = param1.x;
         _loc10_._SafeStr_2669 = param1.y;
         _loc10_._SafeStr_1894 = _loc4_;
         _loc10_._SafeStr_979 = _loc8_;
         if(param2)
         {
            this._SafeStr_702.unshift(_loc10_);
         }
         else
         {
            this._SafeStr_702.push(_loc10_);
         }
         if(param3)
         {
            _loc10_._SafeStr_2968 = true;
         }
         return _loc10_;
      }
      
      private function _SafeStr_3009(param1:MovieClip) : _SafeCls_104
      {
         var _loc2_:Array = param1.name.split("$");
         var _loc3_:String = _loc2_[0];
         var _loc4_:Array = _loc3_.split("_");
         var _loc5_:Number = Number(_loc4_[2]) * 0.01;
         var _loc6_:Number = Number(_loc4_[3]) * 0.01;
         var _loc7_:_SafeCls_104 = new _SafeCls_104(param1.x,param1.y,_loc5_,_loc6_);
         _loc7_._SafeStr_776 = this._SafeStr_118._SafeStr_1031._SafeStr_2513(param1,true,false,false,getQualifiedClassName(param1));
         return _loc7_;
      }
      
      public function _SafeStr_1835(param1:Sprite, param2:String) : _SafeCls_101
      {
         var _loc3_:Rectangle = _SafeCls_19._SafeStr_1749(param1,param1);
         if(!_loc3_)
         {
            param1.parent.removeChild(param1);
            return null;
         }
         if(_loc3_.width > _SafeCls_49._SafeStr_1318 || _loc3_.height > _SafeCls_49._SafeStr_1318)
         {
            _SafeCls_22._SafeStr_195("Too big Xground object: x:" + _loc3_.width + " y:" + _loc3_.height + " " + param1.name + "in " + getQualifiedClassName(param1.parent) + " -MAX " + _SafeCls_49._SafeStr_1318);
         }
         var _loc4_:Matrix = param1.transform.concatenatedMatrix;
         var _loc5_:ColorTransform = param1.transform.concatenatedColorTransform;
         param1.transform.matrix = _loc4_;
         param1.transform.colorTransform = _loc5_;
         var _loc6_:Sprite = new Sprite();
         _loc6_.addChild(param1);
         return this._SafeStr_118._SafeStr_1031._SafeStr_2513(_loc6_,false,false,false,null,param2);
      }
      
      public function _SafeStr_3029(param1:Sprite, param2:int, param3:String) : void
      {
         var _loc4_:_SafeCls_101 = this._SafeStr_1835(param1,param3);
         if(_loc4_)
         {
            this._SafeStr_563.addChildAt(_loc4_._SafeStr_204,param2);
         }
      }
      
      public function _SafeStr_3463(param1:Sprite, param2:int, param3:String) : void
      {
         var _loc4_:_SafeCls_101 = this._SafeStr_1835(param1,param3);
         if(_loc4_)
         {
            this._SafeStr_594.addChildAt(_loc4_._SafeStr_204,param2);
         }
      }
      
      public function _SafeStr_3145(param1:Sprite, param2:int, param3:String) : void
      {
         var _loc4_:_SafeCls_101 = this._SafeStr_1835(param1,param3);
         if(_loc4_)
         {
            this._SafeStr_625.addChildAt(_loc4_._SafeStr_204,param2);
         }
      }
      
      public function _SafeStr_3055(param1:MovieClip, param2:String, param3:String, param4:String, param5:Matrix, param6:String, param7:Boolean, param8:Boolean) : _SafeCls_105
      {
         var _loc19_:String = null;
         var _loc9_:String = param1.hasOwnProperty(_SafeStr_1376) ? param1[_SafeStr_1376] : null;
         var _loc10_:Number = param1.hasOwnProperty(_SafeStr_1335) ? Number(param1[_SafeStr_1335]) : 1;
         var _loc11_:String = param1.hasOwnProperty(_SafeStr_1703) ? param1[_SafeStr_1703] : null;
         var _loc12_:GfxType = new GfxType();
         _loc12_._SafeStr_228 = param4;
         _loc12_._SafeStr_180 = param2;
         _loc12_._SafeStr_290 = false;
         _loc12_._SafeStr_756 = true;
         _loc12_.moveAnimSpeed = _loc10_;
         _loc12_._SafeStr_1017 = true;
         _loc12_._SafeStr_833 = true;
         if(_loc9_)
         {
            _loc12_.baseAnim = _loc9_;
         }
         var _loc13_:_SafeCls_40 = new _SafeCls_40(this._SafeStr_118,_loc12_,false);
         var _loc14_:Sprite = param7 ? this._SafeStr_563 : (param8 ? this._SafeStr_625 : this._SafeStr_594);
         _loc13_._SafeStr_120.transform.matrix = param5;
         _loc13_._SafeStr_120.transform.colorTransform = param1.transform.concatenatedColorTransform;
         if(_loc11_)
         {
            _loc13_._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_1589,_loc11_,true);
         }
         _loc14_.addChild(_loc13_._SafeStr_120);
         var _loc15_:Rectangle = param1.getBounds(param1.stage);
         var _loc16_:_SafeCls_105 = new _SafeCls_105(_loc13_,param3,0.5 * (_loc15_.left + _loc15_.right),0.5 * (_loc15_.top + _loc15_.bottom),_loc15_.width,_loc15_.height);
         _loc16_._SafeStr_3292 = param6;
         this._SafeStr_938.push(_loc16_);
         var _loc17_:String = param1.name;
         var _loc18_:* = !_loc17_.indexOf(_SafeStr_1897);
         if(_loc18_)
         {
            _loc19_ = _loc17_.substr(_SafeStr_1876.length);
            this._SafeStr_657.push(new _SafeCls_102(this._SafeStr_118,_loc19_,_loc13_));
         }
         return _loc16_;
      }
      
      public function _SafeStr_3187() : void
      {
         var _loc1_:_SafeCls_103 = null;
         for each(_loc1_ in this._SafeStr_702)
         {
            this._SafeStr_3024(_loc1_);
         }
      }
      
      public function _SafeStr_3024(param1:_SafeCls_103) : void
      {
         var _loc2_:_SafeCls_101 = null;
         var _loc3_:MovieClip = null;
         var _loc4_:_SafeCls_104 = null;
         for each(_loc4_ in param1._SafeStr_979)
         {
            _loc2_ = _loc4_._SafeStr_776;
            this._SafeStr_118._SafeStr_1031._SafeStr_1465(_loc2_,true);
            _loc3_ = _loc2_._SafeStr_800 as MovieClip;
            _loc4_._SafeStr_2026 = _loc2_._SafeStr_204.x - _loc3_.x;
            _loc4_._SafeStr_2183 = _loc2_._SafeStr_204.y - _loc3_.y;
         }
      }
      
      public function _SafeStr_3225() : void
      {
         var _loc1_:_SafeCls_101 = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:_SafeCls_104 = null;
         var _loc6_:Boolean = false;
         var _loc7_:Sprite = null;
         var _loc8_:Array = null;
         var _loc9_:_SafeCls_105 = null;
         var _loc10_:_SafeCls_103 = null;
         var _loc11_:_SafeCls_102 = null;
         var _loc12_:int = 0;
         var _loc14_:Boolean = false;
         var _loc15_:Rectangle = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:_SafeCls_104 = null;
         if(this._SafeStr_1976)
         {
            _loc8_ = new Array();
         }
         for each(_loc9_ in this._SafeStr_938)
         {
            _loc7_ = _loc9_._SafeStr_1327._SafeStr_120;
            _loc6_ = this._SafeStr_118._SafeStr_3504(_loc9_._SafeStr_2700,_loc9_._SafeStr_2608,_loc9_.width + 150,_loc9_.height + 100);
            if(_loc7_.visible != _loc6_)
            {
               _loc7_.visible = _loc6_;
            }
         }
         for each(_loc10_ in this._SafeStr_702)
         {
            _loc14_ = false;
            _loc15_ = _loc10_._SafeStr_1894;
            _loc16_ = -this._SafeStr_118._SafeStr_156.x;
            _loc17_ = -this._SafeStr_118._SafeStr_156.y;
            _loc18_ = _SafeCls_47._SafeStr_387;
            _loc19_ = _SafeCls_47._SafeStr_1237;
            if(!_loc10_._SafeStr_3354)
            {
               if(!_loc15_)
               {
                  _loc14_ = true;
               }
               else if(!(_loc15_.x > _loc16_ + _loc18_ || _loc15_.x + _loc15_.width < _loc16_) && !(_loc15_.y > _loc17_ + _loc19_ || _loc15_.y + _loc15_.height < _loc17_))
               {
                  _loc14_ = true;
               }
            }
            if(_loc14_)
            {
               for each(_loc5_ in _loc10_._SafeStr_979)
               {
                  _loc1_ = _loc5_._SafeStr_776;
                  _loc2_ = _loc1_._SafeStr_800 as MovieClip;
                  _loc20_ = _loc5_._SafeStr_1947 + _SafeCls_47._SafeStr_387 * 0.5;
                  _loc21_ = _loc5_._SafeStr_2160 + _SafeCls_47._SafeStr_1237 * 0.5;
                  _loc22_ = this._SafeStr_118._SafeStr_156.x + _loc10_._SafeStr_2944 + _loc5_._SafeStr_1947;
                  _loc23_ = this._SafeStr_118._SafeStr_156.y + _loc10_._SafeStr_2669 + _loc5_._SafeStr_2160;
                  _loc3_ = _loc5_.mRateX;
                  _loc4_ = _loc5_._SafeStr_2598;
                  _loc2_.x = _loc20_ * (1 - _loc3_) + _loc22_ * _loc3_;
                  _loc2_.y = _loc21_ * (1 - _loc4_) + _loc23_ * _loc4_;
                  _loc1_._SafeStr_204.x = _loc2_.x + _loc5_._SafeStr_2026;
                  _loc1_._SafeStr_204.y = _loc2_.y + _loc5_._SafeStr_2183;
                  _loc24_ = this._SafeStr_118.main._SafeStr_429;
                  _loc25_ = _loc24_ * _loc1_._SafeStr_204.x;
                  _loc26_ = _loc24_ * _loc1_._SafeStr_204.y;
                  _loc25_ = Math.floor(_loc25_);
                  _loc26_ = Math.floor(_loc26_);
                  _loc25_ /= _loc24_;
                  _loc26_ /= _loc24_;
                  _loc1_._SafeStr_204.x = _loc25_;
                  _loc1_._SafeStr_204.y = _loc26_;
                  if(!_loc2_.name.indexOf("am_ParallaxForeground"))
                  {
                     if(!_loc10_._SafeStr_926)
                     {
                        this._SafeStr_803.addChild(_loc1_._SafeStr_204);
                     }
                  }
                  else if(_loc10_._SafeStr_2968)
                  {
                     if(!_loc10_._SafeStr_926)
                     {
                        this._SafeStr_1042.addChild(_loc1_._SafeStr_204);
                     }
                  }
                  else if(this._SafeStr_1976)
                  {
                     _loc8_.push(_loc5_);
                  }
                  else if(!_loc10_._SafeStr_926)
                  {
                     this._SafeStr_605.addChild(_loc1_._SafeStr_204);
                  }
               }
               _loc10_._SafeStr_926 = true;
            }
            else if(_loc10_._SafeStr_926)
            {
               for each(_loc5_ in _loc10_._SafeStr_979)
               {
                  _loc1_ = _loc5_._SafeStr_776;
                  if(_loc1_._SafeStr_204.parent)
                  {
                     _loc1_._SafeStr_204.parent.removeChild(_loc1_._SafeStr_204);
                  }
               }
               _loc10_._SafeStr_926 = false;
            }
         }
         if(this._SafeStr_1976)
         {
            this._SafeStr_3069(_loc8_,"mRateX");
            _loc12_ = 0;
            while(_loc12_ < _loc8_.length)
            {
               _loc27_ = _loc8_[_loc12_];
               this._SafeStr_605.addChild(_loc27_._SafeStr_776._SafeStr_204);
               _loc12_++;
            }
         }
         for each(_loc11_ in this._SafeStr_657)
         {
            _loc11_._SafeStr_3530();
         }
      }
      
      public function _SafeStr_3069(param1:Array, param2:String) : void
      {
         var _loc3_:* = 0;
         var _loc4_:int = int(param1.length);
         var _loc6_:Boolean = false;
         while(!_loc6_)
         {
            _loc6_ = true;
            _loc3_ = 0;
            while(_loc3_ < _loc4_ - 1)
            {
               if(Number(param1[_loc3_][param2]) > Number(param1[_loc3_ + 1][param2]))
               {
                  var _loc5_:Object = param1[_loc3_];
                  param1[_loc3_] = param1[_loc3_ + 1];
                  param1[_loc3_ + 1] = null;
                  _loc3_--;
                  _loc6_ = false;
               }
               _loc3_++;
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_42 = "_-w0"
 * @identifier _SafeCls_47 = "_-Km"
 * @identifier _SafeCls_49 = "_-Oo"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeCls_101 = "_-Hb"
 * @identifier _SafeCls_102 = "_-9E"
 * @identifier _SafeCls_103 = "_-a7"
 * @identifier _SafeCls_104 = "_-Qd"
 * @identifier _SafeCls_105 = " each"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_156 = "_-gH"
 * @identifier _SafeStr_180 = "_-az"
 * @identifier _SafeStr_195 = "_-70"
 * @identifier _SafeStr_204 = "_-pH"
 * @identifier _SafeStr_228 = "_-QK"
 * @identifier _SafeStr_238 = "_-0F"
 * @identifier _SafeStr_283 = "_-eW"
 * @identifier _SafeStr_290 = "_-lH"
 * @identifier _SafeStr_307 = "_-mp"
 * @identifier _SafeStr_322 = "_-uU"
 * @identifier _SafeStr_387 = "_-nt"
 * @identifier _SafeStr_429 = "_-Y4"
 * @identifier _SafeStr_563 = "_-Vo"
 * @identifier _SafeStr_594 = "_-Lc"
 * @identifier _SafeStr_605 = "_-7n"
 * @identifier _SafeStr_625 = "_-LM"
 * @identifier _SafeStr_657 = "_-nC"
 * @identifier _SafeStr_702 = "_-9N"
 * @identifier _SafeStr_756 = "_-Xc"
 * @identifier _SafeStr_776 = "_-HR"
 * @identifier _SafeStr_800 = "_-YU"
 * @identifier _SafeStr_803 = "_-un"
 * @identifier _SafeStr_833 = "_-05"
 * @identifier _SafeStr_926 = "_-Au"
 * @identifier _SafeStr_938 = "_-s"
 * @identifier _SafeStr_979 = "_-9J"
 * @identifier _SafeStr_1017 = "_-TI"
 * @identifier _SafeStr_1031 = "_-jn"
 * @identifier _SafeStr_1042 = "_-9L"
 * @identifier _SafeStr_1237 = "_-NY"
 * @identifier _SafeStr_1318 = "_-Gd"
 * @identifier _SafeStr_1327 = "_-W2"
 * @identifier _SafeStr_1335 = "_-vC"
 * @identifier _SafeStr_1376 = "_-Q3"
 * @identifier _SafeStr_1465 = "_-OG"
 * @identifier _SafeStr_1589 = "_-oF"
 * @identifier _SafeStr_1677 = "_-N6"
 * @identifier _SafeStr_1703 = "_-GM"
 * @identifier _SafeStr_1705 = "_-QN"
 * @identifier _SafeStr_1749 = "_-h4"
 * @identifier _SafeStr_1835 = "_-PW"
 * @identifier _SafeStr_1876 = "_-Ql"
 * @identifier _SafeStr_1894 = "_-iq"
 * @identifier _SafeStr_1897 = "_-AO"
 * @identifier _SafeStr_1947 = "_-n2"
 * @identifier _SafeStr_1976 = "_-97"
 * @identifier _SafeStr_2026 = "_-RN"
 * @identifier _SafeStr_2074 = "_-U5"
 * @identifier _SafeStr_2160 = "_-Oc"
 * @identifier _SafeStr_2183 = "_-d7"
 * @identifier _SafeStr_2364 = "_-d"
 * @identifier _SafeStr_2386 = "_-Xz"
 * @identifier _SafeStr_2402 = "_-v5"
 * @identifier _SafeStr_2513 = "_-UD"
 * @identifier _SafeStr_2598 = "_-8W"
 * @identifier _SafeStr_2608 = "_-ck"
 * @identifier _SafeStr_2628 = "_-wk"
 * @identifier _SafeStr_2643 = "_-lA"
 * @identifier _SafeStr_2669 = "_-NP"
 * @identifier _SafeStr_2700 = "_-I7"
 * @identifier _SafeStr_2944 = "_-AB"
 * @identifier _SafeStr_2968 = "_-Sq"
 * @identifier _SafeStr_3009 = "_-QE"
 * @identifier _SafeStr_3024 = "_-uB"
 * @identifier _SafeStr_3029 = "_-0o"
 * @identifier _SafeStr_3055 = "_-I2"
 * @identifier _SafeStr_3069 = "_-Lr"
 * @identifier _SafeStr_3145 = "_-6f"
 * @identifier _SafeStr_3173 = "_-ek"
 * @identifier _SafeStr_3187 = "_-os"
 * @identifier _SafeStr_3225 = "_-Os"
 * @identifier _SafeStr_3292 = "_-oO"
 * @identifier _SafeStr_3344 = "_-2z"
 * @identifier _SafeStr_3354 = "_-pw"
 * @identifier _SafeStr_3368 = "_-Sy"
 * @identifier _SafeStr_3463 = "_-MQ"
 * @identifier _SafeStr_3487 = "_-LN"
 * @identifier _SafeStr_3495 = "_-gB"
 * @identifier _SafeStr_3504 = "_-68"
 * @identifier _SafeStr_3530 = "_-Mh"
 * @identifier _SafeStr_3696 = "_-HA"
 */
