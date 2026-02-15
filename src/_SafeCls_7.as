package
{
   import flash.utils.Dictionary;
   
   public class _SafeCls_7
   {
      
      public static var _SafeStr_1268:Vector.<_SafeCls_7>;
      
      public static var _SafeStr_542:Dictionary;
      
      public static var _SafeStr_1132:Array;
      
      internal var mLevelName:String;
      
      internal var mDisplayName:String;
      
      internal var _SafeStr_724:String;
      
      internal var _SafeStr_1413:String;
      
      internal var _SafeStr_485:uint;
      
      internal var _SafeStr_683:uint;
      
      internal var _SafeStr_3562:Boolean;
      
      internal var _SafeStr_2899:String;
      
      internal var _SafeStr_2937:String;
      
      public function _SafeCls_7(param1:String = null, param2:String = null, param3:String = null)
      {
         super();
         this.mLevelName = param1;
         this._SafeStr_724 = param2;
         this._SafeStr_1413 = param3;
      }
      
      public static function _SafeStr_280(param1:XML) : void
      {
         var _loc2_:_SafeCls_7 = null;
         var _loc4_:XML = null;
         var _loc5_:XMLList = null;
         var _loc6_:String = null;
         var _loc7_:* = false;
         var _loc8_:XML = null;
         _SafeStr_1268 = new Vector.<_SafeCls_7>();
         _SafeStr_542 = new Dictionary();
         _SafeStr_1132 = new Array();
         var _loc3_:XMLList = param1.children();
         for each(_loc4_ in _loc3_)
         {
            _loc2_ = new _SafeCls_7();
            _loc5_ = _loc4_.children();
            _loc7_ = (_SafeCls_1.flags & _SafeCls_1._SafeStr_1818) != 0;
            for each(_loc8_ in _loc5_)
            {
               _loc6_ = _loc8_.name().toString();
               if(_loc6_ == "LevelName")
               {
                  _loc2_.mLevelName = String(_loc8_);
               }
               else if(_loc6_ == "DisplayName")
               {
                  _loc2_.mDisplayName = String(_loc8_);
               }
               else if(_loc6_ == "FileName")
               {
                  _loc2_._SafeStr_724 = String(_loc8_);
               }
               else if(_loc6_ == "AssetName")
               {
                  _loc2_._SafeStr_1413 = String(_loc8_);
               }
               else if(_loc6_ == "MaxPlayers")
               {
                  _loc2_._SafeStr_485 = uint(_loc8_);
               }
               else if(_loc6_ == "LevelID")
               {
                  _loc2_._SafeStr_683 = uint(_loc8_);
               }
               else if(_loc6_ == "RandomSelectable")
               {
                  _loc2_._SafeStr_3562 = _SafeCls_19._SafeStr_185(_loc8_);
               }
               else if(_loc6_ == "BGMusic")
               {
                  _loc2_._SafeStr_2937 = String(_loc8_);
               }
               else if(_loc6_ == "IntroMusic")
               {
                  _loc2_._SafeStr_2899 = String(_loc8_);
               }
               else
               {
                  _SafeCls_22._SafeStr_135("Unrecognized Property in " + _loc2_.mLevelName + ": " + _loc6_);
               }
            }
            if(_loc2_._SafeStr_683)
            {
               if(_SafeStr_542[_loc2_.mLevelName])
               {
                  _SafeCls_22._SafeStr_135("Duplicate LevelType for level named: " + _loc2_.mLevelName);
               }
               if(_SafeStr_1132[_loc2_._SafeStr_683])
               {
                  _SafeCls_22._SafeStr_135("Duplicate LevelID for level named: " + _loc2_._SafeStr_683);
               }
               _SafeStr_1268.push(_loc2_);
               _SafeStr_542[_loc2_.mLevelName] = _loc2_;
               _SafeStr_1132[_loc2_._SafeStr_683] = _loc2_;
               if(_loc7_)
               {
                  _SafeCls_9._SafeStr_500(_loc2_._SafeStr_724,"Level");
               }
            }
         }
      }
      
      public static function _SafeStr_3533() : _SafeCls_7
      {
         return _SafeStr_1268[uint(Math.random() * _SafeStr_1268.length)];
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_7 = "_-Af"
 * @identifier _SafeCls_9 = "_-cU"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_185 = "_-im"
 * @identifier _SafeStr_280 = "_-4e"
 * @identifier _SafeStr_485 = "_-q3"
 * @identifier _SafeStr_500 = "_-dS"
 * @identifier _SafeStr_542 = "_-RD"
 * @identifier _SafeStr_683 = "_-3Z"
 * @identifier _SafeStr_724 = "_-mW"
 * @identifier _SafeStr_1132 = "_-kp"
 * @identifier _SafeStr_1268 = "_-I5"
 * @identifier _SafeStr_1413 = "_-IR"
 * @identifier _SafeStr_1818 = "_-g4"
 * @identifier _SafeStr_2899 = "_-3-"
 * @identifier _SafeStr_2937 = "_-6w"
 * @identifier _SafeStr_3533 = "_-DG"
 * @identifier _SafeStr_3562 = "_-vc"
 */
