package
{
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageDisplayState;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _SafeCls_47
   {
      
      public static const _SafeStr_356:Number = 1152;
      
      public static const _SafeStr_341:Number = 768;
      
      public static const _SafeStr_1937:Number = _SafeStr_356 / _SafeStr_341;
      
      public static const _SafeStr_387:Number = 2100;
      
      public static const _SafeStr_1449:Number = 1400;
      
      public static const _SafeStr_1237:Number = 668;
      
      public static var _SafeStr_821:Number = 480;
      
      public static var _SafeStr_895:Number = 270;
      
      private static const _SafeStr_900:Number = 320;
      
      private static const _SafeStr_999:Number = 180;
      
      private static const _SafeStr_2136:Number = 0.95;
      
      private static const _SafeStr_2186:Number = 0.9;
      
      private static const _SafeStr_1537:Number = 2.5;
      
      private static const _SafeStr_2184:uint = 5000;
      
      private static const _SafeStr_1024:Number = 25;
      
      private static const _SafeStr_1019:Number = 20;
      
      public static const _SafeStr_2412:Number = 25;
      
      public static const _SafeStr_2047:Number = 15;
      
      public static const _SafeStr_1868:Number = 11;
      
      public static const _SafeStr_1083:Number = 6;
      
      public static const _SafeStr_1716:Number = 3;
      
      private static const _SafeStr_1342:Number = 24;
      
      private static const _SafeStr_2201:uint = 500;
      
      private static const _SafeStr_1575:uint = 4;
      
      public static const _SafeStr_1420:uint = 5;
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_188:Rectangle;
      
      internal var _SafeStr_139:Rectangle;
      
      internal var _SafeStr_223:Rectangle;
      
      internal var _SafeStr_2087:Rectangle;
      
      private var _SafeStr_1255:Number = 0;
      
      private var _SafeStr_1264:Number = 0;
      
      private var _SafeStr_428:Sprite;
      
      private var _SafeStr_659:Number;
      
      private var _SafeStr_838:Point = new Point();
      
      private var _SafeStr_824:Number;
      
      private var _SafeStr_2657:uint;
      
      public function _SafeCls_47(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_139 = new Rectangle();
         this._SafeStr_223 = new Rectangle();
         this._SafeStr_2087 = new Rectangle();
         var _temp_1:* = this;
         this._SafeStr_824 = 0;
         _temp_1._SafeStr_659 = 0;
      }
      
      public function _SafeStr_3198() : void
      {
         this._SafeStr_139 = null;
         this._SafeStr_223 = null;
         this._SafeStr_2087 = null;
         this._SafeStr_838 = null;
         this._SafeStr_188 = null;
         if(Boolean(this._SafeStr_428) && Boolean(this._SafeStr_428.parent))
         {
            this._SafeStr_428.parent.removeChild(this._SafeStr_428);
         }
         this._SafeStr_428 = null;
         this._SafeStr_118 = null;
      }
      
      public function GameplayEnd() : void
      {
         this._SafeStr_139 = new Rectangle();
         this._SafeStr_223 = new Rectangle();
         this._SafeStr_2087 = new Rectangle();
         this._SafeStr_188 = null;
         var _temp_1:* = this;
         this._SafeStr_824 = 0;
         _temp_1._SafeStr_659 = 0;
         this._SafeStr_1264 = 0;
         this._SafeStr_1255 = 0;
      }
      
      public function _SafeStr_1542() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Graphics = null;
         var _loc1_:Stage = this._SafeStr_118.main.stage;
         var _loc2_:Number = _loc1_.displayState == StageDisplayState.NORMAL ? _loc1_.stageWidth : _loc1_.fullScreenWidth;
         var _loc3_:Number = _loc1_.displayState == StageDisplayState.NORMAL ? _loc1_.stageHeight : _loc1_.fullScreenHeight;
         if(_loc2_ != this._SafeStr_1255 || _loc3_ != this._SafeStr_1264)
         {
            _loc4_ = _loc2_ / _loc3_;
            _loc5_ = _loc4_ > _SafeStr_1937 ? _loc3_ / _SafeStr_341 : _loc2_ / _SafeStr_356;
            this._SafeStr_118._SafeStr_381.scaleX = _loc5_;
            this._SafeStr_118._SafeStr_381.scaleY = _loc5_;
            this._SafeStr_118._SafeStr_381.x = (_loc2_ - _SafeStr_356 * _loc5_) / 2;
            this._SafeStr_118._SafeStr_381.y = (_loc3_ - _SafeStr_341 * _loc5_) / 2;
            this._SafeStr_118._SafeStr_642.scaleX = _loc5_;
            this._SafeStr_118._SafeStr_642.scaleY = _loc5_;
            this._SafeStr_118._SafeStr_642.x = this._SafeStr_118._SafeStr_381.x;
            this._SafeStr_118._SafeStr_642.y = this._SafeStr_118._SafeStr_381.y;
            this._SafeStr_118.main._SafeStr_429 = _loc5_;
            if(!this._SafeStr_428)
            {
               this._SafeStr_428 = new Sprite();
               _loc6_ = this._SafeStr_428.graphics;
               _loc6_.beginFill(0);
               _loc6_.drawRect(-_SafeStr_356,-_SafeStr_341,_SafeStr_356 * 3,_SafeStr_341);
               _loc6_.beginFill(0);
               _loc6_.drawRect(-_SafeStr_356,-_SafeStr_341,_SafeStr_356,_SafeStr_341 * 3);
               _loc6_.beginFill(0);
               _loc6_.drawRect(_SafeStr_356,-_SafeStr_341,_SafeStr_356,_SafeStr_341 * 3);
               _loc6_.beginFill(0);
               _loc6_.drawRect(-_SafeStr_356,_SafeStr_341,_SafeStr_356 * 3,_SafeStr_341);
               _loc6_.endFill();
               this._SafeStr_118._SafeStr_834.addChild(this._SafeStr_428);
            }
            this._SafeStr_428.visible = true;
            this._SafeStr_118._SafeStr_834.scaleX = _loc5_;
            this._SafeStr_118._SafeStr_834.scaleY = _loc5_;
            this._SafeStr_118._SafeStr_834.x = (_loc2_ - _SafeStr_356 * _loc5_) / 2;
            this._SafeStr_118._SafeStr_834.y = (_loc3_ - _SafeStr_341 * _loc5_) / 2;
            this._SafeStr_118._SafeStr_3538();
         }
         this._SafeStr_1255 = _loc2_;
         this._SafeStr_1264 = _loc3_;
      }
      
      public function _SafeStr_2729() : void
      {
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         if(!this._SafeStr_118 || !this._SafeStr_118.level || !this._SafeStr_118.level._SafeStr_253)
         {
            return;
         }
         var _loc1_:Vector.<_SafeCls_25> = this._SafeStr_118.mEntities;
         if(!this._SafeStr_188 || !this._SafeStr_223.x || !this._SafeStr_223.y || !this._SafeStr_223.height || !this._SafeStr_223.width || !_loc1_ || _loc1_.length == 0)
         {
            this._SafeStr_188 = this._SafeStr_118.level._SafeStr_253;
            this._SafeStr_2275(this._SafeStr_139,this._SafeStr_188);
            this._SafeStr_2275(this._SafeStr_223,this._SafeStr_188);
            this._SafeStr_824 = _SafeStr_1342;
            this._SafeStr_1264 = 0;
            this._SafeStr_1255 = 0;
         }
         else
         {
            this._SafeStr_139.left = Number.MAX_VALUE;
            this._SafeStr_139.right = Number.MIN_VALUE;
            this._SafeStr_139.top = Number.MAX_VALUE;
            this._SafeStr_139.bottom = Number.MIN_VALUE;
         }
         var _loc2_:Number = this._SafeStr_118._SafeStr_156.scaleX;
         var _temp_9:* = this._SafeStr_118._SafeStr_156;
         this._SafeStr_118._SafeStr_156.scaleY = 1;
         _temp_9.scaleX = 1;
         if(!this._SafeStr_118.IsStandaloneClient() && _loc1_.length > _SafeStr_1575 && this._SafeStr_118.mTimeThisTick - this._SafeStr_2657 > _SafeStr_2201)
         {
            _loc1_.sort(this._SafeStr_3509);
            this._SafeStr_2657 = this._SafeStr_118.mTimeThisTick;
         }
         var _loc4_:uint = _loc1_.length;
         var _loc5_:_SafeCls_25 = this._SafeStr_118.mClientEnt;
         var _loc6_:uint = uint(_SafeCls_25._SafeStr_194 | _SafeCls_25.BOT | _SafeCls_25._SafeStr_413);
         var _loc7_:uint = _SafeStr_1575;
         var _loc8_:uint = 0;
         while(_loc8_ < _loc4_)
         {
            var _loc3_:_SafeCls_25 = _loc1_[_loc8_];
            var _loc18_:_SafeCls_25 = this._SafeStr_118._SafeStr_200(_loc3_._SafeStr_709);
            var _loc19_:Boolean = Boolean(_loc3_._SafeStr_304(this._SafeStr_118.mTimeThisTick)) && false;
            if(!(_loc8_ >= _loc7_ && true))
            {
               if(!(0 & _SafeCls_25._SafeStr_578) && !isNaN(_loc3_._SafeStr_121) && !isNaN(_loc3_.mPhysPosY))
               {
                  if(_loc4_ >= _SafeStr_1420)
                  {
                     this._SafeStr_139.left = Math.min(this._SafeStr_139.left,Math.max(0 - _SafeStr_821,this._SafeStr_223.left - _SafeStr_1019));
                     this._SafeStr_139.right = Math.max(this._SafeStr_139.right,Math.min(_loc3_.mPhysCenterX + _SafeStr_821,this._SafeStr_223.right + _SafeStr_1019));
                     this._SafeStr_139.top = Math.min(this._SafeStr_139.top,Math.max(0 - _SafeStr_895,this._SafeStr_223.top - _SafeStr_1019));
                     this._SafeStr_139.bottom = Math.max(this._SafeStr_139.bottom,Math.min(_loc3_.mPhysCenterY + _SafeStr_895,this._SafeStr_223.bottom + _SafeStr_1019));
                  }
                  else
                  {
                     this._SafeStr_139.left = Math.min(this._SafeStr_139.left,0 - _SafeStr_821);
                     this._SafeStr_139.right = Math.max(this._SafeStr_139.right,_loc3_.mPhysCenterX + _SafeStr_821);
                     this._SafeStr_139.top = Math.min(this._SafeStr_139.top,0 - _SafeStr_895);
                     this._SafeStr_139.bottom = Math.max(this._SafeStr_139.bottom,_loc3_.mPhysCenterY + _SafeStr_895);
                  }
               }
               else if(_loc7_ < _loc4_)
               {
                  _loc7_++;
               }
            }
            _loc8_++;
         }
         this._SafeStr_139.left = Math.max(this._SafeStr_139.left,this._SafeStr_188.left);
         this._SafeStr_139.right = Math.min(this._SafeStr_139.right,this._SafeStr_188.right);
         this._SafeStr_139.top = Math.max(this._SafeStr_139.top,this._SafeStr_188.top);
         this._SafeStr_139.bottom = Math.min(this._SafeStr_139.bottom,this._SafeStr_188.bottom);
         var _loc9_:Stage = this._SafeStr_118.main.stage;
         var _loc10_:Number = _loc9_.displayState == StageDisplayState.NORMAL ? _loc9_.stageWidth : _loc9_.fullScreenWidth;
         var _loc11_:Number = _loc9_.displayState == StageDisplayState.NORMAL ? _loc9_.stageHeight : _loc9_.fullScreenHeight;
         var _loc12_:Number = Math.max(_SafeStr_387,_loc10_);
         var _loc13_:Number = Math.max(_SafeStr_1449,_loc11_);
         var _loc14_:Number = _loc10_ / _loc11_;
         if(this._SafeStr_139.width < _loc12_)
         {
            this._SafeStr_2382(_loc12_,this._SafeStr_139);
         }
         if(this._SafeStr_139.height < _loc13_)
         {
            this._SafeStr_2283(_loc13_,this._SafeStr_139);
         }
         this._SafeStr_2142(_loc14_);
         var _loc15_:Boolean = false;
         if(_loc7_ > 1)
         {
            var _loc20_:uint = this._SafeStr_118.mTimeThisTick - _SafeStr_2184;
            for each(var _loc21_ in this._SafeStr_118._SafeStr_270)
            {
               if(!(isNaN(_loc21_._SafeStr_121) || isNaN(_loc21_.mPhysPosY)))
               {
                  if(!this._SafeStr_118.IsStandaloneClient() && this._SafeStr_118.mClientEnt && _loc21_._SafeStr_153 == _SafeCls_27._SafeStr_535 && _loc21_._SafeStr_421 == this._SafeStr_118.mClientEnt.mEntID)
                  {
                     this._SafeStr_139.left = Math.min(this._SafeStr_139.left,0 - _SafeStr_900);
                     this._SafeStr_139.right = Math.max(this._SafeStr_139.right,_loc21_._SafeStr_215 + _SafeStr_900);
                     this._SafeStr_139.top = Math.min(this._SafeStr_139.top,0 - _SafeStr_999);
                     this._SafeStr_139.bottom = Math.max(this._SafeStr_139.bottom,_loc21_._SafeStr_193 + _SafeStr_999);
                     _loc15_ = true;
                  }
                  else if(_loc21_._SafeStr_153 == _SafeCls_27._SafeStr_358 || (this._SafeStr_118.IsStandaloneClient() || this._SafeStr_118.mClientEnt && _loc21_._SafeStr_159._SafeStr_1405 == this._SafeStr_118.mClientEnt.mEntID))
                  {
                     this._SafeStr_139.left = Math.min(this._SafeStr_139.left,Math.max(0 - _SafeStr_900,this._SafeStr_223.left - _SafeStr_1024));
                     this._SafeStr_139.right = Math.max(this._SafeStr_139.right,Math.min(_loc21_._SafeStr_215 + _SafeStr_900,this._SafeStr_223.right + _SafeStr_1024));
                     this._SafeStr_139.top = Math.min(this._SafeStr_139.top,Math.max(0 - _SafeStr_999,this._SafeStr_223.top - _SafeStr_1024));
                     this._SafeStr_139.bottom = Math.max(this._SafeStr_139.bottom,Math.min(_loc21_._SafeStr_193 + _SafeStr_999,this._SafeStr_223.bottom + _SafeStr_1024));
                     _loc15_ = true;
                  }
               }
            }
         }
         if(_loc15_)
         {
            this._SafeStr_139.left = Math.max(this._SafeStr_139.left,this._SafeStr_188.left);
            this._SafeStr_139.right = Math.min(this._SafeStr_139.right,this._SafeStr_188.right);
            this._SafeStr_139.top = Math.max(this._SafeStr_139.top,this._SafeStr_188.top);
            this._SafeStr_139.bottom = Math.min(this._SafeStr_139.bottom,this._SafeStr_188.bottom);
            this._SafeStr_2142(_loc14_);
         }
         var _loc16_:Boolean = _loc11_ != this._SafeStr_1264 || _loc10_ != this._SafeStr_1255;
         if(_loc16_)
         {
            var _loc22_:Sprite = this._SafeStr_118._SafeStr_256._SafeStr_605;
            var _temp_33:* = _loc22_;
            var _loc34_:int;
            _loc22_.scaleY = _loc34_ = 1;
            _temp_33.scaleX = 1;
            var _temp_34:* = _loc22_;
            _loc22_.y = _loc34_ = 0;
            _temp_34.x = 1;
            var _loc23_:Rectangle = this._SafeStr_118.level._SafeStr_1212 ? this._SafeStr_118.level._SafeStr_1212.getBounds(this._SafeStr_118.main) : _loc22_.getBounds(this._SafeStr_118.main);
            _loc24_ = _loc23_.width / 0 < _loc14_ ? _loc10_ / 0 : _loc11_ / 0;
            _loc22_.scaleX = _loc24_;
            _loc22_.scaleY = _loc24_;
            _loc22_.x = 0 * _loc24_ + 2;
            _loc22_.y = 0 * _loc24_;
         }
         else
         {
            _loc26_ = this._SafeStr_139.x - this._SafeStr_223.x;
            _loc27_ = this._SafeStr_223.right - this._SafeStr_139.right;
            _loc28_ = this._SafeStr_139.y - this._SafeStr_223.y;
            _loc29_ = this._SafeStr_223.bottom - this._SafeStr_139.bottom;
            _loc30_ = _loc7_ > 1 ? _SafeStr_2136 : _SafeStr_2186;
            _loc31_ = _SafeStr_1537;
            _loc32_ = _SafeStr_1537 / _loc14_;
            var _loc33_:Boolean = false;
            if(_loc26_ >= -2 && _loc27_ >= -2 && _loc28_ >= -2 && _loc29_ >= -2)
            {
               this._SafeStr_824 += this._SafeStr_118._SafeStr_227;
               _loc33_ = true;
            }
            else
            {
               this._SafeStr_824 = 0;
            }
            if(Math.abs(_loc26_) > _loc31_ || Math.abs(_loc27_) > _loc31_ || Math.abs(_loc28_) > _loc32_ || Math.abs(_loc29_) > _loc32_)
            {
               if(_loc26_ > _loc31_)
               {
                  _loc25_ = _loc26_ * _loc30_;
                  if(_loc26_ - _loc25_ < _loc31_)
                  {
                     _loc25_ = _loc26_ - _loc31_;
                  }
                  this._SafeStr_139.left -= _loc25_;
               }
               if(_loc27_ > _loc31_)
               {
                  _loc25_ = _loc27_ * _loc30_;
                  if(_loc27_ - _loc25_ < _loc31_)
                  {
                     _loc25_ = _loc27_ - _loc31_;
                  }
                  this._SafeStr_139.right += _loc25_;
               }
               if(_loc28_ > _loc32_)
               {
                  _loc25_ = _loc28_ * _loc30_;
                  if(_loc28_ - _loc25_ < _loc32_)
                  {
                     _loc25_ = _loc28_ - _loc32_;
                  }
                  this._SafeStr_139.top -= _loc25_;
               }
               if(_loc29_ > _loc32_)
               {
                  _loc25_ = _loc29_ * _loc30_;
                  if(_loc29_ - _loc25_ < _loc32_)
                  {
                     _loc25_ = _loc29_ - _loc32_;
                  }
                  this._SafeStr_139.bottom += _loc25_;
               }
               this._SafeStr_2142(_loc14_);
            }
         }
         this._SafeStr_2275(this._SafeStr_223,this._SafeStr_139);
         var _loc17_:Number = _loc10_ / this._SafeStr_223.width;
         this._SafeStr_118._SafeStr_156.scaleX = _loc17_;
         this._SafeStr_118._SafeStr_156.scaleY = _loc17_;
         this._SafeStr_118._SafeStr_156.x = -(this._SafeStr_223.x * _loc17_);
         this._SafeStr_118._SafeStr_156.y = -(this._SafeStr_223.y * _loc17_);
         if(this._SafeStr_659 > 0)
         {
            this._SafeStr_838.x = Math.random() - 0.5;
            this._SafeStr_838.y = Math.random() - 0.5;
            this._SafeStr_838.normalize(this._SafeStr_659);
            this._SafeStr_118._SafeStr_156.x += this._SafeStr_838.x;
            this._SafeStr_118._SafeStr_156.y += this._SafeStr_838.y;
            this._SafeStr_659 -= this._SafeStr_118._SafeStr_227;
         }
         this._SafeStr_1542();
         if(this._SafeStr_428)
         {
            this._SafeStr_428.visible = this._SafeStr_118._SafeStr_1159.mbVisible;
         }
      }
      
      private function _SafeStr_2382(param1:Number, param2:Rectangle) : void
      {
         param2.left = Math.max(this._SafeStr_188.left,param2.left - (param1 - param2.width) / 2);
         if(param2.left + param1 > this._SafeStr_188.right)
         {
            param2.left = this._SafeStr_188.right - param1;
         }
         param2.right = param2.left + param1;
      }
      
      private function _SafeStr_2283(param1:Number, param2:Rectangle) : void
      {
         param2.top = Math.max(this._SafeStr_188.top,param2.top - (param1 - param2.height) / 2);
         if(param2.top + param1 > this._SafeStr_188.bottom)
         {
            param2.top = this._SafeStr_188.bottom - param1;
         }
         param2.bottom = param2.top + param1;
      }
      
      private function _SafeStr_2142(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this._SafeStr_139.width / this._SafeStr_139.height > param1)
         {
            _loc3_ = this._SafeStr_139.width / param1;
            if(_loc3_ <= this._SafeStr_188.height)
            {
               this._SafeStr_2283(_loc3_,this._SafeStr_139);
            }
            else
            {
               this._SafeStr_139.top = this._SafeStr_188.top;
               this._SafeStr_139.height = this._SafeStr_188.height;
               _loc2_ = this._SafeStr_139.height * param1;
               this._SafeStr_2382(_loc2_,this._SafeStr_139);
            }
         }
         else if(this._SafeStr_139.width / this._SafeStr_139.height < param1)
         {
            _loc2_ = this._SafeStr_139.height * param1;
            if(_loc2_ < this._SafeStr_188.width)
            {
               this._SafeStr_2382(_loc2_,this._SafeStr_139);
            }
            else
            {
               this._SafeStr_139.left = this._SafeStr_188.left;
               this._SafeStr_139.width = this._SafeStr_188.width;
               _loc3_ = this._SafeStr_139.width / param1;
               this._SafeStr_2283(_loc3_,this._SafeStr_139);
            }
         }
      }
      
      private function _SafeStr_2275(param1:Rectangle, param2:Rectangle) : void
      {
         param1.x = param2.x;
         param1.y = param2.y;
         param1.width = param2.width;
         param1.height = param2.height;
      }
      
      public function _SafeStr_706(param1:Number = 11) : void
      {
         if(param1 > this._SafeStr_659)
         {
            this._SafeStr_659 = param1;
         }
      }
      
      private function _SafeStr_3509(param1:_SafeCls_25, param2:_SafeCls_25) : Number
      {
         if(Boolean(param1._SafeStr_137 & _SafeCls_25.LOCAL) && Boolean(param2._SafeStr_137 & (_SafeCls_25.BOT | _SafeCls_25._SafeStr_413 | _SafeCls_25._SafeStr_194)))
         {
            return -1;
         }
         if(Boolean(param2._SafeStr_137 & _SafeCls_25.LOCAL) && Boolean(param1._SafeStr_137 & (_SafeCls_25.BOT | _SafeCls_25._SafeStr_413 | _SafeCls_25._SafeStr_194)))
         {
            return 1;
         }
         var _loc3_:_SafeCls_25 = this._SafeStr_118.mClientEnt;
         var _loc4_:Number = param1._SafeStr_121 - _loc3_._SafeStr_121;
         var _loc5_:Number = param1.mPhysPosY - _loc3_.mPhysPosY;
         var _loc6_:Number = param2._SafeStr_121 - _loc3_._SafeStr_121;
         var _loc7_:Number = param2.mPhysPosY - _loc3_.mPhysPosY;
         return _loc4_ * _loc4_ + _loc5_ * _loc5_ - (_loc6_ * _loc6_ + _loc7_ * _loc7_);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_27 = "_-C7"
 * @identifier _SafeCls_47 = "_-Km"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_121 = "_-Dk"
 * @identifier _SafeStr_137 = "_-3"
 * @identifier _SafeStr_139 = "_-8t"
 * @identifier _SafeStr_153 = "_-2k"
 * @identifier _SafeStr_156 = "_-gH"
 * @identifier _SafeStr_159 = "_-eE"
 * @identifier _SafeStr_188 = "_-qs"
 * @identifier _SafeStr_193 = "_-MG"
 * @identifier _SafeStr_194 = "_-rD"
 * @identifier _SafeStr_200 = "_-H-"
 * @identifier _SafeStr_215 = "_-Hm"
 * @identifier _SafeStr_223 = "_-8x"
 * @identifier _SafeStr_227 = "_-XT"
 * @identifier _SafeStr_253 = "_-BW"
 * @identifier _SafeStr_256 = "_-A1"
 * @identifier _SafeStr_270 = "_-ts"
 * @identifier _SafeStr_304 = "_-FZ"
 * @identifier _SafeStr_341 = "_-gT"
 * @identifier _SafeStr_356 = "_-mx"
 * @identifier _SafeStr_358 = "_-la"
 * @identifier _SafeStr_381 = "_-7W"
 * @identifier _SafeStr_387 = "_-nt"
 * @identifier _SafeStr_413 = "_-a3"
 * @identifier _SafeStr_421 = "_-jC"
 * @identifier _SafeStr_428 = "_-C5"
 * @identifier _SafeStr_429 = "_-Y4"
 * @identifier _SafeStr_535 = "_-rg"
 * @identifier _SafeStr_578 = "_-M6"
 * @identifier _SafeStr_605 = "_-7n"
 * @identifier _SafeStr_642 = "_-UR"
 * @identifier _SafeStr_659 = "_-2H"
 * @identifier _SafeStr_706 = "_-mP"
 * @identifier _SafeStr_709 = "_-bz"
 * @identifier _SafeStr_821 = "_-Ke"
 * @identifier _SafeStr_824 = "_-hl"
 * @identifier _SafeStr_834 = "_-8C"
 * @identifier _SafeStr_838 = "_-dW"
 * @identifier _SafeStr_895 = "_-RX"
 * @identifier _SafeStr_900 = "_-6J"
 * @identifier _SafeStr_999 = "_-qF"
 * @identifier _SafeStr_1019 = "_-cL"
 * @identifier _SafeStr_1024 = "_-FE"
 * @identifier _SafeStr_1083 = "_-c5"
 * @identifier _SafeStr_1159 = "_-h8"
 * @identifier _SafeStr_1212 = "_-mZ"
 * @identifier _SafeStr_1237 = "_-NY"
 * @identifier _SafeStr_1255 = "_-OB"
 * @identifier _SafeStr_1264 = "_-IK"
 * @identifier _SafeStr_1342 = "_-3D"
 * @identifier _SafeStr_1405 = "_-wK"
 * @identifier _SafeStr_1420 = "_-Dt"
 * @identifier _SafeStr_1449 = "_-NQ"
 * @identifier _SafeStr_1537 = "_-1r"
 * @identifier _SafeStr_1542 = "_-It"
 * @identifier _SafeStr_1575 = "_-sA"
 * @identifier _SafeStr_1716 = "_-Cf"
 * @identifier _SafeStr_1868 = "_-rb"
 * @identifier _SafeStr_1937 = "_-XM"
 * @identifier _SafeStr_2047 = "_-iI"
 * @identifier _SafeStr_2087 = "_-Sb"
 * @identifier _SafeStr_2136 = "_-Om"
 * @identifier _SafeStr_2142 = "_-qQ"
 * @identifier _SafeStr_2184 = "_-w-"
 * @identifier _SafeStr_2186 = "_-f7"
 * @identifier _SafeStr_2201 = "_-V8"
 * @identifier _SafeStr_2275 = "_-If"
 * @identifier _SafeStr_2283 = "_-A5"
 * @identifier _SafeStr_2382 = "_-3u"
 * @identifier _SafeStr_2412 = "_-m8"
 * @identifier _SafeStr_2657 = "_-Te"
 * @identifier _SafeStr_2729 = "_-c6"
 * @identifier _SafeStr_3198 = "_-Lk"
 * @identifier _SafeStr_3509 = "_-pf"
 * @identifier _SafeStr_3538 = "_-RM"
 */
