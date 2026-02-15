package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class _SafeCls_15
   {
      
      private static var _SafeStr_734:Number;
      
      private static var _SafeStr_791:Number;
      
      private static var _SafeStr_1240:uint;
      
      private static var _SafeStr_1325:int;
      
      private static var _SafeStr_1011:uint;
      
      private static var _SafeStr_2318:int;
      
      private static const _SafeStr_1284:uint = 262144;
      
      private static const _SafeStr_735:_SafeCls_84 = new _SafeCls_84();
      
      _SafeStr_735._SafeStr_347 = null;
      _SafeStr_735.x = -100;
      _SafeStr_735.y = -100;
      _SafeStr_735._SafeStr_820 = 0;
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_405:Sprite;
      
      internal var _SafeStr_660:Vector.<_SafeCls_84>;
      
      internal var _SafeStr_637:Dictionary;
      
      internal var _SafeStr_1463:int;
      
      internal var _SafeStr_2068:int;
      
      internal var _SafeStr_2411:int;
      
      internal var _SafeStr_2833:int = 0;
      
      public function _SafeCls_15(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_405 = _SafeCls_19._SafeStr_283();
         this._SafeStr_405.scaleX = 1 / this._SafeStr_118.main._SafeStr_597;
         this._SafeStr_405.scaleY = 1 / this._SafeStr_118.main._SafeStr_597;
         this._SafeStr_2525();
         this._SafeStr_1214();
      }
      
      public static function _SafeStr_3332(param1:uint, param2:uint, param3:int, param4:uint, param5:uint) : void
      {
         _SafeStr_734 = param1;
         _SafeStr_791 = param2;
         _SafeStr_2318 = param5 * _SafeStr_1284;
         _SafeStr_1011 = _SafeStr_2318 / (_SafeStr_734 * _SafeStr_791);
         _SafeStr_1325 = param3;
         _SafeStr_1240 = param4;
      }
      
      public function _SafeStr_3138(param1:Boolean = false) : void
      {
         var _loc3_:_SafeCls_84 = null;
         var _loc4_:Bitmap = null;
         this._SafeStr_1214();
         var _loc2_:int = 0;
         while(_loc2_ < _SafeStr_1011)
         {
            _loc3_ = this._SafeStr_660[_loc2_];
            _loc4_ = _loc3_._SafeStr_347;
            _loc4_.bitmapData.dispose();
            _loc4_.bitmapData = null;
            _loc3_._SafeStr_347 = null;
            this._SafeStr_660[_loc2_] = null;
            _loc2_++;
         }
         this._SafeStr_660 = null;
         this._SafeStr_637 = null;
         if(param1)
         {
            if(Boolean(this._SafeStr_405) && Boolean(this._SafeStr_405.parent))
            {
               this._SafeStr_405.parent.removeChild(this._SafeStr_405);
            }
            this._SafeStr_405 = null;
         }
      }
      
      public function _SafeStr_2525() : void
      {
         var _loc1_:int = 0;
         var _loc2_:_SafeCls_84 = null;
         var _loc3_:BitmapData = null;
         this._SafeStr_1463 = Math.ceil(_SafeStr_734 * this._SafeStr_118.main._SafeStr_597) + _SafeStr_1325;
         this._SafeStr_2068 = Math.ceil(_SafeStr_791 * this._SafeStr_118.main._SafeStr_597) + _SafeStr_1325;
         this._SafeStr_2411 = 0;
         this._SafeStr_660 = new Vector.<_SafeCls_84>(_SafeStr_1011,true);
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_1011)
         {
            _loc2_ = new _SafeCls_84();
            _loc3_ = new BitmapData(this._SafeStr_1463,this._SafeStr_2068,true);
            this._SafeStr_2411 += this._SafeStr_1463 * this._SafeStr_2068;
            _loc2_._SafeStr_347 = new Bitmap(_loc3_,PixelSnapping.ALWAYS,false);
            if(this._SafeStr_118.main._SafeStr_1705)
            {
               _loc2_._SafeStr_347.smoothing = true;
               _loc2_._SafeStr_347.pixelSnapping = PixelSnapping.NEVER;
            }
            this._SafeStr_660[_loc1_] = _loc2_;
            _loc1_++;
         }
         this._SafeStr_637 = new Dictionary();
      }
      
      public function _SafeStr_1214() : void
      {
         var _loc1_:int = 0;
         var _loc2_:_SafeCls_84 = null;
         this._SafeStr_637 = new Dictionary();
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_1011)
         {
            _loc2_ = this._SafeStr_660[_loc1_];
            _loc2_._SafeStr_820 = 0;
            _loc2_.x = -100;
            _loc2_.y = -100;
            if(Boolean(_loc2_._SafeStr_347) && Boolean(_loc2_._SafeStr_347.parent))
            {
               _loc2_._SafeStr_347.parent.removeChild(_loc2_._SafeStr_347);
            }
            _loc1_++;
         }
      }
      
      public function _SafeStr_3479() : void
      {
         var _loc1_:Rectangle = this._SafeStr_118.level._SafeStr_188;
         this._SafeStr_405.x = _loc1_.x;
         this._SafeStr_405.y = _loc1_.y;
         if(this._SafeStr_1463 != _SafeStr_734 * this._SafeStr_118.main._SafeStr_597 + _SafeStr_1325)
         {
            this._SafeStr_3138();
            this._SafeStr_2525();
            this._SafeStr_1214();
         }
         var _loc2_:Number = -(this._SafeStr_118._SafeStr_156.x / this._SafeStr_118._SafeStr_156.scaleX + _loc1_.x);
         var _loc3_:Number = -(this._SafeStr_118._SafeStr_156.y / this._SafeStr_118._SafeStr_156.scaleY + _loc1_.y);
         var _loc4_:int = Math.floor(_loc2_ / (_SafeStr_734 / 2));
         var _loc5_:int = Math.floor(_loc3_ / _SafeStr_791);
         var _loc6_:uint = 0;
         while(_loc6_ < _SafeStr_1240)
         {
            this._SafeStr_1458(_loc4_ + _loc6_,_loc5_,_loc4_,_loc5_);
            this._SafeStr_1458(_loc4_ + _loc6_,_loc5_ + 1,_loc4_,_loc5_);
            _loc6_++;
         }
         if((_loc4_ + _loc5_) % 2)
         {
            this._SafeStr_1458(_loc4_ + _SafeStr_1240,_loc5_ + 1,_loc4_,_loc5_);
         }
         else
         {
            this._SafeStr_1458(_loc4_ + _SafeStr_1240,_loc5_,_loc4_,_loc5_);
         }
      }
      
      public function _SafeStr_1458(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc7_:Bitmap = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Rectangle = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:MovieClip = null;
         var _loc14_:Matrix = null;
         var _loc15_:uint = 0;
         var _loc16_:Rectangle = null;
         var _loc17_:uint = 0;
         var _loc5_:Rectangle = this._SafeStr_118.level._SafeStr_188;
         if(param1 < 0 || param2 < 0 || param1 > 1 + _loc5_.width / (_SafeStr_734 / 2) + 1 || param2 > 1 + _loc5_.height / _SafeStr_791)
         {
            return;
         }
         if((param1 + param2) % 2 == 1)
         {
            param1--;
         }
         var _loc6_:_SafeCls_84 = this._SafeStr_637[param1 + 1 + "^" + param2];
         if(!_loc6_)
         {
            _loc6_ = this._SafeStr_3201(param3,param4);
            this._SafeStr_637[param1 + 1 + "^" + param2] = _loc6_;
            _loc6_.x = param1;
            _loc6_.y = param2;
            _loc7_ = _loc6_._SafeStr_347;
            _loc8_ = param1 * (_SafeStr_734 / 2);
            _loc9_ = param2 * _SafeStr_791;
            _loc10_ = new Rectangle(0,0,_loc7_.bitmapData.width,_loc7_.bitmapData.height);
            _loc7_.bitmapData.fillRect(_loc10_,0);
            _loc11_ = _loc8_ + _loc5_.x;
            _loc12_ = _loc9_ + _loc5_.y;
            _loc13_ = this._SafeStr_118.level._SafeStr_322;
            _loc14_ = new Matrix(1,0,0,1,-_loc11_,-_loc12_);
            _loc14_.scale(this._SafeStr_118.main._SafeStr_597,this._SafeStr_118.main._SafeStr_597);
            _loc13_.visible = true;
            if(!(_SafeCls_1.flags & _SafeCls_1._SafeStr_1224))
            {
               _loc7_.bitmapData.drawWithQuality(_loc13_,_loc14_,null,null,_loc10_,true,StageQuality.HIGH);
            }
            else
            {
               _loc17_ = uint(getTimer());
               _loc7_.bitmapData.drawWithQuality(_loc13_,_loc14_,null,null,_loc10_,true,StageQuality.HIGH);
               _loc15_ = getTimer() - _loc17_;
            }
            _loc7_.x = this._SafeStr_118.main._SafeStr_597 * _loc8_;
            _loc7_.y = this._SafeStr_118.main._SafeStr_597 * _loc9_;
            _loc16_ = _loc7_.bitmapData.getColorBoundsRect(4278190080,0,false);
            if(_loc16_.width == 0 || _loc16_.height == 0)
            {
               this._SafeStr_2904(_loc6_);
               this._SafeStr_637[param1 + 1 + "^" + param2] = _SafeStr_735;
               _loc6_ = _SafeStr_735;
            }
            else if(_SafeCls_1.flags & _SafeCls_1._SafeStr_1224)
            {
               _SafeCls_83._SafeStr_2704(_loc7_.bitmapData,_loc15_,"Tiler",null);
               this._SafeStr_2833 += _loc15_;
            }
         }
         _loc6_._SafeStr_820 = this._SafeStr_118.mTimeThisTick;
      }
      
      public function _SafeStr_3201(param1:Number, param2:Number) : _SafeCls_84
      {
         var _loc4_:_SafeCls_84 = null;
         var _loc3_:_SafeCls_84 = null;
         var _loc5_:int = 0;
         while(_loc5_ < this._SafeStr_660.length)
         {
            _loc4_ = this._SafeStr_660[_loc5_];
            if(!(param1 - 1 <= _loc4_.x && _loc4_.x <= param1 + 2 && (param2 - 1 <= _loc4_.y && _loc4_.y <= param2 + 2)))
            {
               if(!_loc3_ || _loc3_._SafeStr_820 > _loc4_._SafeStr_820)
               {
                  _loc3_ = _loc4_;
               }
            }
            _loc5_++;
         }
         var _loc6_:_SafeCls_84 = _loc3_;
         if(_loc6_._SafeStr_820 != 0)
         {
            this._SafeStr_2904(_loc6_);
         }
         if(!_loc6_._SafeStr_347.parent)
         {
            this._SafeStr_405.addChild(_loc6_._SafeStr_347);
         }
         return _loc6_;
      }
      
      public function _SafeStr_2904(param1:_SafeCls_84) : void
      {
         var _loc2_:Bitmap = null;
         _loc2_ = param1._SafeStr_347;
         if(_loc2_.parent)
         {
            _loc2_.parent.removeChild(_loc2_);
         }
         _loc2_.bitmapData.fillRect(new Rectangle(0,0,_loc2_.bitmapData.width,_loc2_.bitmapData.height),0);
         if(this._SafeStr_637[param1.x + 1 + "^" + param1.y] != param1)
         {
         }
         this._SafeStr_637[param1.x + 1 + "^" + param1.y] = null;
         param1.x = -100;
         param1.y = -100;
         param1._SafeStr_820 = 0;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_15 = "_-MP"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_83 = "_-YW"
 * @identifier _SafeCls_84 = "_-PG"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_156 = "_-gH"
 * @identifier _SafeStr_188 = "_-qs"
 * @identifier _SafeStr_283 = "_-eW"
 * @identifier _SafeStr_322 = "_-uU"
 * @identifier _SafeStr_347 = "_-Ha"
 * @identifier _SafeStr_405 = "_-Ze"
 * @identifier _SafeStr_597 = "_-q8"
 * @identifier _SafeStr_637 = "_-sn"
 * @identifier _SafeStr_660 = "_-gf"
 * @identifier _SafeStr_734 = "_-8u"
 * @identifier _SafeStr_735 = "_-vO"
 * @identifier _SafeStr_791 = "_-In"
 * @identifier _SafeStr_820 = "_-s6"
 * @identifier _SafeStr_1011 = "_-hh"
 * @identifier _SafeStr_1214 = "_-Er"
 * @identifier _SafeStr_1224 = "_-NJ"
 * @identifier _SafeStr_1240 = "_-3z"
 * @identifier _SafeStr_1284 = "_-Wr"
 * @identifier _SafeStr_1325 = "_-9y"
 * @identifier _SafeStr_1458 = "_-aw"
 * @identifier _SafeStr_1463 = "_-kG"
 * @identifier _SafeStr_1705 = "_-QN"
 * @identifier _SafeStr_2068 = "_-ij"
 * @identifier _SafeStr_2318 = "_-bS"
 * @identifier _SafeStr_2411 = "_-M0"
 * @identifier _SafeStr_2525 = "_-WO"
 * @identifier _SafeStr_2704 = "_-oe"
 * @identifier _SafeStr_2833 = "_-Jl"
 * @identifier _SafeStr_2904 = "_-kJ"
 * @identifier _SafeStr_3138 = "_-c"
 * @identifier _SafeStr_3201 = "_-18"
 * @identifier _SafeStr_3332 = "_-Cb"
 * @identifier _SafeStr_3479 = "_-hn"
 */
