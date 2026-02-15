package
{
   import flash.utils.Dictionary;
   
   public class _SafeCls_16
   {
      
      public static var _SafeStr_272:Array;
      
      public static var _SafeStr_917:Dictionary;
      
      public static var _SafeStr_1881:Vector.<_SafeCls_16>;
      
      public static var _SafeStr_389:Vector.<_SafeCls_16>;
      
      public static var _SafeStr_726:Vector.<_SafeCls_16>;
      
      public static var _SafeStr_905:Array;
      
      public static var _SafeStr_1955:_SafeCls_16;
      
      public static var _SafeStr_674:_SafeCls_16;
      
      public static const _SafeStr_2539:uint = 1;
      
      public static const _SafeStr_2590:uint = 2;
      
      public static const _SafeStr_2641:uint = 3;
      
      public static const _SafeStr_2589:uint = 4;
      
      public static const _SafeStr_2472:uint = 5;
      
      public static const _SafeStr_2474:uint = 6;
      
      public static const _SafeStr_2838:uint = 7;
      
      public static const _SafeStr_2619:uint = 8;
      
      public static const _SafeStr_2511:uint = 9;
      
      public static const _SafeStr_2458:uint = 10;
      
      public static const _SafeStr_133:uint = 11;
      
      public var _SafeStr_984:String;
      
      public var mHeroID:uint;
      
      public var mDisplayName:String;
      
      public var _SafeStr_2887:String;
      
      public var _SafeStr_3227:Boolean = false;
      
      public var _SafeStr_616:String;
      
      public var _SafeStr_163:uint = 160;
      
      public var _SafeStr_237:uint = 145;
      
      public var _SafeStr_755:String = "StatsDefault";
      
      public var _SafeStr_1279:String = "";
      
      public var _SafeStr_2483:String;
      
      public var _SafeStr_282:String;
      
      public var mbIsActive:Boolean;
      
      public var _SafeStr_2802:Boolean;
      
      public var _SafeStr_2712:uint;
      
      public var _SafeStr_2857:uint;
      
      public var _SafeStr_2746:uint;
      
      public var _SafeStr_2466:uint;
      
      public var _SafeStr_850:Vector.<_SafeCls_85>;
      
      public var _SafeStr_3439:String;
      
      public var _SafeStr_1532:String;
      
      public function _SafeCls_16()
      {
         super();
      }
      
      public static function _SafeStr_280(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:XMLList = null;
         var _loc6_:_SafeCls_16 = null;
         var _loc7_:XML = null;
         _SafeStr_272 = new Array();
         _SafeStr_917 = new Dictionary();
         _SafeStr_1881 = new Vector.<_SafeCls_16>();
         _SafeStr_389 = new Vector.<_SafeCls_16>();
         _SafeStr_726 = new Vector.<_SafeCls_16>();
         var _loc2_:XMLList = param1.children();
         for each(_loc3_ in _loc2_)
         {
            _loc5_ = _loc3_.children();
            _loc6_ = new _SafeCls_16();
            _loc6_._SafeStr_984 = _loc3_.attribute("HeroName");
            for each(_loc7_ in _loc5_)
            {
               _loc4_ = String(_loc7_.name());
               if(_loc4_ == "HeroID")
               {
                  _loc6_.mHeroID = uint(_loc7_);
               }
               else if(_loc4_ == "Height")
               {
                  _loc6_._SafeStr_163 = uint(_loc7_);
               }
               else if(_loc4_ == "Width")
               {
                  _loc6_._SafeStr_237 = uint(_loc7_);
               }
               else if(_loc4_ == "DisplayName")
               {
                  _loc6_.mDisplayName = String(_loc7_);
               }
               else if(_loc4_ == "CostumeName")
               {
                  _loc6_._SafeStr_616 = String(_loc7_);
               }
               else if(_loc4_ == "WeaponSet")
               {
                  _loc6_._SafeStr_2483 = String(_loc7_);
               }
               else if(_loc4_ == "TrailEffect")
               {
                  _loc6_._SafeStr_282 = String(_loc7_);
               }
               else if(_loc4_ == "Portrait")
               {
                  _loc6_._SafeStr_1279 = String(_loc7_);
               }
               else if(_loc4_ == "IsActive")
               {
                  _loc6_.mbIsActive = _SafeCls_19._SafeStr_185(_loc7_);
               }
               else if(_loc4_ == "CanRandom")
               {
                  _loc6_._SafeStr_2802 = _SafeCls_19._SafeStr_185(_loc7_);
               }
               else if(_loc4_ == "AttackStat")
               {
                  _loc6_._SafeStr_2712 = uint(_loc7_);
               }
               else if(_loc4_ == "ImpulseStat")
               {
                  _loc6_._SafeStr_2857 = uint(_loc7_);
               }
               else if(_loc4_ == "DefenseStat")
               {
                  _loc6_._SafeStr_2746 = uint(_loc7_);
               }
               else if(_loc4_ == "WeightStat")
               {
                  _loc6_._SafeStr_2466 = uint(_loc7_);
               }
               else if(_loc4_ == "BioText")
               {
                  _loc6_._SafeStr_3439 = String(_loc7_);
               }
               else if(_loc4_ == "SplashArt")
               {
                  _loc6_._SafeStr_1532 = String(_loc7_);
               }
               else if(_loc4_ == "TauntPower")
               {
                  _loc6_._SafeStr_2887 = String(_loc7_);
               }
               else if(_loc4_ == "HeroBuff")
               {
                  if(!(_SafeCls_1.flags & _SafeCls_1._SafeStr_2090))
                  {
                     _loc6_._SafeStr_755 = String(_loc7_);
                  }
               }
               else if(_loc4_ == "SwordDisplay" || _loc4_ == "PistolDisplay" || _loc4_ == "HammerDisplay" || _loc4_ == "LanceDisplay")
               {
                  if(!_loc6_._SafeStr_850)
                  {
                     _loc6_._SafeStr_850 = new Vector.<_SafeCls_85>();
                  }
                  _loc6_._SafeStr_850.push(_SafeCls_85._SafeStr_3200(_loc7_));
               }
               else
               {
                  _SafeCls_22._SafeStr_135("Unrecognized Property in " + _loc6_._SafeStr_984 + ": " + _loc4_);
               }
            }
            if(_loc6_.mHeroID)
            {
               if(_SafeStr_917[_loc6_._SafeStr_984])
               {
                  _SafeCls_22._SafeStr_135("Duplicate HeroName for effect named: " + _loc6_._SafeStr_984);
               }
               if(_SafeStr_272[_loc6_.mHeroID])
               {
                  _SafeCls_22._SafeStr_135("Duplicate HeroID for effect named: " + _loc6_._SafeStr_984);
               }
               _SafeStr_917[_loc6_._SafeStr_984] = _loc6_;
               _SafeStr_272[_loc6_.mHeroID] = _loc6_;
               _SafeStr_1881.push(_loc6_);
               if(_loc6_.mDisplayName == "RANDOM")
               {
                  _SafeStr_674 = _loc6_;
               }
               else if(_loc6_.mbIsActive)
               {
                  _SafeStr_389.push(_loc6_);
               }
               if(_loc6_._SafeStr_2802)
               {
                  _SafeStr_726.push(_loc6_);
               }
            }
         }
         _SafeStr_1955 = _SafeStr_917["DEFAULT_CHARACTER"];
         if(!_SafeStr_1955)
         {
            _SafeCls_22._SafeStr_135("Default Character not found");
         }
         if(!_SafeStr_674)
         {
            _SafeCls_22._SafeStr_135("Random Character not found");
         }
         _SafeStr_389.push(_SafeStr_674);
         if(!_SafeStr_389.length)
         {
            _SafeCls_22._SafeStr_135("There must be at least 1 active char");
         }
         if(!_SafeStr_726.length)
         {
            _SafeCls_22._SafeStr_135("There must be at least 1 randomable char");
         }
      }
      
      public static function _SafeStr_3737(param1:Vector.<_SafeCls_25> = null, param2:Vector.<_SafeCls_16> = null) : _SafeCls_16
      {
         var _loc4_:Dictionary = null;
         var _loc5_:_SafeCls_25 = null;
         var _loc6_:_SafeCls_16 = null;
         var _loc3_:Vector.<_SafeCls_16> = _SafeStr_389;
         if(param1 && param1.length && param1.length < _loc3_.length || param2 && param2.length && param2.length < _loc3_.length)
         {
            _loc4_ = new Dictionary();
            for each(_loc5_ in param1)
            {
               _loc4_[_loc5_._SafeStr_144] = true;
            }
            for each(_loc6_ in param2)
            {
               _loc4_[_loc6_] = true;
            }
            _loc3_ = new Vector.<_SafeCls_16>();
            for each(_loc6_ in _SafeStr_389)
            {
               if(!_loc4_[_loc6_])
               {
                  _loc3_.push(_loc6_);
               }
            }
         }
         return _loc3_[int(Math.random() * _loc3_.length)];
      }
      
      public static function _SafeStr_1817(param1:Array) : _SafeCls_16
      {
         var _loc5_:uint = 0;
         var _loc2_:Vector.<_SafeCls_16> = new Vector.<_SafeCls_16>();
         var _loc3_:uint = 0;
         while(_loc3_ < _SafeStr_726.length)
         {
            _loc5_ = _SafeStr_726[_loc3_].mHeroID;
            if(!param1[_loc5_])
            {
               _loc2_.push(_SafeStr_726[_loc3_]);
            }
            _loc3_++;
         }
         if(!_loc2_.length)
         {
            _loc2_ = _SafeStr_726;
         }
         var _loc4_:uint = uint(Math.random() * _loc2_.length);
         return _loc2_[_loc4_];
      }
      
      public static function _SafeStr_3415() : void
      {
         var _loc1_:_SafeCls_16 = null;
         var _loc2_:uint = 0;
         var _loc3_:Vector.<_SafeCls_17> = null;
         var _loc4_:_SafeCls_17 = null;
         var _loc5_:uint = 0;
         var _loc6_:String = null;
         var _loc7_:_SafeCls_17 = null;
         _SafeStr_905 = new Array();
         for each(_loc1_ in _SafeStr_272)
         {
            _loc2_ = _loc1_.mHeroID;
            if(_loc2_)
            {
               if(!_SafeStr_905[_loc2_])
               {
                  _loc3_ = new Vector.<_SafeCls_17>();
                  _SafeStr_905[_loc2_] = _loc3_;
               }
               else
               {
                  _loc3_ = _SafeStr_905[_loc2_];
               }
               _loc4_ = _SafeCls_17._SafeStr_289[_loc1_._SafeStr_616];
               _loc3_.push(_loc4_);
               _loc5_ = 1;
               while(_loc5_ <= _SafeCls_17._SafeStr_806)
               {
                  if(_loc5_ != _loc4_._SafeStr_1421)
                  {
                     _loc6_ = _SafeCls_17._SafeStr_503 + _loc5_;
                     _loc7_ = _SafeCls_17._SafeStr_289[_loc6_];
                     _loc3_.push(_loc7_);
                  }
                  _loc5_++;
               }
            }
         }
      }
      
      public static function _SafeStr_3065(param1:uint, param2:Array) : _SafeCls_17
      {
         var _loc6_:uint = 0;
         var _loc3_:Vector.<_SafeCls_17> = _SafeStr_905[param1];
         var _loc4_:Array = param2[param1];
         var _loc5_:uint = 0;
         while(_loc5_ < _loc3_.length)
         {
            _loc6_ = _loc3_[_loc5_].mCostumeID;
            if(!_loc4_[_loc6_])
            {
               return _loc3_[_loc5_];
            }
            _loc5_++;
         }
         return null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_16 = "_-DS"
 * @identifier _SafeCls_17 = "_-TF"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_85 = "_-Ud"
 * @identifier _SafeStr_133 = "_-04"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_144 = "_-Z"
 * @identifier _SafeStr_163 = "_-eC"
 * @identifier _SafeStr_185 = "_-im"
 * @identifier _SafeStr_237 = "_-Q6"
 * @identifier _SafeStr_272 = "_-7S"
 * @identifier _SafeStr_280 = "_-4e"
 * @identifier _SafeStr_282 = "_-5u"
 * @identifier _SafeStr_289 = "_-MO"
 * @identifier _SafeStr_389 = "_-b7"
 * @identifier _SafeStr_503 = "_-gZ"
 * @identifier _SafeStr_616 = "_-ud"
 * @identifier _SafeStr_674 = "_-Wc"
 * @identifier _SafeStr_726 = "_-fp"
 * @identifier _SafeStr_755 = "_-DP"
 * @identifier _SafeStr_806 = "_-9d"
 * @identifier _SafeStr_850 = "_-9j"
 * @identifier _SafeStr_905 = "_-Hw"
 * @identifier _SafeStr_917 = "_-aR"
 * @identifier _SafeStr_984 = "_-1z"
 * @identifier _SafeStr_1279 = "_-s5"
 * @identifier _SafeStr_1421 = "_-Bt"
 * @identifier _SafeStr_1532 = "_-2g"
 * @identifier _SafeStr_1817 = "_-tz"
 * @identifier _SafeStr_1881 = "_-ZP"
 * @identifier _SafeStr_1955 = "_-mB"
 * @identifier _SafeStr_2090 = "_-1P"
 * @identifier _SafeStr_2458 = "_-79"
 * @identifier _SafeStr_2466 = "_-b4"
 * @identifier _SafeStr_2472 = "_-V7"
 * @identifier _SafeStr_2474 = "_-VB"
 * @identifier _SafeStr_2483 = "_-7b"
 * @identifier _SafeStr_2511 = "_-Bz"
 * @identifier _SafeStr_2539 = "_-9V"
 * @identifier _SafeStr_2589 = "_-gX"
 * @identifier _SafeStr_2590 = "_-st"
 * @identifier _SafeStr_2619 = "_-Jo"
 * @identifier _SafeStr_2641 = "_-30"
 * @identifier _SafeStr_2712 = "_-TG"
 * @identifier _SafeStr_2746 = "_-lm"
 * @identifier _SafeStr_2802 = "_-l8"
 * @identifier _SafeStr_2838 = "_-29"
 * @identifier _SafeStr_2857 = "_-dC"
 * @identifier _SafeStr_2887 = "_-C1"
 * @identifier _SafeStr_3065 = "_-wF"
 * @identifier _SafeStr_3200 = "_-ct"
 * @identifier _SafeStr_3227 = "_-G2"
 * @identifier _SafeStr_3415 = "_-1o"
 * @identifier _SafeStr_3439 = "_-MD"
 * @identifier _SafeStr_3737 = "_-W8"
 */
