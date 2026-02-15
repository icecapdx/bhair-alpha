package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.StageQuality;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.utils.Dictionary;
   
   public class _SafeCls_34
   {
      
      public static const _SafeStr_477:uint = 1;
      
      public static const _SafeStr_286:uint = 2;
      
      public static const _SafeStr_303:uint = 4;
      
      public static const _SafeStr_2085:uint = 0;
      
      public static const _SafeStr_2111:uint = 1;
      
      public static const _SafeStr_2921:uint = 2;
      
      public static var _SafeStr_1173:String = "";
      
      private static const _SafeStr_2344:uint = 0;
      
      private static const _SafeStr_1210:uint = 500;
      
      private static const _SafeStr_1837:uint = 100;
      
      public var _SafeStr_118:Game;
      
      public var mMovieClip:MovieClip;
      
      public var _SafeStr_420:Dictionary = new Dictionary();
      
      public var _SafeStr_324:Number = 1;
      
      public var _SafeStr_499:uint = 1;
      
      public var _SafeStr_927:Number = 0;
      
      public var _SafeStr_1717:Boolean = false;
      
      private var _SafeStr_1891:Number = 0;
      
      private var _SafeStr_336:Number = 0;
      
      private var _SafeStr_963:uint = 0;
      
      private var _SafeStr_1845:uint = 0;
      
      private var _SafeStr_1298:Number = 0;
      
      public var mbCompleted:Boolean = false;
      
      public var mbVisible:Boolean = true;
      
      public var _SafeStr_398:_SafeCls_95 = null;
      
      public var _SafeStr_1702:Boolean = false;
      
      public var _SafeStr_422:MovieClip;
      
      public var _SafeStr_310:MovieClip;
      
      public var _SafeStr_840:MovieClip;
      
      public var _SafeStr_397:Bitmap;
      
      public var _SafeStr_935:String;
      
      private var _SafeStr_2016:Boolean = _SafeStr_1173 != "";
      
      private var _SafeStr_1060:_SafeCls_95 = null;
      
      private var _SafeStr_695:_SafeCls_95 = null;
      
      private var _SafeStr_668:_SafeCls_95 = null;
      
      private var _SafeStr_540:Function = null;
      
      private var _SafeStr_770:Function = null;
      
      private var _SafeStr_761:Function = null;
      
      public var _SafeStr_1482:Boolean = false;
      
      private var _SafeStr_1323:uint;
      
      private var _SafeStr_1207:Boolean = false;
      
      public var _SafeStr_742:uint;
      
      public var _SafeStr_1736:Boolean = false;
      
      private var _SafeStr_672:Number = 0;
      
      private var _SafeStr_865:uint;
      
      private var _SafeStr_914:uint;
      
      public function _SafeCls_34(param1:Game, param2:MovieClip)
      {
         super();
         this._SafeStr_118 = param1;
         if(!param2)
            param2 = new MovieClip();
         this.mMovieClip = param2;
         param2.gotoAndStop(1);
         this._SafeStr_3164();
         this._SafeStr_422 = this.mMovieClip.am_Tooltip;
         if(this._SafeStr_422)
         {
            this._SafeStr_422.visible = false;
            this._SafeStr_422.mouseEnabled = false;
            this._SafeStr_422.mouseChildren = false;
         }
         if(this.mMovieClip.am_CacheIcon)
         {
            this._SafeStr_1070();
         }
      }
      
      public function _SafeStr_1252() : void
      {
         var _loc1_:String = null;
         this._SafeStr_2059();
         this._SafeStr_1060 = null;
         this._SafeStr_695 = null;
         this._SafeStr_668 = null;
         this._SafeStr_540 = null;
         this._SafeStr_770 = null;
         this._SafeStr_761 = null;
         this._SafeStr_422 = null;
         this._SafeStr_310 = null;
         this._SafeStr_840 = null;
         if(this._SafeStr_397)
         {
            if(this._SafeStr_397.bitmapData)
            {
               this._SafeStr_397.bitmapData.dispose();
               this._SafeStr_397.bitmapData = null;
            }
            this._SafeStr_397 = null;
         }
         this.mMovieClip = null;
         for(_loc1_ in this._SafeStr_420)
         {
            delete this._SafeStr_420[_loc1_];
         }
         this._SafeStr_420 = null;
         this._SafeStr_398 = null;
         this._SafeStr_118 = null;
      }
      
      private function _SafeStr_3164() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:String = null;
         var _loc3_:FrameLabel = null;
         var _loc4_:_SafeCls_95 = null;
         var _loc5_:uint = uint(this.mMovieClip.totalFrames);
         var _loc6_:Array = this.mMovieClip.scenes.length > 0 ? this.mMovieClip.scenes[0].labels : [];
         var _loc7_:uint = _loc6_.length;
         var _loc8_:uint = 0;
         while(_loc8_ < _loc7_)
         {
            _loc3_ = _loc6_[_loc8_];
            _loc2_ = _loc3_.name;
            _loc1_ = uint(_loc3_.frame);
            if(!_loc2_.indexOf("PlaySound"))
            {
               _loc4_._SafeStr_2076 = _loc1_;
            }
            else
            {
               if(_loc4_)
               {
                  _loc4_._SafeStr_1257 = _loc1_ - 1;
               }
               _loc4_ = new _SafeCls_95(_loc2_,_loc1_,_loc5_);
               this._SafeStr_420[_loc2_] = _loc4_;
            }
            _loc8_++;
         }
         if(!_loc7_)
         {
            this._SafeStr_420["Ready"] = new _SafeCls_95("Ready",1,_loc5_);
         }
      }
      
      public function Hide(param1:Boolean = false) : void
      {
         if(!this._SafeStr_1736 || param1)
         {
            this.mMovieClip.visible = false;
            this.mbVisible = false;
            this.mbCompleted = true;
         }
         else if(!this._SafeStr_865)
         {
            this._SafeStr_672 = this.mMovieClip.alpha;
            this._SafeStr_865 = this._SafeStr_672 >= 1 ? this._SafeStr_118.mTimeThisTick : uint(this._SafeStr_118.mTimeThisTick - _SafeStr_1210);
            this._SafeStr_914 = 0;
         }
      }
      
      public function Show(param1:Boolean = false) : void
      {
         if(this._SafeStr_1736)
         {
            if(param1)
            {
               this.mMovieClip.alpha = 1;
               this._SafeStr_865 = 0;
            }
            else if(!this._SafeStr_914)
            {
               this._SafeStr_672 = this.mbVisible ? this.mMovieClip.alpha : 0;
               this._SafeStr_914 = this._SafeStr_118.mTimeThisTick;
               this._SafeStr_865 = 0;
            }
         }
         this.mMovieClip.visible = true;
         this.mbVisible = true;
         if(this._SafeStr_1717)
         {
            this.mbCompleted = false;
         }
      }
      
      public function _SafeStr_2001() : void
      {
         var _loc1_:DisplayObjectContainer = this.mMovieClip.parent;
         if(_loc1_)
         {
            _loc1_.removeChild(this.mMovieClip);
         }
         this.Hide();
      }
      
      public function _SafeStr_3655(param1:uint) : void
      {
         this.Show();
         if(param1 == _SafeStr_2085)
         {
            this._SafeStr_118._SafeStr_381.addChild(this.mMovieClip);
         }
         else if(param1 == _SafeStr_2111)
         {
            this._SafeStr_118._SafeStr_642.addChild(this.mMovieClip);
         }
         else
         {
            this._SafeStr_118._SafeStr_707.addChild(this.mMovieClip);
         }
      }
      
      public function _SafeStr_2743(param1:uint) : void
      {
         this.Show();
         this._SafeStr_118._SafeStr_381.addChildAt(this.mMovieClip,param1);
      }
      
      private function _SafeStr_2828(param1:MouseEvent) : void
      {
         if(this._SafeStr_695)
         {
            this.PlayAnimation(this._SafeStr_695.name);
         }
         if(this._SafeStr_770 != null)
         {
            if(this._SafeStr_1207)
            {
               this._SafeStr_770(param1,this._SafeStr_1323);
            }
            else
            {
               this._SafeStr_770(param1);
            }
         }
         if(this._SafeStr_422)
         {
            this._SafeStr_422.visible = true;
         }
         param1.stopPropagation();
      }
      
      private function _SafeStr_2605(param1:MouseEvent) : void
      {
         if(this._SafeStr_1060)
         {
            this.PlayAnimation(this._SafeStr_1060.name);
         }
         if(this._SafeStr_761 != null)
         {
            if(this._SafeStr_1207)
            {
               this._SafeStr_761(param1,this._SafeStr_1323);
            }
            else
            {
               this._SafeStr_761(param1);
            }
         }
         if(this._SafeStr_422)
         {
            this._SafeStr_422.visible = false;
         }
         param1.stopPropagation();
      }
      
      private function _SafeStr_2645(param1:MouseEvent) : void
      {
         if(this._SafeStr_695)
         {
            this.PlayAnimation(this._SafeStr_695.name);
         }
         param1.stopPropagation();
      }
      
      private function _SafeStr_1466(param1:MouseEvent) : void
      {
         if(this._SafeStr_668)
         {
            this.PlayAnimation(this._SafeStr_668.name);
         }
         if(this._SafeStr_2016)
         {
            _SafeCls_13._SafeStr_622(_SafeStr_1173);
         }
         if(!this._SafeStr_1482 && this._SafeStr_540 != null)
         {
            if(this._SafeStr_1207)
            {
               this._SafeStr_540(param1,this._SafeStr_1323);
            }
            else
            {
               this._SafeStr_540(param1);
            }
         }
         param1.stopPropagation();
      }
      
      private function _SafeStr_1494(param1:MouseEvent) : void
      {
         if(this._SafeStr_540 != null)
         {
            if(this._SafeStr_1207)
            {
               this._SafeStr_540(param1,this._SafeStr_1323);
            }
            else
            {
               this._SafeStr_540(param1);
            }
         }
         param1.stopPropagation();
      }
      
      private function _SafeStr_2059() : void
      {
         if(this._SafeStr_422)
         {
            this._SafeStr_422.visible = false;
         }
         if(Boolean(this._SafeStr_668) || this._SafeStr_540 != null)
         {
            this.mMovieClip.removeEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_1466);
            this.mMovieClip.removeEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this._SafeStr_1466);
         }
         if(this._SafeStr_695 || this._SafeStr_770 != null || this._SafeStr_761 != null)
         {
            this.mMovieClip.removeEventListener(MouseEvent.ROLL_OVER,this._SafeStr_2828);
            this.mMovieClip.removeEventListener(MouseEvent.ROLL_OUT,this._SafeStr_2605);
         }
         if(this._SafeStr_668)
         {
            this.mMovieClip.removeEventListener(MouseEvent.MOUSE_UP,this._SafeStr_2645);
         }
         if(this._SafeStr_1482)
         {
            this.mMovieClip.removeEventListener(MouseEvent.CLICK,this._SafeStr_1494);
            this.mMovieClip.removeEventListener(MouseEvent.RIGHT_CLICK,this._SafeStr_1494);
         }
      }
      
      private function _SafeStr_2471() : void
      {
         if(Boolean(this._SafeStr_668) || this._SafeStr_540 != null)
         {
            this.mMovieClip.addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_1466);
            this.mMovieClip.addEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this._SafeStr_1466);
         }
         if(this._SafeStr_695 || this._SafeStr_770 != null || this._SafeStr_761 != null)
         {
            this.mMovieClip.addEventListener(MouseEvent.ROLL_OVER,this._SafeStr_2828);
            this.mMovieClip.addEventListener(MouseEvent.ROLL_OUT,this._SafeStr_2605);
         }
         if(this._SafeStr_668)
         {
            this.mMovieClip.addEventListener(MouseEvent.MOUSE_UP,this._SafeStr_2645);
         }
         if(this._SafeStr_1482)
         {
            this.mMovieClip.addEventListener(MouseEvent.CLICK,this._SafeStr_1494);
            this.mMovieClip.addEventListener(MouseEvent.RIGHT_CLICK,this._SafeStr_1494);
         }
      }
      
      public function EnableButton() : void
      {
         if(this._SafeStr_1702)
         {
            if(this._SafeStr_1060)
            {
               this.PlayAnimation(this._SafeStr_1060.name);
            }
            this._SafeStr_2471();
            this._SafeStr_1702 = false;
         }
      }
      
      public function DisableButton(param1:String) : void
      {
         if(!this._SafeStr_1702)
         {
            this._SafeStr_2059();
            this.PlayAnimation(param1);
            this._SafeStr_1702 = true;
         }
      }
      
      public function _SafeStr_1744(param1:Function, param2:Function) : void
      {
         this._SafeStr_770 = param1;
         this._SafeStr_761 = param2;
      }
      
      public function _SafeStr_2438(param1:uint) : void
      {
         this._SafeStr_1207 = true;
         this._SafeStr_1323 = param1;
      }
      
      public function _SafeStr_3663() : void
      {
         this._SafeStr_2016 = false;
      }
      
      public function _SafeStr_1244(param1:String, param2:String, param3:String, param4:Function, param5:Boolean = true) : void
      {
         this._SafeStr_2059();
         this._SafeStr_1060 = this._SafeStr_420[param1];
         this._SafeStr_695 = this._SafeStr_420[param2];
         this._SafeStr_668 = this._SafeStr_420[param3];
         this._SafeStr_540 = param4;
         this._SafeStr_1482 = !param5;
         this.mMovieClip.mouseEnabled = true;
         this.mMovieClip.mouseChildren = false;
         this._SafeStr_2471();
      }
      
      public function _SafeStr_1070() : void
      {
         if(!this._SafeStr_310)
         {
            this._SafeStr_310 = this.mMovieClip.am_CacheIcon;
            if(!this._SafeStr_310)
            {
               return;
            }
            this._SafeStr_840 = new MovieClip();
            while(this._SafeStr_310.numChildren)
            {
               this._SafeStr_840.addChild(this._SafeStr_310.removeChildAt(0));
            }
            this._SafeStr_397 = new Bitmap(null,PixelSnapping.ALWAYS);
         }
         while(this._SafeStr_310.numChildren)
         {
            this._SafeStr_310.removeChildAt(0);
         }
         this._SafeStr_310.addChild(this._SafeStr_840);
         if(this._SafeStr_397.bitmapData)
         {
            this._SafeStr_397.bitmapData.dispose();
         }
         var _loc1_:Number = this._SafeStr_118.main._SafeStr_429 * this.mMovieClip.scaleX;
         var _loc2_:uint = Math.ceil(this._SafeStr_310.width * _loc1_);
         var _loc3_:uint = Math.ceil(this._SafeStr_310.height * _loc1_);
         if(!_loc3_ || !_loc2_)
         {
            return;
         }
         var _loc4_:BitmapData = new BitmapData(_loc2_,_loc3_,true,0);
         _loc4_.drawWithQuality(this._SafeStr_310,new Matrix(_loc1_,0,0,_loc1_),null,null,null,false,StageQuality.HIGH);
         this._SafeStr_397.bitmapData = _loc4_;
         var _loc5_:Number = 1 / _loc1_;
         this._SafeStr_397.scaleX = _loc5_;
         this._SafeStr_397.scaleY = _loc5_;
         this._SafeStr_310.removeChild(this._SafeStr_840);
         this._SafeStr_310.addChild(this._SafeStr_397);
      }
      
      public function ClearAnimation() : void
      {
         this._SafeStr_324 = 1;
         this.mbCompleted = true;
         this._SafeStr_398 = null;
         this.mMovieClip.gotoAndStop(this._SafeStr_324);
      }
      
      public function PlayAnimation(param1:String, param2:uint = 0) : Boolean
      {
         var _loc3_:_SafeCls_95 = this._SafeStr_420[param1];
         if(!_loc3_)
         {
            return false;
         }
         if(_loc3_ != this._SafeStr_398 || this.mbCompleted)
         {
            this._SafeStr_324 = param2 & _SafeStr_286 ? _loc3_._SafeStr_1257 : _loc3_._SafeStr_1126;
            this._SafeStr_499 = _loc3_._SafeStr_1257;
            this._SafeStr_398 = _loc3_;
         }
         this.mbCompleted = false;
         this._SafeStr_1717 = false;
         this._SafeStr_742 = param2;
         this._SafeStr_935 = null;
         return true;
      }
      
      public function _SafeStr_3718(param1:String, param2:String, param3:uint = 0) : void
      {
         var _loc4_:Boolean = this.PlayAnimation(param1,param3);
         if((_loc4_) && Boolean(this._SafeStr_398._SafeStr_2076))
         {
            this._SafeStr_935 = param2;
         }
      }
      
      public function _SafeStr_3220(param1:String, param2:Number, param3:Number = 0) : void
      {
         var _loc5_:Number = NaN;
         var _loc4_:_SafeCls_95 = this._SafeStr_420[param1];
         if(_loc4_)
         {
            this._SafeStr_927 = 0;
            this._SafeStr_1891 = 0;
            this._SafeStr_336 = 0;
            this._SafeStr_963 = 0;
            this._SafeStr_1845 = uint(param3 * 1000);
            this.mbCompleted = false;
            this._SafeStr_1717 = true;
            this._SafeStr_742 = 0;
            this._SafeStr_935 = null;
            this._SafeStr_398 = this._SafeStr_420[param1];
            this._SafeStr_324 = this._SafeStr_398._SafeStr_1126;
            this._SafeStr_499 = this._SafeStr_398._SafeStr_1257;
            if(!param2)
            {
               this._SafeStr_1298 = 0;
            }
            else
            {
               _loc5_ = this._SafeStr_499 - this._SafeStr_324 + 1;
               this._SafeStr_1298 = _loc5_ / (param2 * Game._SafeStr_354);
            }
         }
      }
      
      public function _SafeStr_3435() : void
      {
         this._SafeStr_1736 = true;
      }
      
      public function _SafeStr_1582() : void
      {
         if(this._SafeStr_1736)
         {
            this._SafeStr_3084();
         }
         if(!this.mbCompleted && Boolean(this._SafeStr_398))
         {
            if(this._SafeStr_1717)
            {
               this._SafeStr_3555();
            }
            else
            {
               this._SafeStr_3336();
            }
         }
      }
      
      private function _SafeStr_3555() : void
      {
         var _loc6_:uint = 0;
         if(this._SafeStr_1845)
         {
            _loc6_ = this._SafeStr_118.mTimeThisTick;
            if(!this._SafeStr_963 && this._SafeStr_1891 != this._SafeStr_927)
            {
               this._SafeStr_963 = _loc6_ + this._SafeStr_1845;
            }
            this._SafeStr_1891 = this._SafeStr_927;
            if(!this._SafeStr_963 || _loc6_ < this._SafeStr_963)
            {
               return;
            }
         }
         var _loc1_:int = int(this._SafeStr_398._SafeStr_1126);
         var _loc2_:int = this._SafeStr_499 - _loc1_;
         var _loc3_:Number = this._SafeStr_927 > 1 ? 1 : (this._SafeStr_927 < 0 ? 0 : this._SafeStr_927);
         var _loc4_:int = _loc1_ + Math.round(_loc2_ * _loc3_);
         if(!this._SafeStr_336 || !this._SafeStr_1298)
         {
            this._SafeStr_336 = _loc4_;
         }
         else if(_loc4_ < this._SafeStr_336)
         {
            this._SafeStr_336 -= this._SafeStr_118._SafeStr_227 * this._SafeStr_1298;
            if(this._SafeStr_336 < _loc4_)
            {
               this._SafeStr_336 = _loc4_;
            }
         }
         else if(_loc4_ > this._SafeStr_336)
         {
            this._SafeStr_336 += this._SafeStr_118._SafeStr_227 * this._SafeStr_1298;
            if(this._SafeStr_336 > _loc4_)
            {
               this._SafeStr_336 = _loc4_;
            }
         }
         else
         {
            this._SafeStr_963 = 0;
         }
         var _loc5_:int = this._SafeStr_336;
         if(_loc5_ != this.mMovieClip.currentFrame)
         {
            this.mMovieClip.gotoAndStop(_loc5_);
         }
      }
      
      private function _SafeStr_3336() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:int = int(this._SafeStr_398._SafeStr_1126);
         if(this._SafeStr_742 & _SafeStr_286)
         {
            _loc1_ = Math.ceil(this._SafeStr_324);
            if(_loc1_ >= _loc2_)
            {
               this._SafeStr_324 -= this._SafeStr_118._SafeStr_227;
            }
            else if(this._SafeStr_742 & _SafeStr_477)
            {
               _loc1_ = int(this._SafeStr_499);
               this._SafeStr_324 = this._SafeStr_499;
            }
            else
            {
               _loc1_ = _loc2_;
               this.mbCompleted = true;
               if(this._SafeStr_742 & _SafeStr_303)
               {
                  this.Hide();
               }
            }
         }
         else
         {
            _loc1_ = this._SafeStr_324;
            if(_loc1_ <= this._SafeStr_499)
            {
               this._SafeStr_324 += this._SafeStr_118._SafeStr_227;
            }
            else if(this._SafeStr_742 & _SafeStr_477)
            {
               _loc1_ = _loc2_;
               this._SafeStr_324 = _loc2_;
            }
            else
            {
               _loc1_ = int(this._SafeStr_499);
               this.mbCompleted = true;
               if(this._SafeStr_742 & _SafeStr_303)
               {
                  this.Hide();
               }
            }
         }
         var _loc3_:int = this.mMovieClip.currentFrame;
         if(_loc1_ != _loc3_)
         {
            this.mMovieClip.gotoAndStop(_loc1_);
            if(this._SafeStr_935)
            {
               _loc4_ = int(this._SafeStr_398._SafeStr_2076);
               if(this._SafeStr_742 & _SafeStr_286)
               {
                  if(_loc4_ <= _loc3_ && _loc4_ > _loc1_)
                  {
                     _SafeCls_13._SafeStr_622(this._SafeStr_935);
                  }
               }
               else if(_loc4_ >= _loc3_ && _loc4_ < _loc1_)
               {
                  _SafeCls_13._SafeStr_622(this._SafeStr_935);
               }
            }
         }
      }
      
      private function _SafeStr_3084() : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:uint = 0;
         var _loc1_:uint = this._SafeStr_118.mTimeThisTick;
         if(this._SafeStr_865)
         {
            _loc5_ = _loc1_ - this._SafeStr_865;
            if(this._SafeStr_672 == 1 && _loc5_ < _SafeStr_1210)
            {
               _loc3_ = 1;
            }
            else
            {
               _loc4_ = this._SafeStr_672;
               _loc2_ = _loc4_ * _SafeStr_1837;
               _loc3_ = _loc2_ ? this._SafeStr_672 - (_loc5_ - _SafeStr_1210) / _loc2_ : 0;
               if(_loc3_ <= 0)
               {
                  this._SafeStr_865 = 0;
                  _loc3_ = 0;
                  this.mMovieClip.visible = false;
                  this.mbVisible = false;
                  this.mbCompleted = true;
               }
            }
            this.mMovieClip.alpha = _loc3_;
         }
         else if(this._SafeStr_914)
         {
            _loc4_ = 1 - this._SafeStr_672;
            _loc2_ = _loc4_ * _SafeStr_2344;
            _loc3_ = _loc2_ ? this._SafeStr_672 + (this._SafeStr_118.mTimeThisTick - this._SafeStr_914) / _loc2_ : 1;
            if(_loc3_ >= 1)
            {
               this._SafeStr_914 = 0;
               _loc3_ = 1;
            }
            this.mMovieClip.alpha = _loc3_;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_13 = "_-Mg"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_95 = "_-bl"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_227 = "_-XT"
 * @identifier _SafeStr_286 = "_-kZ"
 * @identifier _SafeStr_303 = "_-rS"
 * @identifier _SafeStr_310 = "_-1j"
 * @identifier _SafeStr_324 = "_-Fg"
 * @identifier _SafeStr_336 = "_-N2"
 * @identifier _SafeStr_354 = "_-4x"
 * @identifier _SafeStr_381 = "_-7W"
 * @identifier _SafeStr_397 = "_-wj"
 * @identifier _SafeStr_398 = "_-Wz"
 * @identifier _SafeStr_420 = "_-rw"
 * @identifier _SafeStr_422 = "_-RO"
 * @identifier _SafeStr_429 = "_-Y4"
 * @identifier _SafeStr_477 = "_-jO"
 * @identifier _SafeStr_499 = "_-kS"
 * @identifier _SafeStr_540 = "_-lJ"
 * @identifier _SafeStr_622 = "_-i2"
 * @identifier _SafeStr_642 = "_-UR"
 * @identifier _SafeStr_668 = "_-H1"
 * @identifier _SafeStr_672 = "_-sB"
 * @identifier _SafeStr_695 = "_-np"
 * @identifier _SafeStr_707 = "_-nM"
 * @identifier _SafeStr_742 = "_-6m"
 * @identifier _SafeStr_761 = "_-20"
 * @identifier _SafeStr_770 = "_-Ot"
 * @identifier _SafeStr_840 = "_-iO"
 * @identifier _SafeStr_865 = "_-m6"
 * @identifier _SafeStr_914 = "_-Ig"
 * @identifier _SafeStr_927 = "_-VP"
 * @identifier _SafeStr_935 = "_-c8"
 * @identifier _SafeStr_963 = "_-VY"
 * @identifier _SafeStr_1060 = "_-dN"
 * @identifier _SafeStr_1070 = "_-HN"
 * @identifier _SafeStr_1126 = "_-IY"
 * @identifier _SafeStr_1173 = "_-mF"
 * @identifier _SafeStr_1207 = "_-3t"
 * @identifier _SafeStr_1210 = "_-3V"
 * @identifier _SafeStr_1244 = "_-hU"
 * @identifier _SafeStr_1252 = "_-MV"
 * @identifier _SafeStr_1257 = "_-pT"
 * @identifier _SafeStr_1298 = "_-sO"
 * @identifier _SafeStr_1323 = "_-Xl"
 * @identifier _SafeStr_1466 = "_-qt"
 * @identifier _SafeStr_1482 = "_-Fz"
 * @identifier _SafeStr_1494 = "_-Ey"
 * @identifier _SafeStr_1582 = "_-dc"
 * @identifier _SafeStr_1702 = "_-Gc"
 * @identifier _SafeStr_1717 = "_-tH"
 * @identifier _SafeStr_1736 = "var"
 * @identifier _SafeStr_1744 = "_-Zi"
 * @identifier _SafeStr_1837 = "_-eq"
 * @identifier _SafeStr_1845 = "_-wQ"
 * @identifier _SafeStr_1891 = "_-7G"
 * @identifier _SafeStr_2001 = "_-R2"
 * @identifier _SafeStr_2016 = "_-Df"
 * @identifier _SafeStr_2059 = "_-MT"
 * @identifier _SafeStr_2076 = "_-Y3"
 * @identifier _SafeStr_2085 = "_-Fv"
 * @identifier _SafeStr_2111 = "_-fL"
 * @identifier _SafeStr_2344 = "_-sM"
 * @identifier _SafeStr_2438 = "_-CL"
 * @identifier _SafeStr_2471 = "_-Hi"
 * @identifier _SafeStr_2605 = "_-kg"
 * @identifier _SafeStr_2645 = "_-q2"
 * @identifier _SafeStr_2743 = "_-iF"
 * @identifier _SafeStr_2828 = "_-Bn"
 * @identifier _SafeStr_2921 = "_-NW"
 * @identifier _SafeStr_3084 = "_-35"
 * @identifier _SafeStr_3164 = "_-A4"
 * @identifier _SafeStr_3220 = "_-DT"
 * @identifier _SafeStr_3336 = "_-Nk"
 * @identifier _SafeStr_3435 = "_-QI"
 * @identifier _SafeStr_3555 = "_-DK"
 * @identifier _SafeStr_3655 = "_-Ee"
 * @identifier _SafeStr_3663 = "_-V-"
 * @identifier _SafeStr_3718 = "_-SO"
 */
