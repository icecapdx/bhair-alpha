package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class _SafeCls_72 extends _SafeCls_35
   {
      
      private static const _SafeStr_2331:uint = 1500;
      
      private static const _SafeStr_251:uint = 4;
      
      private var _SafeStr_2102:Boolean;
      
      private var _SafeStr_2210:String;
      
      private var _SafeStr_759:Vector.<_SafeCls_98>;
      
      private var _SafeStr_1670:uint;
      
      private var _SafeStr_1039:Vector.<_SafeCls_34>;
      
      private var _SafeStr_2830:_SafeCls_34;
      
      private var _SafeStr_1308:_SafeCls_62;
      
      private var _SafeStr_1249:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1147:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1028:Vector.<_SafeCls_62>;
      
      private var _SafeStr_988:Vector.<_SafeCls_62>;
      
      private var _SafeStr_992:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1192:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1093:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1315:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1270:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1082:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1239:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1234:Vector.<_SafeCls_62>;
      
      private var _SafeStr_1202:Vector.<_SafeCls_34>;
      
      private var _SafeStr_1226:Vector.<_SafeCls_34>;
      
      private var _SafeStr_842:Array;
      
      private var _SafeStr_2478:uint;
      
      public function _SafeCls_72(param1:Game)
      {
         super(param1,"a_ScreenScoreboard",null);
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         this._SafeStr_1147 = new Vector.<_SafeCls_62>(_SafeStr_251,true);
         this._SafeStr_1028 = new Vector.<_SafeCls_62>(_SafeStr_251,true);
         this._SafeStr_988 = new Vector.<_SafeCls_62>(_SafeStr_251,true);
         this._SafeStr_992 = new Vector.<_SafeCls_62>(_SafeStr_251,true);
         this._SafeStr_1249 = new Vector.<_SafeCls_62>(_SafeStr_251,true);
         this._SafeStr_1192 = new Vector.<_SafeCls_62>(_SafeStr_251,true);
         this._SafeStr_1093 = new Vector.<_SafeCls_62>(_SafeStr_251,true);
         this._SafeStr_1315 = new Vector.<_SafeCls_62>(_SafeStr_251,true);
         this._SafeStr_1270 = new Vector.<_SafeCls_62>(_SafeStr_251,true);
         this._SafeStr_1082 = new Vector.<_SafeCls_62>(_SafeStr_251,true);
         this._SafeStr_1239 = new Vector.<_SafeCls_62>(_SafeStr_251,true);
         this._SafeStr_1234 = new Vector.<_SafeCls_62>(_SafeStr_251,true);
         this._SafeStr_1202 = new Vector.<_SafeCls_34>(_SafeStr_251,true);
         this._SafeStr_1039 = new Vector.<_SafeCls_34>(_SafeStr_251,true);
         this._SafeStr_1226 = new Vector.<_SafeCls_34>(_SafeStr_251,true);
         this._SafeStr_842 = new Array();
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_251)
         {
            _loc2_ = _SafeStr_123["am_Player" + _loc1_] as MovieClip;
            this._SafeStr_1226[_loc1_] = _SafeStr_124(_loc2_);
            this._SafeStr_1147[_loc1_] = _SafeStr_145(_loc2_.am_Name);
            this._SafeStr_1028[_loc1_] = _SafeStr_269(_loc2_.am_Kills);
            this._SafeStr_988[_loc1_] = _SafeStr_269(_loc2_.am_Deaths);
            this._SafeStr_992[_loc1_] = _SafeStr_269(_loc2_.am_Accidents);
            this._SafeStr_1249[_loc1_] = _SafeStr_145(_loc2_.am_Rank);
            this._SafeStr_1192[_loc1_] = _SafeStr_269(_loc2_.am_DmgDealt);
            this._SafeStr_1093[_loc1_] = _SafeStr_269(_loc2_.am_DmgTaken);
            this._SafeStr_1315[_loc1_] = _SafeStr_269(_loc2_.am_DoubleKOs);
            this._SafeStr_1270[_loc1_] = _SafeStr_269(_loc2_.am_TripleKOs);
            this._SafeStr_1082[_loc1_] = _SafeStr_269(_loc2_.am_QuadraKOs);
            this._SafeStr_1239[_loc1_] = _SafeStr_269(_loc2_.am_PentaKOs);
            this._SafeStr_1234[_loc1_] = _SafeStr_269(_loc2_.am_Rampages);
            this._SafeStr_1202[_loc1_] = _SafeStr_124(_loc2_.am_Ribbon);
            this._SafeStr_1039[_loc1_] = _SafeStr_124(_loc2_.am_Paperdoll);
            _loc1_++;
         }
         this._SafeStr_1308 = _SafeStr_145(_SafeStr_123.am_Header);
         this._SafeStr_2830 = _SafeStr_177(_SafeStr_123.am_Leave,this._SafeStr_2437,this._SafeStr_376);
      }
      
      override public function OnDestroyScreen() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_251)
         {
            this._SafeStr_1039[_loc1_].mMovieClip.removeChildren();
            this._SafeStr_759[_loc1_].DestroyPaperDoll();
            this._SafeStr_759[_loc1_] = null;
            _loc1_++;
         }
         this._SafeStr_759 = null;
         this._SafeStr_1039 = null;
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_842.length)
         {
            this._SafeStr_842[_loc1_] = null;
            _loc1_++;
         }
         this._SafeStr_842 = null;
         this._SafeStr_1308 = null;
         this._SafeStr_1147 = null;
         this._SafeStr_1028 = null;
         this._SafeStr_988 = null;
         this._SafeStr_992 = null;
         this._SafeStr_1249 = null;
         this._SafeStr_1192 = null;
         this._SafeStr_1093 = null;
         this._SafeStr_1315 = null;
         this._SafeStr_1270 = null;
         this._SafeStr_1082 = null;
         this._SafeStr_1239 = null;
         this._SafeStr_1234 = null;
         this._SafeStr_1226 = null;
         this._SafeStr_2830 = null;
         this._SafeStr_1202 = null;
      }
      
      public function OnInitDisplay(param1:String, param2:Vector.<_SafeCls_78>, param3:Array) : void
      {
         var _loc4_:_SafeCls_25 = null;
         var _loc5_:_SafeCls_78 = null;
         this._SafeStr_2210 = param1;
         _SafeStr_118.gameState = Game._SafeStr_543;
         for each(_loc4_ in _SafeStr_118.mEntities)
         {
            if(_loc4_.mCombatState.mEquippedItem)
            {
               _loc4_.mCombatState.mEquippedItem._SafeStr_3460();
            }
            _loc4_.mCombatState.mEquippedItem = null;
            _loc4_._SafeStr_508();
         }
         if(param2)
         {
            this._SafeStr_842 = new Array();
            this._SafeStr_759 = new Vector.<_SafeCls_98>(_SafeStr_251,true);
            for each(_loc5_ in param2)
            {
               this._SafeStr_842[_loc5_.mEntID] = _loc5_;
            }
         }
         this._SafeStr_2478 = getTimer();
         this._SafeStr_1670 = 0;
         this._SafeStr_2102 = true;
         this._SafeStr_3380();
         _SafeStr_118.screenBroadcast.Hide();
         _SafeStr_118.mCamera.GameplayEnd();
         _SafeStr_118.StartVictoryMusic();
      }
      
      private function _SafeStr_3380() : void
      {
         var _loc1_:uint = 0;
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_251)
         {
            this._SafeStr_1028[_loc1_].mValue = 0;
            this._SafeStr_988[_loc1_].mValue = 0;
            this._SafeStr_992[_loc1_].mValue = 0;
            this._SafeStr_1192[_loc1_].mValue = 0;
            this._SafeStr_1093[_loc1_].mValue = 0;
            this._SafeStr_1315[_loc1_].mValue = 0;
            this._SafeStr_1270[_loc1_].mValue = 0;
            this._SafeStr_1082[_loc1_].mValue = 0;
            this._SafeStr_1239[_loc1_].mValue = 0;
            this._SafeStr_1234[_loc1_].mValue = 0;
            _loc1_++;
         }
      }
      
      override public function OnRefreshScreen() : void
      {
         if(this._SafeStr_2102)
         {
            this._SafeStr_3089();
         }
         else
         {
            this._SafeStr_3100();
         }
      }
      
      private function _SafeStr_3089() : void
      {
         var _loc1_:int = 0;
         var _loc3_:_SafeCls_25 = null;
         var _loc4_:_SafeCls_98 = null;
         var _loc6_:GfxType = null;
         var _loc9_:uint = 0;
         var _loc2_:uint = uint(_SafeStr_118.mEntities.length);
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_251)
         {
            _loc3_ = null;
            if(_loc1_ < _loc2_)
            {
               _loc3_ = _SafeStr_118.mEntities[_loc1_];
            }
            _loc4_ = this._SafeStr_759[_loc1_];
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  _loc9_ = _loc1_ + 1;
                  _loc6_ = _loc3_._SafeStr_203.GetDuplicate();
                  _SafeCls_17._SafeStr_2313(_loc3_._SafeStr_144,_loc6_);
                  _loc4_ = new _SafeCls_98(_SafeStr_118,this._SafeStr_1039[_loc1_].mMovieClip,_loc6_);
                  this._SafeStr_759[_loc1_] = _loc4_;
               }
               this._SafeStr_1226[_loc1_].Show();
               var _loc5_:_SafeCls_78 = this._SafeStr_842[_loc3_.mEntID];
               var _loc7_:uint = _loc5_._SafeStr_1471;
               var _loc8_:uint = 0;
               this._SafeStr_1249[_loc1_].SetText(this._SafeStr_3559(0));
               this._SafeStr_1147[_loc1_].SetText(_loc5_._SafeStr_1275);
               this._SafeStr_1028[_loc1_].mValue = _loc5_._SafeStr_1516;
               this._SafeStr_988[_loc1_].mValue = 0;
               this._SafeStr_992[_loc1_].mValue = NaN;
               this._SafeStr_1192[_loc1_].mValue = _loc5_._SafeStr_1600;
               this._SafeStr_1093[_loc1_].mValue = _loc5_._SafeStr_1577;
               this._SafeStr_1315[_loc1_].mValue = _loc5_._SafeStr_1493;
               this._SafeStr_1270[_loc1_].mValue = _loc5_._SafeStr_1337;
               this._SafeStr_1082[_loc1_].mValue = _loc5_._SafeStr_1629;
               this._SafeStr_1239[_loc1_].mValue = _loc5_._SafeStr_1656;
               this._SafeStr_1234[_loc1_].mValue = _loc5_._SafeStr_1662;
               this._SafeStr_1202[_loc1_].Show();
               _loc4_._SafeStr_125._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,"EmoteLose",true);
            }
            else
            {
               this._SafeStr_1226[_loc1_].Hide();
               this._SafeStr_1249[_loc1_].SetText("");
               this._SafeStr_1147[_loc1_].SetText("--");
               this._SafeStr_1028[_loc1_].SetText("--");
               this._SafeStr_988[_loc1_].SetText("--");
               this._SafeStr_992[_loc1_].SetText("--");
               this._SafeStr_1202[_loc1_].Hide();
               if(_loc4_)
               {
                  _loc4_.DestroyPaperDoll();
               }
               this._SafeStr_759[_loc1_] = null;
               this._SafeStr_1039[_loc1_].mMovieClip.removeChildren();
            }
            _loc1_++;
         }
         this._SafeStr_2102 = false;
      }
      
      private function _SafeStr_3100() : void
      {
      }
      
      private function _SafeStr_3743(param1:MouseEvent) : void
      {
      }
      
      private function _SafeStr_2437(param1:MouseEvent = null) : void
      {
         var _loc2_:_SafeCls_77 = null;
         if(getTimer() - this._SafeStr_2478 < _SafeStr_2331)
         {
            return;
         }
         Hide();
         if(this._SafeStr_2210 == Game._SafeStr_513)
         {
            _SafeStr_118.EndStateCouch();
         }
         else if(this._SafeStr_2210 == Game._SafeStr_464)
         {
            _loc2_ = new _SafeCls_77(_SafeCls_73._SafeStr_1933);
            if(Boolean(_SafeStr_118.serverConn) && Boolean(_SafeStr_118.serverConn.SocketIsConnected()))
            {
               _SafeStr_118.serverConn.SendPacket(_loc2_);
            }
            else
            {
               _SafeStr_118.EndStatePlay();
               _SafeStr_118.beginStateLobby();
            }
         }
      }
      
      private function _SafeStr_3559(param1:uint) : String
      {
         switch(param1)
         {
            case 1:
               return "1st";
            case 2:
               return "2nd";
            case 3:
               return "3rd";
            default:
               return param1 + "th";
         }
      }
      
      public function _SafeStr_191(param1:uint) : Boolean
      {
         if(!mbVisible)
         {
            return false;
         }
         switch(param1)
         {
            case Game._SafeStr_242:
            case Game._SafeStr_216:
            case Game._SafeStr_247:
            case Game._SafeStr_288:
               this._SafeStr_2437();
         }
         return true;
      }
      
      private function _SafeStr_376(param1:MouseEvent = null) : void
      {
         _SafeStr_118.PlaySound("Mouseover_Click");
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_17 = "_-TF"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_72 = "_-fF"
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeCls_78 = "_-Um"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeCls_98 = "_-hy"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_125 = "_-5"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_144 = "_-Z"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_177 = "_-eJ"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_203 = "_-2b"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_247 = "_-PM"
 * @identifier _SafeStr_251 = "_-Ve"
 * @identifier _SafeStr_269 = "_-l9"
 * @identifier _SafeStr_288 = "_-m2"
 * @identifier _SafeStr_298 = "_-j2"
 * @identifier _SafeStr_307 = "_-mp"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_464 = "_-28"
 * @identifier _SafeStr_508 = "_-Fj"
 * @identifier _SafeStr_513 = "_-VF"
 * @identifier _SafeStr_543 = "_-2R"
 * @identifier _SafeStr_759 = "_-TW"
 * @identifier _SafeStr_842 = "_-Jv"
 * @identifier _SafeStr_988 = "_-ff"
 * @identifier _SafeStr_992 = "_-Ux"
 * @identifier _SafeStr_1028 = "_-Fs"
 * @identifier _SafeStr_1039 = "_-r-"
 * @identifier _SafeStr_1082 = "_-r2"
 * @identifier _SafeStr_1093 = "_-ZJ"
 * @identifier _SafeStr_1147 = "_-Jt"
 * @identifier _SafeStr_1192 = "_-6z"
 * @identifier _SafeStr_1202 = "_-5S"
 * @identifier _SafeStr_1226 = "_-J9"
 * @identifier _SafeStr_1234 = "_-K3"
 * @identifier _SafeStr_1239 = "_-1n"
 * @identifier _SafeStr_1249 = "_-Fm"
 * @identifier _SafeStr_1270 = "_-oX"
 * @identifier _SafeStr_1275 = "_-J8"
 * @identifier _SafeStr_1308 = "_-pm"
 * @identifier _SafeStr_1315 = "_-ev"
 * @identifier _SafeStr_1337 = "_-T3"
 * @identifier _SafeStr_1471 = "_-X8"
 * @identifier _SafeStr_1493 = "_-2C"
 * @identifier _SafeStr_1516 = "_-4C"
 * @identifier _SafeStr_1577 = "_-ke"
 * @identifier _SafeStr_1600 = "_-4s"
 * @identifier _SafeStr_1629 = "_-aQ"
 * @identifier _SafeStr_1656 = "_-NO"
 * @identifier _SafeStr_1662 = "_-jJ"
 * @identifier _SafeStr_1670 = "_-Zh"
 * @identifier _SafeStr_1933 = "_-7K"
 * @identifier _SafeStr_2102 = "_-MI"
 * @identifier _SafeStr_2210 = "_-an"
 * @identifier _SafeStr_2313 = "_-EL"
 * @identifier _SafeStr_2331 = "_-E4"
 * @identifier _SafeStr_2437 = "_-6T"
 * @identifier _SafeStr_2478 = "_-su"
 * @identifier _SafeStr_2830 = "_-jM"
 * @identifier _SafeStr_3089 = "_-EB"
 * @identifier _SafeStr_3100 = "_-ur"
 * @identifier _SafeStr_3380 = "_-tX"
 * @identifier _SafeStr_3460 = "_-Mo"
 * @identifier _SafeStr_3559 = "_-v2"
 * @identifier _SafeStr_3743 = "_-s8"
 */
