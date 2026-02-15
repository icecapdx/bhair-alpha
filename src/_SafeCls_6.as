package
{
   import flash.utils.Dictionary;
   
   public class _SafeCls_6
   {
      
      public static var _SafeStr_416:Dictionary = new Dictionary();
      
      public static var _SafeStr_951:Vector.<_SafeCls_6> = new Vector.<_SafeCls_6>();
      
      public static var _SafeStr_936:Vector.<_SafeCls_6> = new Vector.<_SafeCls_6>();
      
      public static var _SafeStr_712:Array = new Array();
      
      public static var _SafeStr_722:_SafeCls_6 = null;
      
      public static var _SafeStr_703:_SafeCls_6 = null;
      
      public var _SafeStr_258:String;
      
      public var _SafeStr_2972:Boolean;
      
      public var _SafeStr_173:uint;
      
      public var mDisplayName:String;
      
      public var _SafeStr_978:String;
      
      public var _SafeStr_3082:String;
      
      public var _SafeStr_418:GfxType;
      
      public var mWorldGfxType:GfxType;
      
      public var _SafeStr_243:Vector.<String>;
      
      public var _SafeStr_2045:String;
      
      public var _SafeStr_2943:String;
      
      public var _SafeStr_237:uint;
      
      public var _SafeStr_163:uint;
      
      public var mDuration:int;
      
      public var _SafeStr_1256:Number = 0.6;
      
      public var _SafeStr_1161:Number = _SafeCls_27._SafeStr_502;
      
      public var _SafeStr_2020:Number = _SafeCls_27._SafeStr_1469;
      
      public var _SafeStr_404:Number = _SafeCls_25._SafeStr_510;
      
      public var _SafeStr_1414:Number = _SafeCls_25._SafeStr_510;
      
      public var _SafeStr_2757:Number = _SafeCls_27._SafeStr_2408;
      
      public var _SafeStr_2463:int = _SafeCls_27._SafeStr_2215;
      
      public var _SafeStr_1996:Number = 1;
      
      public var _SafeStr_2889:uint = 100;
      
      public var _SafeStr_1715:String;
      
      public var _SafeStr_2916:Boolean = true;
      
      public var _SafeStr_2169:String;
      
      public var _SafeStr_1896:Boolean = false;
      
      public var _SafeStr_1995:uint = 0;
      
      public var _SafeStr_3124:uint = 0;
      
      public var _SafeStr_2354:String;
      
      public var _SafeStr_1873:String;
      
      public var _SafeStr_2390:String;
      
      public var _SafeStr_1979:Boolean = false;
      
      public var _SafeStr_1438:String;
      
      public var _SafeStr_2007:String;
      
      public var _SafeStr_1231:Boolean = false;
      
      public var _SafeStr_552:uint = 0;
      
      public var _SafeStr_3255:int = 0;
      
      public var _SafeStr_1297:CustomArt;
      
      public var _SafeStr_1742:Boolean = false;
      
      public var _SafeStr_2497:Boolean = false;
      
      public var _SafeStr_1366:Boolean = false;
      
      public var _SafeStr_1708:String;
      
      public var _SafeStr_2814:Number = 70;
      
      public var _SafeStr_2774:Number = 65;
      
      public var _SafeStr_2324:uint = _SafeCls_26.ACTION_ATTACK_COMBO1;
      
      public var _SafeStr_2435:Boolean = false;
      
      public var _SafeStr_3107:Boolean = false;
      
      public var _SafeStr_2339:Boolean = false;
      
      public var _SafeStr_2763:Boolean = false;
      
      public var _SafeStr_1123:Boolean = false;
      
      public var _SafeStr_3312:uint = 0;
      
      public var _SafeStr_2901:String;
      
      public var _SafeStr_2615:String;
      
      public var _SafeStr_2759:String;
      
      public var _SafeStr_2447:String;
      
      public var _SafeStr_2443:String;
      
      public var _SafeStr_2464:String;
      
      public var _SafeStr_2220:String;
      
      public var _SafeStr_2871:String;
      
      public var _SafeStr_1878:String;
      
      public function _SafeCls_6()
      {
         super();
      }
      
      public static function _SafeStr_280(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:_SafeCls_6 = null;
         var _loc5_:XMLList = null;
         var _loc6_:XML = null;
         var _loc7_:String = null;
         var _loc8_:Array = null;
         var _loc9_:CustomArt = null;
         var _loc2_:XMLList = param1.children();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = new _SafeCls_6();
            _loc4_._SafeStr_258 = _loc3_.attribute("ItemName");
            _loc4_._SafeStr_2972 = _SafeCls_19._SafeStr_185(_loc3_.attribute("Spawnable"));
            _loc4_._SafeStr_243 = new Vector.<String>(_SafeCls_26._SafeStr_2250);
            _loc4_._SafeStr_243.fixed = true;
            _loc5_ = _loc3_.children();
            for each(_loc6_ in _loc5_)
            {
               _loc7_ = String(_loc6_.name());
               if(_loc7_ == "ItemID")
               {
                  _loc4_._SafeStr_173 = uint(_loc6_);
               }
               else if(_loc7_ == "DisplayName")
               {
                  _loc4_.mDisplayName = String(_loc6_);
               }
               else if(_loc7_ == "IconName")
               {
                  _loc4_._SafeStr_978 = String(_loc6_);
               }
               else if(_loc7_ == "BaseWeapon")
               {
                  _loc4_._SafeStr_2943 = String(_loc6_);
               }
               else if(_loc7_ == "Description")
               {
                  _loc4_._SafeStr_3082 = String(_loc6_);
               }
               else if(_loc7_ == "OnConsumePower")
               {
                  _loc4_._SafeStr_1715 = String(_loc6_);
               }
               else if(_loc7_ == "DestroyOnCollision")
               {
                  _loc4_._SafeStr_1896 = _SafeCls_19._SafeStr_185(_loc6_);
               }
               else if(_loc7_ == "OnCollisionPower")
               {
                  _loc4_._SafeStr_2169 = String(_loc6_);
               }
               else if(_loc7_ == "OnTriggeredPower")
               {
                  _loc4_._SafeStr_1708 = String(_loc6_);
               }
               else if(_loc7_ == "OnActivatePower")
               {
                  _loc4_._SafeStr_1438 = String(_loc6_);
               }
               else if(_loc7_ == "OnActivateBuff")
               {
                  _loc4_._SafeStr_2007 = String(_loc6_);
               }
               else if(_loc7_ == "BuffWhileEquipped")
               {
                  _loc4_._SafeStr_2045 = String(_loc6_);
               }
               else if(_loc7_ == "Duration")
               {
                  _loc4_.mDuration = int(_loc6_) * 1000;
               }
               else if(_loc7_ == "MaxAllowed")
               {
                  _loc4_._SafeStr_3255 = int(_loc6_);
               }
               else if(_loc7_ == "Elasticity")
               {
                  _loc4_._SafeStr_1256 = Number(_loc6_);
               }
               else if(_loc7_ == "Friction")
               {
                  _loc4_._SafeStr_1161 = Number(_loc6_) * _SafeCls_27._SafeStr_502;
               }
               else if(_loc7_ == "AirFriction")
               {
                  _loc4_._SafeStr_2020 = Number(_loc6_) * _SafeCls_27._SafeStr_1469;
               }
               else if(_loc7_ == "ImpulseMult")
               {
                  _loc4_._SafeStr_2757 = Number(_loc6_);
               }
               else if(_loc7_ == "MaxHP")
               {
                  _loc4_._SafeStr_2889 = uint(_loc6_);
               }
               else if(_loc7_ == "Width")
               {
                  _loc4_._SafeStr_237 = uint(_loc6_);
               }
               else if(_loc7_ == "Height")
               {
                  _loc4_._SafeStr_163 = uint(_loc6_);
               }
               else if(_loc7_ == "ThrowingDamage")
               {
                  _loc4_._SafeStr_2463 = Number(_loc6_);
               }
               else if(_loc7_ == "ThrownInitialVelocityMult")
               {
                  _loc4_._SafeStr_1996 = Number(_loc6_);
               }
               else if(_loc7_ == "StickToWalls")
               {
                  _loc4_._SafeStr_1742 = _SafeCls_19._SafeStr_185(_loc6_);
               }
               else if(_loc7_ == "ConditionalStickToWalls")
               {
                  _loc4_._SafeStr_2497 = _SafeCls_19._SafeStr_185(_loc6_);
               }
               else if(_loc7_ == "Weapon")
               {
                  _loc4_._SafeStr_1123 = _SafeCls_19._SafeStr_185(_loc6_);
               }
               else if(_loc7_ == "EquipGfxType")
               {
                  _loc4_._SafeStr_418 = GfxType._SafeStr_299(_loc6_,null);
               }
               else if(_loc7_ == "WorldGfxType")
               {
                  _loc4_.mWorldGfxType = GfxType._SafeStr_299(_loc6_,null);
               }
               else if(_loc7_ == "DamageThresholdForDrop")
               {
                  _loc4_._SafeStr_2814 = Number(_loc6_);
               }
               else if(_loc7_ == "ImpactThresholdForDrop")
               {
                  _loc4_._SafeStr_2774 = Number(_loc6_);
               }
               else if(_loc7_ == "OnBounceSound")
               {
                  _loc4_._SafeStr_2354 = String(_loc6_);
               }
               else if(_loc7_ == "OnLandSound")
               {
                  _loc4_._SafeStr_1873 = String(_loc6_);
               }
               else if(_loc7_ == "OnAppearSound")
               {
                  _loc4_._SafeStr_2390 = String(_loc6_);
               }
               else if(_loc7_ == "EquipRunSound")
               {
                  _loc4_._SafeStr_2901 = String(_loc6_);
               }
               else if(_loc7_ == "EquipLandSound")
               {
                  _loc4_._SafeStr_2447 = String(_loc6_);
               }
               else if(_loc7_ == "EquipJumpSound")
               {
                  _loc4_._SafeStr_2615 = String(_loc6_);
               }
               else if(_loc7_ == "EquipDodgeSound")
               {
                  _loc4_._SafeStr_2464 = String(_loc6_);
               }
               else if(_loc7_ == "EquipAerialJumpSound")
               {
                  _loc4_._SafeStr_2759 = String(_loc6_);
               }
               else if(_loc7_ == "EquipWallslideSound")
               {
                  _loc4_._SafeStr_2443 = String(_loc6_);
               }
               else if(_loc7_ == "PickupSound")
               {
                  _loc4_._SafeStr_2220 = String(_loc6_);
               }
               else if(_loc7_ == "ThrowSound")
               {
                  _loc4_._SafeStr_2871 = String(_loc6_);
               }
               else if(_loc7_ == "OnStickSound")
               {
                  _loc4_._SafeStr_1878 = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Dash")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_2035] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Throw")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_2366] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Up")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_1826] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Forward")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_478] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Down")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_475] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Aerial")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_1728] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Aerial_Up")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_460] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Aerial_Forward")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_419] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Aerial_Down")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_537] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Smash_Up")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_483] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Smash_Forward")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_461] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Smash_Down")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_439] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Smash_Aerial_Up")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_415] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Smash_Aerial_Forward")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_1195] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Smash_Aerial_Down")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_1199] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Wall")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_2243] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Super")
               {
                  _loc4_._SafeStr_243[_SafeCls_26._SafeStr_2098] = String(_loc6_);
               }
               else if(_loc7_ == "PowerType_Combo1")
               {
                  _loc4_._SafeStr_243[_SafeCls_26.ACTION_ATTACK_COMBO1] = String(_loc6_);
                  _loc4_._SafeStr_552 = Math.max(1,_loc4_._SafeStr_552);
               }
               else if(_loc7_ == "PowerType_Combo2")
               {
                  _loc4_._SafeStr_243[_SafeCls_26.ACTION_ATTACK_COMBO2] = String(_loc6_);
                  _loc4_._SafeStr_552 = Math.max(2,_loc4_._SafeStr_552);
               }
               else if(_loc7_ == "PowerType_Combo3")
               {
                  _loc4_._SafeStr_243[_SafeCls_26.ACTION_ATTACK_COMBO3] = String(_loc6_);
                  _loc4_._SafeStr_552 = Math.max(3,_loc4_._SafeStr_552);
               }
               else if(_loc7_ == "PowerType_Combo4")
               {
                  _loc4_._SafeStr_243[_SafeCls_26.ACTION_ATTACK_COMBO4] = String(_loc6_);
                  _loc4_._SafeStr_552 = Math.max(4,_loc4_._SafeStr_552);
               }
               else if(_loc7_ == "HeldCustomArt")
               {
                  _loc8_ = String(_loc6_).split("/");
                  _loc9_ = new CustomArt(_loc8_[0],_loc8_[1]);
                  _loc4_._SafeStr_1297 = _loc9_;
               }
               else
               {
                  _SafeCls_22._SafeStr_135("Unrecognized Property in " + _loc4_._SafeStr_258 + ": " + _loc7_);
               }
            }
            if(!_loc4_._SafeStr_1715 && !_loc4_._SafeStr_418 && Boolean(_loc4_.mWorldGfxType))
            {
               _loc4_._SafeStr_1231 = true;
            }
            if(Boolean(_loc4_._SafeStr_1438) || Boolean(_loc4_._SafeStr_2007))
            {
               _loc4_._SafeStr_1979 = true;
            }
            if(_loc4_._SafeStr_258 == "Door")
            {
               _loc4_._SafeStr_2916 = false;
            }
            if(_loc4_._SafeStr_258 == "ProxMine")
            {
               _loc4_._SafeStr_1366 = true;
            }
            if(_loc4_._SafeStr_258 == "Forcefield")
            {
               _loc4_._SafeStr_1366 = true;
               _loc4_._SafeStr_2435 = true;
               _loc4_._SafeStr_3107 = true;
               _loc4_._SafeStr_2339 = true;
               _loc4_._SafeStr_1995 = 1500;
               _loc4_._SafeStr_2763 = true;
               _loc4_._SafeStr_3124 = 34;
            }
            if(_loc4_._SafeStr_258 == "RocketLance")
            {
               _loc4_._SafeStr_2324 = _SafeCls_26.ACTION_ATTACK_COMBO3;
            }
            if(_loc4_._SafeStr_258 == "Shuriken")
            {
               _loc4_._SafeStr_1414 = _SafeCls_25._SafeStr_510 * 0.05;
            }
            if(_loc4_._SafeStr_258 == "BeachBall")
            {
               _loc4_._SafeStr_1414 = _SafeCls_25._SafeStr_510 * 0.35;
               _loc4_._SafeStr_404 = _SafeCls_25._SafeStr_510 * 0.35;
            }
            if(_loc4_._SafeStr_258 == "ReloadPistol")
            {
               _loc4_._SafeStr_3312 = 4;
            }
            if(_loc4_._SafeStr_2972)
            {
               if(_loc4_._SafeStr_1123)
               {
                  _SafeStr_936.push(_loc4_);
               }
               else
               {
                  _SafeStr_951.push(_loc4_);
               }
            }
            if(_loc4_._SafeStr_418)
            {
               _loc4_._SafeStr_418._SafeStr_639 = 0;
            }
            if(_loc4_.mWorldGfxType)
            {
               _loc4_.mWorldGfxType._SafeStr_639 = 0;
            }
            if(_loc4_._SafeStr_173)
            {
               if(_SafeStr_416[_loc4_._SafeStr_258])
               {
                  _SafeCls_22._SafeStr_135("Duplicate ItemType for item named: " + _loc4_._SafeStr_258);
               }
               if(_SafeStr_712[_loc4_._SafeStr_173])
               {
                  _SafeCls_22._SafeStr_135("Duplicate ItemID for item named: " + _loc4_._SafeStr_258);
               }
               if(_loc4_._SafeStr_173 > Game._SafeStr_1363)
               {
                  _SafeCls_22._SafeStr_135("Database assumes all item type IDs will be less <= " + Game._SafeStr_1363);
               }
               _SafeStr_416[_loc4_._SafeStr_258] = _loc4_;
               _SafeStr_712[_loc4_._SafeStr_173] = _loc4_;
            }
         }
         _SafeStr_722 = _SafeStr_416["BasicUnarmed"];
         if(!_SafeStr_722)
         {
            _SafeCls_22._SafeStr_135("Basic unarmed itemType must exist, but none was found!");
         }
         _SafeStr_703 = _SafeStr_416["BasicHeldItem"];
         if(!_SafeStr_703)
         {
            _SafeCls_22._SafeStr_135("Basic held itemType must exist, but none was found!");
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_6 = "_-0u"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_26 = "_-LQ"
 * @identifier _SafeCls_27 = "_-C7"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_163 = "_-eC"
 * @identifier _SafeStr_173 = "_-KG"
 * @identifier _SafeStr_185 = "_-im"
 * @identifier _SafeStr_237 = "_-Q6"
 * @identifier _SafeStr_243 = "_-6i"
 * @identifier _SafeStr_258 = "_-ES"
 * @identifier _SafeStr_280 = "_-4e"
 * @identifier _SafeStr_299 = "_-e3"
 * @identifier _SafeStr_404 = "_-py"
 * @identifier _SafeStr_415 = "_-WH"
 * @identifier _SafeStr_416 = "_-DY"
 * @identifier _SafeStr_418 = "_-me"
 * @identifier _SafeStr_419 = "_-Ys"
 * @identifier _SafeStr_439 = "_-QR"
 * @identifier _SafeStr_460 = "_-VV"
 * @identifier _SafeStr_461 = "_-UT"
 * @identifier _SafeStr_475 = "_-qb"
 * @identifier _SafeStr_478 = "_-fy"
 * @identifier _SafeStr_483 = "_-ta"
 * @identifier _SafeStr_502 = "_-l2"
 * @identifier _SafeStr_510 = "_-U3"
 * @identifier _SafeStr_537 = "_-Hs"
 * @identifier _SafeStr_552 = "_-mm"
 * @identifier _SafeStr_639 = "_-Rg"
 * @identifier _SafeStr_703 = "_-ig"
 * @identifier _SafeStr_712 = "_-rt"
 * @identifier _SafeStr_722 = "_-c0"
 * @identifier _SafeStr_936 = "_-co"
 * @identifier _SafeStr_951 = "_-fi"
 * @identifier _SafeStr_978 = "_-Gs"
 * @identifier _SafeStr_1123 = "_-L7"
 * @identifier _SafeStr_1161 = "_-Lz"
 * @identifier _SafeStr_1195 = "_-Kg"
 * @identifier _SafeStr_1199 = "_-6L"
 * @identifier _SafeStr_1231 = "_-sD"
 * @identifier _SafeStr_1256 = "_-Q1"
 * @identifier _SafeStr_1297 = "_-kY"
 * @identifier _SafeStr_1363 = "_-YH"
 * @identifier _SafeStr_1366 = "_-Cm"
 * @identifier _SafeStr_1414 = "_-BV"
 * @identifier _SafeStr_1438 = "_-5H"
 * @identifier _SafeStr_1469 = "_-TE"
 * @identifier _SafeStr_1708 = "_-Fk"
 * @identifier _SafeStr_1715 = "_-dw"
 * @identifier _SafeStr_1728 = "_-LT"
 * @identifier _SafeStr_1742 = "_-JS"
 * @identifier _SafeStr_1826 = "_-Ao"
 * @identifier _SafeStr_1873 = "_-LC"
 * @identifier _SafeStr_1878 = "_-ie"
 * @identifier _SafeStr_1896 = "_-4Q"
 * @identifier _SafeStr_1979 = "_-QS"
 * @identifier _SafeStr_1995 = "_-qY"
 * @identifier _SafeStr_1996 = "_-3e"
 * @identifier _SafeStr_2007 = "_-7U"
 * @identifier _SafeStr_2020 = "_-WS"
 * @identifier _SafeStr_2035 = "_-2v"
 * @identifier _SafeStr_2045 = "_-9l"
 * @identifier _SafeStr_2098 = "_-RJ"
 * @identifier _SafeStr_2169 = "_-PR"
 * @identifier _SafeStr_2215 = "_-KJ"
 * @identifier _SafeStr_2220 = "_-Ci"
 * @identifier _SafeStr_2243 = "_-TY"
 * @identifier _SafeStr_2250 = "_-0G"
 * @identifier _SafeStr_2324 = "_-Zn"
 * @identifier _SafeStr_2339 = "_-km"
 * @identifier _SafeStr_2354 = "_-dY"
 * @identifier _SafeStr_2366 = "_-2A"
 * @identifier _SafeStr_2390 = "_-fg"
 * @identifier _SafeStr_2408 = "_-YL"
 * @identifier _SafeStr_2435 = "_-fX"
 * @identifier _SafeStr_2443 = "_-2u"
 * @identifier _SafeStr_2447 = "_-oq"
 * @identifier _SafeStr_2463 = "_-3d"
 * @identifier _SafeStr_2464 = "_-D2"
 * @identifier _SafeStr_2497 = "_-gP"
 * @identifier _SafeStr_2615 = "_-2W"
 * @identifier _SafeStr_2757 = "_-At"
 * @identifier _SafeStr_2759 = "_-fk"
 * @identifier _SafeStr_2763 = "_-Mw"
 * @identifier _SafeStr_2774 = "_-pG"
 * @identifier _SafeStr_2814 = "_-0K"
 * @identifier _SafeStr_2871 = "_-DB"
 * @identifier _SafeStr_2889 = "_-YA"
 * @identifier _SafeStr_2901 = "_-5b"
 * @identifier _SafeStr_2916 = "_-kN"
 * @identifier _SafeStr_2943 = "_-VJ"
 * @identifier _SafeStr_2972 = "_-mO"
 * @identifier _SafeStr_3082 = "_-Ov"
 * @identifier _SafeStr_3107 = "_-u0"
 * @identifier _SafeStr_3124 = "_-w9"
 * @identifier _SafeStr_3255 = "_-Kn"
 * @identifier _SafeStr_3312 = "_-nY"
 */
