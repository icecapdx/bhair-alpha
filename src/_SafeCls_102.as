package
{
   import flash.geom.Point;
   
   public class _SafeCls_102
   {
      
      private static const _SafeStr_2518:Number = 5;
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_1820:String;
      
      internal var _SafeStr_491:_SafeCls_40;
      
      internal var _SafeStr_458:Vector.<_SafeCls_20>;
      
      private var bDisabled:Boolean;
      
      public function _SafeCls_102(param1:Game, param2:String, param3:_SafeCls_40)
      {
         super();
         this._SafeStr_118 = param1;
         this.bDisabled = false;
         this._SafeStr_491 = param3;
         this._SafeStr_1820 = param2;
      }
      
      public function _SafeStr_3173() : void
      {
         this._SafeStr_491 = null;
         this._SafeStr_458 = null;
      }
      
      public function _SafeStr_3530() : Boolean
      {
         var _loc2_:Point = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:_SafeCls_20 = null;
         if(this.bDisabled)
         {
            return false;
         }
         var _loc1_:Point = this._SafeStr_491._SafeStr_138._SafeStr_453 ? this._SafeStr_491._SafeStr_138._SafeStr_453._SafeStr_1557 : null;
         if(_loc1_ != null && Boolean(this._SafeStr_458))
         {
            _loc2_ = this._SafeStr_491._SafeStr_120.transform.matrix.transformPoint(_loc1_);
            _loc3_ = this._SafeStr_458.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this._SafeStr_458[_loc4_];
               _loc5_._SafeStr_1651 = _loc5_._SafeStr_198;
               _loc5_._SafeStr_2135 = _loc5_._SafeStr_261;
               _loc5_._SafeStr_198 = _loc5_._SafeStr_2767 + _loc2_.x;
               _loc5_._SafeStr_261 = _loc5_._SafeStr_2666 + _loc2_.y;
               _loc5_._SafeStr_235 = _loc5_._SafeStr_2924 + _loc2_.x;
               _loc5_._SafeStr_306 = _loc5_._SafeStr_2488 + _loc2_.y;
               _loc4_++;
            }
         }
         return true;
      }
      
      public function _SafeStr_3491(param1:Vector.<_SafeCls_20>) : void
      {
         var _loc7_:_SafeCls_20 = null;
         this._SafeStr_458 = param1;
         var _loc2_:_SafeCls_28 = this._SafeStr_491._SafeStr_138._SafeStr_175._SafeStr_959[0];
         if(!_loc2_)
         {
            _loc2_ = this._SafeStr_491._SafeStr_138._SafeStr_175._SafeStr_2684(0);
         }
         var _loc3_:Point = _loc2_._SafeStr_1557;
         var _loc4_:Point = this._SafeStr_491._SafeStr_120.transform.matrix.transformPoint(_loc3_);
         var _loc5_:uint = this._SafeStr_458.length;
         var _loc6_:uint = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = this._SafeStr_458[_loc6_];
            _loc7_._SafeStr_2767 = _loc7_._SafeStr_198 - _loc4_.x;
            _loc7_._SafeStr_2666 = _loc7_._SafeStr_261 - _loc4_.y;
            _loc7_._SafeStr_2924 = _loc7_._SafeStr_235 - _loc4_.x;
            _loc7_._SafeStr_2488 = _loc7_._SafeStr_306 - _loc4_.y;
            _loc6_++;
         }
      }
      
      public function _SafeStr_3580() : void
      {
         var _loc1_:uint = this._SafeStr_458.length;
         var _loc2_:uint = 0;
         while(_loc2_ < _loc1_)
         {
            this._SafeStr_458[_loc2_].bDisabled = true;
            _loc2_++;
         }
         this.bDisabled = true;
      }
      
      public function _SafeStr_3695() : void
      {
         var _loc1_:uint = this._SafeStr_458.length;
         var _loc2_:uint = 0;
         while(_loc2_ < _loc1_)
         {
            this._SafeStr_458[_loc2_].bDisabled = false;
            _loc2_++;
         }
         this.bDisabled = false;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_20 = "_-9f"
 * @identifier _SafeCls_28 = "_-sE"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_102 = "_-9E"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_175 = "_-1l"
 * @identifier _SafeStr_198 = "_-Jk"
 * @identifier _SafeStr_235 = "_-KF"
 * @identifier _SafeStr_261 = "_-dm"
 * @identifier _SafeStr_306 = "_-r9"
 * @identifier _SafeStr_453 = "_-I-"
 * @identifier _SafeStr_458 = "_-u7"
 * @identifier _SafeStr_491 = "_-pz"
 * @identifier _SafeStr_959 = "_-0U"
 * @identifier _SafeStr_1557 = "_-Vr"
 * @identifier _SafeStr_1651 = "_-l1"
 * @identifier _SafeStr_1820 = "_-8S"
 * @identifier _SafeStr_2135 = "_-d3"
 * @identifier _SafeStr_2488 = "_-c3"
 * @identifier _SafeStr_2518 = "_-nD"
 * @identifier _SafeStr_2666 = "_-1k"
 * @identifier _SafeStr_2684 = "_-Tq"
 * @identifier _SafeStr_2767 = "import"
 * @identifier _SafeStr_2924 = "_-S3"
 * @identifier _SafeStr_3173 = "_-ek"
 * @identifier _SafeStr_3491 = "_-9p"
 * @identifier _SafeStr_3530 = "_-Mh"
 * @identifier _SafeStr_3580 = "_-HH"
 * @identifier _SafeStr_3695 = "_-0I"
 */
