package
{
   public class _SafeCls_50
   {
      
      public static const _SafeStr_1559:uint = 1;
      
      public static const _SafeStr_2385:uint = 2;
      
      public static const _SafeStr_1733:uint = 3;
      
      internal var _SafeStr_118:Game;
      
      internal var mGameName:uint;
      
      internal var mPlayers:Vector.<_SafeCls_99>;
      
      internal var _SafeStr_810:uint;
      
      internal var _SafeStr_2556:uint;
      
      internal var mbLeader:Boolean;
      
      internal var _SafeStr_783:Vector.<_SafeCls_106>;
      
      internal var _SafeStr_610:Array;
      
      internal var _SafeStr_2198:uint;
      
      internal var mGameMode:uint;
      
      internal var mbStartMatch:Boolean;
      
      public function _SafeCls_50(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_810 = 0;
         this._SafeStr_2556 = 0;
         this.mPlayers = new Vector.<_SafeCls_99>();
         this._SafeStr_783 = new Vector.<_SafeCls_106>();
         this._SafeStr_610 = new Array();
      }
      
      public function CloseCustomGame() : void
      {
         var _loc1_:uint = 0;
         if(!this.mPlayers)
         {
            return;
         }
         _loc1_ = 0;
         while(_loc1_ < this.mPlayers.length)
         {
            this.mPlayers[_loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_783.length)
         {
            this._SafeStr_783[_loc1_] = null;
            _loc1_++;
         }
         this._SafeStr_783 = null;
         this._SafeStr_610 = null;
         this.mPlayers = null;
      }
      
      public function _SafeStr_3546(param1:uint) : void
      {
         this.mPlayers = new Vector.<_SafeCls_99>();
         this._SafeStr_783 = new Vector.<_SafeCls_106>();
         this._SafeStr_610 = new Array();
         this.mbLeader = true;
         this.mGameName = param1;
         this.mGameMode = _SafeCls_4._SafeStr_796._SafeStr_577;
         this.mbStartMatch = false;
      }
      
      public function _SafeStr_3493(param1:uint, param2:uint) : void
      {
         this.mPlayers = new Vector.<_SafeCls_99>();
         this._SafeStr_783 = new Vector.<_SafeCls_106>();
         this._SafeStr_610 = new Array();
         this.mbLeader = false;
         this.mGameName = param1;
         this.mGameMode = param2;
         this.mbStartMatch = false;
      }
      
      public function _SafeStr_1739(param1:String, param2:uint) : void
      {
         if(!this.mPlayers)
         {
            return;
         }
         var _loc3_:_SafeCls_99 = new _SafeCls_99(param1,param2);
         this.mPlayers.push(_loc3_);
      }
      
      public function _SafeStr_2541(param1:uint, param2:String, param3:uint) : void
      {
         if(!this.mPlayers)
         {
            return;
         }
         var _loc4_:_SafeCls_106 = new _SafeCls_106(param2,param3);
         this._SafeStr_783.push(_loc4_);
         this._SafeStr_610[param1] = _loc4_;
      }
      
      public function _SafeStr_3126(param1:String, param2:uint) : void
      {
         if(!this.mPlayers)
         {
            return;
         }
         var _loc3_:_SafeCls_106 = this._SafeStr_610[param2];
         if(_loc3_)
         {
            _loc3_._SafeStr_810 = _SafeStr_1559;
         }
         else
         {
            this._SafeStr_2541(param2,param1,_SafeStr_1559);
         }
      }
      
      public function _SafeStr_3016(param1:uint, param2:String) : void
      {
         if(!this.mPlayers)
         {
            return;
         }
         var _loc3_:_SafeCls_106 = this._SafeStr_610[param1];
         if(!_loc3_)
         {
            return;
         }
         _loc3_._SafeStr_810 = _SafeStr_2385;
         this._SafeStr_1739(param2,param1);
      }
      
      public function _SafeStr_3240(param1:uint) : void
      {
         if(!this.mPlayers)
         {
            return;
         }
         var _loc2_:_SafeCls_106 = this._SafeStr_610[param1];
         if(!_loc2_)
         {
            return;
         }
         _loc2_._SafeStr_810 = _SafeStr_1733;
      }
      
      public function _SafeStr_3159(param1:uint) : void
      {
         var _loc2_:uint = 0;
         var _loc5_:_SafeCls_99 = null;
         if(!this.mPlayers)
         {
            return;
         }
         var _loc3_:uint = 0;
         _loc2_ = 0;
         while(_loc2_ < this.mPlayers.length)
         {
            _loc5_ = this.mPlayers[_loc2_];
            if(_loc5_.mCharID == param1)
            {
               _loc3_ = _loc2_;
               this.mPlayers.splice(_loc3_,1);
               break;
            }
            _loc2_++;
         }
         var _loc4_:_SafeCls_106 = this._SafeStr_610[param1];
         if(_loc4_)
         {
            _loc4_._SafeStr_810 = _SafeStr_1733;
         }
         this._SafeStr_118.screenSelectCharacter._SafeStr_2486();
      }
      
      public function _SafeStr_3286(param1:String, param2:uint) : void
      {
         this._SafeStr_118._SafeStr_1639._SafeStr_3341(param1 + " has invited you to a game.",this._SafeStr_3223,this._SafeStr_3365);
         this._SafeStr_2198 = param2;
      }
      
      public function _SafeStr_3223() : void
      {
         if(!this.mPlayers)
         {
            return;
         }
         if(!this._SafeStr_118._SafeStr_1386())
         {
            return;
         }
         var _loc1_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_2346);
         _loc1_._SafeStr_146(this._SafeStr_2198);
         this._SafeStr_118.serverConn.SendPacket(_loc1_);
      }
      
      public function _SafeStr_3365() : void
      {
         if(!this.mPlayers)
         {
            return;
         }
         if(!this._SafeStr_118._SafeStr_1386())
         {
            return;
         }
         var _loc1_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_2414);
         _loc1_._SafeStr_146(this._SafeStr_2198);
         this._SafeStr_118.serverConn.SendPacket(_loc1_);
      }
      
      public function _SafeStr_3298() : void
      {
         this.mbStartMatch = true;
         this._SafeStr_2556 = this._SafeStr_118.mServerGameTime;
      }
      
      public function SetCharacter(param1:uint, param2:uint, param3:uint) : void
      {
         if(!this.mPlayers)
         {
            return;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.mPlayers.length)
         {
            if(this.mPlayers[_loc4_].mCharID == param1)
            {
               var _loc5_:uint = this.mPlayers[_loc4_].mSelectedHeroID;
               this.mPlayers[_loc4_].SetCharacter(param2);
               var _loc6_:_SafeCls_16 = _SafeCls_16._SafeStr_272[param2];
               var _loc7_:_SafeCls_17 = param3 ? _SafeCls_17._SafeStr_492[param3] : null;
               var _loc8_:* = 0 != param2;
               this._SafeStr_118.screenSelectCharacter._SafeStr_708(_loc4_,null,null,false);
               var _loc9_:_SafeCls_17 = this._SafeStr_118.screenSelectCharacter._SafeStr_217[_loc4_];
               var _loc10_:uint = _loc9_ ? uint(0) : 0;
               this.mPlayers[_loc4_].SetCostume(0);
               this._SafeStr_118.screenSelectCharacter._SafeStr_141();
               break;
            }
            _loc4_++;
         }
      }
      
      public function CanStart() : Boolean
      {
         var _loc3_:_SafeCls_99 = null;
         if(!this.mPlayers)
         {
            return false;
         }
         if(!this.mbLeader)
         {
            return false;
         }
         var _loc1_:uint = this.mPlayers.length;
         if(_loc1_ < 2)
         {
            return false;
         }
         var _loc2_:uint = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.mPlayers[_loc2_];
            if(!_loc3_.mSelectedHeroID)
            {
               return false;
            }
            _loc2_++;
         }
         return true;
      }
      
      public function SetGameMode(param1:uint) : void
      {
         if(!this.mPlayers)
         {
            return;
         }
         this.mGameMode = param1;
      }
      
      public function FindPosition(param1:uint) : int
      {
         if(!this.mPlayers)
         {
            return -1;
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.mPlayers.length)
         {
            if(this.mPlayers[_loc2_].mCharID == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_4 = "_-Kq"
 * @identifier _SafeCls_16 = "_-DS"
 * @identifier _SafeCls_17 = "_-TF"
 * @identifier _SafeCls_50 = "_-IX"
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeCls_99 = "_-X9"
 * @identifier _SafeCls_106 = "_-1T"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_141 = "_-Ay"
 * @identifier _SafeStr_146 = "_-jy"
 * @identifier _SafeStr_217 = "_-e5"
 * @identifier _SafeStr_272 = "_-7S"
 * @identifier _SafeStr_492 = "_-sd"
 * @identifier _SafeStr_577 = "_-RW"
 * @identifier _SafeStr_610 = "_-PI"
 * @identifier _SafeStr_708 = "_-Sw"
 * @identifier _SafeStr_783 = "_-jk"
 * @identifier _SafeStr_796 = "_-3s"
 * @identifier _SafeStr_810 = "_-Ok"
 * @identifier _SafeStr_1386 = "_-TQ"
 * @identifier _SafeStr_1559 = "_-u8"
 * @identifier _SafeStr_1639 = "_-kb"
 * @identifier _SafeStr_1733 = "_-V0"
 * @identifier _SafeStr_1739 = "_-Sx"
 * @identifier _SafeStr_2198 = "_-Ub"
 * @identifier _SafeStr_2346 = "_-6K"
 * @identifier _SafeStr_2385 = "_-uX"
 * @identifier _SafeStr_2414 = "_-mJ"
 * @identifier _SafeStr_2486 = "_-Kx"
 * @identifier _SafeStr_2541 = "_-ZB"
 * @identifier _SafeStr_2556 = "_-o9"
 * @identifier _SafeStr_3016 = "_-vs"
 * @identifier _SafeStr_3126 = "_-JP"
 * @identifier _SafeStr_3159 = "_-sQ"
 * @identifier _SafeStr_3223 = "_-Xw"
 * @identifier _SafeStr_3240 = "_-Ym"
 * @identifier _SafeStr_3286 = "_-c-"
 * @identifier _SafeStr_3298 = "_-AM"
 * @identifier _SafeStr_3341 = "_-Aw"
 * @identifier _SafeStr_3365 = "_-VI"
 * @identifier _SafeStr_3493 = "_-pa"
 * @identifier _SafeStr_3546 = "_-D-"
 */
