package
{
   import flash.utils.Dictionary;
   
   public class _SafeCls_4
   {
      
      public static var _SafeStr_2022:Vector.<_SafeCls_4>;
      
      public static var _SafeStr_390:Dictionary;
      
      public static var _SafeStr_998:Array;
      
      public static var _SafeStr_1301:_SafeCls_4;
      
      public static var _SafeStr_796:_SafeCls_4;
      
      public static var GAMEMODE_1V1STOCK:_SafeCls_4;
      
      public static var GAMEMODE_1V1TIMED:_SafeCls_4;
      
      public static var _SafeStr_1696:_SafeCls_4;
      
      public static const _SafeStr_705:String = "STOCK";
      
      public static const _SafeStr_1063:String = "TIMED";
      
      internal var _SafeStr_1010:String;
      
      internal var _SafeStr_577:uint;
      
      internal var mDisplayName:String;
      
      internal var mNumTeams:uint;
      
      internal var _SafeStr_485:uint;
      
      internal var mDuration:uint;
      
      internal var _SafeStr_1667:uint;
      
      internal var _SafeStr_3281:Boolean;
      
      internal var _SafeStr_3057:Boolean;
      
      internal var mScoringType:String;
      
      public function _SafeCls_4()
      {
         super();
      }
      
      public static function _SafeStr_280(param1:XML) : void
      {
         var _loc2_:_SafeCls_4 = null;
         var _loc4_:XML = null;
         var _loc5_:XMLList = null;
         var _loc6_:String = null;
         var _loc7_:XML = null;
         _SafeStr_2022 = new Vector.<_SafeCls_4>();
         _SafeStr_390 = new Dictionary();
         _SafeStr_998 = new Array();
         var _loc3_:XMLList = param1.children();
         for each(_loc4_ in _loc3_)
         {
            _loc2_ = new _SafeCls_4();
            _loc2_._SafeStr_1010 = _loc4_.attribute("GameModeName");
            _loc5_ = _loc4_.children();
            for each(_loc7_ in _loc5_)
            {
               _loc6_ = String(_loc7_.name());
               if(_loc6_ == "GameModeID")
               {
                  _loc2_._SafeStr_577 = uint(_loc7_);
               }
               else if(_loc6_ == "DisplayName")
               {
                  _loc2_.mDisplayName = String(_loc7_);
               }
               else if(_loc6_ == "ScoringType")
               {
                  _loc2_.mScoringType = String(_loc7_);
               }
               else if(_loc6_ == "NumTeams")
               {
                  _loc2_.mNumTeams = uint(_loc7_);
               }
               else if(_loc6_ == "MaxPlayers")
               {
                  _loc2_._SafeStr_485 = uint(_loc7_);
               }
               else if(_loc6_ == "Duration")
               {
                  _loc2_.mDuration = uint(_loc7_);
               }
               else if(_loc6_ == "StartingLives")
               {
                  _loc2_._SafeStr_1667 = uint(_loc7_);
               }
               else if(_loc6_ == "AvailableOffline")
               {
                  _loc2_._SafeStr_3281 = _SafeCls_19._SafeStr_185(_loc7_);
               }
               else if(_loc6_ == "AvailableOnline")
               {
                  _loc2_._SafeStr_3057 = _SafeCls_19._SafeStr_185(_loc7_);
               }
               else
               {
                  _SafeCls_22._SafeStr_135("Unrecognized Property in " + _loc2_.mDisplayName + ": " + _loc6_);
               }
            }
            if(_loc2_._SafeStr_577)
            {
               if(_SafeStr_998[_loc2_._SafeStr_577])
               {
                  _SafeCls_22._SafeStr_135("Duplicate GameModeID for game mode with ID: " + _loc2_._SafeStr_577);
               }
               if(_SafeStr_390[_loc2_._SafeStr_1010])
               {
                  _SafeCls_22._SafeStr_135("Duplicate GameModeName for game mode named: " + _loc2_._SafeStr_1010);
               }
               if(_loc2_.mScoringType != _SafeStr_705 && _loc2_.mScoringType != _SafeStr_1063)
               {
                  _SafeCls_22._SafeStr_135("GameMode named: " + _loc2_._SafeStr_1010 + " has scoring of type " + _loc2_.mScoringType + ". Only " + _SafeStr_705 + " and " + _SafeStr_1063 + " are currently supported");
               }
               if(_loc2_.mNumTeams == 1)
               {
                  _SafeCls_22._SafeStr_135("GameMode named: " + _loc2_._SafeStr_1010 + " has 1 team. Needs to be 0 for FFA or be 2 or more for teams");
               }
               _SafeStr_998[_loc2_._SafeStr_577] = _loc2_;
               _SafeStr_390[_loc2_._SafeStr_1010] = _loc2_;
               _SafeStr_2022.push(_loc2_);
            }
         }
         _SafeStr_796 = _SafeStr_390["Timed"];
         _SafeStr_1301 = _SafeStr_390["Stock"];
         _SafeStr_1696 = _SafeStr_390["MedTeamTimed"];
         GAMEMODE_1V1STOCK = _SafeStr_390["1v1Stock"];
         GAMEMODE_1V1TIMED = _SafeStr_390["1v1Timed"];
         if(!_SafeStr_796)
         {
            _SafeCls_22._SafeStr_135("GameMode Timed doesn\'t exist. Check Name");
         }
         if(!_SafeStr_1301)
         {
            _SafeCls_22._SafeStr_135("GameMode Stock doesn\'t exist. Check Name");
         }
         if(!_SafeStr_1696)
         {
            _SafeCls_22._SafeStr_135("GameMode MedTeamTimed doesn\'t exist. Check Name");
         }
         if(!GAMEMODE_1V1STOCK)
         {
            _SafeCls_22._SafeStr_135("GameMode 1v1Stock doesn\'t exist. Check Name");
         }
         if(!GAMEMODE_1V1TIMED)
         {
            _SafeCls_22._SafeStr_135("GameMode 1v1Timed doesn\'t exist. Check Name");
         }
      }
      
      public static function _SafeStr_2080(param1:_SafeCls_4) : Boolean
      {
         return param1.mScoringType == "STOCK";
      }
      
      public static function _SafeStr_3636(param1:_SafeCls_4) : Boolean
      {
         return param1 == _SafeStr_1696;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_4 = "_-Kq"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_185 = "_-im"
 * @identifier _SafeStr_280 = "_-4e"
 * @identifier _SafeStr_390 = "_-cm"
 * @identifier _SafeStr_485 = "_-q3"
 * @identifier _SafeStr_577 = "_-RW"
 * @identifier _SafeStr_705 = "_-Q0"
 * @identifier _SafeStr_796 = "_-3s"
 * @identifier _SafeStr_998 = "_-0M"
 * @identifier _SafeStr_1010 = "_-wg"
 * @identifier _SafeStr_1063 = "_-tt"
 * @identifier _SafeStr_1301 = "_-2h"
 * @identifier _SafeStr_1667 = "_-ZR"
 * @identifier _SafeStr_1696 = "_-lg"
 * @identifier _SafeStr_2022 = "_-GJ"
 * @identifier _SafeStr_2080 = "_-0N"
 * @identifier _SafeStr_3057 = "_-Wq"
 * @identifier _SafeStr_3281 = "_-YF"
 * @identifier _SafeStr_3636 = "_-Pn"
 */
