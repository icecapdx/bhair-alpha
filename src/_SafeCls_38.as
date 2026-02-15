package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class _SafeCls_38 extends _SafeCls_35
   {
      
      private static const _SafeStr_467:uint = 8;
      
      private static const _SafeStr_2205:String = "am_Panel";
      
      private static const _SafeStr_2596:uint = 0;
      
      private static const _SafeStr_1186:uint = 25;
      
      private static const _SafeStr_1646:uint = 4;
      
      private static const _SafeStr_2302:uint = 255;
      
      private static const _SafeStr_1303:uint = 12;
      
      private static const _SafeStr_1344:uint = 11;
      
      private static const _SafeStr_1747:uint = 6;
      
      private static const _SafeStr_2345:Number = 0.75;
      
      private static const _SafeStr_1948:uint = 2111554;
      
      private static const _SafeStr_1430:Number = 10;
      
      private var _SafeStr_615:uint;
      
      private var _SafeStr_1191:Vector.<_SafeCls_34>;
      
      private var _SafeStr_1475:Vector.<_SafeCls_34>;
      
      private var _SafeStr_1517:Vector.<_SafeCls_34>;
      
      private var _SafeStr_1610:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1526:Vector.<_SafeCls_62>;
      
      private var _SafeStr_717:Vector.<_SafeCls_34>;
      
      public function _SafeCls_38(param1:Game)
      {
         super(param1,"a_ScreenKillboard","am_Panel");
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         this._SafeStr_717 = new Vector.<_SafeCls_34>();
         this._SafeStr_1475 = new Vector.<_SafeCls_34>(_SafeStr_467,true);
         this._SafeStr_1517 = new Vector.<_SafeCls_34>(_SafeStr_467,true);
         this._SafeStr_1610 = new Vector.<_SafeCls_62>(_SafeStr_467,true);
         this._SafeStr_1526 = new Vector.<_SafeCls_62>(_SafeStr_467,true);
         this._SafeStr_1191 = new Vector.<_SafeCls_34>(_SafeStr_467,true);
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_467)
         {
            _loc2_ = _SafeStr_123[_SafeStr_2205 + _loc1_] as MovieClip;
            _loc3_ = _loc2_.am_PanelWrapper;
            this._SafeStr_1475[_loc1_] = _SafeStr_124(_loc3_.am_Icon);
            this._SafeStr_1517[_loc1_] = _SafeStr_124(_loc3_.am_Matte);
            this._SafeStr_1610[_loc1_] = _SafeStr_145(_loc3_.am_Victor);
            this._SafeStr_1526[_loc1_] = _SafeStr_145(_loc3_.am_Defeated);
            this._SafeStr_1191[_loc1_] = _SafeStr_124(_loc2_);
            _loc1_++;
         }
         this._SafeStr_615 = 0;
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_1475 = null;
         this._SafeStr_1517 = null;
         this._SafeStr_717 = null;
         this._SafeStr_1610 = null;
         this._SafeStr_1526 = null;
         this._SafeStr_1191 = null;
      }
      
      public function OnInitDisplay() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_467)
         {
            this._SafeStr_1191[_loc1_].Hide();
            _loc1_++;
         }
         this._SafeStr_717.length = 0;
      }
      
      override public function Hide() : void
      {
         this._SafeStr_3052();
         super.Hide();
      }
      
      private function _SafeStr_3052() : void
      {
         var _loc1_:int = 0;
         var _loc3_:_SafeCls_97 = null;
         var _loc2_:int = int(_SafeStr_399.length);
         _loc1_ = 0;
         while(_loc1_ < _loc2_)
         {
            _loc3_ = _SafeStr_399[_loc1_];
            _loc3_._SafeStr_3537();
            _loc3_ = null;
            _SafeStr_399.splice(_loc1_,1);
            _loc1_++;
         }
      }
      
      override public function OnTickScreen() : void
      {
         var _loc2_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:_SafeCls_34 = null;
         var _loc7_:MovieClip = null;
         var _loc1_:* = int(this._SafeStr_717.length);
         if(!_loc1_)
         {
            return;
         }
         var _loc3_:uint = _SafeStr_1186 + _SafeStr_1646;
         var _loc4_:Boolean = false;
         _loc5_ = 0;
         while(_loc5_ < _loc1_)
         {
            _loc6_ = this._SafeStr_717[_loc5_];
            _loc7_ = _loc6_.mMovieClip;
            if(_loc4_)
            {
               _SafeStr_2868(_loc7_,_loc7_.x,_loc2_,200,_SafeCls_97._SafeStr_3456);
            }
            _loc2_ = (_loc5_ + 1) * _loc3_;
            if(!_loc6_.mbVisible)
            {
               this._SafeStr_717.shift();
               _loc1_--;
               _loc5_--;
               _loc2_ = 0;
               _loc4_ = true;
            }
            _loc5_++;
         }
      }
      
      public function _SafeStr_1427(param1:String, param2:String, param3:String, param4:_SafeCls_25 = null, param5:_SafeCls_25 = null) : void
      {
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc6_:uint = this._SafeStr_717.length;
         if(_loc6_ >= _SafeStr_467 - 1)
         {
            return;
         }
         var _loc7_:_SafeCls_34 = this._SafeStr_1191[this._SafeStr_615];
         _loc7_.Show();
         var _loc10_:_SafeCls_62 = this._SafeStr_1610[this._SafeStr_615];
         var _loc11_:TextField = _loc10_.mTextField;
         if(Boolean(_SafeStr_118.IsPlayingWithoutServer()) || !param5)
         {
            _SafeCls_19._SafeStr_1136(_loc11_,param3,_SafeCls_25._SafeStr_1092,_SafeCls_25._SafeStr_1293);
         }
         else
         {
            _loc8_ = param5.mTeam == _SafeStr_118.mClientEnt.mTeam ? _SafeCls_25._SafeStr_1165 : _SafeCls_25._SafeStr_1468;
            _loc9_ = param5.mTeam == _SafeStr_118.mClientEnt.mTeam ? _SafeCls_25._SafeStr_1246 : _SafeCls_25._SafeStr_1712;
            _SafeCls_19._SafeStr_1136(_loc11_,param3,_loc8_,_loc9_);
         }
         _loc10_._SafeStr_1905();
         var _loc12_:_SafeCls_62 = this._SafeStr_1526[this._SafeStr_615];
         var _loc13_:TextField = _loc12_.mTextField;
         if(Boolean(_SafeStr_118.IsPlayingWithoutServer()) || !param4)
         {
            _SafeCls_19._SafeStr_1136(_loc13_,param1,_SafeCls_25._SafeStr_1092,_SafeCls_25._SafeStr_1293);
         }
         else
         {
            _loc8_ = param4.mTeam == _SafeStr_118.mClientEnt.mTeam ? _SafeCls_25._SafeStr_1165 : _SafeCls_25._SafeStr_1468;
            _loc9_ = param4.mTeam == _SafeStr_118.mClientEnt.mTeam ? _SafeCls_25._SafeStr_1246 : _SafeCls_25._SafeStr_1712;
            _SafeCls_19._SafeStr_1136(_loc13_,param1,_loc8_,_loc9_);
         }
         _loc12_._SafeStr_1905();
         var _loc14_:MovieClip = this._SafeStr_1475[this._SafeStr_615].mMovieClip;
         var _loc15_:MovieClip = _loc14_.am_IconHolder;
         _SafeStr_2649(_loc15_,param2);
         _loc13_.x = _SafeStr_2302 - _loc13_.textWidth - _SafeStr_1303;
         _loc14_.x = _loc13_.x - _loc14_.width - _SafeStr_1747;
         _loc11_.x = _loc14_.x - _loc11_.textWidth - _SafeStr_1344;
         var _loc16_:MovieClip = this._SafeStr_1517[this._SafeStr_615].mMovieClip;
         var _loc17_:uint = _SafeStr_1303 + _loc11_.textWidth + _SafeStr_1344 + _loc14_.width + _SafeStr_1747 + _loc13_.textWidth + _SafeStr_1303;
         _loc16_.graphics.clear();
         _loc16_.graphics.beginFill(_SafeStr_1948,_SafeStr_2345);
         _loc16_.graphics.drawRoundRect(-_loc17_,0,_loc17_,_SafeStr_1186,_SafeStr_1430,_SafeStr_1430);
         _loc16_.graphics.endFill();
         var _loc18_:uint = _loc6_ * (_SafeStr_1186 + _SafeStr_1646);
         _loc7_.mMovieClip.y = _loc18_;
         _loc7_.PlayAnimation("Display",_SafeCls_34._SafeStr_303);
         this._SafeStr_717.push(_loc7_);
         this._SafeStr_615 = this._SafeStr_615 < _SafeStr_467 - 1 ? uint(this._SafeStr_615 + 1) : 0;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_38 = "_-XW"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_97 = "_-IO"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_303 = "_-rS"
 * @identifier _SafeStr_399 = "_-7Z"
 * @identifier _SafeStr_467 = "_-YD"
 * @identifier _SafeStr_615 = "_-Lg"
 * @identifier _SafeStr_717 = "_-ef"
 * @identifier _SafeStr_1092 = "_-i"
 * @identifier _SafeStr_1136 = "_-th"
 * @identifier _SafeStr_1165 = "_-DC"
 * @identifier _SafeStr_1186 = "_-pb"
 * @identifier _SafeStr_1191 = "_-jQ"
 * @identifier _SafeStr_1246 = "_-tP"
 * @identifier _SafeStr_1293 = "_-Ft"
 * @identifier _SafeStr_1303 = "_-Nc"
 * @identifier _SafeStr_1344 = "_-Sd"
 * @identifier _SafeStr_1427 = "_-5I"
 * @identifier _SafeStr_1430 = "_-ib"
 * @identifier _SafeStr_1468 = "implements"
 * @identifier _SafeStr_1475 = "_-kI"
 * @identifier _SafeStr_1517 = "_-TS"
 * @identifier _SafeStr_1526 = "_-dU"
 * @identifier _SafeStr_1610 = "_-wY"
 * @identifier _SafeStr_1646 = "_-sv"
 * @identifier _SafeStr_1712 = "_-dM"
 * @identifier _SafeStr_1747 = "_-8R"
 * @identifier _SafeStr_1905 = "_-V2"
 * @identifier _SafeStr_1948 = "_-4d"
 * @identifier _SafeStr_2205 = "_-0D"
 * @identifier _SafeStr_2302 = "_-Yb"
 * @identifier _SafeStr_2345 = "_-mf"
 * @identifier _SafeStr_2596 = "_-D5"
 * @identifier _SafeStr_2649 = "_-hF"
 * @identifier _SafeStr_2868 = "_-o2"
 * @identifier _SafeStr_3052 = "_-WG"
 * @identifier _SafeStr_3456 = "_-8s"
 * @identifier _SafeStr_3537 = "_-Yk"
 */
