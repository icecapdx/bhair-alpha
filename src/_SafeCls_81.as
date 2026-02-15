package
{
   public class _SafeCls_81 extends _SafeCls_35
   {
      
      public static const _SafeStr_287:uint = 12;
      
      private static const _SafeStr_1005:uint = 393;
      
      private static const _SafeStr_945:uint = 310;
      
      private static const _SafeStr_541:uint = 40;
      
      private var _SafeStr_994:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1066:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1058:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1004:Vector.<_SafeCls_62>;
      
      private var _SafeStr_2358:_SafeCls_34;
      
      private var _SafeStr_2078:_SafeCls_62;
      
      private var _SafeStr_3661:Vector.<uint>;
      
      private var _SafeStr_2441:uint = 0;
      
      public function _SafeCls_81(param1:Game)
      {
         super(param1,"a_ScreenGameScore",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc2_:_SafeCls_62 = null;
         var _loc3_:_SafeCls_62 = null;
         var _loc4_:_SafeCls_62 = null;
         var _loc5_:_SafeCls_62 = null;
         this._SafeStr_994 = new Vector.<_SafeCls_62>();
         this._SafeStr_1066 = new Vector.<_SafeCls_62>();
         this._SafeStr_1058 = new Vector.<_SafeCls_62>();
         this._SafeStr_1004 = new Vector.<_SafeCls_62>();
         var _loc1_:uint = 1;
         while(_loc1_ <= _SafeStr_287)
         {
            _loc2_ = _SafeStr_145(_SafeStr_123.am_Panel["am_Name" + _loc1_]);
            _loc3_ = _SafeStr_145(_SafeStr_123.am_Panel["am_Kills" + _loc1_]);
            _loc4_ = _SafeStr_145(_SafeStr_123.am_Panel["am_Deaths" + _loc1_]);
            _loc5_ = _SafeStr_145(_SafeStr_123.am_Panel["am_Accidents" + _loc1_]);
            this._SafeStr_994.push(_loc2_);
            this._SafeStr_1066.push(_loc3_);
            this._SafeStr_1058.push(_loc4_);
            this._SafeStr_1004.push(_loc5_);
            _loc1_++;
         }
         this._SafeStr_2358 = _SafeStr_124(_SafeStr_123.am_Panel.am_TeamTwoLabels);
         this._SafeStr_2078 = _SafeStr_145(_SafeStr_123.am_Panel.am_TeamOneLabel);
      }
      
      public function OnInitDisplay() : void
      {
      }
      
      override public function OnDestroyScreen() : void
      {
         var _loc1_:_SafeCls_62 = null;
         for each(_loc1_ in this._SafeStr_994)
         {
            _loc1_ = null;
         }
         for each(_loc1_ in this._SafeStr_1066)
         {
            _loc1_ = null;
         }
         for each(_loc1_ in this._SafeStr_1058)
         {
            _loc1_ = null;
         }
         for each(_loc1_ in this._SafeStr_1004)
         {
            _loc1_ = null;
         }
      }
      
      override public function OnRefreshScreen() : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc9_:uint = 0;
         var _loc11_:_SafeCls_25 = null;
         var _loc12_:Number = NaN;
         var _loc13_:uint = 0;
         var _loc14_:uint = 0;
         var _loc15_:uint = 0;
         var _loc16_:uint = 0;
         var _loc17_:Number = NaN;
         var _loc18_:uint = 0;
         var _loc19_:uint = 0;
         var _loc20_:uint = 0;
         var _loc21_:uint = 0;
         var _loc22_:Vector.<_SafeCls_25> = null;
         var _loc23_:Vector.<_SafeCls_25> = null;
         var _loc24_:uint = 0;
         var _loc25_:Vector.<_SafeCls_25> = null;
         var _loc26_:Vector.<_SafeCls_25> = null;
         var _loc27_:uint = 0;
         var _loc28_:Vector.<_SafeCls_25> = null;
         var _loc1_:Vector.<_SafeCls_25> = _SafeStr_118.mEntities;
         var _loc2_:uint = _loc1_.length;
         var _loc5_:_SafeCls_62 = this._SafeStr_994[_loc3_];
         var _loc6_:_SafeCls_62 = this._SafeStr_1066[_loc3_];
         var _loc7_:_SafeCls_62 = this._SafeStr_1058[_loc3_];
         var _loc8_:_SafeCls_62 = this._SafeStr_1004[_loc3_];
         this._SafeStr_2441 = _SafeStr_118.mGameMode.mNumTeams;
         if(this._SafeStr_2441 == 2)
         {
            this._SafeStr_2078.SetText("Team 1");
            this._SafeStr_2358.Show();
            _loc22_ = new Vector.<_SafeCls_25>();
            _loc23_ = new Vector.<_SafeCls_25>();
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc11_ = _loc1_[_loc3_];
               _loc13_ = _loc11_.mGameStats.mKills;
               _loc14_ = _loc11_.mGameStats.mDeaths;
               _loc15_ = _loc11_.mGameStats.GetAccidents();
               _loc16_ = _loc11_.mEntID;
               _loc24_ = _loc11_.mTeam;
               if(_loc24_ == 0)
               {
                  _loc25_ = _loc22_;
               }
               if(_loc24_ == 1)
               {
                  _loc25_ = _loc23_;
               }
               _loc9_ = _loc25_.length;
               _loc4_ = 0;
               while(_loc4_ < _loc25_.length)
               {
                  _loc18_ = _loc25_[_loc4_].mGameStats.mKills;
                  _loc19_ = _loc25_[_loc4_].mGameStats.mDeaths;
                  _loc20_ = _loc25_[_loc4_].mGameStats.GetAccidents();
                  _loc21_ = _loc25_[_loc4_].mEntID;
                  if(_loc13_ > _loc18_)
                  {
                     _loc9_ = _loc4_;
                     break;
                  }
                  if(_loc13_ == _loc18_ && _loc14_ < _loc19_)
                  {
                     _loc9_ = _loc4_;
                     break;
                  }
                  if(_loc13_ == _loc18_ && _loc14_ == _loc19_ && _loc15_ < _loc20_)
                  {
                     _loc9_ = _loc4_;
                     break;
                  }
                  if(_loc13_ == _loc18_ && _loc14_ == _loc19_ && _loc15_ == _loc20_ && _loc16_ < _loc21_)
                  {
                     _loc9_ = _loc4_;
                     break;
                  }
                  _loc4_++;
               }
               _loc25_.splice(_loc4_,0,_loc11_);
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < _SafeStr_287)
            {
               _loc5_ = this._SafeStr_994[_loc3_];
               _loc6_ = this._SafeStr_1066[_loc3_];
               _loc7_ = this._SafeStr_1058[_loc3_];
               _loc8_ = this._SafeStr_1004[_loc3_];
               _loc26_ = _loc3_ < _SafeStr_287 / 2 ? _loc22_ : _loc23_;
               _loc27_ = _loc3_ >= _SafeStr_287 / 2 ? uint(_loc3_ - _SafeStr_287 / 2) : _loc3_;
               if(_loc27_ < _loc26_.length)
               {
                  var _loc10_:_SafeCls_25 = _loc26_[_loc27_];
                  _loc5_.SetText(_loc10_._SafeStr_395 + (_SafeStr_118.IsPlayingWithoutServer() ? "" : " (" + _loc10_._SafeStr_144.mDisplayName + ") " + _loc10_._SafeStr_2395 + "ms"));
                  _loc6_.SetText(String(_loc10_.mGameStats.mKills));
                  _loc7_.SetText(String(_loc10_.mGameStats.mDeaths));
                  _loc8_.SetText(String(_loc10_.mGameStats.GetAccidents()));
               }
               else
               {
                  _loc5_.SetText("");
                  _loc6_.SetText("");
                  _loc7_.SetText("");
                  _loc8_.SetText("");
               }
               if(_loc3_ >= _SafeStr_287 / 2)
               {
                  _loc5_.mTextField.y = _SafeStr_1005 + (_loc3_ - _SafeStr_287 / 2) * _SafeStr_541;
                  _loc6_.mTextField.y = _SafeStr_1005 + (_loc3_ - _SafeStr_287 / 2) * _SafeStr_541;
                  _loc7_.mTextField.y = _SafeStr_1005 + (_loc3_ - _SafeStr_287 / 2) * _SafeStr_541;
                  _loc8_.mTextField.y = _SafeStr_1005 + (_loc3_ - _SafeStr_287 / 2) * _SafeStr_541;
               }
               _loc3_++;
            }
         }
         else
         {
            this._SafeStr_2078.SetText("Players");
            this._SafeStr_2358.Hide();
            _loc28_ = new Vector.<_SafeCls_25>();
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc11_ = _loc1_[_loc3_];
               _loc13_ = _loc11_.mGameStats.mKills;
               _loc14_ = _loc11_.mGameStats.mDeaths;
               _loc15_ = _loc11_.mGameStats.GetAccidents();
               _loc16_ = _loc11_.mEntID;
               _loc9_ = _loc28_.length;
               _loc4_ = 0;
               while(_loc4_ < _loc28_.length)
               {
                  _loc18_ = _loc28_[_loc4_].mGameStats.mKills;
                  _loc19_ = _loc28_[_loc4_].mGameStats.mDeaths;
                  _loc20_ = _loc28_[_loc4_].mGameStats.GetAccidents();
                  _loc21_ = _loc28_[_loc4_].mEntID;
                  if(_loc13_ > _loc18_)
                  {
                     _loc9_ = _loc4_;
                     break;
                  }
                  if(_loc13_ == _loc18_ && _loc14_ < _loc19_)
                  {
                     _loc9_ = _loc4_;
                     break;
                  }
                  if(_loc13_ == _loc18_ && _loc14_ == _loc19_ && _loc15_ < _loc20_)
                  {
                     _loc9_ = _loc4_;
                     break;
                  }
                  if(_loc13_ == _loc18_ && _loc14_ == _loc19_ && _loc15_ == _loc20_ && _loc16_ < _loc21_)
                  {
                     _loc9_ = _loc4_;
                     break;
                  }
                  _loc4_++;
               }
               _loc28_.splice(_loc4_,0,_loc11_);
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < _SafeStr_287)
            {
               _loc5_ = this._SafeStr_994[_loc3_];
               _loc6_ = this._SafeStr_1066[_loc3_];
               _loc7_ = this._SafeStr_1058[_loc3_];
               _loc8_ = this._SafeStr_1004[_loc3_];
               if(_loc3_ < _loc28_.length)
               {
                  _loc10_ = _loc28_[_loc3_];
                  _loc5_.SetText(_loc10_._SafeStr_395 + (_SafeStr_118.IsPlayingWithoutServer() ? "" : " (" + _loc10_._SafeStr_144.mDisplayName + ") " + _loc10_._SafeStr_2395 + "ms"));
                  _loc6_.SetText(String(_loc10_.mGameStats.mKills));
                  _loc7_.SetText(String(_loc10_.mGameStats.mDeaths));
                  _loc8_.SetText(String(_loc10_.mGameStats.GetAccidents()));
               }
               else
               {
                  _loc5_.SetText("");
                  _loc6_.SetText("");
                  _loc7_.SetText("");
                  _loc8_.SetText("");
               }
               if(_loc3_ >= _SafeStr_287 / 2)
               {
                  _loc5_.mTextField.y = _SafeStr_945 + (_loc3_ - _SafeStr_287 / 2) * _SafeStr_541;
                  _loc6_.mTextField.y = _SafeStr_945 + (_loc3_ - _SafeStr_287 / 2) * _SafeStr_541;
                  _loc7_.mTextField.y = _SafeStr_945 + (_loc3_ - _SafeStr_287 / 2) * _SafeStr_541;
                  _loc8_.mTextField.y = _SafeStr_945 + (_loc3_ - _SafeStr_287 / 2) * _SafeStr_541;
               }
               _loc3_++;
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_81 = "_-G9"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_144 = "_-Z"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_287 = "_-26"
 * @identifier _SafeStr_395 = "_-Ck"
 * @identifier _SafeStr_541 = "_-tO"
 * @identifier _SafeStr_945 = "_-9v"
 * @identifier _SafeStr_994 = "_-BG"
 * @identifier _SafeStr_1004 = "_-ol"
 * @identifier _SafeStr_1005 = "_-C9"
 * @identifier _SafeStr_1058 = "_-Rs"
 * @identifier _SafeStr_1066 = "_-U0"
 * @identifier _SafeStr_2078 = "_-jX"
 * @identifier _SafeStr_2358 = "_-pd"
 * @identifier _SafeStr_2395 = "_-Xq"
 * @identifier _SafeStr_2441 = "_-Da"
 * @identifier _SafeStr_3661 = "_-iv"
 */
