package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.PixelSnapping;
   import flash.display.StageQuality;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class _SafeCls_49
   {
      
      public static const _SafeStr_1318:Number = 2300;
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_507:Dictionary;
      
      internal var _SafeStr_749:Dictionary;
      
      internal var _SafeStr_2844:int = 1;
      
      internal var _SafeStr_1788:int = 0;
      
      public function _SafeCls_49(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_507 = new Dictionary();
      }
      
      public function _SafeStr_2386(param1:_SafeCls_101) : void
      {
         this._SafeStr_2176(param1);
         delete this._SafeStr_507[param1._SafeStr_204.name];
         param1._SafeStr_3267();
      }
      
      public function _SafeStr_2513(param1:DisplayObject, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false, param5:String = null, param6:String = null) : _SafeCls_101
      {
         var _loc7_:_SafeCls_101 = null;
         _loc7_ = new _SafeCls_101();
         _loc7_._SafeStr_800 = param1;
         _loc7_._SafeStr_2164 = param2;
         _loc7_._SafeStr_3243 = param3;
         _loc7_._SafeStr_2448 = param4;
         _loc7_._SafeStr_2698 = param6;
         if(Boolean(param5) && !param5.indexOf("a_"))
         {
            _loc7_._SafeStr_1699 = param5;
         }
         _loc7_._SafeStr_646 = _loc7_._SafeStr_800.getBounds(_loc7_._SafeStr_800.parent);
         var _loc8_:Bitmap = new Bitmap(null,PixelSnapping.AUTO,false);
         _loc8_.name = "MyID" + this._SafeStr_2844++;
         this._SafeStr_507[_loc8_.name] = _loc7_;
         _loc7_._SafeStr_204 = _loc8_;
         return _loc7_;
      }
      
      public function _SafeStr_3345() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc12_:_SafeCls_101 = null;
         var _loc13_:_SafeCls_101 = null;
         var _loc1_:Number = -this._SafeStr_118._SafeStr_156.x;
         var _loc2_:Number = _loc1_ + _SafeCls_47._SafeStr_387;
         var _loc3_:Number = -this._SafeStr_118._SafeStr_156.y;
         var _loc4_:Number = _loc3_ + _SafeCls_47._SafeStr_1237;
         var _loc9_:Number = this._SafeStr_118.mTimeThisTick;
         var _loc14_:Boolean = false;
         for each(_loc12_ in this._SafeStr_507)
         {
            _loc5_ = _loc12_._SafeStr_646.x;
            _loc6_ = _loc12_._SafeStr_646.x + _loc12_._SafeStr_646.width;
            _loc7_ = _loc12_._SafeStr_646.y;
            _loc8_ = _loc12_._SafeStr_646.y + _loc12_._SafeStr_646.height;
            if(_loc5_ <= _loc2_ + _SafeCls_47._SafeStr_387 * 0.5 && _loc6_ >= _loc1_ - _SafeCls_47._SafeStr_387 * 0.5 && _loc7_ <= _loc4_ && _loc8_ >= _loc3_)
            {
               if(_loc5_ <= _loc2_ && _loc6_ >= _loc1_ && _loc7_ <= _loc4_ && _loc8_ >= _loc3_)
               {
                  if(this._SafeStr_1465(_loc12_,true))
                  {
                     _loc14_ = true;
                  }
               }
               else if(!_loc12_._SafeStr_746)
               {
                  _loc13_ = _loc12_;
               }
            }
            else if(_loc12_._SafeStr_746)
            {
               if(!_loc12_._SafeStr_2164 && _loc9_ - _loc12_._SafeStr_2723 > 20000 && _loc12_._SafeStr_1699 == null)
               {
                  this._SafeStr_2176(_loc12_);
               }
            }
         }
         if(!_loc14_ && Boolean(_loc13_))
         {
            this._SafeStr_1465(_loc13_,false);
         }
      }
      
      public function _SafeStr_1465(param1:_SafeCls_101, param2:Boolean) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:uint = 0;
         var _loc15_:uint = 0;
         param1._SafeStr_2723 = getTimer();
         if(Boolean(_SafeCls_1.flags & _SafeCls_1._SafeStr_1022) || param1._SafeStr_1673)
         {
            return false;
         }
         var _loc3_:DisplayObject = param1._SafeStr_800;
         var _loc4_:Bitmap = param1._SafeStr_204;
         if(!param1._SafeStr_746)
         {
            var _loc5_:Rectangle = _SafeCls_19._SafeStr_1749(_loc3_,_loc3_);
            if(!_loc5_ || true || true)
            {
               return false;
            }
            _loc6_ = this._SafeStr_118.main._SafeStr_3194;
            _loc7_ = 1 / _loc6_;
            var _loc8_:uint = Math.ceil(0 * _loc6_);
            var _loc9_:uint = Math.ceil(0 * _loc6_);
            _loc4_.x = _loc5_.x + _loc3_.x;
            _loc4_.y = _loc5_.y + _loc3_.y;
            _loc4_.scaleX = _loc7_;
            _loc4_.scaleY = _loc7_;
            param1._SafeStr_746 = new Matrix(_loc6_,0,0,_loc6_,0 * _loc6_,0 * _loc6_);
            var _loc10_:String = param1._SafeStr_1699;
            var _loc11_:BitmapData = _loc10_ ? this._SafeStr_749[null] : null;
            if(!_loc11_)
            {
               _loc11_ = new BitmapData(0,0,true,0);
               this._SafeStr_1788 += 0;
            }
            else
            {
               param2 = false;
               param1._SafeStr_1673 = true;
            }
            _loc4_.bitmapData = null;
            _loc12_ = _loc6_ * _loc4_.x;
            _loc13_ = _loc6_ * _loc4_.y;
            _loc12_ = Math.floor(_loc12_);
            _loc13_ = Math.floor(_loc13_);
            _loc12_ *= _loc7_;
            _loc13_ *= _loc7_;
            _loc4_.x = _loc12_;
            _loc4_.y = _loc13_;
         }
         if(param2)
         {
            if(!(_SafeCls_1.flags & _SafeCls_1._SafeStr_1224))
            {
               _loc4_.bitmapData.drawWithQuality(_loc3_,param1._SafeStr_746,_loc3_.transform.colorTransform,null,null,false,StageQuality.HIGH);
            }
            else
            {
               _loc14_ = uint(getTimer());
               _loc4_.bitmapData.drawWithQuality(_loc3_,param1._SafeStr_746,_loc3_.transform.colorTransform,null,null,false,StageQuality.HIGH);
               _loc15_ = getTimer() - _loc14_;
               _SafeCls_83._SafeStr_2704(_loc4_.bitmapData,_loc15_,"Cacher",null);
            }
            param1._SafeStr_1673 = true;
         }
         return true;
      }
      
      public function _SafeStr_2176(param1:_SafeCls_101) : void
      {
         var _loc2_:BitmapData = null;
         if(!param1)
         {
            return;
         }
         if(param1._SafeStr_1699 == null)
         {
            _loc2_ = param1._SafeStr_204.bitmapData;
            if(_loc2_)
            {
               this._SafeStr_1788 -= _loc2_.height * _loc2_.width;
               _loc2_.dispose();
               param1._SafeStr_204.bitmapData = null;
            }
         }
         param1._SafeStr_746 = null;
         param1._SafeStr_1673 = false;
      }
      
      public function _SafeStr_3612() : void
      {
         var _loc1_:BitmapData = null;
         var _loc2_:_SafeCls_101 = null;
         for each(_loc1_ in this._SafeStr_749)
         {
            _loc1_.dispose();
         }
         this._SafeStr_749 = new Dictionary();
         for each(_loc2_ in this._SafeStr_507)
         {
            this._SafeStr_2176(_loc2_);
            if(_loc2_._SafeStr_2164)
            {
               this._SafeStr_1465(_loc2_,true);
            }
         }
      }
      
      public function _SafeStr_3749() : void
      {
         var _loc1_:_SafeCls_101 = null;
         var _loc2_:BitmapData = null;
         for each(_loc1_ in this._SafeStr_507)
         {
            this._SafeStr_2386(_loc1_);
         }
         this._SafeStr_507 = null;
         for each(_loc2_ in this._SafeStr_749)
         {
            _loc2_.dispose();
         }
         this._SafeStr_749 = null;
      }
      
      public function _SafeStr_3614() : void
      {
         var _loc2_:String = null;
         var _loc3_:BitmapData = null;
         var _loc4_:_SafeCls_101 = null;
         var _loc1_:Dictionary = new Dictionary();
         for(_loc2_ in this._SafeStr_507)
         {
            _loc4_ = this._SafeStr_507[_loc2_];
            if(_loc4_._SafeStr_2448)
            {
               _loc1_[_loc2_] = _loc4_;
            }
            else
            {
               this._SafeStr_2386(_loc4_);
            }
         }
         this._SafeStr_507 = _loc1_;
         for each(_loc3_ in this._SafeStr_749)
         {
            _loc3_.dispose();
         }
         this._SafeStr_749 = new Dictionary();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_47 = "_-Km"
 * @identifier _SafeCls_49 = "_-Oo"
 * @identifier _SafeCls_83 = "_-YW"
 * @identifier _SafeCls_101 = "_-Hb"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_156 = "_-gH"
 * @identifier _SafeStr_204 = "_-pH"
 * @identifier _SafeStr_387 = "_-nt"
 * @identifier _SafeStr_507 = "_-w1"
 * @identifier _SafeStr_646 = "_-aN"
 * @identifier _SafeStr_746 = "_-TK"
 * @identifier _SafeStr_749 = "_-UV"
 * @identifier _SafeStr_800 = "_-YU"
 * @identifier _SafeStr_1022 = "_-TA"
 * @identifier _SafeStr_1224 = "_-NJ"
 * @identifier _SafeStr_1237 = "_-NY"
 * @identifier _SafeStr_1318 = "_-Gd"
 * @identifier _SafeStr_1465 = "_-OG"
 * @identifier _SafeStr_1673 = "_-tI"
 * @identifier _SafeStr_1699 = "_-L9"
 * @identifier _SafeStr_1749 = "_-h4"
 * @identifier _SafeStr_1788 = "_-jr"
 * @identifier _SafeStr_2164 = "_-jw"
 * @identifier _SafeStr_2176 = "_-GQ"
 * @identifier _SafeStr_2386 = "_-Xz"
 * @identifier _SafeStr_2448 = "_-2e"
 * @identifier _SafeStr_2513 = "_-UD"
 * @identifier _SafeStr_2698 = "_-vF"
 * @identifier _SafeStr_2704 = "_-oe"
 * @identifier _SafeStr_2723 = "_-v4"
 * @identifier _SafeStr_2844 = "_-iB"
 * @identifier _SafeStr_3194 = "_-CM"
 * @identifier _SafeStr_3243 = "_-nX"
 * @identifier _SafeStr_3267 = "_-Bk"
 * @identifier _SafeStr_3345 = "_-tw"
 * @identifier _SafeStr_3612 = "_-oo"
 * @identifier _SafeStr_3614 = "_-t9"
 * @identifier _SafeStr_3749 = "_-fK"
 */
