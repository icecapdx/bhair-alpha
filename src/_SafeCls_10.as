package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.GraphicsGradientFill;
   import flash.display.GraphicsSolidFill;
   import flash.display.IGraphicsData;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Transform;
   import flash.utils.Dictionary;
   
   public class _SafeCls_10
   {
      
      public static var _SafeStr_1725:_SafeCls_5;
      
      public static var _SafeStr_1750:Dictionary;
      
      public static var _SafeStr_1292:uint;
      
      private static const _SafeStr_2310:ColorMatrixFilter = new ColorMatrixFilter([0.8,0.5,0.5,0,0,0.5,0.8,0.5,0,0,0.5,0.5,1.1,0,0,0,0,0,0.75,0]);
      
      private static const _SafeStr_2258:ColorMatrixFilter = new ColorMatrixFilter([0.21602000296115875,0.4265799820423126,0.05739999935030937,0,33.04999923706055,0.21602000296115875,0.4265799820423126,0.05739999935030937,0,33.04999923706055,0.21602000296115875,0.4265799820423126,0.05739999935030937,0,33.04999923706055,0,0,0,1,0]);
      
      private static const _SafeStr_1273:Bitmap = new Bitmap();
      
      private static const _SafeStr_1353:Dictionary = new Dictionary();
      
      private static const _SafeStr_1417:Dictionary = new Dictionary();
      
      private static var _SafeStr_1893:Sprite = new Sprite();
      
      private static var _SafeStr_694:Sprite = new Sprite();
      
      private static var _SafeStr_431:Rectangle = new Rectangle();
      
      private static var _SafeStr_2477:Rectangle = new Rectangle();
      
      private static const _SafeStr_2062:Number = 1.2;
      
      private static const _SafeStr_2915:Point = new Point(0,0);
      
      private static const _SafeStr_980:Point = new Point(0,0);
      
      public static var _SafeStr_1152:Sprite = new Sprite();
      
      private static var _SafeStr_1387:MovieClip = new MovieClip();
      
      private static var _SafeStr_1778:Dictionary = new Dictionary();
      
      private static var _SafeStr_2770:Sprite = null;
      
      private static var _SafeStr_2949:Number = 0;
      
      private static var _SafeStr_2609:Number = 0;
      
      private static var _SafeStr_2888:Number = 0.1;
      
      private static var _SafeStr_1295:Dictionary = new Dictionary();
      
      private static var _SafeStr_377:Vector.<_SafeCls_10> = new Vector.<_SafeCls_10>();
      
      private static var _SafeStr_515:Dictionary = new Dictionary();
      
      public static var _SafeStr_1100:Boolean = false;
      
      public static var _SafeStr_352:int = 0;
      
      public static var _SafeStr_715:int = 0;
      
      private static var _SafeStr_731:BitmapData = null;
      
      private static var _SafeStr_425:BitmapData = null;
      
      private static var s_Common128Canvas:BitmapData = null;
      
      private static var s_Common256Canvas:BitmapData = null;
      
      private static var s_Common384Canvas:BitmapData = null;
      
      private static var s_Common512Canvas:BitmapData = null;
      
      private static var _SafeStr_1619:int = 530;
      
      private static var _SafeStr_1515:int = 590;
      
      private static var _SafeStr_1243:int = 0;
      
      internal static var _SafeStr_2760:uint = 0;
      
      internal static var _SafeStr_1274:uint = 0;
      
      internal static const _SafeStr_912:uint = 1000;
      
      internal static const _SafeStr_1284:uint = 262144;
      
      internal static const _SafeStr_2642:int = 30 * _SafeStr_912;
      
      internal static const _SafeStr_2325:int = 60 * _SafeStr_912;
      
      internal static const _SafeStr_1841:int = 100 * _SafeStr_1284;
      
      internal static const _SafeStr_2024:int = 200 * _SafeStr_1284;
      
      internal static const _SafeStr_2213:int = 400 * _SafeStr_1284;
      
      internal static const _SafeStr_2030:uint = 419;
      
      internal static const _SafeStr_2832:int = 100 * _SafeStr_912;
      
      internal static const _SafeStr_2805:int = 120 * _SafeStr_912;
      
      internal var _SafeStr_166:GfxType;
      
      internal var _SafeStr_1208:Array;
      
      internal var _SafeStr_157:_SafeCls_33;
      
      internal var _SafeStr_1185:Vector.<_SafeCls_29>;
      
      internal var _SafeStr_896:Vector.<uint>;
      
      internal var _SafeStr_1621:Dictionary;
      
      internal var _SafeStr_826:Boolean = false;
      
      internal var _SafeStr_1419:uint = 0;
      
      internal var _SafeStr_1068:Number = 1;
      
      internal var _SafeStr_871:int = 0;
      
      internal var _SafeStr_1065:int = 0;
      
      internal var _SafeStr_1162:Boolean;
      
      internal var _SafeStr_3764:int;
      
      public function _SafeCls_10(param1:GfxType)
      {
         var _loc6_:* = 0;
         var _loc7_:uint = 0;
         var _loc8_:ColorSwap = null;
         this._SafeStr_1208 = new Array();
         super();
         this._SafeStr_166 = param1;
         var _loc2_:String = this._SafeStr_166._SafeStr_228;
         var _loc3_:String = this._SafeStr_166._SafeStr_180;
         this._SafeStr_157 = _SafeCls_30._SafeStr_2522(_loc3_,_loc2_,this._SafeStr_166._SafeStr_802);
         if(!this._SafeStr_157)
         {
            this._SafeStr_157 = _SafeCls_30._SafeStr_1812(_loc3_,_loc2_,_loc3_,this._SafeStr_166._SafeStr_802);
         }
         this._SafeStr_1185 = new Vector.<_SafeCls_29>(this._SafeStr_157._SafeStr_1748,true);
         this._SafeStr_1162 = !_loc3_.indexOf("a_Cape");
         this._SafeStr_896 = this._SafeStr_3311();
         this._SafeStr_1621 = new Dictionary();
         var _loc4_:Vector.<ColorSwap> = this._SafeStr_166._SafeStr_254;
         var _loc5_:int = int(this._SafeStr_166._SafeStr_254.length);
         _loc6_ = _loc5_ - 1;
         while(_loc6_ >= 0)
         {
            _loc8_ = this._SafeStr_166._SafeStr_254[_loc6_];
            _loc7_ = uint(_loc8_._SafeStr_1223 | _loc8_._SafeStr_966 << 24);
            this._SafeStr_1621[_loc7_] = _loc8_._SafeStr_1176;
            _loc6_--;
         }
         this._SafeStr_826 = !_loc2_.indexOf("Animation_") && !_SafeStr_1353[_loc2_];
         if(_SafeStr_1417[_loc3_])
         {
            this._SafeStr_826 = false;
         }
         if(!_loc3_.indexOf("a_LightningStorm") || !_loc3_.indexOf("a_DeathMarkBone"))
         {
            this._SafeStr_166._SafeStr_639 = 0;
            this._SafeStr_826 = true;
         }
         if(!_loc3_.indexOf("a_Animation_EB_"))
         {
            this._SafeStr_166._SafeStr_639 = 0;
            this._SafeStr_826 = true;
         }
         if(this._SafeStr_1162)
         {
            this._SafeStr_826 = false;
         }
         this._SafeStr_1068 = this._SafeStr_166._SafeStr_639;
         if(!this._SafeStr_826)
         {
            this._SafeStr_1068 *= 10;
         }
      }
      
      public static function _SafeStr_873(param1:Dictionary, param2:Array, param3:Array) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         _SafeStr_1750 = param1;
         _SafeStr_1292 = param1["Cape"];
         for each(_loc4_ in param2)
         {
            _SafeStr_1353[_loc4_] = true;
         }
         for each(_loc5_ in param3)
         {
            _SafeStr_1417[_loc5_] = true;
         }
      }
      
      public static function _SafeStr_1946(param1:Vector.<uint>, param2:Array, param3:int) : Vector.<uint>
      {
         var _loc7_:uint = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Vector.<uint> = new Vector.<uint>();
         var _loc5_:int = int(param2.length);
         var _loc6_:int = param1.length / 3;
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc7_ = uint(param2[_loc9_]);
            _loc10_ = 0;
            while(_loc10_ < _loc6_)
            {
               _loc8_ = _loc10_ * 3;
               if(_loc7_ == param1[_loc8_] && (param1[_loc8_ + 2] == 0 || param1[_loc8_ + 2] == param3))
               {
                  _loc4_.push(param1[_loc8_]);
                  _loc4_.push(param1[_loc8_ + 1]);
                  _loc4_.push(param1[_loc8_ + 2]);
               }
               _loc10_++;
            }
            _loc9_++;
         }
         return _loc4_;
      }
      
      public static function _SafeStr_2725(param1:DisplayObject) : Bitmap
      {
         var _loc8_:BitmapData = null;
         if(!param1.parent)
         {
            _SafeStr_694.addChild(param1);
         }
         var _loc2_:Rectangle = param1.getBounds(param1.parent);
         var _loc3_:Number = Math.floor(_loc2_.x);
         var _loc4_:Number = Math.floor(_loc2_.y);
         var _loc5_:Number = int(_loc2_.width + (_loc2_.x - _loc3_) + 2);
         var _loc6_:Number = int(_loc2_.height + (_loc2_.y - _loc4_) + 2);
         var _loc7_:Bitmap = new Bitmap(null,PixelSnapping.ALWAYS,true);
         _loc7_.x = _loc3_;
         _loc7_.y = _loc4_;
         if(_loc5_ < 128 && _loc6_ < 128)
         {
            _loc8_ = _SafeCls_10.s_Common128Canvas;
         }
         else if(_loc5_ < 256 && _loc6_ < 256)
         {
            _loc8_ = _SafeCls_10.s_Common256Canvas;
         }
         else if(_loc5_ < 384 && _loc6_ < 384)
         {
            _loc8_ = _SafeCls_10.s_Common384Canvas;
         }
         else if(_loc5_ < 512 && _loc6_ < 512)
         {
            _loc8_ = _SafeCls_10.s_Common512Canvas;
         }
         else if(_loc5_ < _SafeCls_10._SafeStr_425.width && _loc6_ < _SafeCls_10._SafeStr_425.height)
         {
            _loc8_ = _SafeCls_10._SafeStr_425;
         }
         else
         {
            _loc8_ = _SafeCls_10._SafeStr_731;
         }
         var _loc9_:Matrix = param1.transform.matrix;
         _loc9_.tx -= _loc7_.x;
         _loc9_.ty -= _loc7_.y;
         _loc8_.drawWithQuality(param1,_loc9_,param1.transform.colorTransform,null,null,true,StageQuality.HIGH);
         _SafeStr_431.x = 0;
         _SafeStr_431.y = 0;
         _SafeStr_431.height = _loc6_;
         _SafeStr_431.width = _loc5_;
         var _loc10_:Rectangle = _loc8_.getColorBoundsRect(4278190080,0,false);
         var _loc11_:Number = _loc10_.width > 1 ? _loc10_.width : 1;
         var _loc12_:Number = _loc10_.height > 1 ? _loc10_.height : 1;
         _loc7_.bitmapData = new BitmapData(_loc11_,_loc12_,true,0);
         _loc7_.bitmapData.copyPixels(_loc8_,_loc10_,_SafeStr_980,null,null,false);
         _loc7_.x += _loc10_.x;
         _loc7_.y += _loc10_.y;
         _loc8_.fillRect(_SafeStr_431,0);
         if(_SafeStr_694.numChildren)
         {
            _SafeStr_694.removeChild(param1);
         }
         return _loc7_;
      }
      
      public static function _SafeStr_952(param1:Sprite, param2:Number, param3:uint, param4:Dictionary, param5:uint, param6:Boolean = false) : Bitmap
      {
         var _loc14_:BitmapData = null;
         var _loc15_:BitmapData = null;
         var _loc17_:uint = 0;
         var _loc18_:GraphicsGradientFill = null;
         var _loc19_:GraphicsSolidFill = null;
         var _loc20_:uint = 0;
         var _loc21_:int = 0;
         var _loc22_:Vector.<IGraphicsData> = null;
         var _loc23_:int = 0;
         var _loc24_:Rectangle = null;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Matrix = null;
         if(!param1.parent)
         {
            _SafeStr_694.addChild(param1);
         }
         param1.scaleX *= param2;
         param1.scaleY *= param2;
         var _loc7_:Rectangle = param1.getBounds(param1.parent);
         if(param2 > _loc7_.width)
         {
            _loc7_.width = param2;
         }
         if(param2 > _loc7_.height)
         {
            _loc7_.height = param2;
         }
         var _loc8_:Number = Math.floor(_loc7_.x);
         var _loc9_:Number = Math.floor(_loc7_.y);
         var _loc10_:Number = _loc7_.width + (_loc7_.x - _loc8_) + param2 + 2;
         var _loc11_:Number = _loc7_.height + (_loc7_.y - _loc9_) + param2 + 2;
         var _loc12_:Matrix = param1.transform.matrix;
         _loc12_.tx -= _loc8_;
         _loc12_.ty -= _loc9_;
         var _loc13_:ColorTransform = param3 == 0 ? null : new ColorTransform(((param3 & 0xFF0000) >> 16) / 256,((param3 & 0xFF00) >> 8) / 256,(param3 & 0xFF) / 256,1,0,0,0,0);
         if(param6)
         {
            if(_loc10_ < 128 && _loc11_ < 128)
            {
               _loc14_ = _SafeCls_10.s_Common128Canvas;
            }
            else if(_loc10_ < 256 && _loc11_ < 256)
            {
               _loc14_ = _SafeCls_10.s_Common256Canvas;
            }
            else if(_loc10_ < 384 && _loc11_ < 384)
            {
               _loc14_ = _SafeCls_10.s_Common384Canvas;
            }
            else if(_loc10_ < 512 && _loc11_ < 512)
            {
               _loc14_ = _SafeCls_10.s_Common512Canvas;
            }
            else if(_loc10_ < _SafeCls_10._SafeStr_425.width && _loc11_ < _SafeCls_10._SafeStr_425.height)
            {
               _loc14_ = _SafeCls_10._SafeStr_425;
            }
            else
            {
               _loc14_ = _SafeCls_10._SafeStr_731;
            }
         }
         else
         {
            _loc14_ = new BitmapData(_loc10_,_loc11_,true,0);
         }
         if(param4)
         {
            _loc21_ = 0;
            _loc22_ = param1.graphics.readGraphicsData(true);
            _loc23_ = int(_loc22_.length);
            _loc21_ = 0;
            while(_loc21_ < _loc23_)
            {
               _loc19_ = _loc22_[_loc21_] as GraphicsSolidFill;
               if(_loc19_)
               {
                  if(param5)
                  {
                     _loc20_ = uint(param4[_loc19_.color | param5 << 24]);
                  }
                  if(!param5 || !_loc20_)
                  {
                     _loc20_ = uint(param4[_loc19_.color]);
                  }
                  if(_loc20_)
                  {
                     _loc19_.color = _loc20_;
                  }
               }
               else
               {
                  _loc18_ = _loc22_[_loc21_] as GraphicsGradientFill;
                  if(_loc18_)
                  {
                     _loc17_ = uint(0xFFFFFF & _loc18_.colors[0]);
                     if(param5)
                     {
                        _loc20_ = uint(param4[_loc17_ | param5 << 24]);
                     }
                     if(!param5 || !_loc20_)
                     {
                        _loc20_ = uint(param4[_loc17_]);
                     }
                     if(_loc20_)
                     {
                        _loc18_.colors[0] = 0xFF000000 | _loc20_;
                     }
                     _loc17_ = uint(0xFFFFFF & _loc18_.colors[1]);
                     if(param5)
                     {
                        _loc20_ = uint(param4[_loc17_ | param5 << 24]);
                     }
                     if(!param5 || !_loc20_)
                     {
                        _loc20_ = uint(param4[_loc17_]);
                     }
                     if(_loc20_)
                     {
                        _loc18_.colors[1] = 0xFF000000 | _loc20_;
                     }
                  }
               }
               _loc21_++;
            }
            _SafeStr_1152.graphics.clear();
            _SafeStr_1152.graphics.drawGraphicsData(_loc22_);
            _loc14_.draw(_SafeStr_1152,_loc12_,_loc13_,null,null,true);
         }
         else
         {
            _loc14_.draw(param1,_loc12_,_loc13_,null,null,true);
         }
         if(param6)
         {
            _SafeStr_431.x = 0;
            _SafeStr_431.y = 0;
            _SafeStr_431.height = _loc11_;
            _SafeStr_431.width = _loc10_;
            _loc24_ = _loc14_.getColorBoundsRect(4278190080,0,false);
            _loc25_ = _loc24_.width > 1 ? _loc24_.width : 1;
            _loc26_ = _loc24_.height > 1 ? _loc24_.height : 1;
            _loc15_ = new BitmapData(_loc25_,_loc26_,true,0);
            _loc15_.copyPixels(_loc14_,_loc24_,_SafeStr_980,null,null,false);
            _loc14_.fillRect(_SafeStr_431,0);
         }
         else
         {
            _loc15_ = _loc14_;
         }
         var _loc16_:Bitmap = new Bitmap();
         _loc16_.bitmapData = _loc15_;
         _loc16_.smoothing = true;
         _loc16_.pixelSnapping = PixelSnapping.NEVER;
         param1.scaleX /= param2;
         param1.scaleY /= param2;
         _loc12_.invert();
         _loc16_.transform.matrix = _loc12_;
         if(param6)
         {
            _loc27_ = _loc12_.clone();
            _loc27_.translate(_loc24_.x,_loc24_.y);
            _loc16_.transform.matrix = _loc27_;
         }
         if(_SafeStr_694.numChildren)
         {
            _SafeStr_694.removeChild(param1);
         }
         return _loc16_;
      }
      
      public static function _SafeStr_3691(param1:Sprite, param2:Number) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         if(!(_SafeCls_1.flags & _SafeCls_1._SafeStr_1022))
         {
            var _loc4_:Bitmap = _SafeStr_952(param1,param2,0,null,0,true);
            _loc4_.smoothing = false;
            _loc4_.pixelSnapping = PixelSnapping.ALWAYS;
            _loc3_.addChild(_loc4_);
         }
         return _loc3_;
      }
      
      public static function _SafeStr_3597(param1:Sprite) : void
      {
         var _loc2_:Bitmap = null;
         if(Boolean(param1) && param1.numChildren == 1)
         {
            _loc2_ = param1.getChildAt(0) as Bitmap;
            if(Boolean(_loc2_) && Boolean(_loc2_.bitmapData))
            {
               _loc2_.bitmapData.dispose();
            }
         }
      }
      
      public static function _SafeStr_3417(param1:GfxType) : _SafeCls_10
      {
         var _loc2_:String = param1._SafeStr_3259();
         var _loc3_:_SafeCls_10 = _SafeStr_1295[_loc2_];
         if(!_loc3_)
         {
            ++_SafeStr_1243;
            _loc3_ = new _SafeCls_10(param1);
            _SafeCls_10._SafeStr_1295[_loc2_] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function _SafeStr_3668(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:_SafeCls_10 = null;
         if(_SafeStr_352 < _SafeStr_1841)
         {
            return;
         }
         if(param1 - _SafeStr_1274 < _SafeStr_2030)
         {
            return;
         }
         _SafeStr_1274 = param1;
         var _loc6_:Number = _SafeStr_352 >= _SafeStr_2024 ? (_SafeStr_352 >= _SafeStr_2213 ? 16 : 4) : 1;
         var _loc7_:* = int(_SafeStr_377.length - 1);
         while(_loc7_ >= 0)
         {
            _loc3_ = _SafeStr_377[_loc7_];
            _loc2_ = _loc6_ * (param1 - _loc3_._SafeStr_1419) / _loc3_._SafeStr_1068;
            if(_loc2_ > _SafeStr_2325)
            {
               _loc3_._SafeStr_1677();
               break;
            }
            _loc7_--;
         }
      }
      
      public static function _SafeStr_3583(param1:GfxType) : void
      {
         var _loc3_:_SafeCls_10 = null;
         var _loc4_:* = int(_SafeStr_377.length - 1);
         while(_loc4_ >= 0)
         {
            _loc3_ = _SafeStr_377[_loc4_];
            if(!(_loc3_._SafeStr_1068 >= 100 || _loc3_._SafeStr_166 == param1))
            {
               _loc3_._SafeStr_1677();
            }
            _loc4_--;
         }
      }
      
      public static function _SafeStr_2856() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         for each(_loc2_ in _SafeStr_515)
         {
            for each(_loc3_ in _loc2_)
            {
               for each(_loc1_ in _loc3_)
               {
                  if(_loc1_.bitmapData)
                  {
                     _SafeStr_715 -= _loc1_.bitmapData.height * _loc1_.bitmapData.width;
                     _loc1_.bitmapData.dispose();
                     _loc1_.bitmapData = null;
                  }
               }
            }
         }
         _SafeStr_515 = new Dictionary();
      }
      
      public static function _SafeStr_2891() : void
      {
         if(_SafeCls_1._SafeStr_1022 & _SafeCls_1.flags)
         {
            return;
         }
         var _loc1_:Number = 4 * _SafeStr_1725._SafeStr_2803;
         if(_SafeStr_731)
         {
            _SafeStr_731.dispose();
         }
         _SafeStr_731 = new BitmapData(_SafeStr_1515 * _loc1_,_SafeStr_1619 * _loc1_,true,0);
         if(_SafeStr_425)
         {
            _SafeStr_425.dispose();
         }
         _SafeStr_425 = new BitmapData(_SafeStr_1515 * _loc1_ / 2,_SafeStr_1619 * _loc1_ / 2,true,0);
         if(s_Common128Canvas)
         {
            s_Common128Canvas.dispose();
         }
         s_Common128Canvas = new BitmapData(128,128,true,0);
         if(s_Common256Canvas)
         {
            s_Common256Canvas.dispose();
         }
         s_Common256Canvas = new BitmapData(256,256,true,0);
         if(s_Common384Canvas)
         {
            s_Common384Canvas.dispose();
         }
         s_Common384Canvas = new BitmapData(384,384,true,0);
         if(s_Common512Canvas)
         {
            s_Common512Canvas.dispose();
         }
         s_Common512Canvas = new BitmapData(512,512,true,0);
      }
      
      public static function _SafeStr_2569() : void
      {
         var _loc1_:_SafeCls_10 = null;
         for each(_loc1_ in _SafeStr_1295)
         {
            _loc1_._SafeStr_1677();
         }
         _SafeStr_377 = new Vector.<_SafeCls_10>();
         _SafeStr_2856();
         _SafeStr_2891();
         _SafeStr_1100 = true;
      }
      
      private function _SafeStr_3311() : Vector.<uint>
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:ColorSwap = null;
         var _loc1_:Vector.<ColorSwap> = this._SafeStr_166._SafeStr_254;
         var _loc2_:uint = this._SafeStr_166._SafeStr_254.length;
         var _loc3_:Vector.<uint> = new Vector.<uint>(_loc2_ * 3,true);
         _loc4_ = 0;
         _loc5_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc6_ = this._SafeStr_166._SafeStr_254[_loc4_];
            _loc3_[_loc5_] = _loc6_._SafeStr_1223;
            _loc3_[_loc5_ + 1] = _loc6_._SafeStr_1176;
            _loc3_[_loc5_ + 2] = _loc6_._SafeStr_966;
            _loc4_++;
            _loc5_ += 3;
         }
         return _loc3_;
      }
      
      public function _SafeStr_3534(param1:_SafeCls_31, param2:_SafeCls_28, param3:Sprite, param4:Bitmap, param5:Number) : void
      {
         if(_SafeCls_1._SafeStr_1022 & _SafeCls_1.flags)
         {
            return;
         }
         var _loc6_:_SafeCls_29 = this._SafeStr_1185[param1._SafeStr_1587];
         if(!_loc6_)
         {
            _loc6_ = new _SafeCls_29(param1);
            this._SafeStr_1185[param1._SafeStr_1587] = _loc6_;
         }
         while(param3.numChildren)
         {
            param3.removeChildAt(0);
         }
         var _loc7_:Number = this._SafeStr_166._SafeStr_975 != 0 ? this._SafeStr_166._SafeStr_975 : _SafeStr_1725._SafeStr_2803;
         var _loc8_:Number = this._SafeStr_166.animScale * _loc7_ * param5;
         var _loc9_:Sprite = null;
         var _loc10_:int = int(param2._SafeStr_2162);
         var _loc11_:Bitmap = _loc6_._SafeStr_511[_loc10_];
         if(!_loc11_)
         {
            if(this._SafeStr_826)
            {
               _loc9_ = _loc6_._SafeStr_831[_loc10_];
               if(!_loc9_)
               {
                  _loc9_ = this._SafeStr_2792(this._SafeStr_166._SafeStr_301,param2._SafeStr_823,new Matrix(),null,_loc8_);
                  _loc9_.scaleX = _loc8_;
                  _loc9_.scaleY = _loc8_;
                  _loc6_._SafeStr_831[_loc10_] = _loc9_;
               }
               if(Boolean(this._SafeStr_1068) || Boolean(_loc9_.parent))
               {
                  _loc11_ = _SafeStr_2725(_loc9_);
               }
            }
            else
            {
               var _loc13_:uint = _loc10_ + param1._SafeStr_2262;
               var _loc14_:MovieClip = param1._SafeStr_1072;
               if(_loc14_.currentFrame != 0)
               {
                  _loc14_.gotoAndStop(0);
               }
               var _loc15_:Boolean = Boolean(this._SafeStr_896) && Boolean(this._SafeStr_896.length);
               _loc11_ = _SafeStr_952(null,_loc8_,this._SafeStr_166._SafeStr_789,null,this._SafeStr_1162 ? _SafeStr_1292 : 0);
               if(!this._SafeStr_1162)
               {
                  _loc11_.x /= _loc11_.scaleX;
                  _loc11_.y /= _loc11_.scaleY;
                  _loc11_.scaleX = 1;
                  _loc11_.scaleY = 1;
               }
            }
            if(_loc11_)
            {
               if(this._SafeStr_166._SafeStr_1113)
               {
                  _loc11_.bitmapData.applyFilter(_loc11_.bitmapData,_loc11_.bitmapData.rect,_SafeStr_980,_SafeStr_2310);
               }
               else if(this._SafeStr_166._SafeStr_1768)
               {
                  _loc11_.bitmapData.applyFilter(_loc11_.bitmapData,_loc11_.bitmapData.rect,_SafeStr_980,_SafeStr_2258);
               }
               _loc6_._SafeStr_511[_loc10_] = _loc11_;
               if(!this._SafeStr_871)
               {
                  _SafeStr_377.push(this);
               }
               ++this._SafeStr_871;
               this._SafeStr_1065 += _loc11_.bitmapData.height * _loc11_.bitmapData.width;
               _SafeStr_352 += _loc11_.bitmapData.height * _loc11_.bitmapData.width;
            }
         }
         if(!_loc11_)
         {
            param3.addChild(_loc9_);
         }
         else
         {
            param4.bitmapData = _loc11_.bitmapData;
            if(_SafeStr_1725._SafeStr_1705)
            {
               param4.pixelSnapping = PixelSnapping.NEVER;
               param4.smoothing = true;
            }
            if(this._SafeStr_1162)
            {
               param4.transform = new Transform(_loc11_);
               param4.smoothing = true;
            }
            else
            {
               param4.x = _loc11_.x;
               param4.y = _loc11_.y;
               param4.scrollRect = _loc11_.scrollRect;
            }
            param3.addChild(param4);
            if(this._SafeStr_166._SafeStr_833)
            {
               param4.pixelSnapping = PixelSnapping.AUTO;
               param4.smoothing = true;
            }
         }
         var _loc12_:Number = 1 / _loc7_;
         param3.scaleX = _loc12_;
         param3.scaleY = _loc12_;
      }
      
      private function _SafeStr_2792(param1:Vector.<CustomArt>, param2:Vector.<_SafeCls_32>, param3:Matrix, param4:Sprite, param5:Number) : Sprite
      {
         var _loc7_:int = 0;
         var _loc8_:* = 0;
         var _loc9_:Sprite = null;
         var _loc10_:_SafeCls_32 = null;
         var _loc11_:MovieClip = null;
         var _loc13_:CustomArt = null;
         var _loc15_:Matrix = null;
         var _loc16_:Matrix = null;
         var _loc17_:String = null;
         var _loc18_:Bitmap = null;
         var _loc20_:uint = 0;
         var _loc21_:Vector.<uint> = null;
         var _loc22_:Boolean = false;
         var _loc23_:String = null;
         var _loc24_:uint = 0;
         var _loc25_:int = 0;
         var _loc26_:String = null;
         var _loc27_:Array = null;
         var _loc28_:Matrix = null;
         var _loc29_:Number = NaN;
         var _loc30_:Bitmap = null;
         var _loc31_:Matrix = null;
         var _loc6_:Sprite = new Sprite();
         var _loc14_:int = int(param2.length);
         _loc7_ = 0;
         while(_loc7_ < _loc14_)
         {
            _loc10_ = param2[_loc7_];
            _loc11_ = null;
            if(_loc10_._SafeStr_1073)
            {
               if(_loc10_._SafeStr_1513)
               {
                  _loc8_ = param1.length - 1;
                  while(_loc8_ >= 0)
                  {
                     _loc13_ = param1[_loc8_];
                     _loc9_ = this._SafeStr_1510("a_Head",_loc13_.fileName,_loc13_.setName);
                     if(_loc9_)
                     {
                        break;
                     }
                     _loc8_--;
                  }
               }
               _loc15_ = _loc10_._SafeStr_1263.clone();
               _loc15_.concat(param3);
               var _loc12_:Sprite = this._SafeStr_2792(param1,_loc10_._SafeStr_1073,_loc15_,_loc10_._SafeStr_1513 ? _loc9_ : null,param5);
               _loc12_.alpha = _loc10_._SafeStr_2286;
               _loc12_.transform.matrix = _loc10_._SafeStr_1263;
               _loc6_.addChild(_loc12_);
            }
            else
            {
               _loc16_ = null;
               if(param4)
               {
                  var _loc19_:DisplayObject = param4.getChildAt(_loc7_);
                  if(_loc19_)
                  {
                     _loc16_ = _loc19_.transform.matrix;
                  }
               }
               if(!_loc16_)
               {
                  _loc16_ = _loc10_._SafeStr_1263;
               }
               _loc17_ = _loc10_.frame + _loc10_._SafeStr_891;
               _loc18_ = this._SafeStr_1208[_loc17_];
               if((Boolean(_loc18_)) && _loc18_.bitmapData == null)
               {
                  _loc18_ = null;
                  this._SafeStr_1208[_loc17_] = null;
               }
               if(!_loc18_)
               {
                  _loc8_ = param1.length - 1;
                  while(_loc8_ >= 0)
                  {
                     if(!_loc11_)
                     {
                        _loc11_ = this._SafeStr_1510(_loc10_._SafeStr_891,param1[_loc8_].fileName,param1[_loc8_].setName);
                     }
                     if(_loc11_)
                     {
                        break;
                     }
                     _loc8_--;
                  }
                  if(!_loc11_)
                  {
                     if(!_loc11_)
                     {
                        _loc11_ = this._SafeStr_1510(_loc10_._SafeStr_891,this._SafeStr_166._SafeStr_228,null);
                     }
                  }
                  if(!_loc11_)
                  {
                     _loc18_ = _SafeStr_1273;
                  }
                  if(!_loc18_)
                  {
                     if(_loc11_.bHasColors)
                     {
                        _loc21_ = _SafeStr_1946(this._SafeStr_896,_loc11_.a,_SafeStr_1750[_loc10_._SafeStr_1962]);
                        _loc20_ = _loc21_.length;
                     }
                     _loc22_ = Boolean(_loc21_) && Boolean(_loc21_.length);
                     _loc23_ = "!";
                     _loc24_ = 0;
                     while(_loc24_ < _loc20_)
                     {
                        _loc23_ += _loc21_[_loc24_];
                        _loc24_++;
                     }
                     _loc25_ = int(this._SafeStr_166.animScale * (this._SafeStr_166._SafeStr_975 ? this._SafeStr_166._SafeStr_975 : 1) * 5 + 0.5);
                     _loc26_ = _loc10_.frame.toString() + "^" + _loc25_.toString() + "^" + this._SafeStr_166._SafeStr_789.toString();
                     if(!GfxType._SafeStr_1110 && Boolean(this._SafeStr_166._SafeStr_1141))
                     {
                        _loc26_ += "^" + this._SafeStr_166._SafeStr_1141;
                     }
                     if(!_SafeStr_515[_loc11_])
                     {
                        _SafeStr_515[_loc11_] = new Array();
                     }
                     if(!_SafeStr_515[_loc11_][_loc26_])
                     {
                        _SafeStr_515[_loc11_][_loc26_] = new Array();
                     }
                     _loc27_ = _SafeStr_515[_loc11_][_loc26_];
                     _loc18_ = _loc27_[_loc23_];
                     if(_loc18_ == null)
                     {
                        _loc28_ = param3.clone();
                        _loc28_.concat(_loc16_);
                        _loc11_.transform.matrix = _loc28_;
                        if(_loc10_.frame != _loc11_.currentFrame)
                        {
                           _loc11_.gotoAndStop(_loc10_.frame);
                        }
                        _SafeStr_1893.addChild(_loc11_);
                        if(_loc11_.width == 0 || _loc11_.height == 0)
                        {
                           _loc18_ = _SafeStr_1273;
                        }
                        else
                        {
                           _loc18_ = _SafeStr_952(_loc11_,param5 * _SafeStr_2062,this._SafeStr_166._SafeStr_789,_loc22_ ? this._SafeStr_1621 : null,_SafeStr_1750[_loc10_._SafeStr_1962]);
                           _SafeStr_715 += _loc18_.bitmapData.height * _loc18_.bitmapData.width;
                        }
                        _loc29_ = _loc18_.alpha;
                        _loc27_[_loc23_] = _loc18_;
                     }
                  }
                  this._SafeStr_1208[_loc17_] = _loc18_;
               }
               if(Boolean(_loc18_) && _loc18_ != _SafeStr_1273)
               {
                  _loc30_ = new Bitmap(_loc18_.bitmapData,PixelSnapping.NEVER,true);
                  _loc30_.transform = new Transform(_loc18_);
                  _loc31_ = _loc30_.transform.matrix;
                  _loc31_.concat(_loc16_);
                  _loc30_.transform.matrix = _loc31_;
                  _loc30_.alpha = _loc10_._SafeStr_2286;
                  _loc6_.addChild(_loc30_);
               }
            }
            _loc7_++;
         }
         return _loc6_;
      }
      
      public function _SafeStr_1510(param1:String, param2:String, param3:String) : MovieClip
      {
         var _loc7_:Class = null;
         var _loc8_:Object = null;
         var _loc4_:String = param1;
         if(param3)
         {
            _loc4_ += "_" + param3;
         }
         var _loc5_:String = param2 + ":" + _loc4_;
         var _loc6_:MovieClip = _SafeStr_1778[_loc5_];
         if(!_loc6_)
         {
            _loc7_ = null;
            _loc8_ = _SafeCls_9._SafeStr_688[param2];
            if((Boolean(_loc8_)) && Boolean(_loc8_.applicationDomain.hasDefinition(_loc4_)))
            {
               _loc7_ = _loc8_.applicationDomain.getDefinition(_loc4_);
            }
            if(_loc7_)
            {
               _loc6_ = new _loc7_() as MovieClip;
               _loc6_.gotoAndStop(1);
               if(_loc6_.hasOwnProperty("a"))
               {
                  _loc6_.bHasColors = true;
               }
               else
               {
                  _loc6_.a = null;
                  _loc6_.bHasColors = false;
               }
            }
            else
            {
               _loc6_ = _SafeStr_1387;
            }
            _SafeStr_1778[_loc5_] = _loc6_;
         }
         if(_loc6_ == _SafeStr_1387)
         {
            return null;
         }
         return _loc6_;
      }
      
      public function _SafeStr_3649(param1:_SafeCls_29, param2:uint) : void
      {
         var _loc4_:int = 0;
         var _loc3_:uint = param1._SafeStr_3123(param2);
         if(!_loc3_)
         {
            return;
         }
         this._SafeStr_1065 -= _loc3_;
         _SafeStr_352 -= _loc3_;
         --this._SafeStr_871;
         if(!this._SafeStr_871)
         {
            _loc4_ = int(_SafeStr_377.indexOf(this));
            if(_loc4_ != -1)
            {
               _SafeStr_377.splice(_loc4_,1);
            }
         }
      }
      
      public function _SafeStr_1677() : void
      {
         var _loc1_:_SafeCls_29 = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this._SafeStr_1185)
         {
            if(_loc1_)
            {
               _loc1_._SafeStr_2769();
               _loc1_._SafeStr_2825();
            }
         }
         _SafeStr_352 -= this._SafeStr_1065;
         this._SafeStr_871 = 0;
         this._SafeStr_1065 = 0;
         this._SafeStr_1208 = new Array();
         _loc2_ = int(_SafeStr_377.indexOf(this));
         if(_loc2_ != -1)
         {
            _SafeStr_377.splice(_loc2_,1);
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_5 = "_-N0"
 * @identifier _SafeCls_9 = "_-cU"
 * @identifier _SafeCls_10 = "_-HZ"
 * @identifier _SafeCls_28 = "_-sE"
 * @identifier _SafeCls_29 = "_-LV"
 * @identifier _SafeCls_30 = "_-DD"
 * @identifier _SafeCls_31 = "_-iH"
 * @identifier _SafeCls_32 = "_-if"
 * @identifier _SafeCls_33 = "_-bK"
 * @identifier _SafeStr_157 = "_-wW"
 * @identifier _SafeStr_166 = "_-PJ"
 * @identifier _SafeStr_180 = "_-az"
 * @identifier _SafeStr_228 = "_-QK"
 * @identifier _SafeStr_254 = "_-H5"
 * @identifier _SafeStr_301 = "_-4c"
 * @identifier _SafeStr_352 = "_-n4"
 * @identifier _SafeStr_377 = "_-Ez"
 * @identifier _SafeStr_425 = "_-YV"
 * @identifier _SafeStr_431 = "_-8O"
 * @identifier _SafeStr_511 = "_-LZ"
 * @identifier _SafeStr_515 = "_-5U"
 * @identifier _SafeStr_639 = "_-Rg"
 * @identifier _SafeStr_688 = "true"
 * @identifier _SafeStr_694 = "_-T8"
 * @identifier _SafeStr_715 = "_-jl"
 * @identifier _SafeStr_731 = "_-lc"
 * @identifier _SafeStr_789 = "_-72"
 * @identifier _SafeStr_802 = "_-Dw"
 * @identifier _SafeStr_823 = "_-Br"
 * @identifier _SafeStr_826 = "_-CX"
 * @identifier _SafeStr_831 = "_-3n"
 * @identifier _SafeStr_833 = "_-05"
 * @identifier _SafeStr_871 = "_-aj"
 * @identifier _SafeStr_873 = "_-VZ"
 * @identifier _SafeStr_891 = "_-Ge"
 * @identifier _SafeStr_896 = "_-nS"
 * @identifier _SafeStr_912 = "_-sY"
 * @identifier _SafeStr_952 = "_-8-"
 * @identifier _SafeStr_966 = "_-Cn"
 * @identifier _SafeStr_975 = "_-W3"
 * @identifier _SafeStr_980 = "_-3N"
 * @identifier _SafeStr_1022 = "_-TA"
 * @identifier _SafeStr_1065 = "_-6V"
 * @identifier _SafeStr_1068 = "_-vA"
 * @identifier _SafeStr_1072 = "_-vl"
 * @identifier _SafeStr_1073 = "_-lD"
 * @identifier _SafeStr_1100 = "_-pI"
 * @identifier _SafeStr_1110 = "_-D4"
 * @identifier _SafeStr_1113 = "_-wI"
 * @identifier _SafeStr_1141 = "_-Vx"
 * @identifier _SafeStr_1152 = "_-VE"
 * @identifier _SafeStr_1162 = "_-HU"
 * @identifier _SafeStr_1176 = "_-dT"
 * @identifier _SafeStr_1185 = "_-wu"
 * @identifier _SafeStr_1208 = "_-oZ"
 * @identifier _SafeStr_1223 = "_-Ih"
 * @identifier _SafeStr_1243 = "_-Of"
 * @identifier _SafeStr_1263 = "_-qB"
 * @identifier _SafeStr_1273 = "_-P-"
 * @identifier _SafeStr_1274 = "_-lV"
 * @identifier _SafeStr_1284 = "_-Wr"
 * @identifier _SafeStr_1292 = "_-ma"
 * @identifier _SafeStr_1295 = "_-qw"
 * @identifier _SafeStr_1353 = "_-fl"
 * @identifier _SafeStr_1387 = "_-Tv"
 * @identifier _SafeStr_1417 = "_-cF"
 * @identifier _SafeStr_1419 = "_-lE"
 * @identifier _SafeStr_1510 = "_-2p"
 * @identifier _SafeStr_1513 = "_-db"
 * @identifier _SafeStr_1515 = "_-n3"
 * @identifier _SafeStr_1587 = "_-nQ"
 * @identifier _SafeStr_1619 = "_-JL"
 * @identifier _SafeStr_1621 = "_-vZ"
 * @identifier _SafeStr_1677 = "_-N6"
 * @identifier _SafeStr_1705 = "_-QN"
 * @identifier _SafeStr_1725 = "_-aJ"
 * @identifier _SafeStr_1748 = "_-mQ"
 * @identifier _SafeStr_1750 = "_-Uw"
 * @identifier _SafeStr_1768 = "_-SM"
 * @identifier _SafeStr_1778 = "_-g1"
 * @identifier _SafeStr_1812 = "_-w2"
 * @identifier _SafeStr_1841 = "_-CZ"
 * @identifier _SafeStr_1893 = "_-nk"
 * @identifier _SafeStr_1946 = "_-ZF"
 * @identifier _SafeStr_1962 = "_-TL"
 * @identifier _SafeStr_2024 = "_-ih"
 * @identifier _SafeStr_2030 = "_-NZ"
 * @identifier _SafeStr_2062 = "_-uQ"
 * @identifier _SafeStr_2162 = "_-4X"
 * @identifier _SafeStr_2213 = "_-lx"
 * @identifier _SafeStr_2258 = "_-rc"
 * @identifier _SafeStr_2262 = "_-iw"
 * @identifier _SafeStr_2286 = "_-rY"
 * @identifier _SafeStr_2310 = "_-Fw"
 * @identifier _SafeStr_2325 = "_-Zv"
 * @identifier _SafeStr_2477 = "_-tV"
 * @identifier _SafeStr_2522 = "_-UY"
 * @identifier _SafeStr_2569 = "_-UP"
 * @identifier _SafeStr_2609 = "_-EP"
 * @identifier _SafeStr_2642 = "_-A6"
 * @identifier _SafeStr_2725 = "_-3m"
 * @identifier _SafeStr_2760 = "_-E2"
 * @identifier _SafeStr_2769 = "_-Wh"
 * @identifier _SafeStr_2770 = "_-O9"
 * @identifier _SafeStr_2792 = "_-c7"
 * @identifier _SafeStr_2803 = "_-F1"
 * @identifier _SafeStr_2805 = "_-uK"
 * @identifier _SafeStr_2825 = "_-Jf"
 * @identifier _SafeStr_2832 = "_-Bc"
 * @identifier _SafeStr_2856 = "catch"
 * @identifier _SafeStr_2888 = "_-0a"
 * @identifier _SafeStr_2891 = " get"
 * @identifier _SafeStr_2915 = "_-s1"
 * @identifier _SafeStr_2949 = "_-gR"
 * @identifier _SafeStr_3123 = "_-9"
 * @identifier _SafeStr_3259 = "_-L5"
 * @identifier _SafeStr_3311 = "_-fT"
 * @identifier _SafeStr_3417 = "_-iL"
 * @identifier _SafeStr_3534 = "_-Az"
 * @identifier _SafeStr_3583 = "_-6I"
 * @identifier _SafeStr_3597 = "_-7"
 * @identifier _SafeStr_3649 = "_-6p"
 * @identifier _SafeStr_3668 = " null"
 * @identifier _SafeStr_3691 = "_-7Q"
 * @identifier _SafeStr_3764 = "_-WF"
 */
