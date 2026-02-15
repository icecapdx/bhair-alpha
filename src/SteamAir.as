package
{
   import flash.events.EventDispatcher;
   import flash.events.StatusEvent;
   import flash.external.ExtensionContext;
   
   public class SteamAir extends EventDispatcher
   {
      
      private var mExtensionContext:ExtensionContext;
      
      public const ResponseType_OnTicketReceived:uint = 1;
      
      public function SteamAir()
      {
         super();
      }
      
      public function Init() : Boolean
      {
         this.mExtensionContext = ExtensionContext.createExtensionContext("SteamAir",null);
         if(!this.mExtensionContext)
         {
            return false;
         }
         this.mExtensionContext.addEventListener(StatusEvent.STATUS,this.HandleStatusEvent);
         return this.mExtensionContext.call("SteamAir_Init") as Boolean;
      }
      
      public function RestartAppIfNecessary(param1:uint) : Boolean
      {
         if(!this.mExtensionContext)
         {
            return false;
         }
         return this.mExtensionContext.call("SteamAir_RestartAppIfNecessary",param1);
      }
      
      public function IsSubscribedApp(param1:uint) : Boolean
      {
         if(!this.mExtensionContext)
         {
            return false;
         }
         return this.mExtensionContext.call("SteamAir_IsSubscribedApp",param1);
      }
      
      private function HandleStatusEvent(param1:StatusEvent) : void
      {
         var _loc2_:int = new int(param1.code);
         var _loc3_:int = new int(param1.level);
         var _loc4_:SteamEvent = new SteamEvent(SteamEvent.STEAM_RESPONSE,_loc2_,_loc3_);
         dispatchEvent(_loc4_);
      }
      
      public function GetEncryptedAppTicket() : Vector.<int>
      {
         return this.mExtensionContext.call("SteamAir_GetEncryptedAppTicket") as Vector.<int>;
      }
      
      public function RunCallbacks() : void
      {
         this.mExtensionContext.call("SteamAir_RunCallbacks");
      }
      
      public function GetPersonaName() : String
      {
         return this.mExtensionContext.call("SteamAir_GetPersonaName") as String;
      }
   }
}

