package
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class _SafeCls_40
   {
      
      public static var _SafeStr_1383:Array = new Array();
      
      public static const _SafeStr_1910:Number = 0.25;
      
      private static const _SafeStr_2051:Array = ["0x262626","0x363636"];
      
      private static const _SafeStr_1958:int = 40;
      
      public static const _SafeStr_1346:int = 20;
      
      internal static var _SafeStr_1407:Dictionary = new Dictionary();
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_120:Sprite;
      
      internal var _SafeStr_423:Sprite;
      
      internal var _SafeStr_2291:_SafeCls_40 = null;
      
      internal var _SafeStr_138:_SafeCls_88;
      
      internal var _SafeStr_549:Rectangle = null;
      
      internal var _SafeStr_604:Boolean;
      
      internal var _SafeStr_273:Bitmap = null;
      
      internal var _SafeStr_402:Sprite = null;
      
      internal var _SafeStr_250:_SafeCls_40 = null;
      
      internal var _SafeStr_295:_SafeCls_40 = null;
      
      internal var _SafeStr_1180:_SafeCls_40 = null;
      
      internal var _SafeStr_277:_SafeCls_40 = null;
      
      internal var _SafeStr_238:_SafeCls_10;
      
      internal var _SafeStr_1884:Number = 1;
      
      internal var _SafeStr_1777:Boolean = false;
      
      internal var _SafeStr_716:Boolean = false;
      
      internal var _SafeStr_1286:Boolean = false;
      
      internal var _SafeStr_1648:uint;
      
      internal const _SafeStr_1965:uint = 2500;
      
      internal var _SafeStr_1773:Boolean = false;
      
      internal var _SafeStr_1314:uint = 2500;
      
      internal var _SafeStr_1150:Boolean = false;
      
      internal var _SafeStr_1253:Boolean = false;
      
      internal var _SafeStr_2631:uint = 250;
      
      internal var _SafeStr_878:Number = 0;
      
      internal var _SafeStr_3585:Number = 0;
      
      public function _SafeCls_40(param1:Game, param2:GfxType, param3:Boolean, param4:Boolean = false)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_238 = _SafeCls_10._SafeStr_3417(param2);
         this._SafeStr_1777 = param3;
         this._SafeStr_273 = new Bitmap(null,PixelSnapping.AUTO,false);
         if(this._SafeStr_118.main._SafeStr_1705)
         {
            this._SafeStr_273.smoothing = true;
            this._SafeStr_273.pixelSnapping = PixelSnapping.NEVER;
         }
         this._SafeStr_120 = new Sprite();
         this._SafeStr_120.mouseEnabled = false;
         this._SafeStr_120.mouseChildren = false;
         this._SafeStr_402 = new Sprite();
         this._SafeStr_402.mouseEnabled = false;
         this._SafeStr_402.mouseChildren = false;
         this._SafeStr_120.addChild(this._SafeStr_402);
         if(param2._SafeStr_1755)
         {
            this._SafeStr_3549(param2,param4);
         }
         if(param2._SafeStr_1113)
         {
            this._SafeStr_3447();
         }
         this._SafeStr_138 = new _SafeCls_88(param2);
         if(!param4)
         {
            this._SafeStr_118._SafeStr_793.push(this);
         }
      }
      
      public function _SafeStr_201() : void
      {
         this._SafeStr_238 = null;
         if(this._SafeStr_250)
         {
            this._SafeStr_250._SafeStr_201();
         }
         this._SafeStr_250 = null;
         if(this._SafeStr_295)
         {
            this._SafeStr_295._SafeStr_201();
         }
         this._SafeStr_295 = null;
         if(this._SafeStr_1180)
         {
            this._SafeStr_1180._SafeStr_201();
         }
         this._SafeStr_1180 = null;
         if(this._SafeStr_277)
         {
            this._SafeStr_277._SafeStr_201();
         }
         this._SafeStr_277 = null;
         if(this._SafeStr_2291)
         {
            this._SafeStr_2291._SafeStr_201();
         }
         this._SafeStr_2291 = null;
         if(Boolean(this._SafeStr_273) && Boolean(this._SafeStr_273.parent))
         {
            this._SafeStr_273.parent.removeChild(this._SafeStr_273);
         }
         this._SafeStr_273 = null;
         if(this._SafeStr_138)
         {
            this._SafeStr_138._SafeStr_1783();
         }
         this._SafeStr_138 = null;
         this._SafeStr_2256(null);
         if(Boolean(this._SafeStr_120) && Boolean(this._SafeStr_120.parent))
         {
            this._SafeStr_120.parent.removeChild(this._SafeStr_120);
         }
         this._SafeStr_120 = null;
         if(this._SafeStr_402)
         {
            while(this._SafeStr_402.numChildren)
            {
               this._SafeStr_402.removeChildAt(0);
            }
            this._SafeStr_402 = null;
         }
         this._SafeStr_549 = null;
         this._SafeStr_118 = null;
         this._SafeStr_716 = true;
      }
      
      public function _SafeStr_3447() : void
      {
         var _loc2_:Number = this._SafeStr_238._SafeStr_166.animScale;
         _loc2_ = Number(int(_loc2_ * 4) / int(4));
         _loc2_ += _loc2_ / 8;
         var _loc3_:GfxType = _SafeStr_1407[_loc2_];
         if(!_loc3_)
         {
            _loc3_ = new GfxType();
            _loc3_._SafeStr_228 = "SFX_1.swf";
            _loc3_._SafeStr_290 = false;
            _loc3_._SafeStr_180 = "a_SpiritGlow";
            _loc3_._SafeStr_639 = 0;
            _loc3_.animScale = _loc2_;
            _SafeStr_1407[_loc2_] = _loc3_;
         }
         this._SafeStr_1180 = new _SafeCls_40(this._SafeStr_118,_loc3_,false);
         this._SafeStr_120.addChildAt(this._SafeStr_1180._SafeStr_120,0);
      }
      
      public function _SafeStr_3549(param1:GfxType, param2:Boolean) : void
      {
         var _loc5_:CustomArt = null;
         var _loc8_:ColorSwap = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:GfxType = null;
         var _loc3_:String = param1._SafeStr_228;
         var _loc4_:String = "a_Cape";
         var _loc6_:* = int(param1._SafeStr_301.length - 1);
         while(_loc6_ >= 0)
         {
            _loc5_ = param1._SafeStr_301[_loc6_];
            if(this._SafeStr_238._SafeStr_1510("a_Cape",_loc5_.fileName,_loc5_.setName))
            {
               _loc3_ = _loc5_.fileName;
               _loc4_ = "a_Cape_" + _loc5_.setName;
               break;
            }
            _loc6_--;
         }
         var _loc7_:int = 0;
         for each(_loc8_ in this._SafeStr_238._SafeStr_166._SafeStr_254)
         {
            if(_loc8_._SafeStr_1223 == 2500134 && (_loc8_._SafeStr_966 == _SafeCls_10._SafeStr_1292 || _loc8_._SafeStr_966 <= 0))
            {
               _loc7_ = int(_loc8_._SafeStr_1176);
               break;
            }
         }
         _loc9_ = int(this._SafeStr_238._SafeStr_166.animScale * 5 + 0.5);
         _loc10_ = _loc3_ + "^" + _loc4_ + "^" + String(_loc7_) + "^" + String(_loc9_);
         _loc11_ = _SafeStr_1383[_loc10_];
         if(!_loc11_)
         {
            _loc11_ = new GfxType();
            _loc11_._SafeStr_180 = _loc4_;
            _loc11_._SafeStr_228 = _loc3_;
            _loc11_._SafeStr_254 = this._SafeStr_238._SafeStr_166._SafeStr_254;
            _loc11_._SafeStr_756 = true;
            _loc11_._SafeStr_1017 = true;
            _loc11_.animScale = this._SafeStr_238._SafeStr_166.animScale;
            if(_loc3_ == "Animation_Rogue.swf")
            {
               _loc11_.animScale *= _SafeStr_1910;
            }
            _SafeStr_1383[_loc10_] = _loc11_;
         }
         this._SafeStr_250 = new _SafeCls_40(this._SafeStr_118,_loc11_,this._SafeStr_1777,param2);
         this._SafeStr_250._SafeStr_238._SafeStr_896 = _SafeCls_10._SafeStr_1946(this._SafeStr_250._SafeStr_238._SafeStr_896,_SafeStr_2051,_SafeCls_10._SafeStr_1292);
         this._SafeStr_250._SafeStr_273.smoothing = true;
         this._SafeStr_120.addChildAt(this._SafeStr_250._SafeStr_120,0);
      }
      
      public function _SafeStr_2256(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Class = null;
         if(Boolean(this._SafeStr_423) && Boolean(this._SafeStr_423.parent))
         {
            this._SafeStr_423.parent.removeChild(this._SafeStr_423);
         }
         this._SafeStr_423 = null;
         if(Boolean(param1) && param1 != "None")
         {
            _loc2_ = param1.split("/");
            if(_loc2_.length == 1)
            {
               _loc3_ = "SFX_1.swf";
               _loc4_ = _loc2_[0];
            }
            else
            {
               _loc3_ = _loc2_[0];
               _loc4_ = _loc2_[1];
            }
            _loc5_ = _SafeCls_9._SafeStr_688[_loc3_];
            if(_loc5_)
            {
               _loc6_ = _loc5_.applicationDomain.getDefinition(_loc4_);
               this._SafeStr_423 = new _loc6_();
               this._SafeStr_423.mouseEnabled = false;
               this._SafeStr_423.mouseChildren = false;
               this._SafeStr_423.name = "the_Shadow";
               this._SafeStr_118._SafeStr_2139.addChild(this._SafeStr_423);
            }
         }
      }
      
      public function _SafeStr_536() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Number = 1;
         if(this._SafeStr_277)
         {
            this._SafeStr_277._SafeStr_138._SafeStr_1830 = this._SafeStr_138._SafeStr_1830;
            this._SafeStr_277._SafeStr_138._SafeStr_160 = this._SafeStr_138._SafeStr_160;
            this._SafeStr_277._SafeStr_536();
            if(this._SafeStr_238._SafeStr_166._SafeStr_228 == "Animation_Paladin.swf")
            {
               _loc2_ = 1.4666666666666668;
            }
         }
         _loc1_ = this._SafeStr_138._SafeStr_2715(this._SafeStr_118._SafeStr_227,this._SafeStr_277 ? this._SafeStr_277._SafeStr_138 : null);
         if(!_loc1_ && this._SafeStr_120.visible)
         {
            if(this._SafeStr_3510(this._SafeStr_138._SafeStr_175,this._SafeStr_138._SafeStr_453))
            {
               this._SafeStr_238._SafeStr_3534(this._SafeStr_138._SafeStr_175,this._SafeStr_138._SafeStr_453,this._SafeStr_402,this._SafeStr_273,_loc2_);
               if(this._SafeStr_549)
               {
                  this._SafeStr_3403();
               }
               else
               {
                  if(this._SafeStr_273.scrollRect)
                  {
                     this._SafeStr_273.scrollRect = null;
                  }
                  if(this._SafeStr_402.scrollRect)
                  {
                     this._SafeStr_402.scrollRect = null;
                  }
               }
               if(this._SafeStr_250)
               {
                  this._SafeStr_3363(this._SafeStr_138._SafeStr_453);
               }
               if(this._SafeStr_295)
               {
                  this._SafeStr_3434(this._SafeStr_138._SafeStr_453);
               }
            }
            this._SafeStr_238._SafeStr_1419 = this._SafeStr_118.mTimeThisTick;
         }
         if(this._SafeStr_1286 || this._SafeStr_1253 || this._SafeStr_1150 || this._SafeStr_1773)
         {
            this._SafeStr_3207();
         }
         return _loc1_;
      }
      
      private function _SafeStr_3510(param1:_SafeCls_31, param2:_SafeCls_28) : Boolean
      {
         if(!this._SafeStr_402.numChildren)
         {
            return true;
         }
         if(this._SafeStr_1777)
         {
            return true;
         }
         var _loc3_:_SafeCls_29 = this._SafeStr_238._SafeStr_1185[param1._SafeStr_1587];
         if(Boolean(_loc3_) && Boolean(_loc3_._SafeStr_511[param2._SafeStr_2162]))
         {
            return true;
         }
         if(getTimer() - this._SafeStr_118.mTimeThisTick <= _SafeStr_1958)
         {
            return true;
         }
         if(_SafeCls_10._SafeStr_1100)
         {
            return true;
         }
         return false;
      }
      
      public function _SafeStr_795(param1:uint, param2:uint = 0) : void
      {
         this._SafeStr_604 = true;
         var _loc3_:* = (param2 & 0xFF0000) >> 16;
         var _loc4_:* = (param2 & 0xFF00) >> 8;
         var _loc5_:* = param2 & 0xFF;
         this._SafeStr_120.transform.colorTransform = new ColorTransform(((param1 & 0xFF0000) >> 16) / 255,((param1 & 0xFF00) >> 8) / 255,(param1 & 0xFF) / 255,1,_loc3_,_loc4_,_loc5_,0);
      }
      
      public function _SafeStr_3766(param1:uint, param2:uint = 0, param3:Number = 1) : void
      {
         this._SafeStr_604 = true;
         var _loc4_:Number = ((param1 & 0xFF0000) >> 16) / 255;
         var _loc5_:Number = ((param1 & 0xFF00) >> 8) / 255;
         var _loc6_:Number = (param1 & 0xFF) / 255;
         _loc4_ = (_loc4_ - 1) * param3 + 1;
         _loc5_ = (_loc5_ - 1) * param3 + 1;
         _loc6_ = (_loc6_ - 1) * param3 + 1;
         var _loc7_:* = (param2 & 0xFF0000) >> 16;
         var _loc8_:* = (param2 & 0xFF00) >> 8;
         var _loc9_:* = param2 & 0xFF;
         this._SafeStr_120.transform.colorTransform = new ColorTransform(_loc4_,_loc5_,_loc6_,1,_loc7_,_loc8_,_loc9_,0);
      }
      
      public function _SafeStr_3658(param1:uint, param2:uint = 0, param3:uint = 0) : void
      {
         this._SafeStr_1286 = true;
         this._SafeStr_604 = true;
         this._SafeStr_120.transform.colorTransform = new ColorTransform();
         this._SafeStr_1648 = this._SafeStr_118.mTimeThisTick;
         if(param3)
         {
            this._SafeStr_1773 = true;
            this._SafeStr_1286 = false;
            this._SafeStr_1314 = this._SafeStr_1965;
         }
      }
      
      public function _SafeStr_3629(param1:Number = 0.1) : void
      {
         this._SafeStr_1253 = false;
         this._SafeStr_604 = true;
         this._SafeStr_1150 = true;
         this._SafeStr_120.transform.colorTransform = new ColorTransform();
         this._SafeStr_1648 = this._SafeStr_118.mTimeThisTick;
         this._SafeStr_878 = param1;
      }
      
      public function _SafeStr_3680() : void
      {
         this._SafeStr_1150 = false;
         this._SafeStr_604 = true;
         this._SafeStr_1253 = true;
         this._SafeStr_120.transform.colorTransform = new ColorTransform();
         this._SafeStr_1648 = this._SafeStr_118.mTimeThisTick;
      }
      
      public function _SafeStr_1105() : void
      {
         if(this._SafeStr_604)
         {
            this._SafeStr_604 = false;
            this._SafeStr_120.transform.colorTransform = new ColorTransform();
         }
         this._SafeStr_1286 = false;
         this._SafeStr_1773 = false;
      }
      
      public function _SafeStr_3403() : void
      {
         var _loc1_:Rectangle = null;
         if(Boolean(this._SafeStr_273) && Boolean(this._SafeStr_273.bitmapData))
         {
            if(!this._SafeStr_273.scrollRect)
            {
               this._SafeStr_549.width = this._SafeStr_273.bitmapData.width;
               this._SafeStr_549.height = -this._SafeStr_273.y - _SafeStr_1346 * this._SafeStr_118.main._SafeStr_429;
               this._SafeStr_273.scrollRect = this._SafeStr_549;
            }
            else
            {
               _loc1_ = this._SafeStr_273.scrollRect;
               this._SafeStr_549.width = _loc1_.width;
               this._SafeStr_549.height = _loc1_.height - _SafeStr_1346 * this._SafeStr_118.main._SafeStr_429;
               this._SafeStr_549.x = _loc1_.x;
               this._SafeStr_549.y = _loc1_.y;
               this._SafeStr_273.scrollRect = this._SafeStr_549;
            }
         }
      }
      
      private function _SafeStr_3363(param1:_SafeCls_28) : void
      {
         var _loc2_:DisplayObject = this._SafeStr_250._SafeStr_120;
         var _loc3_:Matrix = param1._SafeStr_2223;
         if(!_loc3_)
         {
            _loc2_.visible = false;
            return;
         }
         var _loc4_:Number = this._SafeStr_238._SafeStr_166.animScale;
         var _loc5_:Number = this._SafeStr_118.main._SafeStr_429;
         var _loc6_:Matrix = new Matrix(_loc5_,0,0,_loc5_);
         _loc6_.concat(_loc3_);
         _loc6_.scale(_loc4_,_loc4_);
         _loc2_.transform.matrix = _loc6_;
         _loc2_.visible = true;
      }
      
      public function _SafeStr_3434(param1:_SafeCls_28) : void
      {
         if(this._SafeStr_295._SafeStr_716)
         {
            this._SafeStr_295 = null;
            return;
         }
         var _loc2_:DisplayObject = this._SafeStr_295._SafeStr_120;
         var _loc3_:Point = param1._SafeStr_1980;
         if(!_loc3_)
         {
            _loc2_.visible = false;
            return;
         }
         var _loc4_:Number = this._SafeStr_238._SafeStr_166.animScale;
         var _loc5_:Matrix = new Matrix(1,0,0,1,_loc3_.x,_loc3_.y);
         _loc5_.scale(_loc4_,_loc4_);
         _loc2_.transform.matrix = _loc5_;
         _loc2_.visible = true;
      }
      
      public function _SafeStr_3594(param1:GfxType) : void
      {
         var _loc2_:Dictionary = null;
         var _loc3_:int = 0;
         if(this._SafeStr_277)
         {
            if(this._SafeStr_277)
            {
               this._SafeStr_277._SafeStr_201();
            }
            this._SafeStr_277 = null;
         }
         if(param1)
         {
            _loc2_ = this._SafeStr_138._SafeStr_157._SafeStr_155;
            if(param1._SafeStr_228 == "Animation_DireMount.swf")
            {
               this._SafeStr_138._SafeStr_249 = _loc2_["ReadyDire"];
               this._SafeStr_138._SafeStr_509 = _loc2_["JumpDire"];
               this._SafeStr_138._SafeStr_312 = _loc2_["JumpDire"];
               this._SafeStr_138._SafeStr_369 = _loc2_["RunDire"];
               this._SafeStr_138._SafeStr_582 = _loc2_["JumpDire"];
            }
            else if(param1._SafeStr_228 == "Animation_HorseMount.swf")
            {
               this._SafeStr_138._SafeStr_249 = _loc2_["ReadyHorse"];
               this._SafeStr_138._SafeStr_509 = _loc2_["JumpHorse"];
               this._SafeStr_138._SafeStr_312 = _loc2_["JumpHorse"];
               this._SafeStr_138._SafeStr_369 = _loc2_["RunHorse"];
               this._SafeStr_138._SafeStr_582 = _loc2_["JumpHorse"];
            }
            this._SafeStr_277 = new _SafeCls_40(this._SafeStr_118,param1,false,true);
            this._SafeStr_277._SafeStr_138._SafeStr_312 = this._SafeStr_277._SafeStr_138._SafeStr_509;
            this._SafeStr_277._SafeStr_138._SafeStr_582 = this._SafeStr_277._SafeStr_138._SafeStr_509;
            _loc3_ = 0;
            if(this._SafeStr_250 && this._SafeStr_250._SafeStr_120 && this._SafeStr_250._SafeStr_120.parent == this._SafeStr_120)
            {
               _loc3_ = this._SafeStr_120.getChildIndex(this._SafeStr_250._SafeStr_120) + 1;
            }
            this._SafeStr_120.addChildAt(this._SafeStr_277._SafeStr_120,_loc3_);
            this._SafeStr_2256(param1._SafeStr_686);
         }
         else
         {
            this._SafeStr_138._SafeStr_2460();
            this._SafeStr_2256(this._SafeStr_238._SafeStr_166._SafeStr_686);
         }
      }
      
      public function _SafeStr_1729(param1:GfxType) : void
      {
         if(this._SafeStr_295)
         {
            if(param1)
            {
               this._SafeStr_295._SafeStr_716 = true;
               this._SafeStr_295 = null;
            }
            else if(!this._SafeStr_295._SafeStr_716)
            {
               this._SafeStr_295._SafeStr_138._SafeStr_574();
            }
         }
         if(param1)
         {
            this._SafeStr_295 = new _SafeCls_40(this._SafeStr_118,param1,this._SafeStr_1777);
            this._SafeStr_120.addChild(this._SafeStr_295._SafeStr_120);
         }
      }
      
      public function _SafeStr_3652(param1:String, param2:uint) : void
      {
         var _loc3_:Number = this._SafeStr_118._SafeStr_227;
         this._SafeStr_118._SafeStr_227 = 0;
         this._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,param1,true);
         this._SafeStr_138._SafeStr_2715(0,null);
         this._SafeStr_138._SafeStr_332 = param2;
         this._SafeStr_536();
         if(this._SafeStr_250)
         {
            this._SafeStr_250._SafeStr_138._SafeStr_332 = 14;
            this._SafeStr_250._SafeStr_536();
         }
         this._SafeStr_118._SafeStr_227 = _loc3_;
      }
      
      public function _SafeStr_3207() : void
      {
         var _loc1_:ColorTransform = null;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:uint = 0;
         var _loc6_:Number = NaN;
         if(Boolean(this._SafeStr_120) && Boolean(this._SafeStr_120.transform))
         {
            _loc1_ = this._SafeStr_120.transform.colorTransform;
            if(_loc1_)
            {
               _loc2_ = this._SafeStr_118.mTimeThisTick - this._SafeStr_1648;
               if(this._SafeStr_1286)
               {
                  _loc3_ = _loc2_ % this._SafeStr_1965;
                  _loc5_ = uint(this._SafeStr_1965 >> 1);
                  if(_loc3_ < _loc5_)
                  {
                     _loc4_ = (1 - (_loc5_ - _loc3_) / _loc5_) * 100;
                  }
                  else
                  {
                     _loc3_ -= _loc5_;
                     _loc4_ = (_loc5_ - _loc3_) / _loc5_ * 100;
                  }
                  _loc1_.redOffset = _loc4_;
                  _loc1_.blueOffset = _loc4_;
                  _loc1_.greenOffset = _loc4_;
                  this._SafeStr_120.transform.colorTransform = _loc1_;
               }
               else if(this._SafeStr_1253)
               {
                  _loc6_ = _loc2_ / this._SafeStr_2631;
                  _loc6_ = _loc6_ * (1 - this._SafeStr_878) + this._SafeStr_878;
                  _loc1_.alphaMultiplier = _loc6_;
                  this._SafeStr_120.transform.colorTransform = _loc1_;
                  if(_loc6_ >= 1)
                  {
                     this._SafeStr_1253 = false;
                  }
               }
               else if(this._SafeStr_1150)
               {
                  _loc6_ = 1 - _loc2_ / this._SafeStr_2631;
                  _loc6_ = _loc6_ * (1 - this._SafeStr_878) + this._SafeStr_878;
                  if(_loc6_ <= this._SafeStr_878)
                  {
                     this._SafeStr_1150 = false;
                     _loc6_ = this._SafeStr_878;
                  }
                  _loc1_.alphaMultiplier = _loc6_;
                  this._SafeStr_120.transform.colorTransform = _loc1_;
               }
               else if(this._SafeStr_1773)
               {
                  _loc3_ = _loc2_ % this._SafeStr_1314;
                  _loc5_ = uint(this._SafeStr_1314 >> 1);
                  if(_loc3_ < _loc5_)
                  {
                     _loc4_ = (1 - (_loc5_ - _loc3_) / _loc5_) * 180;
                  }
                  else
                  {
                     _loc3_ -= _loc5_;
                     _loc4_ = (_loc5_ - _loc3_) / _loc5_ * 180;
                  }
                  _loc1_.redOffset = _loc4_;
                  this._SafeStr_120.transform.colorTransform = _loc1_;
                  this._SafeStr_1314 -= 7;
               }
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_9 = "_-cU"
 * @identifier _SafeCls_10 = "_-HZ"
 * @identifier _SafeCls_28 = "_-sE"
 * @identifier _SafeCls_29 = "_-LV"
 * @identifier _SafeCls_31 = "_-iH"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_155 = "_-pr"
 * @identifier _SafeStr_157 = "_-wW"
 * @identifier _SafeStr_160 = "_-CV"
 * @identifier _SafeStr_166 = "_-PJ"
 * @identifier _SafeStr_175 = "_-1l"
 * @identifier _SafeStr_180 = "_-az"
 * @identifier _SafeStr_201 = "_-x"
 * @identifier _SafeStr_227 = "_-XT"
 * @identifier _SafeStr_228 = "_-QK"
 * @identifier _SafeStr_238 = "_-0F"
 * @identifier _SafeStr_249 = "_-Zr"
 * @identifier _SafeStr_250 = "_-AD"
 * @identifier _SafeStr_254 = "_-H5"
 * @identifier _SafeStr_273 = "_-GP"
 * @identifier _SafeStr_277 = "_-Ko"
 * @identifier _SafeStr_290 = "_-lH"
 * @identifier _SafeStr_295 = "_-Op"
 * @identifier _SafeStr_298 = "_-j2"
 * @identifier _SafeStr_301 = "_-4c"
 * @identifier _SafeStr_307 = "_-mp"
 * @identifier _SafeStr_312 = "_-4E"
 * @identifier _SafeStr_332 = "_-nc"
 * @identifier _SafeStr_369 = " in"
 * @identifier _SafeStr_402 = "_-rH"
 * @identifier _SafeStr_423 = "_-fu"
 * @identifier _SafeStr_429 = "_-Y4"
 * @identifier _SafeStr_453 = "_-I-"
 * @identifier _SafeStr_509 = "_-k5"
 * @identifier _SafeStr_511 = "_-LZ"
 * @identifier _SafeStr_536 = "_-Va"
 * @identifier _SafeStr_549 = "get"
 * @identifier _SafeStr_574 = "_-eo"
 * @identifier _SafeStr_582 = "_-mo"
 * @identifier _SafeStr_604 = "_-AI"
 * @identifier _SafeStr_639 = "_-Rg"
 * @identifier _SafeStr_686 = "_-LF"
 * @identifier _SafeStr_688 = "true"
 * @identifier _SafeStr_716 = "_-ND"
 * @identifier _SafeStr_756 = "_-Xc"
 * @identifier _SafeStr_793 = "_-gl"
 * @identifier _SafeStr_795 = "_-f0"
 * @identifier _SafeStr_878 = "_-rr"
 * @identifier _SafeStr_896 = "_-nS"
 * @identifier _SafeStr_966 = "_-Cn"
 * @identifier _SafeStr_1017 = "_-TI"
 * @identifier _SafeStr_1100 = "_-pI"
 * @identifier _SafeStr_1105 = "_-Eo"
 * @identifier _SafeStr_1113 = "_-wI"
 * @identifier _SafeStr_1150 = "_-TH"
 * @identifier _SafeStr_1176 = "_-dT"
 * @identifier _SafeStr_1180 = "_-uH"
 * @identifier _SafeStr_1185 = "_-wu"
 * @identifier _SafeStr_1223 = "_-Ih"
 * @identifier _SafeStr_1253 = "_-9o"
 * @identifier _SafeStr_1286 = "_-U9"
 * @identifier _SafeStr_1292 = "_-ma"
 * @identifier _SafeStr_1314 = "_-cB"
 * @identifier _SafeStr_1346 = "_-ns"
 * @identifier _SafeStr_1383 = "_-nJ"
 * @identifier _SafeStr_1407 = "_-b5"
 * @identifier _SafeStr_1419 = "_-lE"
 * @identifier _SafeStr_1510 = "_-2p"
 * @identifier _SafeStr_1587 = "_-nQ"
 * @identifier _SafeStr_1648 = "_-i0"
 * @identifier _SafeStr_1705 = "_-QN"
 * @identifier _SafeStr_1729 = "_-0h"
 * @identifier _SafeStr_1755 = "_-67"
 * @identifier _SafeStr_1773 = "_-rM"
 * @identifier _SafeStr_1777 = "_-fz"
 * @identifier _SafeStr_1783 = "_-MU"
 * @identifier _SafeStr_1830 = "_-Ul"
 * @identifier _SafeStr_1884 = "_-lU"
 * @identifier _SafeStr_1910 = " var"
 * @identifier _SafeStr_1946 = "_-ZF"
 * @identifier _SafeStr_1958 = "_-I"
 * @identifier _SafeStr_1965 = "_-KS"
 * @identifier _SafeStr_1980 = "_-3w"
 * @identifier _SafeStr_2051 = "_-ZH"
 * @identifier _SafeStr_2139 = "_-jN"
 * @identifier _SafeStr_2162 = "_-4X"
 * @identifier _SafeStr_2223 = "_-Be"
 * @identifier _SafeStr_2256 = "_-R-"
 * @identifier _SafeStr_2291 = "_-tF"
 * @identifier _SafeStr_2460 = "_-Ow"
 * @identifier _SafeStr_2631 = "_-XK"
 * @identifier _SafeStr_2715 = "_-dz"
 * @identifier _SafeStr_3207 = "_-ML"
 * @identifier _SafeStr_3363 = "_-cu"
 * @identifier _SafeStr_3403 = "_-I9"
 * @identifier _SafeStr_3417 = "_-iL"
 * @identifier _SafeStr_3434 = "_-qE"
 * @identifier _SafeStr_3447 = "_-fj"
 * @identifier _SafeStr_3510 = "_-it"
 * @identifier _SafeStr_3534 = "_-Az"
 * @identifier _SafeStr_3549 = "_-F-"
 * @identifier _SafeStr_3585 = "_-mU"
 * @identifier _SafeStr_3594 = "_-AW"
 * @identifier _SafeStr_3629 = "_-bi"
 * @identifier _SafeStr_3652 = "_-Ea"
 * @identifier _SafeStr_3658 = "_-t-"
 * @identifier _SafeStr_3680 = "_-KM"
 * @identifier _SafeStr_3766 = "_-ru"
 */
