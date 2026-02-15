package
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   
   public class _SafeCls_30
   {
      
      private static const _SafeStr_1277:Dictionary = new Dictionary();
      
      internal var _SafeStr_118:Game;
      
      public function _SafeCls_30(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
      }
      
      public static function _SafeStr_2522(param1:String, param2:String, param3:String) : _SafeCls_33
      {
         return _SafeStr_1277[param2 + "/" + param1 + ":" + param3];
      }
      
      public static function _SafeStr_1812(param1:String, param2:String, param3:String, param4:String) : _SafeCls_33
      {
         var _loc7_:MovieClip = null;
         var _loc9_:Vector.<uint> = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:uint = 0;
         var _loc15_:uint = 0;
         var _loc16_:uint = 0;
         var _loc17_:FrameLabel = null;
         var _loc18_:ApplicationDomain = null;
         var _loc19_:Class = null;
         var _loc5_:String = param2 + "/" + param1 + ":" + param4;
         var _loc6_:_SafeCls_33 = _SafeStr_1277[_loc5_];
         if(!_loc6_)
         {
            _loc6_ = new _SafeCls_33(param1,param2);
            _SafeStr_1277[_loc5_] = _loc6_;
         }
         var _loc8_:Object = _SafeCls_9._SafeStr_688[param2];
         if(!_loc8_)
         {
            _loc7_ = new MovieClip();
            _SafeCls_22._SafeStr_195("Could not find animation file: " + param2);
         }
         else
         {
            _loc18_ = _loc8_.applicationDomain;
            if(!_loc18_.hasDefinition(param3))
            {
               _loc7_ = new MovieClip();
               _SafeCls_22._SafeStr_195("Could not find " + param3 + " in file: " + param2);
            }
            else
            {
               _loc19_ = _loc18_.getDefinition(param3) as Class;
               _loc7_ = new _loc19_();
               _SafeCls_19._SafeStr_1514(_loc7_);
            }
         }
         for each(_loc17_ in _loc7_.scenes[0].labels)
         {
            _loc11_ = _loc17_.name;
            if(!_loc11_.indexOf("Loop"))
            {
               _loc13_ = uint(_loc17_.frame);
            }
            else if(!_loc11_.indexOf("Recover"))
            {
               _loc14_ = uint(_loc17_.frame);
            }
            else if(!_loc11_.indexOf("End"))
            {
               _loc15_ = uint(_loc17_.frame);
            }
            else if(!_loc11_.indexOf("Free"))
            {
               _loc16_ = uint(_loc17_.frame);
            }
            else if(!_loc11_.indexOf("RunEnd"))
            {
               if(!_loc9_)
               {
                  _loc9_ = new Vector.<uint>();
               }
               _loc9_.push(_loc17_.frame);
            }
            else
            {
               if(_loc10_)
               {
                  _loc6_._SafeStr_2594(_loc10_,_loc7_,_loc12_,_loc15_,_loc13_,_loc14_,_loc16_,_loc9_,param4);
               }
               _loc10_ = _loc11_;
               _loc12_ = uint(_loc17_.frame);
               _loc13_ = 0;
               _loc14_ = 0;
               _loc15_ = 0;
               _loc16_ = 0;
               _loc9_ = null;
            }
         }
         _loc6_._SafeStr_2594(_loc10_,_loc7_,_loc12_,_loc15_,_loc13_,_loc14_,_loc16_,_loc9_,param4);
         _loc6_._SafeStr_3021();
         return _loc6_;
      }
      
      public function _SafeStr_3664() : void
      {
         this._SafeStr_118 = null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_9 = "_-cU"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_30 = "_-DD"
 * @identifier _SafeCls_33 = "_-bK"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_195 = "_-70"
 * @identifier _SafeStr_688 = "true"
 * @identifier _SafeStr_1277 = "_-dQ"
 * @identifier _SafeStr_1514 = "_-Mj"
 * @identifier _SafeStr_1812 = "_-w2"
 * @identifier _SafeStr_2522 = "_-UY"
 * @identifier _SafeStr_2594 = "_-l0"
 * @identifier _SafeStr_3021 = "_-Iy"
 * @identifier _SafeStr_3664 = "_-Nm"
 */
