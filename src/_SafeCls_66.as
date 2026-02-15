package
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.Socket;
   import flash.utils.ByteArray;
   
   public class _SafeCls_66
   {
      
      private static var _SafeStr_2106:Vector.<_SafeCls_66> = new Vector.<_SafeCls_66>();
      
      private static var _SafeStr_119:uint = 1;
      
      public static const _SafeStr_2745:uint = _SafeStr_119++;
      
      public static const _SafeStr_2432:uint = _SafeStr_119++;
      
      public static const _SafeStr_2713:uint = _SafeStr_119++;
      
      public static const _SafeStr_2690:uint = _SafeStr_119++;
      
      public static const _SafeStr_2995:uint = _SafeStr_119++;
      
      public static const _SafeStr_2686:uint = _SafeStr_119++;
      
      public static const _SafeStr_2422:uint = _SafeStr_119++;
      
      public static const _SafeStr_2372:uint = _SafeStr_119;
      
      public static const _SafeStr_2147:uint = 4;
      
      public static const _SafeStr_2263:uint = 443;
      
      internal var _SafeStr_118:Game;
      
      private var _SafeStr_248:Socket;
      
      internal var _SafeStr_1053:Boolean;
      
      internal var _SafeStr_1151:int;
      
      internal var _SafeStr_3756:uint;
      
      internal var _SafeStr_2146:int;
      
      internal var _SafeStr_1076:Function;
      
      internal var _SafeStr_1370:Function;
      
      public function _SafeCls_66(param1:Game, param2:Function = null, param3:Function = null)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_1076 = param3;
         this._SafeStr_1370 = param2;
         this._SafeStr_248 = new Socket();
         this._SafeStr_248.addEventListener(Event.CONNECT,this._SafeStr_2983);
         this._SafeStr_248.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_2506);
         this._SafeStr_248.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._SafeStr_3265);
         this._SafeStr_248.addEventListener(Event.CLOSE,this._SafeStr_2969);
      }
      
      private function _SafeStr_2969(param1:Event) : void
      {
         this._SafeStr_1053 = false;
      }
      
      private function _SafeStr_2506(param1:Event) : void
      {
         this._SafeStr_1053 = false;
         if(this._SafeStr_1076 != null)
         {
            this._SafeStr_1076();
         }
      }
      
      private function _SafeStr_3265(param1:Event) : void
      {
         this._SafeStr_1053 = false;
         if(this._SafeStr_1076 != null)
         {
            this._SafeStr_1076();
         }
      }
      
      public function _SafeStr_2983(param1:Event) : void
      {
         if(this._SafeStr_118)
         {
            if(this._SafeStr_118._SafeStr_161)
            {
               this._SafeStr_118._SafeStr_161._SafeStr_3061();
            }
            this._SafeStr_118._SafeStr_161 = new _SafeCls_73(this._SafeStr_118);
         }
         if(this._SafeStr_1370 != null)
         {
            this._SafeStr_1370();
         }
      }
      
      public function _SafeStr_2281(param1:String, param2:int) : void
      {
         this._SafeStr_1053 = true;
         this._SafeStr_248.connect(param1,param2);
      }
      
      public function SocketIsConnected() : Boolean
      {
         return this._SafeStr_248.connected;
      }
      
      public function DestroyConnection() : void
      {
         if(this._SafeStr_248.connected)
         {
            this._SafeStr_248.close();
         }
         this._SafeStr_1053 = false;
         this._SafeStr_248.removeEventListener(Event.CONNECT,this._SafeStr_2983);
         this._SafeStr_248.removeEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_2506);
         this._SafeStr_248.removeEventListener(Event.CLOSE,this._SafeStr_2969);
         _SafeStr_2106.push(this);
         this._SafeStr_1076 = null;
         this._SafeStr_1370 = null;
         this._SafeStr_248 = null;
         if(this._SafeStr_118)
         {
            this._SafeStr_118._SafeStr_161 = null;
            this._SafeStr_118 = null;
         }
      }
      
      public function SendPacket(param1:_SafeCls_77) : void
      {
         this._SafeStr_248.writeShort(param1.type);
         this._SafeStr_248.writeShort(param1._SafeStr_183._SafeStr_2956());
         this._SafeStr_248.writeBytes(param1._SafeStr_183._SafeStr_384);
         this._SafeStr_248.flush();
      }
      
      public function _SafeStr_3172() : Vector.<_SafeCls_77>
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc4_:ByteArray = null;
         var _loc5_:_SafeCls_77 = null;
         var _loc3_:Vector.<_SafeCls_77> = new Vector.<_SafeCls_77>();
         while(this._SafeStr_248.bytesAvailable)
         {
            if(!this._SafeStr_1151 && this._SafeStr_248.bytesAvailable < _SafeStr_2147)
            {
               break;
            }
            if(this._SafeStr_1151)
            {
               _loc1_ = this._SafeStr_1151;
               _loc2_ = this._SafeStr_2146;
               var _temp_2:* = this;
               this._SafeStr_2146 = 0;
               _temp_2._SafeStr_1151 = 0;
            }
            else
            {
               _loc1_ = int(this._SafeStr_248.readUnsignedShort());
               _loc2_ = int(this._SafeStr_248.readUnsignedShort());
            }
            if(this._SafeStr_248.bytesAvailable < _loc2_)
            {
               this._SafeStr_1151 = _loc1_;
               this._SafeStr_2146 = _loc2_;
               break;
            }
            _loc4_ = new ByteArray();
            if(_loc2_)
            {
               this._SafeStr_248.readBytes(_loc4_,0,_loc2_);
            }
            _loc5_ = new _SafeCls_77(_loc1_,_loc4_);
            _loc3_.push(_loc5_);
         }
         return _loc3_;
      }
      
      public function _SafeStr_3631() : void
      {
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_66 = "_-LE"
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_119 = "_-dG"
 * @identifier _SafeStr_161 = "_-ve"
 * @identifier _SafeStr_183 = "_-DI"
 * @identifier _SafeStr_248 = "_-jY"
 * @identifier _SafeStr_384 = "_-ea"
 * @identifier _SafeStr_1053 = "_-LI"
 * @identifier _SafeStr_1076 = "_-M"
 * @identifier _SafeStr_1151 = "_-Yu"
 * @identifier _SafeStr_1370 = "_-rG"
 * @identifier _SafeStr_2106 = "_-h5"
 * @identifier _SafeStr_2146 = "_-Rt"
 * @identifier _SafeStr_2147 = "_-j7"
 * @identifier _SafeStr_2263 = "_-Wl"
 * @identifier _SafeStr_2281 = "_-aI"
 * @identifier _SafeStr_2372 = "_-b"
 * @identifier _SafeStr_2422 = "_-J"
 * @identifier _SafeStr_2432 = "_-Xd"
 * @identifier _SafeStr_2506 = "_-GW"
 * @identifier _SafeStr_2686 = "_-uJ"
 * @identifier _SafeStr_2690 = "_-gn"
 * @identifier _SafeStr_2713 = "_-vo"
 * @identifier _SafeStr_2745 = "_-"
 * @identifier _SafeStr_2956 = "_-Mu"
 * @identifier _SafeStr_2969 = "_-Nx"
 * @identifier _SafeStr_2983 = "_-VN"
 * @identifier _SafeStr_2995 = "_-KQ"
 * @identifier _SafeStr_3061 = "_-aB"
 * @identifier _SafeStr_3172 = "_-u"
 * @identifier _SafeStr_3265 = "_-5w"
 * @identifier _SafeStr_3631 = "_-PA"
 * @identifier _SafeStr_3756 = "_-aK"
 */
