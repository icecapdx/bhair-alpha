package
{
   import flash.utils.Dictionary;
   
   public class _SafeCls_14
   {
      
      public static var _SafeStr_1802:Array;
      
      public static var _SafeStr_1041:Dictionary;
      
      internal var _SafeStr_602:uint;
      
      internal var mDataName:String;
      
      internal var _SafeStr_1691:uint;
      
      internal var _SafeStr_2230:uint;
      
      internal var _SafeStr_2469:Number;
      
      internal var _SafeStr_2776:Number;
      
      internal var _SafeStr_1562:Vector.<String>;
      
      internal var _SafeStr_1938:Boolean;
      
      public function _SafeCls_14()
      {
         super();
      }
      
      public static function _SafeStr_280(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:XMLList = null;
         var _loc6_:_SafeCls_14 = null;
         var _loc7_:XML = null;
         var _loc8_:Array = null;
         var _loc9_:String = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         _SafeStr_1802 = new Array();
         _SafeStr_1041 = new Dictionary();
         var _loc2_:XMLList = param1.children();
         for each(_loc3_ in _loc2_)
         {
            _loc5_ = _loc3_.children();
            _loc6_ = new _SafeCls_14();
            _loc6_.mDataName = _loc3_.attribute("EmitterName");
            for each(_loc7_ in _loc5_)
            {
               _loc4_ = String(_loc7_.name());
               if(_loc4_ == "EmitterID")
               {
                  _loc6_._SafeStr_602 = uint(_loc7_);
               }
               else if(_loc4_ == "Lifespan")
               {
                  _loc6_._SafeStr_1691 = uint(_loc7_);
               }
               else if(_loc4_ == "Frequency")
               {
                  _loc6_._SafeStr_2230 = uint(_loc7_);
               }
               else if(_loc4_ == "Animations")
               {
                  if(!_loc7_ || _loc7_ == "")
                  {
                     _SafeCls_22._SafeStr_135("No specified graphics animation class " + _loc6_.mDataName);
                  }
                  _loc6_._SafeStr_1562 = new Vector.<String>();
                  _loc8_ = _loc7_.toString().split(",");
                  for each(_loc9_ in _loc8_)
                  {
                     _loc6_._SafeStr_1562.push(_loc9_);
                  }
               }
               else if(_loc4_ == "AnimScale")
               {
                  _loc10_ = Number(_loc7_);
                  if(_loc10_ <= 0)
                  {
                     _SafeCls_22._SafeStr_135("Particle graphics cannot have a scale of zero or less: " + _loc6_.mDataName);
                  }
                  _loc6_._SafeStr_2469 = _loc10_;
               }
               else if(_loc4_ == "AnimSpeed")
               {
                  _loc11_ = Number(_loc7_);
                  if(_loc11_ < 0)
                  {
                     _SafeCls_22._SafeStr_135("Particle graphics cannot have an animation speed of less than zero: " + _loc6_.mDataName);
                  }
                  _loc6_._SafeStr_2776 = _loc11_;
               }
               else if(_loc4_ == "AutoCleanUp")
               {
                  _loc6_._SafeStr_1938 = _SafeCls_19._SafeStr_185(String(_loc7_));
               }
               else
               {
                  _SafeCls_22._SafeStr_135("Unrecognized Property in " + _loc6_.mDataName + ": " + _loc4_);
               }
            }
            if(_loc6_._SafeStr_602)
            {
               if(_SafeStr_1041[_loc6_.mDataName])
               {
                  _SafeCls_22._SafeStr_135("Duplicate EmitterName for emitter type named: " + _loc6_.mDataName);
               }
               if(_SafeStr_1802[_loc6_._SafeStr_602])
               {
                  _SafeCls_22._SafeStr_135("Duplicate EmitterID for emitter type named: " + _loc6_.mDataName);
               }
               _SafeStr_1041[_loc6_.mDataName] = _loc6_;
               _SafeStr_1802[_loc6_._SafeStr_602] = _loc6_;
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_14 = "_-fx"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_185 = "_-im"
 * @identifier _SafeStr_280 = "_-4e"
 * @identifier _SafeStr_602 = "_-52"
 * @identifier _SafeStr_1041 = "_-tK"
 * @identifier _SafeStr_1562 = "_-bg"
 * @identifier _SafeStr_1691 = "_-Bb"
 * @identifier _SafeStr_1802 = "_-9G"
 * @identifier _SafeStr_1938 = "_-Q9"
 * @identifier _SafeStr_2230 = "_-H8"
 * @identifier _SafeStr_2469 = "_-nN"
 * @identifier _SafeStr_2776 = "_-ZK"
 */
