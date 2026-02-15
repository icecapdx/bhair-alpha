package
{
   import flash.events.Event;
   
   public class SteamEvent extends Event
   {
      
      public static var STEAM_RESPONSE:String = "steamResponse";
      
      public var mReqType:int = -1;
      
      public var mResponse:int = -1;
      
      public var mData:* = null;
      
      public function SteamEvent(param1:String, param2:int, param3:int, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.mResponse = param3;
         this.mReqType = param2;
      }
      
      override public function clone() : Event
      {
         var _loc1_:SteamEvent = new SteamEvent(type,this.mReqType,this.mResponse,bubbles,cancelable);
         _loc1_.mData = this.mData;
         return _loc1_;
      }
   }
}

