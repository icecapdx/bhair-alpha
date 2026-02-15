package
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Transform;
   import flash.utils.getQualifiedClassName;
   
   public class _SafeCls_31
   {
      
      private static const _SafeStr_2172:uint = 5;
      
      internal var _SafeStr_2740:String;
      
      internal var _SafeStr_1854:_SafeCls_31;
      
      internal var _SafeStr_1804:Vector.<_SafeCls_31>;
      
      internal var _SafeStr_3371:Number;
      
      internal var _SafeStr_1587:uint;
      
      internal var _SafeStr_1326:uint;
      
      internal var _SafeStr_919:uint;
      
      internal var _SafeStr_1021:uint;
      
      internal var _SafeStr_1871:uint;
      
      internal var _SafeStr_959:Vector.<_SafeCls_28>;
      
      internal var _SafeStr_1098:Vector.<uint>;
      
      internal var _SafeStr_1072:MovieClip;
      
      internal var _SafeStr_2262:uint;
      
      private var _SafeStr_1973:Sprite;
      
      public function _SafeCls_31(param1:String, param2:uint, param3:MovieClip, param4:uint, param5:uint, param6:uint, param7:uint, param8:uint, param9:Vector.<uint>, param10:_SafeCls_31 = null)
      {
         super();
         this._SafeStr_2740 = param1;
         this._SafeStr_1854 = this;
         this._SafeStr_1587 = param2;
         this._SafeStr_2262 = param4;
         this._SafeStr_1326 = param5;
         this._SafeStr_919 = param6;
         this._SafeStr_1021 = param7;
         this._SafeStr_1871 = param8;
         this._SafeStr_1072 = param3;
         this._SafeStr_1973 = new Sprite();
         this._SafeStr_1973.addChild(this._SafeStr_1072);
         this._SafeStr_959 = new Vector.<_SafeCls_28>(param5,true);
         if(param9)
         {
            this._SafeStr_1098 = param9;
            this._SafeStr_1098.fixed = true;
         }
      }
      
      private static function _SafeStr_1520(param1:MovieClip, param2:uint) : _SafeCls_28
      {
         var _loc3_:MovieClip = null;
         var _loc4_:String = null;
         var _loc5_:uint = 0;
         var _loc6_:Transform = null;
         var _loc7_:_SafeCls_32 = null;
         var _loc8_:int = 0;
         var _loc10_:Matrix = null;
         var _loc11_:MovieClip = null;
         var _loc12_:Matrix = null;
         var _loc13_:String = null;
         var _loc14_:Array = null;
         var _loc15_:_SafeCls_28 = null;
         var _loc16_:_SafeCls_28 = null;
         var _loc18_:int = 0;
         var _loc20_:Point = null;
         _loc16_ = new _SafeCls_28(param2);
         var _loc17_:Vector.<_SafeCls_32> = new Vector.<_SafeCls_32>();
         var _loc19_:int = param1.numChildren;
         _loc18_ = 0;
         for(; _loc18_ < _loc19_; _loc18_++)
         {
            _loc3_ = param1.getChildAt(_loc18_) as MovieClip;
            if(_loc3_)
            {
               _loc4_ = getQualifiedClassName(_loc3_);
               if(_loc4_ == "a_FireSocket")
               {
                  _loc3_.visible = false;
                  _loc16_._SafeStr_2296 = new Point(_loc3_.x,_loc3_.y);
               }
               else if(_loc4_ == "a_PowerSocket")
               {
                  _loc3_.visible = false;
                  _loc10_ = _loc3_.transform.matrix;
                  _loc11_ = _loc3_["am_Scalinator"];
                  if(_loc11_)
                  {
                     _loc12_ = _loc11_.transform.matrix;
                     _loc12_.concat(_loc10_);
                     _loc10_ = _loc12_;
                  }
                  _loc16_._SafeStr_1980 = new Point(_loc10_.tx,_loc10_.ty);
               }
               else
               {
                  if(_loc4_.indexOf("a_EB_Platform") != -1)
                  {
                     _loc20_ = new Point(_loc3_.x,_loc3_.y);
                     _loc16_._SafeStr_1557 = _loc20_;
                  }
                  if(_loc4_ == "a_Cape")
                  {
                     if(_loc18_ < _SafeStr_2172)
                     {
                        _loc3_.gotoAndStop(1);
                        _loc3_.visible = false;
                        _loc16_._SafeStr_2223 = _loc3_.transform.matrix;
                        continue;
                     }
                  }
                  _loc6_ = _loc3_.transform;
                  _loc7_ = new _SafeCls_32(_loc4_,_loc3_.name,_loc6_.matrix,_loc6_.colorTransform.alphaMultiplier);
                  _loc5_ = uint(_loc3_.totalFrames);
                  if(_loc5_ > 1)
                  {
                     _loc8_ = int(param2);
                     _loc13_ = _loc3_.name;
                     if(_loc13_.indexOf("_") != -1)
                     {
                        _loc14_ = _loc13_.split("_");
                        _loc8_ -= int(_loc14_[2]);
                     }
                     _loc8_ = _loc8_ % _loc5_ + 1;
                     _loc3_.gotoAndStop(_loc8_);
                     _loc7_.frame = _loc8_;
                  }
                  if(_loc7_._SafeStr_2946 || _loc7_._SafeStr_1513)
                  {
                     _loc15_ = _SafeStr_1520(_loc3_,0);
                     _loc7_._SafeStr_1073 = _loc15_._SafeStr_823;
                     _loc15_._SafeStr_823 = new Vector.<_SafeCls_32>();
                     _loc15_._SafeStr_2873();
                  }
                  _loc17_.push(_loc7_);
               }
            }
         }
         _loc17_.fixed = true;
         _loc16_._SafeStr_823 = _loc17_;
         return _loc16_;
      }
      
      public function _SafeStr_2538() : void
      {
         var _loc1_:_SafeCls_28 = null;
         this._SafeStr_1098 = null;
         this._SafeStr_1854 = null;
         this._SafeStr_1804 = null;
         this._SafeStr_1973 = null;
         this._SafeStr_1072 = null;
         for each(_loc1_ in this._SafeStr_959)
         {
            if(_loc1_)
            {
               _loc1_._SafeStr_2873();
            }
         }
         this._SafeStr_959 = null;
      }
      
      public function _SafeStr_2684(param1:uint) : _SafeCls_28
      {
         this._SafeStr_1072.gotoAndStop(this._SafeStr_2262 + param1);
         var _loc2_:_SafeCls_28 = _SafeStr_1520(this._SafeStr_1072,param1);
         this._SafeStr_959[param1] = _loc2_;
         return _loc2_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_28 = "_-sE"
 * @identifier _SafeCls_31 = "_-iH"
 * @identifier _SafeCls_32 = "_-if"
 * @identifier _SafeStr_823 = "_-Br"
 * @identifier _SafeStr_919 = "_-Ps"
 * @identifier _SafeStr_959 = "_-0U"
 * @identifier _SafeStr_1021 = "_-1B"
 * @identifier _SafeStr_1072 = "_-vl"
 * @identifier _SafeStr_1073 = "_-lD"
 * @identifier _SafeStr_1098 = "_-K1"
 * @identifier _SafeStr_1326 = " do"
 * @identifier _SafeStr_1513 = "_-db"
 * @identifier _SafeStr_1520 = "_-dF"
 * @identifier _SafeStr_1557 = "_-Vr"
 * @identifier _SafeStr_1587 = "_-nQ"
 * @identifier _SafeStr_1804 = "_-vH"
 * @identifier _SafeStr_1854 = "_-uO"
 * @identifier _SafeStr_1871 = "_-TN"
 * @identifier _SafeStr_1973 = "_-7w"
 * @identifier _SafeStr_1980 = "_-3w"
 * @identifier _SafeStr_2172 = "_-Ms"
 * @identifier _SafeStr_2223 = "_-Be"
 * @identifier _SafeStr_2262 = "_-iw"
 * @identifier _SafeStr_2296 = "_-BQ"
 * @identifier _SafeStr_2538 = "_-QP"
 * @identifier _SafeStr_2684 = "_-Tq"
 * @identifier _SafeStr_2740 = "_-OO"
 * @identifier _SafeStr_2873 = "use "
 * @identifier _SafeStr_2946 = "_-rj"
 * @identifier _SafeStr_3371 = "_-Eu"
 */
