package
{
   import flash.utils.Dictionary;
   
   public class _SafeCls_8
   {
      
      public static var _SafeStr_1706:Array;
      
      public static var _SafeStr_848:Dictionary;
      
      internal var _SafeStr_602:uint;
      
      internal var mDataName:String;
      
      internal var _SafeStr_1994:String;
      
      internal var _SafeStr_1328:GfxType;
      
      internal var _SafeStr_1307:GfxType;
      
      internal var _SafeStr_1168:GfxType;
      
      internal var _SafeStr_1078:GfxType;
      
      internal var _SafeStr_2208:Vector.<_SafeCls_14>;
      
      public function _SafeCls_8()
      {
         super();
      }
      
      public static function _SafeStr_280(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:XMLList = null;
         var _loc6_:_SafeCls_8 = null;
         var _loc7_:XML = null;
         var _loc8_:Array = null;
         var _loc9_:String = null;
         var _loc10_:_SafeCls_14 = null;
         _SafeStr_1706 = new Array();
         _SafeStr_848 = new Dictionary();
         var _loc2_:XMLList = param1.children();
         for each(_loc3_ in _loc2_)
         {
            _loc5_ = _loc3_.children();
            _loc6_ = new _SafeCls_8();
            _loc6_.mDataName = _loc3_.attribute("TrailEffectName");
            for each(_loc7_ in _loc5_)
            {
               _loc4_ = String(_loc7_.name());
               if(_loc4_ == "TrailEffectID")
               {
                  _loc6_._SafeStr_602 = uint(_loc7_);
               }
               else if(_loc4_ == "KOSound")
               {
                  _loc6_._SafeStr_1994 = String(_loc7_);
               }
               else if(_loc4_ == "KOGfx")
               {
                  _loc6_._SafeStr_1328 = GfxType._SafeStr_299(_loc7_,null);
                  if(_loc6_._SafeStr_1328)
                  {
                     _loc6_._SafeStr_1328._SafeStr_290 = true;
                  }
               }
               else if(_loc4_ == "TorsoGfx")
               {
                  _loc6_._SafeStr_1307 = GfxType._SafeStr_299(_loc7_,null);
                  if(_loc6_._SafeStr_1307)
                  {
                     _loc6_._SafeStr_1307._SafeStr_290 = true;
                  }
               }
               else if(_loc4_ == "OpeningGfx")
               {
                  _loc6_._SafeStr_1168 = GfxType._SafeStr_299(_loc7_,null);
                  if(_loc6_._SafeStr_1168)
                  {
                     _loc6_._SafeStr_1168._SafeStr_290 = true;
                  }
               }
               else if(_loc4_ == "ClosingGfx")
               {
                  _loc6_._SafeStr_1078 = GfxType._SafeStr_299(_loc7_,null);
                  if(_loc6_._SafeStr_1078)
                  {
                     _loc6_._SafeStr_1078._SafeStr_290 = true;
                  }
               }
               else if(_loc4_ == "EmitterTypes")
               {
                  if(!_loc7_ || _loc7_ == "")
                  {
                     _SafeCls_22._SafeStr_135("No specified emitter types for " + _loc6_.mDataName);
                  }
                  _loc6_._SafeStr_2208 = new Vector.<_SafeCls_14>();
                  _loc8_ = _loc7_.toString().split(",");
                  for each(_loc9_ in _loc8_)
                  {
                     _loc10_ = _SafeCls_14._SafeStr_1041[_loc9_];
                     _loc6_._SafeStr_2208.push(_loc10_);
                  }
               }
               else
               {
                  _SafeCls_22._SafeStr_135("Unrecognized Property in " + _loc6_.mDataName + ": " + _loc4_);
               }
            }
            if(_loc6_._SafeStr_602)
            {
               if(_SafeStr_848[_loc6_.mDataName])
               {
                  _SafeCls_22._SafeStr_135("Duplicate TrailEffectName for effect named: " + _loc6_.mDataName);
               }
               if(_SafeStr_1706[_loc6_._SafeStr_602])
               {
                  _SafeCls_22._SafeStr_135("Duplicate TrailEffectID for effect named: " + _loc6_.mDataName);
               }
               _SafeStr_848[_loc6_.mDataName] = _loc6_;
               _SafeStr_1706[_loc6_._SafeStr_602] = _loc6_;
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_8 = "_-So"
 * @identifier _SafeCls_14 = "_-fx"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_280 = "_-4e"
 * @identifier _SafeStr_290 = "_-lH"
 * @identifier _SafeStr_299 = "_-e3"
 * @identifier _SafeStr_602 = "_-52"
 * @identifier _SafeStr_848 = "_-pp"
 * @identifier _SafeStr_1041 = "_-tK"
 * @identifier _SafeStr_1078 = "_-XV"
 * @identifier _SafeStr_1168 = "_-Yl"
 * @identifier _SafeStr_1307 = "_-b3"
 * @identifier _SafeStr_1328 = "_-QL"
 * @identifier _SafeStr_1706 = "_-5v"
 * @identifier _SafeStr_1994 = "_-lb"
 * @identifier _SafeStr_2208 = "_-S-"
 */
