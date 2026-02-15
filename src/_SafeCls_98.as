package
{
   import flash.display.MovieClip;
   
   public class _SafeCls_98
   {
      
      public var _SafeStr_118:Game;
      
      public var _SafeStr_815:MovieClip;
      
      public var _SafeStr_203:GfxType;
      
      public var _SafeStr_151:_SafeCls_6;
      
      public var _SafeStr_125:_SafeCls_40;
      
      public var _SafeStr_1528:Number;
      
      private var _SafeStr_1680:GfxType;
      
      public function _SafeCls_98(param1:Game, param2:MovieClip, param3:GfxType, param4:Number = 0, param5:Number = 0, param6:_SafeCls_6 = null, param7:Number = 0)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_815 = param2;
         this._SafeStr_151 = param6;
         this._SafeStr_1528 = param7;
         if(param3)
         {
            this._SafeStr_508(param3);
            if(Boolean(param4) || Boolean(param5))
            {
               this._SafeStr_3139(param4,param5);
            }
         }
      }
      
      public function _SafeStr_3139(param1:Number, param2:Number) : void
      {
         if(!this._SafeStr_125)
         {
            return;
         }
         this._SafeStr_125._SafeStr_120.x = param1;
         this._SafeStr_125._SafeStr_120.y = param2;
      }
      
      public function _SafeStr_3600(param1:Number) : void
      {
         this._SafeStr_1528 = param1;
      }
      
      public function _SafeStr_3731(param1:Number, param2:Number) : void
      {
         this._SafeStr_815.x = param1;
         this._SafeStr_815.y = param2;
      }
      
      public function DestroyPaperDoll() : void
      {
         this._SafeStr_118 = null;
         this._SafeStr_203 = null;
         this._SafeStr_1680 = null;
         this._SafeStr_151 = null;
         if(this._SafeStr_125)
         {
            this._SafeStr_125._SafeStr_201();
            this._SafeStr_125 = null;
         }
      }
      
      public function _SafeStr_508(param1:GfxType) : void
      {
         var _loc2_:GfxType = null;
         if(this._SafeStr_151)
         {
            if(this._SafeStr_151._SafeStr_418)
            {
               _loc2_ = this._SafeStr_151._SafeStr_418.GetDuplicate();
            }
            else if(this._SafeStr_151._SafeStr_1231)
            {
               _loc2_ = _SafeCls_6._SafeStr_703._SafeStr_418.GetDuplicate();
            }
         }
         if(!_loc2_)
         {
            if(!param1)
            {
               return;
            }
            _loc2_ = param1;
         }
         var _loc3_:_SafeCls_88 = null;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         if(this._SafeStr_125)
         {
            if(this._SafeStr_203 && this._SafeStr_1680._SafeStr_180 == _loc2_._SafeStr_180 && this._SafeStr_1680._SafeStr_228 == _loc2_._SafeStr_228)
            {
               _loc3_ = this._SafeStr_125._SafeStr_138;
               this._SafeStr_125._SafeStr_138 = null;
            }
            if(this._SafeStr_125._SafeStr_120)
            {
               _loc4_ = this._SafeStr_125._SafeStr_120.x;
               _loc5_ = this._SafeStr_125._SafeStr_120.y;
            }
            this._SafeStr_125._SafeStr_201();
         }
         this._SafeStr_203 = param1;
         var _loc6_:Vector.<CustomArt> = this._SafeStr_203 ? this._SafeStr_203._SafeStr_301.slice() : null;
         if(Boolean(this._SafeStr_151) && Boolean(this._SafeStr_151._SafeStr_1297))
         {
            _loc6_.push(this._SafeStr_151._SafeStr_1297);
         }
         _loc2_._SafeStr_301 = _loc6_;
         if(this._SafeStr_1528)
         {
            _loc2_.animScale = this._SafeStr_1528;
         }
         this._SafeStr_125 = new _SafeCls_40(this._SafeStr_118,_loc2_,true);
         this._SafeStr_125._SafeStr_120.x = _loc4_;
         this._SafeStr_125._SafeStr_120.y = _loc5_;
         if(!this._SafeStr_815)
         {
            this._SafeStr_118._SafeStr_164.addChild(this._SafeStr_125._SafeStr_120);
         }
         else
         {
            this._SafeStr_815.removeChildren();
            this._SafeStr_815.addChild(this._SafeStr_125._SafeStr_120);
         }
         if(_loc3_)
         {
            this._SafeStr_125._SafeStr_138._SafeStr_1783();
            this._SafeStr_125._SafeStr_138 = _loc3_;
         }
         this._SafeStr_1680 = _loc2_;
      }
      
      public function ClearPaperDoll() : void
      {
         if(this._SafeStr_125)
         {
            this._SafeStr_125._SafeStr_138 = null;
            this._SafeStr_125._SafeStr_201();
         }
         this._SafeStr_815.removeChildren();
      }
      
      public function _SafeStr_3625(param1:_SafeCls_6, param2:Boolean = true) : void
      {
         if(param1 == this._SafeStr_151)
         {
            return;
         }
         this._SafeStr_151 = param1;
         if(param2)
         {
            this._SafeStr_508(this._SafeStr_203);
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_6 = "_-0u"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeCls_98 = "_-hy"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_125 = "_-5"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_151 = "_-0w"
 * @identifier _SafeStr_164 = "_-QU"
 * @identifier _SafeStr_180 = "_-az"
 * @identifier _SafeStr_201 = "_-x"
 * @identifier _SafeStr_203 = "_-2b"
 * @identifier _SafeStr_228 = "_-QK"
 * @identifier _SafeStr_301 = "_-4c"
 * @identifier _SafeStr_418 = "_-me"
 * @identifier _SafeStr_508 = "_-Fj"
 * @identifier _SafeStr_703 = "_-ig"
 * @identifier _SafeStr_815 = "_-tY"
 * @identifier _SafeStr_1231 = "_-sD"
 * @identifier _SafeStr_1297 = "_-kY"
 * @identifier _SafeStr_1528 = "_-BY"
 * @identifier _SafeStr_1680 = "_-kQ"
 * @identifier _SafeStr_1783 = "_-MU"
 * @identifier _SafeStr_3139 = "_-pu"
 * @identifier _SafeStr_3600 = "_-o6"
 * @identifier _SafeStr_3625 = "_-t2"
 * @identifier _SafeStr_3731 = "_-jP"
 */
