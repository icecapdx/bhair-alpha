package
{
   import flash.utils.Dictionary;
   
   public class _SafeCls_17
   {
      
      public static var _SafeStr_289:Dictionary;
      
      public static var _SafeStr_492:Array;
      
      public static var _SafeStr_1694:_SafeCls_17;
      
      public static var _SafeStr_1523:_SafeCls_17;
      
      public static const _SafeStr_2784:uint = 0;
      
      public static const _SafeStr_1940:uint = 1;
      
      public static const _SafeStr_2006:uint = 2;
      
      public static const _SafeStr_1567:uint = 3;
      
      public static const _SafeStr_1759:uint = 0;
      
      public static const _SafeStr_1404:uint = 1;
      
      public static const _SafeStr_1807:uint = 2;
      
      public static const COLOR_BODY1_VL:uint = 3;
      
      public static const COLOR_BODY1_LT:uint = 4;
      
      public static const COLOR_BODY1:uint = 5;
      
      public static const COLOR_BODY1_DK:uint = 6;
      
      public static const COLOR_BODY1_ACC:uint = 7;
      
      public static const COLOR_BODY2_VL:uint = 8;
      
      public static const COLOR_BODY2_LT:uint = 9;
      
      public static const COLOR_BODY2:uint = 10;
      
      public static const COLOR_BODY2_DK:uint = 11;
      
      public static const COLOR_BODY2_ACC:uint = 12;
      
      public static const _SafeStr_1779:uint = 13;
      
      public static const _SafeStr_1704:uint = 14;
      
      public static const _SafeStr_1556:uint = 15;
      
      public static const _SafeStr_1780:uint = 16;
      
      public static const _SafeStr_1411:uint = 17;
      
      public static const _SafeStr_1352:uint = 18;
      
      public static const _SafeStr_1336:uint = 19;
      
      public static const _SafeStr_1381:uint = 20;
      
      public static const _SafeStr_1743:uint = 21;
      
      public static const _SafeStr_1682:uint = 22;
      
      public static const _SafeStr_1770:uint = 23;
      
      public static const _SafeStr_1563:uint = 24;
      
      public static const _SafeStr_1763:uint = 25;
      
      public static const _SafeStr_2691:CustomArt = new CustomArt("Gfx_Player.swf","NoHair");
      
      public static const _SafeStr_2716:CustomArt = new CustomArt("Gfx_Player.swf","NoEars");
      
      public static const _SafeStr_2457:CustomArt = new CustomArt("Gfx_Player.swf","NoMouth");
      
      public static const _SafeStr_2644:CustomArt = new CustomArt("Gfx_Player.swf","NoNose");
      
      public static const _SafeStr_2902:CustomArt = new CustomArt("Gfx_Player.swf","NoEyes");
      
      public static const _SafeStr_2659:CustomArt = new CustomArt("Gfx_Player.swf","");
      
      public static const _SafeStr_503:String = "DEFAULT_COLORS_";
      
      public static const _SafeStr_806:uint = 5;
      
      internal var _SafeStr_616:String;
      
      internal var _SafeStr_3570:String;
      
      internal var mDisplayName:String;
      
      internal var _SafeStr_3082:String;
      
      internal var _SafeStr_3606:uint;
      
      internal var mCostumeID:uint;
      
      internal var _SafeStr_3598:uint;
      
      internal var _SafeStr_3189:String;
      
      internal var _SafeStr_2482:Boolean;
      
      internal var _SafeStr_2852:Boolean;
      
      internal var _SafeStr_3526:uint;
      
      internal var _SafeStr_3192:uint;
      
      internal var _SafeStr_3205:uint;
      
      internal var _SafeStr_3237:String;
      
      internal var _SafeStr_203:GfxType;
      
      internal var _SafeStr_1478:uint;
      
      internal var _SafeStr_2424:Boolean;
      
      internal var _SafeStr_2597:Boolean;
      
      internal var _SafeStr_3765:Boolean;
      
      internal var _SafeStr_2795:Boolean;
      
      internal var _SafeStr_2860:Boolean;
      
      internal var _SafeStr_142:Array;
      
      internal var _SafeStr_140:Array;
      
      internal var _SafeStr_1421:uint;
      
      public function _SafeCls_17()
      {
         super();
      }
      
      public static function _SafeStr_280(param1:XML) : void
      {
         var _loc2_:_SafeCls_17 = null;
         var _loc4_:XML = null;
         var _loc5_:String = null;
         var _loc6_:XMLList = null;
         var _loc7_:XML = null;
         _SafeStr_289 = new Dictionary();
         _SafeStr_492 = new Array();
         var _loc3_:XMLList = param1.children();
         for each(_loc4_ in _loc3_)
         {
            _loc2_ = new _SafeCls_17();
            _loc6_ = _loc4_.children();
            _loc2_._SafeStr_616 = _loc4_.attribute("CostumeName");
            if(_loc2_._SafeStr_616 != "Template")
            {
               for each(_loc7_ in _loc6_)
               {
                  _loc5_ = String(_loc7_.name());
                  if(_loc5_ == "DisplayName")
                  {
                     _loc2_.mDisplayName = String(_loc7_);
                  }
                  else if(_loc5_ == "Description")
                  {
                     _loc2_._SafeStr_3082 = String(_loc7_);
                  }
                  else if(_loc5_ == "CostumeIcon")
                  {
                     _loc2_._SafeStr_3189 = String(_loc7_);
                  }
                  else if(_loc5_ == "Category")
                  {
                     _loc2_._SafeStr_3237 = String(_loc7_);
                  }
                  else if(_loc5_ == "BaseCostume")
                  {
                     _loc2_._SafeStr_3570 = String(_loc7_);
                  }
                  else if(_loc5_ == "CostumeID")
                  {
                     _loc2_.mCostumeID = uint(_loc7_);
                  }
                  else if(_loc5_ == "AvailableInStore")
                  {
                     _loc2_._SafeStr_2482 = _SafeCls_19._SafeStr_185(String(_loc7_));
                  }
                  else if(_loc5_ == "DefaultUnlocked")
                  {
                     _loc2_._SafeStr_2852 = _SafeCls_19._SafeStr_185(String(_loc7_));
                  }
                  else if(_loc5_ == "IdolCost")
                  {
                     _loc2_._SafeStr_3192 = uint(_loc7_);
                  }
                  else if(_loc5_ == "PrestigeRequirement")
                  {
                     _loc2_._SafeStr_3205 = uint(_loc7_);
                  }
                  else if(_loc5_ == "GoldCost")
                  {
                     _loc2_._SafeStr_3526 = uint(_loc7_);
                  }
                  else if(_loc5_ == "ExcludeColorScheme")
                  {
                     _loc2_._SafeStr_1421 = uint(_loc7_);
                  }
                  else if(_loc5_ == "GfxType")
                  {
                     _loc2_._SafeStr_203 = GfxType._SafeStr_299(_loc7_,null);
                  }
                  else if(_loc5_ == "ForceHair")
                  {
                     var _loc8_:Array = String(_loc7_).split("|");
                     for each(var _loc9_ in null)
                     {
                        if(_loc9_ == "NoMouth")
                        {
                           _loc2_._SafeStr_2597 = true;
                        }
                     }
                  }
                  else if(_loc5_ == "HairLt_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1759] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Hair_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1404] = uint(_loc7_);
                  }
                  else if(_loc5_ == "HairDk_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1807] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body1VL_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[COLOR_BODY1_VL] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body1Lt_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[COLOR_BODY1_LT] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body1_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[COLOR_BODY1] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body1Dk_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[COLOR_BODY1_DK] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body1Acc_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[COLOR_BODY1_ACC] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body2VL_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[COLOR_BODY2_VL] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body2Lt_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[COLOR_BODY2_LT] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body2_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[COLOR_BODY2] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body2Dk_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[COLOR_BODY2_DK] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body2Acc_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[COLOR_BODY2_ACC] = uint(_loc7_);
                  }
                  else if(_loc5_ == "SpecialVL_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1779] = uint(_loc7_);
                  }
                  else if(_loc5_ == "SpecialLt_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1704] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Special_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1556] = uint(_loc7_);
                  }
                  else if(_loc5_ == "SpecialDk_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1780] = uint(_loc7_);
                  }
                  else if(_loc5_ == "HandsLt_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1411] = uint(_loc7_);
                  }
                  else if(_loc5_ == "HandsDk_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1352] = uint(_loc7_);
                  }
                  else if(_loc5_ == "HandsSkinLt_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1336] = uint(_loc7_);
                  }
                  else if(_loc5_ == "HandsSkinDk_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1381] = uint(_loc7_);
                  }
                  else if(_loc5_ == "WeaponVL_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1743] = uint(_loc7_);
                  }
                  else if(_loc5_ == "WeaponLt_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1682] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Weapon_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1770] = uint(_loc7_);
                  }
                  else if(_loc5_ == "WeaponDk_Define")
                  {
                     if(!_loc2_._SafeStr_142)
                     {
                        _loc2_._SafeStr_142 = new Array();
                     }
                     _loc2_._SafeStr_142[_SafeStr_1563] = uint(_loc7_);
                  }
                  else if(_loc5_ == "HairLt_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1759] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Hair_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1404] = uint(_loc7_);
                  }
                  else if(_loc5_ == "HairDk_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1807] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body1VL_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[COLOR_BODY1_VL] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body1Lt_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[COLOR_BODY1_LT] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body1_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[COLOR_BODY1] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body1Dk_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[COLOR_BODY1_DK] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body1Acc_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[COLOR_BODY1_ACC] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body2VL_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[COLOR_BODY2_VL] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body2Lt_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[COLOR_BODY2_LT] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body2_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[COLOR_BODY2] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body2Dk_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[COLOR_BODY2_DK] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Body2Acc_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[COLOR_BODY2_ACC] = uint(_loc7_);
                  }
                  else if(_loc5_ == "SpecialVL_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1779] = uint(_loc7_);
                  }
                  else if(_loc5_ == "SpecialLt_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1704] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Special_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1556] = uint(_loc7_);
                  }
                  else if(_loc5_ == "SpecialDk_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1780] = uint(_loc7_);
                  }
                  else if(_loc5_ == "HandsLt_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1411] = uint(_loc7_);
                  }
                  else if(_loc5_ == "HandsDk_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1352] = uint(_loc7_);
                  }
                  else if(_loc5_ == "HandsSkinLt_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1336] = uint(_loc7_);
                  }
                  else if(_loc5_ == "HandsSkinDk_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1381] = uint(_loc7_);
                  }
                  else if(_loc5_ == "WeaponVL_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1743] = uint(_loc7_);
                  }
                  else if(_loc5_ == "WeaponLt_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1682] = uint(_loc7_);
                  }
                  else if(_loc5_ == "Weapon_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1770] = uint(_loc7_);
                  }
                  else if(_loc5_ == "WeaponDk_Swap")
                  {
                     if(!_loc2_._SafeStr_140)
                     {
                        _loc2_._SafeStr_140 = new Array();
                     }
                     _loc2_._SafeStr_140[_SafeStr_1563] = uint(_loc7_);
                  }
                  else
                  {
                     _SafeCls_22._SafeStr_135("Unrecognized Property in " + _loc2_._SafeStr_616 + ": " + _loc5_);
                  }
               }
               if(_loc2_.mCostumeID)
               {
                  if(_SafeStr_289[_loc2_._SafeStr_616])
                  {
                     _SafeCls_22._SafeStr_135("Duplicate CostumeType for costume named: " + _loc2_._SafeStr_616);
                  }
                  if(_SafeStr_492[_loc2_.mCostumeID])
                  {
                     _SafeCls_22._SafeStr_135("Duplicate CostumeID for costume named: " + _loc2_.mCostumeID);
                  }
                  _SafeStr_289[_loc2_._SafeStr_616] = _loc2_;
                  _SafeStr_492[_loc2_.mCostumeID] = _loc2_;
                  if(_loc2_.mCostumeID > Game._SafeStr_1534)
                  {
                     _SafeCls_22._SafeStr_135("Database assumes all CostumeType IDs will be less <= " + Game._SafeStr_1534);
                  }
                  if(_loc2_._SafeStr_2482 && _loc2_._SafeStr_2852)
                  {
                     _SafeCls_22._SafeStr_135("Costume piece #" + _loc2_.mCostumeID + " is default unlocked AND available in the store");
                  }
                  if(_loc2_._SafeStr_142)
                  {
                     var _loc10_:Dictionary = new Dictionary();
                     for each(var _loc11_ in _loc2_._SafeStr_142)
                     {
                        if(false)
                        {
                           _SafeCls_22._SafeStr_135("Color mapping " + (0).toString(16).toUpperCase() + " in use multiple times on CostumeType: " + _loc2_._SafeStr_616);
                        }
                        null[0] = 1;
                     }
                     _loc10_ = null;
                  }
               }
            }
         }
         _SafeStr_1694 = _SafeStr_289[_SafeStr_503 + "2"];
         if(!_SafeStr_1694)
         {
            _SafeCls_22._SafeStr_135("Team color scheme does not exist");
         }
         _SafeStr_1523 = _SafeStr_289[_SafeStr_503 + "1"];
         if(!_SafeStr_1523)
         {
            _SafeCls_22._SafeStr_135("Enemy color scheme does not exist");
         }
      }
      
      public static function _SafeStr_2313(param1:_SafeCls_16, param2:GfxType) : void
      {
         var _loc3_:_SafeCls_17 = _SafeStr_289[param1._SafeStr_616];
         if(_loc3_ ? _loc3_._SafeStr_203 : null)
         {
            param2._SafeStr_301 = param2._SafeStr_301.concat(_loc3_._SafeStr_203._SafeStr_301);
            param2._SafeStr_254 = param2._SafeStr_254.concat(_loc3_._SafeStr_203._SafeStr_254);
         }
      }
      
      public function _SafeStr_2384(param1:_SafeCls_17) : Vector.<ColorSwap>
      {
         var _loc2_:uint = 0;
         var _loc3_:Vector.<ColorSwap> = new Vector.<ColorSwap>();
         if(!this._SafeStr_142)
         {
            return _loc3_;
         }
         var _loc4_:Array = param1 ? param1._SafeStr_140 : this._SafeStr_140;
         if(_loc4_)
         {
            _loc2_ = 0;
            while(_loc2_ < _SafeStr_1763)
            {
               if(this._SafeStr_142[_loc2_])
               {
                  if(_loc4_[_loc2_])
                  {
                     _loc3_.push(new ColorSwap(this._SafeStr_142[_loc2_],_loc4_[_loc2_],_SafeCls_16._SafeStr_133));
                  }
               }
               _loc2_++;
            }
         }
         if(this._SafeStr_140)
         {
            _loc2_ = 0;
            while(_loc2_ < _SafeStr_1763)
            {
               if(this._SafeStr_142[_loc2_])
               {
                  if(this._SafeStr_140[_loc2_])
                  {
                     if(!(Boolean(_loc4_) && Boolean(_loc4_[_loc2_])))
                     {
                        _loc3_.push(new ColorSwap(this._SafeStr_142[_loc2_],this._SafeStr_140[_loc2_],_SafeCls_16._SafeStr_133));
                     }
                  }
               }
               _loc2_++;
            }
         }
         return _loc3_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_16 = "_-DS"
 * @identifier _SafeCls_17 = "_-TF"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeStr_133 = "_-04"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_140 = "_-qo"
 * @identifier _SafeStr_142 = "_-Uq"
 * @identifier _SafeStr_185 = "_-im"
 * @identifier _SafeStr_203 = "_-2b"
 * @identifier _SafeStr_254 = "_-H5"
 * @identifier _SafeStr_280 = "_-4e"
 * @identifier _SafeStr_289 = "_-MO"
 * @identifier _SafeStr_299 = "_-e3"
 * @identifier _SafeStr_301 = "_-4c"
 * @identifier _SafeStr_492 = "_-sd"
 * @identifier _SafeStr_503 = "_-gZ"
 * @identifier _SafeStr_616 = "_-ud"
 * @identifier _SafeStr_806 = "_-9d"
 * @identifier _SafeStr_1336 = "_-qH"
 * @identifier _SafeStr_1352 = "_-JQ"
 * @identifier _SafeStr_1381 = "_-O7"
 * @identifier _SafeStr_1404 = "_-6q"
 * @identifier _SafeStr_1411 = "_-ho"
 * @identifier _SafeStr_1421 = "_-Bt"
 * @identifier _SafeStr_1478 = "_-Dq"
 * @identifier _SafeStr_1523 = "_-h1"
 * @identifier _SafeStr_1534 = "_-6e"
 * @identifier _SafeStr_1556 = "_-k4"
 * @identifier _SafeStr_1563 = "_-0"
 * @identifier _SafeStr_1567 = "_-Ya"
 * @identifier _SafeStr_1682 = "_-sG"
 * @identifier _SafeStr_1694 = "_-5i"
 * @identifier _SafeStr_1704 = "_-Sg"
 * @identifier _SafeStr_1743 = "_-Ag"
 * @identifier _SafeStr_1759 = "_-4Y"
 * @identifier _SafeStr_1763 = "_-rE"
 * @identifier _SafeStr_1770 = "_-oa"
 * @identifier _SafeStr_1779 = "_-hN"
 * @identifier _SafeStr_1780 = "_-6N"
 * @identifier _SafeStr_1807 = "_-Y9"
 * @identifier _SafeStr_1940 = "_-wh"
 * @identifier _SafeStr_2006 = "_-mG"
 * @identifier _SafeStr_2313 = "_-EL"
 * @identifier _SafeStr_2384 = "_-bj"
 * @identifier _SafeStr_2424 = "_-s0"
 * @identifier _SafeStr_2457 = "_-Qr"
 * @identifier _SafeStr_2482 = "_-qO"
 * @identifier _SafeStr_2597 = "_-M1"
 * @identifier _SafeStr_2644 = "_-cV"
 * @identifier _SafeStr_2659 = "_-gS"
 * @identifier _SafeStr_2691 = "_-fc"
 * @identifier _SafeStr_2716 = "_-1S"
 * @identifier _SafeStr_2784 = "_-Ld"
 * @identifier _SafeStr_2795 = "_-Vz"
 * @identifier _SafeStr_2852 = "_-is"
 * @identifier _SafeStr_2860 = "_-3P"
 * @identifier _SafeStr_2902 = "_-9T"
 * @identifier _SafeStr_3082 = "_-Ov"
 * @identifier _SafeStr_3189 = "_-hg"
 * @identifier _SafeStr_3192 = "_-VO"
 * @identifier _SafeStr_3205 = "each "
 * @identifier _SafeStr_3237 = "_-dK"
 * @identifier _SafeStr_3526 = "_-My"
 * @identifier _SafeStr_3570 = "_-i6"
 * @identifier _SafeStr_3598 = "_-7a"
 * @identifier _SafeStr_3606 = "_-Nh"
 * @identifier _SafeStr_3765 = "_-1Q"
 */
