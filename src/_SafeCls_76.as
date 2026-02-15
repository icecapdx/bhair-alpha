package
{
   public class _SafeCls_76
   {
      
      public static const _SafeStr_2057:uint = 3000;
      
      internal var mbStartMatch:Boolean;
      
      internal var mbInQueue:Boolean;
      
      internal var _SafeStr_118:Game;
      
      internal var mPlayersReady:uint;
      
      internal var mCountDownBeginTimer:uint;
      
      internal var _SafeStr_3738:uint;
      
      public function _SafeCls_76(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
      }
      
      public function _SafeStr_3762(param1:uint) : void
      {
         this.mPlayersReady = param1;
      }
      
      public function _SafeStr_3440() : void
      {
         this.mbStartMatch = true;
         this.mCountDownBeginTimer = this._SafeStr_118.mServerGameTime;
      }
      
      public function _SafeStr_3445() : void
      {
         this.mbStartMatch = false;
         this.mbInQueue = false;
         this.mCountDownBeginTimer = 0;
      }
      
      public function Reset() : void
      {
         this.mPlayersReady = 0;
         this.mCountDownBeginTimer = 0;
         this.mbInQueue = false;
         this.mbStartMatch = false;
      }
      
      public function EnterQueue(param1:uint, param2:uint, param3:uint, param4:uint, param5:Boolean) : void
      {
         if(!this._SafeStr_118._SafeStr_1386())
         {
            return;
         }
         if(this._SafeStr_118.mMatchMakerData.mbInQueue)
         {
            return;
         }
         if(!this._SafeStr_118.serverConn || !this._SafeStr_118.serverConn.SocketIsConnected())
         {
            return;
         }
         var _loc6_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_2330);
         _loc6_._SafeStr_784(param1);
         _loc6_._SafeStr_146(param2);
         _loc6_._SafeStr_146(param3);
         _loc6_._SafeStr_146(param4);
         _loc6_._SafeStr_206(param5);
         this._SafeStr_118.serverConn.SendPacket(_loc6_);
         this._SafeStr_118.mMatchMakerData.mbInQueue = true;
      }
      
      public function LeaveQueue() : void
      {
         if(!this._SafeStr_118._SafeStr_1386())
         {
            return;
         }
         var _loc1_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_2347);
         this._SafeStr_118.serverConn.SendPacket(_loc1_);
         this._SafeStr_118.mMatchMakerData.mbInQueue = false;
      }
      
      public function _SafeStr_3333() : void
      {
         this._SafeStr_118.mMatchMakerData.mbInQueue = false;
      }
      
      public function _SafeStr_3670() : void
      {
         var _loc1_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_2125);
         this._SafeStr_118.serverConn.SendPacket(_loc1_);
      }
      
      public function _SafeStr_3662(param1:uint) : void
      {
         var _loc2_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_2257);
         _loc2_._SafeStr_146(param1);
         this._SafeStr_118.serverConn.SendPacket(_loc2_);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_76 = "_-ln"
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_146 = "_-jy"
 * @identifier _SafeStr_206 = "_-pe"
 * @identifier _SafeStr_784 = "_-Tk"
 * @identifier _SafeStr_1386 = "_-TQ"
 * @identifier _SafeStr_2057 = "_-YT"
 * @identifier _SafeStr_2125 = "_-Cr"
 * @identifier _SafeStr_2257 = "_-PX"
 * @identifier _SafeStr_2330 = "_-CB"
 * @identifier _SafeStr_2347 = "_-RY"
 * @identifier _SafeStr_3333 = "_-dl"
 * @identifier _SafeStr_3440 = "_-Pt"
 * @identifier _SafeStr_3445 = "_-VX"
 * @identifier _SafeStr_3662 = "_-8H"
 * @identifier _SafeStr_3670 = "_-Rf"
 * @identifier _SafeStr_3738 = "_-M4"
 * @identifier _SafeStr_3762 = "_-5r"
 */
