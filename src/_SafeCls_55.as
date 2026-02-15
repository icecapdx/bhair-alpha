package
{
   import flash.display.MovieClip;
   
   public class _SafeCls_55 extends _SafeCls_35
   {
      
      private var _SafeStr_2093:_SafeCls_62;
      
      private var mPlayers:Vector.<_SafeCls_25>;
      
      private var _SafeStr_957:Vector.<_SafeCls_62>;
      
      private var _SafeStr_890:Vector.<_SafeCls_34>;
      
      private var _SafeStr_1003:Vector.<_SafeCls_40>;
      
      private var _SafeStr_1489:_SafeCls_34;
      
      public function _SafeCls_55(param1:Game)
      {
         super(param1,"a_ScreenHUD",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = _SafeCls_41._SafeStr_170;
         var _loc3_:MovieClip = _SafeStr_123.am_ParentWrapper;
         this.mPlayers = new Vector.<_SafeCls_25>(_loc2_,true);
         this._SafeStr_957 = new Vector.<_SafeCls_62>(_loc2_,true);
         this._SafeStr_890 = new Vector.<_SafeCls_34>(_loc2_,true);
         this._SafeStr_1003 = new Vector.<_SafeCls_40>(_loc2_,true);
         _loc1_ = 0;
         while(_loc1_ < _loc2_)
         {
            this._SafeStr_890[_loc1_] = _SafeStr_124(_loc3_["am_Holder" + _loc1_]);
            this._SafeStr_957[_loc1_] = _SafeStr_145(_loc3_["am_StockText" + _loc1_]);
            _loc1_++;
         }
         this._SafeStr_1489 = _SafeStr_124(_loc3_);
         this._SafeStr_2093 = _SafeStr_145(_SafeStr_123.am_Timer);
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_1880();
         this._SafeStr_1489 = null;
         this._SafeStr_957 = null;
         this._SafeStr_1003 = null;
         this._SafeStr_890 = null;
         this.mPlayers = null;
         this._SafeStr_2093 = null;
      }
      
      override public function OnTickScreen() : void
      {
         var _loc1_:String = null;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc5_:_SafeCls_25 = null;
         var _loc6_:_SafeCls_40 = null;
         var _loc7_:uint = 0;
         var _loc8_:MovieClip = null;
         if(_SafeStr_118.mGameMode && _SafeStr_118.mGameMode.mDuration > 0 && !(_SafeCls_1.flags & _SafeCls_1._SafeStr_1860))
         {
            _loc1_ = _SafeCls_19._SafeStr_3401(_SafeStr_118.mTimeRemaining * 10);
            _loc1_ = _loc1_.substr(0,_loc1_.length - 2);
            this._SafeStr_2093.SetText(_loc1_);
         }
         if(Boolean(_SafeStr_118.mGameMode) && _SafeStr_118.mGameMode.mScoringType == _SafeCls_4._SafeStr_705)
         {
            _loc3_ = _SafeCls_41._SafeStr_170;
            _loc2_ = 0;
            while(_loc2_ < _loc3_)
            {
               _loc5_ = this.mPlayers[_loc2_];
               _loc6_ = this._SafeStr_1003[_loc2_];
               if(!_loc5_)
               {
                  if(_loc6_)
                  {
                     this._SafeStr_890[_loc2_].mMovieClip.removeChildren();
                     _loc6_._SafeStr_201();
                     _loc6_ = null;
                     this._SafeStr_957[_loc2_].SetText("");
                  }
               }
               else
               {
                  if(!_loc6_)
                  {
                     _loc8_ = this._SafeStr_890[_loc2_].mMovieClip;
                     if(_loc6_)
                     {
                        _loc8_.removeChildren();
                        _loc6_._SafeStr_201();
                        _loc6_ = null;
                     }
                     _loc6_ = new _SafeCls_40(_SafeStr_118,_loc5_._SafeStr_527,true);
                     _loc6_._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,"FaceIdle",true);
                     _loc8_.addChild(_loc6_._SafeStr_120);
                     this._SafeStr_1003[_loc2_] = _loc6_;
                  }
                  _loc7_ = uint(_loc5_._SafeStr_265);
                  this._SafeStr_957[_loc2_].SetText(_loc7_ ? String(_loc7_) : "--");
               }
               _loc2_++;
            }
         }
      }
      
      override public function OnRefreshScreen() : void
      {
         if(Boolean(_SafeStr_118.mGameMode) && _SafeStr_118.mGameMode.mScoringType == _SafeCls_4._SafeStr_705)
         {
            this._SafeStr_1489.Show();
         }
         else
         {
            this._SafeStr_1489.Hide();
         }
      }
      
      override public function Hide() : void
      {
         this._SafeStr_1880();
         super.Hide();
      }
      
      public function OnInitDisplay() : void
      {
         this._SafeStr_1880();
      }
      
      public function _SafeStr_1880() : void
      {
         var _loc1_:uint = 0;
         var _loc3_:_SafeCls_40 = null;
         var _loc2_:uint = _SafeCls_41._SafeStr_170;
         _loc1_ = 0;
         while(_loc1_ < _loc2_)
         {
            _loc3_ = this._SafeStr_1003[_loc1_];
            if(_loc3_)
            {
               _loc3_._SafeStr_201();
            }
            this._SafeStr_1003[_loc1_] = null;
            this._SafeStr_890[_loc1_].mMovieClip.removeChildren();
            this._SafeStr_957[_loc1_].SetText("");
            this.mPlayers[_loc1_] = null;
            _loc1_++;
         }
      }
      
      public function _SafeStr_2988(param1:_SafeCls_25) : void
      {
         if(!_SafeStr_123)
         {
            return;
         }
         var _loc2_:int = this._SafeStr_3168();
         if(_loc2_ == -1)
         {
            return;
         }
         this.mPlayers[_loc2_] = param1;
      }
      
      public function _SafeStr_3041(param1:_SafeCls_25) : void
      {
         if(!param1 || !_SafeStr_123)
         {
            return;
         }
         var _loc2_:int = int(this.mPlayers.indexOf(param1));
         if(_loc2_ == -1)
         {
            return;
         }
         this.mPlayers[_loc2_] = null;
      }
      
      private function _SafeStr_3168() : int
      {
         var _loc1_:uint = 0;
         var _loc3_:_SafeCls_25 = null;
         var _loc2_:uint = _SafeCls_41._SafeStr_170;
         _loc1_ = 0;
         while(_loc1_ < _loc2_)
         {
            _loc3_ = this.mPlayers[_loc1_];
            if(!_loc3_)
            {
               return _loc1_;
            }
            _loc1_++;
         }
         return -1;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_4 = "_-Kq"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_41 = "_-tQ"
 * @identifier _SafeCls_55 = "_-Gv"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_170 = "_-u3"
 * @identifier _SafeStr_201 = "_-x"
 * @identifier _SafeStr_265 = "_-pC"
 * @identifier _SafeStr_298 = "_-j2"
 * @identifier _SafeStr_307 = "_-mp"
 * @identifier _SafeStr_527 = "_-2S"
 * @identifier _SafeStr_705 = "_-Q0"
 * @identifier _SafeStr_890 = "_-fQ"
 * @identifier _SafeStr_957 = "_-Vd"
 * @identifier _SafeStr_1003 = "_-k-"
 * @identifier _SafeStr_1489 = "_-Xv"
 * @identifier _SafeStr_1860 = "_-jz"
 * @identifier _SafeStr_1880 = "_-Ca"
 * @identifier _SafeStr_2093 = "_-IL"
 * @identifier _SafeStr_2988 = "_-II"
 * @identifier _SafeStr_3041 = "_-t5"
 * @identifier _SafeStr_3168 = "_-m0"
 * @identifier _SafeStr_3401 = "_-SZ"
 */
