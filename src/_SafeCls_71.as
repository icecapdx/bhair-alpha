package
{
   import flash.geom.Point;
   
   public class _SafeCls_71
   {
      
      internal static const _SafeStr_2327:Number = 0.00001;
      
      private static const _SafeStr_1866:Number = 20;
      
      private static const _SafeStr_2105:uint = 2000;
      
      internal var _SafeStr_2576:Number;
      
      internal var _SafeStr_211:Point;
      
      internal var _SafeStr_1593:Number = 0;
      
      internal var _SafeStr_1245:Point;
      
      internal var _SafeStr_857:Point;
      
      internal var _SafeStr_922:Point;
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_357:_SafeCls_40 = null;
      
      internal var _SafeStr_1814:Boolean;
      
      internal var _SafeStr_2524:Number;
      
      internal var _SafeStr_382:_SafeCls_25;
      
      internal var _SafeStr_2849:Number = 0;
      
      internal var _SafeStr_2999:Number = 0;
      
      internal var _SafeStr_1437:uint = 0;
      
      internal var _SafeStr_3359:uint = 0;
      
      internal var _SafeStr_424:_SafeCls_2;
      
      internal var _SafeStr_2061:Boolean;
      
      internal var _SafeStr_1085:uint;
      
      internal var _SafeStr_2834:uint = 0;
      
      public function _SafeCls_71(param1:Number, param2:Number, param3:Number, param4:Number, param5:_SafeCls_25, param6:_SafeCls_2, param7:uint, param8:uint = 0)
      {
         super();
         this._SafeStr_382 = param5;
         this._SafeStr_118 = this._SafeStr_382._SafeStr_118;
         this._SafeStr_424 = param6;
         this._SafeStr_922 = new Point(param1,param2);
         this._SafeStr_211 = new Point(this._SafeStr_922.x,this._SafeStr_922.y);
         this._SafeStr_1245 = new Point(param3,param4);
         this._SafeStr_2576 = _SafeStr_1866;
         this._SafeStr_2834 = _SafeStr_2105;
         this._SafeStr_1085 = param8;
         this._SafeStr_357 = new _SafeCls_40(this._SafeStr_118,this._SafeStr_424._SafeStr_765,this._SafeStr_382._SafeStr_132 != null);
         this._SafeStr_357._SafeStr_120.x = this._SafeStr_211.x;
         this._SafeStr_357._SafeStr_120.y = this._SafeStr_211.y;
         if(param6._SafeStr_241 == "NephitRanged")
         {
            this._SafeStr_118._SafeStr_164.addChild(this._SafeStr_357._SafeStr_120);
         }
         else
         {
            this._SafeStr_118._SafeStr_164.addChildAt(this._SafeStr_357._SafeStr_120,this._SafeStr_118._SafeStr_164.getChildIndex(this._SafeStr_382._SafeStr_125._SafeStr_120));
         }
         this._SafeStr_857 = this._SafeStr_1245.subtract(this._SafeStr_922);
         this._SafeStr_2999 = this._SafeStr_857.length - _SafeStr_2327;
         this._SafeStr_1814 = false;
         this._SafeStr_2524 = this._SafeStr_118.mTimeThisTick;
         if(this._SafeStr_382._SafeStr_137 & _SafeCls_25.LOCAL)
         {
            this._SafeStr_3359 = param7;
         }
         else
         {
            this._SafeStr_1437 = param7;
         }
         this._SafeStr_2061 = !this._SafeStr_1437 && !param6._SafeStr_1595 || param6._SafeStr_1595 && this._SafeStr_1437 || Boolean(_SafeCls_1.flags & _SafeCls_1._SafeStr_740);
      }
      
      public function DestroyMissile() : void
      {
         this._SafeStr_211 = null;
         this._SafeStr_1245 = null;
         this._SafeStr_857 = null;
         this._SafeStr_922 = null;
         if(this._SafeStr_357)
         {
            this._SafeStr_357._SafeStr_201();
            this._SafeStr_357 = null;
         }
         this._SafeStr_382 = null;
         this._SafeStr_424 = null;
         this._SafeStr_118 = null;
      }
      
      public function _SafeStr_2804(param1:int, param2:int, param3:Point, param4:Boolean) : void
      {
         var _loc5_:GfxType = null;
         var _loc6_:_SafeCls_40 = null;
         if(!param3)
         {
            param3 = new Point(this._SafeStr_857.x,this._SafeStr_857.y);
            param3.normalize(1);
         }
         if(this._SafeStr_357)
         {
            this._SafeStr_357._SafeStr_201();
            this._SafeStr_357 = null;
         }
         if(this._SafeStr_424._SafeStr_470)
         {
            _loc5_ = this._SafeStr_424._SafeStr_470[uint(Math.random() * this._SafeStr_424._SafeStr_470.length)];
            _loc6_ = new _SafeCls_40(this._SafeStr_118,_loc5_,this._SafeStr_382._SafeStr_132 != null);
            _loc6_._SafeStr_120.x = param1;
            _loc6_._SafeStr_120.y = param2;
            _loc6_._SafeStr_120.rotation = _SafeCls_19._SafeStr_2378(this._SafeStr_1593,param3,360);
            this._SafeStr_118._SafeStr_164.addChild(_loc6_._SafeStr_120);
         }
         this._SafeStr_2849 = this._SafeStr_118.mTimeThisTick;
      }
      
      public function _SafeStr_3524() : Boolean
      {
         var _loc7_:_SafeCls_25 = null;
         var _loc8_:Number = NaN;
         var _loc9_:Array = null;
         var _loc10_:_SafeCls_25 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:_SafeCls_20 = null;
         var _loc14_:_SafeCls_20 = null;
         var _loc15_:Point = null;
         var _loc16_:Array = null;
         var _loc17_:* = false;
         var _loc1_:Boolean = false;
         var _loc2_:_SafeCls_20 = null;
         var _loc3_:Point = new Point(0,-1);
         if(this._SafeStr_2849 > 0)
         {
            return false;
         }
         if(!this._SafeStr_382._SafeStr_267)
         {
            this._SafeStr_2804(this._SafeStr_211.x,this._SafeStr_211.y,null,false);
            return false;
         }
         var _loc4_:Point = new Point(this._SafeStr_857.x,this._SafeStr_857.y);
         _loc4_.normalize(this._SafeStr_118._SafeStr_227 * this._SafeStr_2576);
         var _loc5_:Point = new Point(this._SafeStr_211.x + _loc4_.x,this._SafeStr_211.y + _loc4_.y);
         if(this._SafeStr_2061)
         {
            _loc7_ = null;
            _loc8_ = _SafeCls_47._SafeStr_387 * 0.5;
            _loc9_ = this._SafeStr_118._SafeStr_430(this._SafeStr_382,this._SafeStr_211.x,this._SafeStr_211.y,_loc8_,_loc8_,this._SafeStr_424._SafeStr_504 < 0 ? Game.FRIEND : Game._SafeStr_580);
            for each(_loc10_ in _loc9_)
            {
               if(_loc10_ != this._SafeStr_382)
               {
                  if(_SafeCls_26._SafeStr_2979(this._SafeStr_211,_loc4_,_loc10_))
                  {
                     _loc7_ = _loc10_;
                     _loc1_ = true;
                     _loc5_.x = this._SafeStr_211.x * 0.3 + _loc10_._SafeStr_152 * 0.7;
                     _loc5_.y = this._SafeStr_211.y;
                     break;
                  }
               }
            }
            if(!_loc1_)
            {
               _loc13_ = this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_211.x,this._SafeStr_211.y,_loc4_,_loc5_,null,_loc3_,null,_SafeCls_0._SafeStr_179,0);
               if(_loc13_)
               {
                  _loc2_ = _loc13_;
               }
               if(_loc2_)
               {
                  _loc1_ = true;
               }
            }
            _loc11_ = this._SafeStr_211.x;
            _loc12_ = this._SafeStr_211.y;
            if(!this._SafeStr_1814 && !_loc1_ && Point.distance(this._SafeStr_211.add(_loc4_),this._SafeStr_922) > this._SafeStr_2999)
            {
               this._SafeStr_1814 = true;
               _loc11_ = this._SafeStr_1245.x;
               _loc12_ = this._SafeStr_1245.y;
            }
            if(this._SafeStr_1814)
            {
               _loc14_ = this._SafeStr_118._SafeStr_165._SafeStr_174(_loc11_,_loc12_,_loc4_,_loc5_,null,_loc3_,null,_SafeCls_0._SafeStr_179 | _SafeCls_0._SafeStr_291,0);
               if(_loc14_)
               {
                  _loc2_ = _loc14_;
               }
               if(_loc2_)
               {
                  _loc1_ = true;
               }
            }
         }
         var _loc6_:Boolean = this._SafeStr_2061 && (_loc1_ || this._SafeStr_118.mTimeThisTick - this._SafeStr_2524 > this._SafeStr_2834);
         if(_loc6_)
         {
            _loc15_ = new Point(this._SafeStr_211.x,this._SafeStr_211.y);
         }
         this._SafeStr_211.x = _loc5_.x;
         this._SafeStr_211.y = _loc5_.y;
         _loc4_.normalize(1);
         this._SafeStr_1593 = _SafeCls_19._SafeStr_2378(this._SafeStr_1593,_loc4_,360);
         this._SafeStr_357._SafeStr_120.x = this._SafeStr_211.x;
         this._SafeStr_357._SafeStr_120.y = this._SafeStr_211.y;
         this._SafeStr_357._SafeStr_120.rotation = this._SafeStr_1593;
         if(_loc6_)
         {
            if(this._SafeStr_424._SafeStr_595)
            {
               _loc16_ = this._SafeStr_118._SafeStr_430(this._SafeStr_382,this._SafeStr_211.x,this._SafeStr_211.y,this._SafeStr_424._SafeStr_595,this._SafeStr_424._SafeStr_684,this._SafeStr_424._SafeStr_504 < 0 ? Game.FRIEND : Game._SafeStr_580);
            }
            else if(_loc7_)
            {
               _loc16_ = new Array(_loc7_);
            }
            else
            {
               _loc16_ = new Array();
            }
            this._SafeStr_382.mCombatState._SafeStr_2614(this._SafeStr_424,null,_loc15_,this._SafeStr_211,_loc16_,0,0,null,this._SafeStr_1085,0,_loc4_.x < 0);
            _loc17_ = _loc7_ != null;
            this._SafeStr_2804(this._SafeStr_211.x,this._SafeStr_211.y,_loc2_ ? new Point(-_loc3_.x,-_loc3_.y) : _loc4_,_loc17_);
         }
         return true;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_2 = "_-jR"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_20 = "_-9f"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_26 = "_-LQ"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_47 = "_-Km"
 * @identifier _SafeCls_71 = "_-vp"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_125 = "_-5"
 * @identifier _SafeStr_132 = "_-wb"
 * @identifier _SafeStr_137 = "_-3"
 * @identifier _SafeStr_152 = "_-PC"
 * @identifier _SafeStr_164 = "_-QU"
 * @identifier _SafeStr_165 = "_-Ix"
 * @identifier _SafeStr_174 = "_-Mt"
 * @identifier _SafeStr_179 = "_-BZ"
 * @identifier _SafeStr_201 = "_-x"
 * @identifier _SafeStr_211 = "_-hw"
 * @identifier _SafeStr_227 = "_-XT"
 * @identifier _SafeStr_241 = "_-iM"
 * @identifier _SafeStr_267 = "_-0V"
 * @identifier _SafeStr_291 = "_-Ce"
 * @identifier _SafeStr_357 = "_-pF"
 * @identifier _SafeStr_382 = "_-DL"
 * @identifier _SafeStr_387 = "_-nt"
 * @identifier _SafeStr_424 = "_-RP"
 * @identifier _SafeStr_430 = "_-kA"
 * @identifier _SafeStr_470 = "_-W0"
 * @identifier _SafeStr_504 = "_-V4"
 * @identifier _SafeStr_580 = "_-4J"
 * @identifier _SafeStr_595 = "_-Jm"
 * @identifier _SafeStr_684 = "_-rW"
 * @identifier _SafeStr_740 = "_-NB"
 * @identifier _SafeStr_765 = "_-I4"
 * @identifier _SafeStr_857 = "_-Pd"
 * @identifier _SafeStr_922 = "_-Pm"
 * @identifier _SafeStr_1085 = "_-YN"
 * @identifier _SafeStr_1245 = "_-NH"
 * @identifier _SafeStr_1437 = "_-FD"
 * @identifier _SafeStr_1593 = "_-7l"
 * @identifier _SafeStr_1595 = "_-Hv"
 * @identifier _SafeStr_1814 = "_-fh"
 * @identifier _SafeStr_1866 = "_-Rx"
 * @identifier _SafeStr_2061 = "_-Bv"
 * @identifier _SafeStr_2105 = "_-uG"
 * @identifier _SafeStr_2327 = "_-2Y"
 * @identifier _SafeStr_2378 = "_-Qu"
 * @identifier _SafeStr_2524 = "_-iS"
 * @identifier _SafeStr_2576 = "_-8E"
 * @identifier _SafeStr_2614 = "_-uj"
 * @identifier _SafeStr_2804 = "_-Rn"
 * @identifier _SafeStr_2834 = "_-aH"
 * @identifier _SafeStr_2849 = "_-d2"
 * @identifier _SafeStr_2979 = "_-jt"
 * @identifier _SafeStr_2999 = "_-G-"
 * @identifier _SafeStr_3359 = "_-4"
 * @identifier _SafeStr_3524 = "_-mq"
 */
