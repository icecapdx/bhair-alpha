package
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.ui.GameInput;
   import flash.utils.Dictionary;
   
   public class Brawlhalla extends MovieClip
   {
      
      public static var _SafeStr_1129:GameInput;
      
      public static var _SafeStr_623:SharedObject;
      
      public static var _SafeStr_801:Boolean;
      
      internal var _SafeStr_2375:_SafeCls_5;
      
      internal var _SafeStr_1850:Sprite;
      
      internal var _SafeStr_2750:String;
      
      public function Brawlhalla()
      {
         super();
         if(stage)
         {
            this._SafeStr_2451();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this._SafeStr_2451);
         }
         _SafeStr_1129 = new GameInput();
      }
      
      public static function _SafeStr_2240() : void
      {
         _SafeStr_623.data.bhIsWindowed = _SafeStr_801;
         _SafeStr_623.data.bhSoundVolumeInverted = 1 - _SafeCls_13._SafeStr_526;
         _SafeStr_623.data.bhMusicVolumeInverted = 1 - _SafeCls_13._SafeStr_2043(_SafeCls_5._SafeStr_427);
         try
         {
            _SafeStr_623.flush();
         }
         catch(error:Error)
         {
         }
      }
      
      private static function _SafeStr_2890() : Dictionary
      {
         var _loc1_:Dictionary = new Dictionary();
         _loc1_["Helmet"] = _SafeCls_16._SafeStr_133;
         _loc1_["HelmetBack"] = _SafeCls_16._SafeStr_133;
         _loc1_["Torso1"] = _SafeCls_16._SafeStr_133;
         _loc1_["Torso1Back"] = _SafeCls_16._SafeStr_133;
         _loc1_["Torso2"] = _SafeCls_16._SafeStr_133;
         _loc1_["Torso2Back"] = _SafeCls_16._SafeStr_133;
         _loc1_["Shoulder1"] = _SafeCls_16._SafeStr_133;
         _loc1_["Arm"] = _SafeCls_16._SafeStr_133;
         _loc1_["Arm1"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen07"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandFist01a"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandFist01b"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandFist02a"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandFist02b"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandFist03a"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandFist03b"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandFist04a"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandFist05"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandFist06"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandFist07"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandTrigger"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen01b"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen01a"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen02a"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen02c"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen03"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen04"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen04Pinky"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen05"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen05Back"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen05Backc"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandSupport02"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen02b"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen06"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen08"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen09"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen09c"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen10"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen11"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandSupport"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen13"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen13Back"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandOpen13Side"] = _SafeCls_16._SafeStr_133;
         _loc1_["ForearmFrontTop"] = _SafeCls_16._SafeStr_133;
         _loc1_["ForearmFrontTop2"] = _SafeCls_16._SafeStr_133;
         _loc1_["Forearm"] = _SafeCls_16._SafeStr_133;
         _loc1_["Forearm2"] = _SafeCls_16._SafeStr_133;
         _loc1_["ForearmBack"] = _SafeCls_16._SafeStr_133;
         _loc1_["ForearmBack2"] = _SafeCls_16._SafeStr_133;
         _loc1_["ForearmTop"] = _SafeCls_16._SafeStr_133;
         _loc1_["ForearmTop2"] = _SafeCls_16._SafeStr_133;
         _loc1_["ForearmAway"] = _SafeCls_16._SafeStr_133;
         _loc1_["ForearmAway2"] = _SafeCls_16._SafeStr_133;
         _loc1_["HandTriggerSpin"] = _SafeCls_16._SafeStr_133;
         _loc1_["Waist1"] = _SafeCls_16._SafeStr_133;
         _loc1_["Leg1"] = _SafeCls_16._SafeStr_133;
         _loc1_["ShinBack"] = _SafeCls_16._SafeStr_133;
         _loc1_["ShinSide"] = _SafeCls_16._SafeStr_133;
         _loc1_["Shin"] = _SafeCls_16._SafeStr_133;
         _loc1_["ShinSideBend"] = _SafeCls_16._SafeStr_133;
         _loc1_["Foot1"] = _SafeCls_16._SafeStr_133;
         _loc1_["Foot1Side"] = _SafeCls_16._SafeStr_133;
         _loc1_["Hair"] = _SafeCls_16._SafeStr_133;
         _loc1_["HairBack"] = _SafeCls_16._SafeStr_133;
         _loc1_["Ear"] = _SafeCls_16._SafeStr_133;
         _loc1_["EarExtra"] = _SafeCls_16._SafeStr_133;
         _loc1_["EarBack"] = _SafeCls_16._SafeStr_133;
         _loc1_["EarBackExtra"] = _SafeCls_16._SafeStr_133;
         _loc1_["Nose"] = _SafeCls_16._SafeStr_133;
         _loc1_["Jaw"] = _SafeCls_16._SafeStr_133;
         _loc1_["JawBack"] = _SafeCls_16._SafeStr_133;
         _loc1_["Mouth"] = _SafeCls_16._SafeStr_133;
         _loc1_["MouthSmile"] = _SafeCls_16._SafeStr_133;
         _loc1_["MouthKO"] = _SafeCls_16._SafeStr_133;
         _loc1_["MouthHit"] = _SafeCls_16._SafeStr_133;
         _loc1_["MouthGrowl"] = _SafeCls_16._SafeStr_133;
         _loc1_["MouthBack"] = _SafeCls_16._SafeStr_133;
         _loc1_["Eyes"] = _SafeCls_16._SafeStr_133;
         _loc1_["EyesTurn"] = _SafeCls_16._SafeStr_133;
         _loc1_["EyesKO"] = _SafeCls_16._SafeStr_133;
         _loc1_["EyesHit"] = _SafeCls_16._SafeStr_133;
         _loc1_["EyesDown"] = _SafeCls_16._SafeStr_133;
         _loc1_["EyesAngry"] = _SafeCls_16._SafeStr_133;
         _loc1_["WeaponHammer"] = _SafeCls_16._SafeStr_133;
         _loc1_["WeaponSword"] = _SafeCls_16._SafeStr_133;
         _loc1_["WeaponSwordAttack"] = _SafeCls_16._SafeStr_133;
         _loc1_["WeaponSwordLand"] = _SafeCls_16._SafeStr_133;
         _loc1_["WeaponRocketLance"] = _SafeCls_16._SafeStr_133;
         _loc1_["WeaponRocketLanceOpen"] = _SafeCls_16._SafeStr_133;
         _loc1_["WeaponRocketLanceSpin1"] = _SafeCls_16._SafeStr_133;
         _loc1_["WeaponRocketLanceSpin2"] = _SafeCls_16._SafeStr_133;
         _loc1_["WeaponRocketLanceSpin3"] = _SafeCls_16._SafeStr_133;
         _loc1_["LanceBackOpen"] = _SafeCls_16._SafeStr_133;
         _loc1_["pistol_interior"] = _SafeCls_16._SafeStr_133;
         _loc1_["WeaponPistol"] = _SafeCls_16._SafeStr_133;
         return _loc1_;
      }
      
      private static function _SafeStr_2603() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_.push("a__AnimationProxMine");
         return _loc1_;
      }
      
      public function _SafeStr_2451(param1:Event = null) : void
      {
         _SafeCls_1._SafeStr_2122();
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         _SafeStr_623 = SharedObject.getLocal("sbSavedGameData","/");
         var _loc2_:Number = Number(_SafeStr_623.data.bhSoundVolumeInverted);
         var _loc3_:Number = Number(_SafeStr_623.data.bhMusicVolumeInverted);
         var _loc4_:Number = _loc2_ ? 1 - _loc2_ : 1;
         var _loc5_:Number = _loc3_ ? 1 - _loc3_ : 1;
         _SafeCls_13._SafeStr_2677(_loc4_);
         _SafeCls_13._SafeStr_2903(_SafeCls_5._SafeStr_427,_loc5_);
         _SafeStr_801 = Boolean(_SafeStr_623.data.bhIsWindowed);
         stage.displayState = _SafeStr_801 ? StageDisplayState.NORMAL : StageDisplayState.FULL_SCREEN_INTERACTIVE;
         this._SafeStr_1850 = new Sprite();
         addChild(this._SafeStr_1850);
         if(_SafeCls_1.flags & _SafeCls_1._SafeStr_1377)
         {
         }
         this._SafeStr_2750 = _SafeCls_1.flags & _SafeCls_1._SafeStr_1356 ? _SafeCls_9._SafeStr_1659 : _SafeCls_9._SafeStr_661;
         addEventListener(Event.ENTER_FRAME,this._SafeStr_2978);
         GfxType._SafeStr_873(new Array(),true);
         _SafeCls_15._SafeStr_3332(800,4000,5,25,200);
         _SafeCls_12._SafeStr_873("UI_General_Click_Button");
         this._SafeStr_3190();
         _SafeCls_10._SafeStr_873(_SafeStr_2890(),[],_SafeStr_2603());
         _SafeCls_11._SafeStr_1218 = 25;
         _SafeCls_11._SafeStr_1597 = 4.7;
         _SafeCls_11._SafeStr_1570 = 2.5;
         _SafeCls_11._SafeStr_1109 = 0;
         _SafeCls_11._SafeStr_1606 = 4.7;
         _SafeCls_11._SafeStr_1653 = 4.7;
         _SafeCls_11._SafeStr_1555 = 110;
         _SafeCls_9._SafeStr_873(["Login","Lib","Core","Game","Level"]);
         this._SafeStr_3278();
         _SafeCls_9._SafeStr_3295(root.loaderInfo.parameters.fv,null);
      }
      
      private function _SafeStr_2978(param1:Event) : void
      {
         _SafeCls_9._SafeStr_2982();
         if(_SafeCls_9._SafeStr_1262(this._SafeStr_2750))
         {
            this._SafeStr_3238();
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_2978);
         }
      }
      
      private function _SafeStr_3238() : void
      {
         this._SafeStr_2375 = new _SafeCls_5();
         this._SafeStr_1850.addChild(this._SafeStr_2375);
         this._SafeStr_2375.Init();
      }
      
      private function _SafeStr_3278() : void
      {
         _SafeCls_9._SafeStr_524("GameModeTypes",_SafeCls_4._SafeStr_280);
         _SafeCls_9._SafeStr_524("ItemTypes",_SafeCls_6._SafeStr_280);
         _SafeCls_9._SafeStr_524("PowerTypes",_SafeCls_2._SafeStr_280);
         _SafeCls_9._SafeStr_524("BuffTypes",_SafeCls_18._SafeStr_280);
         _SafeCls_9._SafeStr_524("LevelTypes",_SafeCls_7._SafeStr_280);
         _SafeCls_9._SafeStr_524("CostumeTypes",_SafeCls_17._SafeStr_280);
         _SafeCls_9._SafeStr_524("EmitterTypes",_SafeCls_14._SafeStr_280);
         _SafeCls_9._SafeStr_524("TrailEffectTypes",_SafeCls_8._SafeStr_280);
         _SafeCls_9._SafeStr_524("SoundVolumes",_SafeCls_3._SafeStr_280);
         _SafeCls_9._SafeStr_524("HeroTypes",_SafeCls_16._SafeStr_280);
      }
      
      private function _SafeStr_3190() : void
      {
         _SafeCls_0._SafeStr_1080(_SafeCls_0._SafeStr_2141,_SafeCls_0._SafeStr_291);
         _SafeCls_0._SafeStr_1080(_SafeCls_0._SafeStr_2404,_SafeCls_0._SafeStr_179);
         _SafeCls_0._SafeStr_1080(_SafeCls_0._SafeStr_2152,_SafeCls_0._SafeStr_1831);
         _SafeCls_0._SafeStr_1080(_SafeCls_0._SafeStr_1890,_SafeCls_0._SafeStr_179 | Game._SafeStr_1338);
         _SafeCls_0._SafeStr_1080(_SafeCls_0._SafeStr_2018,_SafeCls_0._SafeStr_179 | Game._SafeStr_1505);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_2 = "_-jR"
 * @identifier _SafeCls_3 = "_-nK"
 * @identifier _SafeCls_4 = "_-Kq"
 * @identifier _SafeCls_5 = "_-N0"
 * @identifier _SafeCls_6 = "_-0u"
 * @identifier _SafeCls_7 = "_-Af"
 * @identifier _SafeCls_8 = "_-So"
 * @identifier _SafeCls_9 = "_-cU"
 * @identifier _SafeCls_10 = "_-HZ"
 * @identifier _SafeCls_11 = "_-XP"
 * @identifier _SafeCls_12 = "_-G5"
 * @identifier _SafeCls_13 = "_-Mg"
 * @identifier _SafeCls_14 = "_-fx"
 * @identifier _SafeCls_15 = "_-MP"
 * @identifier _SafeCls_16 = "_-DS"
 * @identifier _SafeCls_17 = "_-TF"
 * @identifier _SafeCls_18 = "_-Nn"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_133 = "_-04"
 * @identifier _SafeStr_179 = "_-BZ"
 * @identifier _SafeStr_280 = "_-4e"
 * @identifier _SafeStr_291 = "_-Ce"
 * @identifier _SafeStr_427 = "_-fv"
 * @identifier _SafeStr_524 = "_-57"
 * @identifier _SafeStr_526 = "_-Pa"
 * @identifier _SafeStr_623 = "_-m9"
 * @identifier _SafeStr_661 = "_-Tb"
 * @identifier _SafeStr_801 = "_-qc"
 * @identifier _SafeStr_873 = "_-VZ"
 * @identifier _SafeStr_1080 = "_-8d"
 * @identifier _SafeStr_1109 = "_-2-"
 * @identifier _SafeStr_1129 = "_-98"
 * @identifier _SafeStr_1218 = "_-s-"
 * @identifier _SafeStr_1262 = "_-VH"
 * @identifier _SafeStr_1338 = "_-3C"
 * @identifier _SafeStr_1356 = "_-4j"
 * @identifier _SafeStr_1377 = "_-DA"
 * @identifier _SafeStr_1505 = "_-mw"
 * @identifier _SafeStr_1555 = "_-89"
 * @identifier _SafeStr_1570 = "_-q9"
 * @identifier _SafeStr_1597 = "_-hi"
 * @identifier _SafeStr_1606 = "_-te"
 * @identifier _SafeStr_1653 = "_-31"
 * @identifier _SafeStr_1659 = "_-YI"
 * @identifier _SafeStr_1831 = "_-Dn"
 * @identifier _SafeStr_1850 = "_-CN"
 * @identifier _SafeStr_1890 = "_-8D"
 * @identifier _SafeStr_2018 = "_-vq"
 * @identifier _SafeStr_2043 = "_-lp"
 * @identifier _SafeStr_2122 = "package"
 * @identifier _SafeStr_2141 = "_-Di"
 * @identifier _SafeStr_2152 = "_-QZ"
 * @identifier _SafeStr_2240 = "_-J6"
 * @identifier _SafeStr_2375 = "_-On"
 * @identifier _SafeStr_2404 = "_-I0"
 * @identifier _SafeStr_2451 = "_-e-"
 * @identifier _SafeStr_2603 = "_-dO"
 * @identifier _SafeStr_2677 = "_-se"
 * @identifier _SafeStr_2750 = "_-j4"
 * @identifier _SafeStr_2890 = "_-N7"
 * @identifier _SafeStr_2903 = "_-Js"
 * @identifier _SafeStr_2978 = "_-Zb"
 * @identifier _SafeStr_2982 = "_-oL"
 * @identifier _SafeStr_3190 = "_-73"
 * @identifier _SafeStr_3238 = "_-7L"
 * @identifier _SafeStr_3278 = "_-Ln"
 * @identifier _SafeStr_3295 = "_-4H"
 * @identifier _SafeStr_3332 = "_-Cb"
 */
