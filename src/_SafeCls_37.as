package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _SafeCls_37 extends _SafeCls_35
   {
      
      private static const _SafeStr_888:uint = 0;
      
      private static const _SafeStr_1155:uint = 1;
      
      private static const _SafeStr_885:uint = 2;
      
      private var _SafeStr_898:_SafeCls_34;
      
      private var _SafeStr_1625:_SafeCls_34;
      
      private var _SafeStr_587:uint;
      
      private var _SafeStr_551:_SafeCls_16;
      
      private var _SafeStr_1279:_SafeCls_34;
      
      private var mCharacterName:_SafeCls_62;
      
      private var _SafeStr_1532:_SafeCls_34;
      
      private var _SafeStr_2012:_SafeCls_34;
      
      private var _SafeStr_1302:_SafeCls_34;
      
      private var _SafeStr_1247:_SafeCls_34;
      
      private var _SafeStr_3519:_SafeCls_34;
      
      private var _SafeStr_3179:_SafeCls_34;
      
      private var _SafeStr_3180:_SafeCls_34;
      
      private var _SafeStr_1771:_SafeCls_34;
      
      private var _SafeStr_1956:_SafeCls_62;
      
      private var _SafeStr_3565:_SafeCls_34;
      
      private var _SafeStr_3455:_SafeCls_34;
      
      private var _SafeStr_3287:_SafeCls_62;
      
      private var _SafeStr_1917:_SafeCls_34;
      
      private var _SafeStr_2415:_SafeCls_34;
      
      private var _SafeStr_2100:_SafeCls_34;
      
      private var _SafeStr_2149:_SafeCls_34;
      
      private var mAbilityIcon1:_SafeCls_34;
      
      private var mAbilityIcon2:_SafeCls_34;
      
      private var mAbilityIcon3:_SafeCls_34;
      
      private var mAbilityIcon4:_SafeCls_34;
      
      private var mAbilityIconName1:_SafeCls_62;
      
      private var mAbilityIconName2:_SafeCls_62;
      
      private var mAbilityIconName3:_SafeCls_62;
      
      private var mAbilityIconName4:_SafeCls_62;
      
      private var _SafeStr_205:Point;
      
      private var _SafeStr_245:_SafeCls_34;
      
      private var _SafeStr_1380:_SafeCls_34;
      
      private var _SafeStr_218:Vector.<Vector.<_SafeCls_34>>;
      
      private var _SafeStr_443:Vector.<_SafeCls_34>;
      
      private var _SafeStr_2399:Vector.<_SafeCls_34>;
      
      private var _SafeStr_463:Boolean;
      
      private var _SafeStr_1012:Boolean;
      
      public function _SafeCls_37(param1:Game)
      {
         super(param1,"a_ScreenHeroOverview",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc1_:MovieClip = _SafeStr_123.am_Panel;
         this._SafeStr_898 = _SafeStr_124(_loc1_);
         var _loc2_:MovieClip = _loc1_.am_PanelInternal;
         this._SafeStr_1279 = _SafeStr_124(_loc2_.am_Portrait.am_Holder);
         this.mCharacterName = _SafeStr_145(_loc2_.am_Name);
         this._SafeStr_218 = new Vector.<Vector.<_SafeCls_34>>();
         this._SafeStr_218.push(new Vector.<_SafeCls_34>());
         this._SafeStr_443 = new Vector.<_SafeCls_34>();
         this._SafeStr_2399 = new Vector.<_SafeCls_34>();
         _SafeStr_130(_loc2_.am_Close,this.OnClose,this._SafeStr_376);
         this._SafeStr_1771 = _SafeStr_130(_loc2_.am_UnlockButton,this._SafeStr_3108,this._SafeStr_376);
         this._SafeStr_218[0].push(_SafeStr_130(_loc2_.am_OverviewButton,this._SafeStr_3284,this._SafeStr_376));
         this._SafeStr_218[0].push(_SafeStr_130(_loc2_.am_SkinsButton,this._SafeStr_3204,this._SafeStr_376));
         this._SafeStr_218[0].push(_SafeStr_130(_loc2_.am_BioButton,this._SafeStr_3352,this._SafeStr_376));
         this._SafeStr_218[0].push(this._SafeStr_1771);
         this._SafeStr_205 = new Point(0,0);
         this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205.x][this._SafeStr_205.y];
         this._SafeStr_1956 = _SafeStr_145(_loc2_.am_UnlockCost);
         var _loc3_:MovieClip = _loc2_.am_OverviewPanel;
         this._SafeStr_2012 = _SafeStr_124(_loc3_);
         this._SafeStr_1532 = _SafeStr_124(_loc3_.am_SplashArtHolder);
         this._SafeStr_1917 = _SafeStr_124(_loc3_.am_AttackBar);
         this._SafeStr_2415 = _SafeStr_124(_loc3_.am_ImpulseBar);
         this._SafeStr_2100 = _SafeStr_124(_loc3_.am_DefenseBar);
         this._SafeStr_2149 = _SafeStr_124(_loc3_.am_WeightBar);
         this.mAbilityIcon1 = _SafeStr_124(_loc3_.am_AbilityIcon0.am_Holder);
         this.mAbilityIcon2 = _SafeStr_124(_loc3_.am_AbilityIcon1.am_Holder);
         this.mAbilityIcon3 = _SafeStr_124(_loc3_.am_AbilityIcon2.am_Holder);
         this.mAbilityIcon4 = _SafeStr_124(_loc3_.am_AbilityIcon3.am_Holder);
         this.mAbilityIconName1 = _SafeStr_145(_loc3_.am_AbilityName0);
         this.mAbilityIconName2 = _SafeStr_145(_loc3_.am_AbilityName1);
         this.mAbilityIconName3 = _SafeStr_145(_loc3_.am_AbilityName2);
         this.mAbilityIconName4 = _SafeStr_145(_loc3_.am_AbilityName3);
         this._SafeStr_443.push(_SafeStr_130(_loc3_.am_AttackCursor,null,this._SafeStr_376));
         this._SafeStr_443.push(_SafeStr_130(_loc3_.am_ImpulseCursor,null,this._SafeStr_376));
         this._SafeStr_443.push(_SafeStr_130(_loc3_.am_DefenseCursor,null,this._SafeStr_376));
         this._SafeStr_443.push(_SafeStr_130(_loc3_.am_WeightCursor,null,this._SafeStr_376));
         this._SafeStr_443.push(_SafeStr_130(_loc3_.am_AbilityIcon0,null,this._SafeStr_376));
         this._SafeStr_443.push(_SafeStr_130(_loc3_.am_AbilityIcon1,null,this._SafeStr_376));
         this._SafeStr_443.push(_SafeStr_130(_loc3_.am_AbilityIcon2,null,this._SafeStr_376));
         this._SafeStr_443.push(_SafeStr_130(_loc3_.am_AbilityIcon3,null,this._SafeStr_376));
         var _loc4_:MovieClip = _loc2_.am_SkinsPanel;
         this._SafeStr_1302 = _SafeStr_124(_loc4_);
         var _loc5_:MovieClip = _loc2_.am_BioPanel;
         this._SafeStr_1247 = _SafeStr_124(_loc5_);
      }
      
      override public function OnDestroyScreen() : void
      {
         var _loc1_:Vector.<_SafeCls_34> = null;
         this._SafeStr_898 = null;
         this._SafeStr_1625 = null;
         this._SafeStr_551 = null;
         this._SafeStr_1279.mMovieClip.removeChildren();
         this._SafeStr_1279 = null;
         this._SafeStr_1532.mMovieClip.removeChildren();
         this._SafeStr_1532 = null;
         this.mCharacterName = null;
         this._SafeStr_2012 = null;
         this._SafeStr_1302 = null;
         this._SafeStr_1247 = null;
         this._SafeStr_3519 = null;
         this._SafeStr_3179 = null;
         this._SafeStr_3180 = null;
         this._SafeStr_1771 = null;
         this._SafeStr_1956 = null;
         this._SafeStr_3565 = null;
         this._SafeStr_3455 = null;
         this._SafeStr_3287 = null;
         this._SafeStr_1917 = null;
         this._SafeStr_2415 = null;
         this._SafeStr_2100 = null;
         this._SafeStr_2149 = null;
         this.mAbilityIcon1 = null;
         this.mAbilityIcon2 = null;
         this.mAbilityIcon3 = null;
         this.mAbilityIcon4 = null;
         this.mAbilityIconName1 = null;
         this.mAbilityIconName2 = null;
         this.mAbilityIconName3 = null;
         this.mAbilityIconName4 = null;
         this._SafeStr_205 = null;
         this._SafeStr_245 = null;
         this._SafeStr_1380 = null;
         this._SafeStr_443 = null;
         this._SafeStr_2399 = null;
         if(this._SafeStr_218)
         {
            for each(_loc1_ in this._SafeStr_218)
            {
               _loc1_.length = 0;
               _loc1_ = null;
            }
            this._SafeStr_218 = null;
         }
      }
      
      override public function OnRefreshScreen() : void
      {
         var _loc1_:_SafeCls_34 = null;
         var _loc2_:MovieClip = null;
         var _loc3_:_SafeCls_85 = null;
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_1380.mMovieClip.am_Highlighter.visible = false;
         this._SafeStr_245.mMovieClip.am_Highlighter.visible = true;
         this._SafeStr_1380 = this._SafeStr_245;
         if(this._SafeStr_1012)
         {
            switch(this._SafeStr_587)
            {
               case _SafeStr_885:
                  _loc1_ = this._SafeStr_1247;
                  this._SafeStr_218[1] = null;
                  break;
               case _SafeStr_1155:
                  _loc1_ = this._SafeStr_1302;
                  this._SafeStr_218[1] = this._SafeStr_2399;
                  break;
               case _SafeStr_888:
                  _loc1_ = this._SafeStr_2012;
                  this._SafeStr_218[1] = this._SafeStr_443;
                  _loc3_ = this._SafeStr_551._SafeStr_850[_SafeCls_85._SafeStr_564];
                  _loc2_ = this.mAbilityIcon1.mMovieClip;
                  _loc2_.removeChildren();
                  _loc2_.addChild(_SafeCls_12._SafeStr_294(_loc3_._SafeStr_978));
                  this.mAbilityIconName1.SetText(_loc3_.mDisplayName.toUpperCase());
                  _loc3_ = this._SafeStr_551._SafeStr_850[_SafeCls_85._SafeStr_559];
                  _loc2_ = this.mAbilityIcon2.mMovieClip;
                  _loc2_.removeChildren();
                  _loc2_.addChild(_SafeCls_12._SafeStr_294(_loc3_._SafeStr_978));
                  this.mAbilityIconName2.SetText(_loc3_.mDisplayName.toUpperCase());
                  _loc3_ = this._SafeStr_551._SafeStr_850[_SafeCls_85._SafeStr_588];
                  _loc2_ = this.mAbilityIcon3.mMovieClip;
                  _loc2_.removeChildren();
                  _loc2_.addChild(_SafeCls_12._SafeStr_294(_loc3_._SafeStr_978));
                  this.mAbilityIconName3.SetText(_loc3_.mDisplayName.toUpperCase());
                  _loc3_ = this._SafeStr_551._SafeStr_850[_SafeCls_85._SafeStr_1740];
                  _loc2_ = this.mAbilityIcon4.mMovieClip;
                  _loc2_.removeChildren();
                  _loc2_.addChild(_SafeCls_12._SafeStr_294(_loc3_._SafeStr_978));
                  this.mAbilityIconName4.SetText(_loc3_.mDisplayName.toUpperCase());
                  this._SafeStr_1917.PlayAnimation(String(this._SafeStr_551._SafeStr_2712));
                  this._SafeStr_2415.PlayAnimation(String(this._SafeStr_551._SafeStr_2857));
                  this._SafeStr_2100.PlayAnimation(String(this._SafeStr_551._SafeStr_2746));
                  this._SafeStr_2149.PlayAnimation(String(this._SafeStr_551._SafeStr_2466));
            }
            this._SafeStr_2905();
            if(this._SafeStr_1625)
            {
               this._SafeStr_1625.Hide();
            }
            this._SafeStr_1625 = _loc1_;
            _loc1_.Show();
            this._SafeStr_1012 = false;
         }
      }
      
      override public function OnTickScreen() : void
      {
         if(this._SafeStr_463)
         {
            if(this._SafeStr_898.mbCompleted)
            {
               this._SafeStr_463 = false;
               Hide();
            }
         }
      }
      
      public function OnInitDisplay(param1:_SafeCls_16) : void
      {
         this._SafeStr_898.ClearAnimation();
         this._SafeStr_898.PlayAnimation("Display");
         if(this._SafeStr_1302.mbVisible)
         {
            this._SafeStr_1302.Hide();
         }
         if(this._SafeStr_1247.mbVisible)
         {
            this._SafeStr_1247.Hide();
         }
         this._SafeStr_1012 = true;
         var _temp_1:* = this._SafeStr_205;
         this._SafeStr_205.y = 0;
         _temp_1.x = 0;
         var _temp_3:* = this;
         var _loc4_:*;
         this._SafeStr_245 = _loc4_ = this._SafeStr_218[this._SafeStr_205.x][this._SafeStr_205.y];
         _temp_3._SafeStr_1380 = 0;
         var _loc2_:MovieClip = this._SafeStr_1279.mMovieClip;
         _loc2_.removeChildren();
         _loc2_.addChild(_SafeCls_12._SafeStr_294(param1._SafeStr_1279 + "_HeroOverview"));
         this.mCharacterName.SetText(param1.mDisplayName);
         this._SafeStr_1956.SetText("");
         var _loc3_:MovieClip = this._SafeStr_1532.mMovieClip;
         _loc3_.removeChildren();
         _loc3_.addChild(_SafeCls_12._SafeStr_294(param1._SafeStr_1279 + "_SplashArt"));
         this._SafeStr_551 = param1;
         this._SafeStr_1771.Hide();
         this._SafeStr_587 = _SafeStr_888;
      }
      
      public function OnClose(param1:MouseEvent = null) : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_463 = true;
         this._SafeStr_898.PlayAnimation("Display",_SafeCls_34._SafeStr_286);
         _SafeStr_118.screenHeroList.Display();
      }
      
      public function _SafeStr_191(param1:int) : Boolean
      {
         if(!mbVisible || this._SafeStr_463)
         {
            return false;
         }
         var _loc2_:Boolean = false;
         switch(param1)
         {
            case Game._SafeStr_216:
            case Game._SafeStr_305:
               if(this._SafeStr_586())
               {
                  return true;
               }
               if(this._SafeStr_245)
               {
                  this._SafeStr_245.mMovieClip.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
               }
               break;
            case Game._SafeStr_208:
               if(this._SafeStr_586())
               {
                  return true;
               }
               if(this._SafeStr_205.y == 0)
               {
                  break;
               }
               --this._SafeStr_205.y;
               _loc2_ = true;
               break;
            case Game._SafeStr_207:
               if(this._SafeStr_586())
               {
                  return true;
               }
               if(this._SafeStr_205.y >= this._SafeStr_218[this._SafeStr_205.x].length - 1)
               {
                  break;
               }
               ++this._SafeStr_205.y;
               _loc2_ = true;
               break;
            case Game._SafeStr_213:
               if(this._SafeStr_586())
               {
                  return true;
               }
               if(this._SafeStr_205.x >= this._SafeStr_218.length - 1 || this._SafeStr_587 == _SafeStr_885)
               {
                  break;
               }
               ++this._SafeStr_205.x;
               this._SafeStr_205.y = 0;
               _loc2_ = true;
               break;
            case Game._SafeStr_214:
               if(this._SafeStr_586())
               {
                  return true;
               }
               if(this._SafeStr_205.x == 0)
               {
                  break;
               }
               --this._SafeStr_205.x;
               this._SafeStr_205.y = 0;
               _loc2_ = true;
               break;
            case Game._SafeStr_242:
            case Game._SafeStr_247:
            case Game._SafeStr_288:
            case Game._SafeStr_293:
               this.OnClose();
         }
         if(_loc2_)
         {
            this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205.x][this._SafeStr_205.y];
            _SafeStr_118.PlaySound("Mouseover_Click");
            _SafeStr_141();
         }
         return true;
      }
      
      private function _SafeStr_376(param1:MouseEvent) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(this._SafeStr_586())
         {
            return;
         }
         if(this._SafeStr_463)
         {
            return;
         }
         _SafeStr_118.PlaySound("Mouseover_Click");
         _loc2_ = this._SafeStr_218.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this._SafeStr_218[_loc2_].length - 1;
            while(_loc3_ >= 0)
            {
               if(this._SafeStr_218[_loc2_][_loc3_].mMovieClip == param1.currentTarget)
               {
                  this._SafeStr_205.x = _loc2_;
                  this._SafeStr_205.y = _loc3_;
                  this._SafeStr_245 = this._SafeStr_218[_loc2_][_loc3_];
                  _SafeStr_141();
                  return;
               }
               _loc3_--;
            }
            _loc2_--;
         }
      }
      
      private function _SafeStr_3284(param1:MouseEvent) : void
      {
         if(this._SafeStr_586())
         {
            return;
         }
         if(this._SafeStr_587 == _SafeStr_888)
         {
            return;
         }
         this._SafeStr_587 = _SafeStr_888;
         this._SafeStr_1012 = true;
         _SafeStr_141();
      }
      
      private function _SafeStr_3204(param1:MouseEvent) : void
      {
         if(this._SafeStr_586())
         {
            return;
         }
         if(this._SafeStr_587 == _SafeStr_1155)
         {
            return;
         }
         this._SafeStr_587 = _SafeStr_1155;
         this._SafeStr_1012 = true;
         _SafeStr_141();
      }
      
      private function _SafeStr_3352(param1:MouseEvent) : void
      {
         if(this._SafeStr_586())
         {
            return;
         }
         if(this._SafeStr_587 == _SafeStr_885)
         {
            return;
         }
         this._SafeStr_587 = _SafeStr_885;
         this._SafeStr_1012 = true;
         _SafeStr_141();
      }
      
      private function _SafeStr_3108(param1:MouseEvent) : void
      {
      }
      
      private function _SafeStr_2905() : void
      {
         var _loc1_:Vector.<_SafeCls_34> = null;
         var _loc2_:_SafeCls_34 = null;
         for each(_loc1_ in this._SafeStr_218)
         {
            for each(_loc2_ in _loc1_)
            {
               _loc2_.mMovieClip.am_Highlighter.visible = false;
            }
         }
         if(this._SafeStr_245)
         {
            this._SafeStr_245.mMovieClip.am_Highlighter.visible = true;
         }
      }
      
      private function _SafeStr_586() : Boolean
      {
         return true;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_12 = "_-G5"
 * @identifier _SafeCls_16 = "_-DS"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_37 = "_-D9"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_85 = "_-Ud"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_130 = "_-Ri"
 * @identifier _SafeStr_141 = "_-Ay"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_205 = "_-Ht"
 * @identifier _SafeStr_207 = "_-wd"
 * @identifier _SafeStr_208 = "_-9P"
 * @identifier _SafeStr_213 = "_-Rl"
 * @identifier _SafeStr_214 = "_-W1"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_218 = "_-6B"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_245 = "_-7I"
 * @identifier _SafeStr_247 = "_-PM"
 * @identifier _SafeStr_286 = "_-kZ"
 * @identifier _SafeStr_288 = "_-m2"
 * @identifier _SafeStr_293 = "_-tr"
 * @identifier _SafeStr_294 = "_-2P"
 * @identifier _SafeStr_305 = "_-2J"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_443 = "_-JG"
 * @identifier _SafeStr_463 = "_-45"
 * @identifier _SafeStr_551 = "_-OL"
 * @identifier _SafeStr_559 = "_-h7"
 * @identifier _SafeStr_564 = "_-Uu"
 * @identifier _SafeStr_586 = "_-5l"
 * @identifier _SafeStr_587 = "_-R4"
 * @identifier _SafeStr_588 = "_-m5"
 * @identifier _SafeStr_850 = "_-9j"
 * @identifier _SafeStr_885 = "_-Fp"
 * @identifier _SafeStr_888 = "_-OM"
 * @identifier _SafeStr_898 = "_-bZ"
 * @identifier _SafeStr_978 = "_-Gs"
 * @identifier _SafeStr_1012 = "_-lz"
 * @identifier _SafeStr_1155 = "_-q0"
 * @identifier _SafeStr_1247 = "_-9R"
 * @identifier _SafeStr_1279 = "_-s5"
 * @identifier _SafeStr_1302 = "_-WU"
 * @identifier _SafeStr_1380 = "_-cG"
 * @identifier _SafeStr_1532 = "_-2g"
 * @identifier _SafeStr_1625 = "_-Lj"
 * @identifier _SafeStr_1740 = "_-hO"
 * @identifier _SafeStr_1771 = "_-Ky"
 * @identifier _SafeStr_1917 = "_-Zf"
 * @identifier _SafeStr_1956 = "_-nO"
 * @identifier _SafeStr_2012 = "_-5h"
 * @identifier _SafeStr_2100 = "_-Qm"
 * @identifier _SafeStr_2149 = "_-Co"
 * @identifier _SafeStr_2399 = "_-Db"
 * @identifier _SafeStr_2415 = "final"
 * @identifier _SafeStr_2466 = "_-b4"
 * @identifier _SafeStr_2712 = "_-TG"
 * @identifier _SafeStr_2746 = "_-lm"
 * @identifier _SafeStr_2857 = "_-dC"
 * @identifier _SafeStr_2905 = "_-vr"
 * @identifier _SafeStr_3108 = "_-at"
 * @identifier _SafeStr_3179 = "_-59"
 * @identifier _SafeStr_3180 = "_-0f"
 * @identifier _SafeStr_3204 = "_-Z3"
 * @identifier _SafeStr_3284 = "_-96"
 * @identifier _SafeStr_3287 = "_-sm"
 * @identifier _SafeStr_3352 = "_-AK"
 * @identifier _SafeStr_3455 = "_-D"
 * @identifier _SafeStr_3519 = "_-6P"
 * @identifier _SafeStr_3565 = "_-Pz"
 */
