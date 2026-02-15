package
{
   import flash.desktop.NativeApplication;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class _SafeCls_79 extends _SafeCls_35
   {
      
      public static const _SafeStr_1935:String = "Account Still Logging Out. Please try again momentarily.";
      
      public static const _SafeStr_1961:String = "Login Timeout";
      
      public static const _SafeStr_2009:String = "Login has timed out";
      
      public static const _SafeStr_2300:String = "Incorrect Version, Please Update";
      
      public static const _SafeStr_997:String = "Connection to the server has been lost";
      
      public static const _SafeStr_2228:String = "Error 3001";
      
      public static const _SafeStr_2357:String = "Error 3002";
      
      public static const _SafeStr_2194:String = "Error 3003";
      
      public static const _SafeStr_1852:String = "Error 3004";
      
      public static const _SafeStr_1565:String = "Connection to Game Server failed";
      
      public static const _SafeStr_1538:String = "Connection to the server failed";
      
      public static var _SafeStr_685:Dictionary = new Dictionary();
      
      public static var _SafeStr_918:Dictionary = new Dictionary();
      
      public static var _SafeStr_983:Dictionary = new Dictionary();
      
      _SafeStr_685[_SafeStr_2228] = true;
      _SafeStr_685[_SafeStr_2357] = true;
      _SafeStr_685[_SafeStr_2194] = true;
      _SafeStr_685[_SafeStr_1852] = true;
      _SafeStr_685[_SafeStr_2300] = true;
      _SafeStr_918[_SafeStr_1565] = true;
      _SafeStr_918[_SafeStr_1538] = true;
      _SafeStr_918[_SafeStr_997] = true;
      _SafeStr_983[_SafeStr_1961] = true;
      _SafeStr_983[_SafeStr_1935] = true;
      _SafeStr_983[_SafeStr_2009] = true;
      
      private var _SafeStr_650:_SafeCls_34;
      
      private var _SafeStr_1655:_SafeCls_62;
      
      private var _SafeStr_571:_SafeCls_34;
      
      private var _SafeStr_570:_SafeCls_34;
      
      private var _SafeStr_747:_SafeCls_34;
      
      private var _SafeStr_463:Boolean;
      
      private var _SafeStr_2816:Boolean = false;
      
      private var _SafeStr_2936:Boolean = false;
      
      private var _SafeStr_3461:String = "";
      
      public function _SafeCls_79(param1:Game)
      {
         super(param1,"a_ScreenError",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc1_:MovieClip = _SafeStr_123.am_Panel;
         this._SafeStr_650 = _SafeStr_124(_loc1_);
         var _loc2_:MovieClip = _loc1_ ? _loc1_.am_PanelInternal : null;
         if(_loc2_)
         {
            this._SafeStr_1655 = _SafeStr_145(_loc2_.am_Message);
            this._SafeStr_571 = _SafeStr_130(_loc2_.am_Close,this._SafeStr_3136,this._SafeStr_376);
            this._SafeStr_570 = _SafeStr_130(_loc2_.am_Reconnect,this._SafeStr_3110,this._SafeStr_376);
            this._SafeStr_747 = _SafeStr_130(_loc2_.am_PlayOffline,this._SafeStr_3170,this._SafeStr_376);
         }
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_1655 = null;
         this._SafeStr_571 = null;
         this._SafeStr_570 = null;
         this._SafeStr_747 = null;
         this._SafeStr_650 = null;
      }
      
      override public function OnTickScreen() : void
      {
         if(this._SafeStr_463)
         {
            if(this._SafeStr_650.mbCompleted)
            {
               this._SafeStr_463 = false;
               Hide();
            }
         }
      }
      
      public function OnInitDisplay(param1:String, param2:Boolean = false) : void
      {
         if(this._SafeStr_650)
         {
            this._SafeStr_650.ClearAnimation();
            this._SafeStr_650.PlayAnimation("Display");
         }
         this.EnableButtons();
         this._SafeStr_2816 = Boolean(_SafeStr_685[param1]) || param2;
         this._SafeStr_2936 = _SafeStr_918[param1];
         if(this._SafeStr_1655)
            this._SafeStr_1655.SetText(param1);
         this._SafeStr_3461 = param1;
         if(_SafeStr_983[param1])
         {
            if(this._SafeStr_571) this._SafeStr_571.Hide();
            if(this._SafeStr_570) this._SafeStr_570.Show();
            if(this._SafeStr_747) this._SafeStr_747.Show();
         }
         else
         {
            if(this._SafeStr_571) this._SafeStr_571.Show();
            if(this._SafeStr_570) this._SafeStr_570.Hide();
            if(this._SafeStr_747) this._SafeStr_747.Hide();
         }
      }
      
      private function _SafeStr_3110(param1:Event) : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_326();
         this._SafeStr_463 = true;
         this._SafeStr_650.PlayAnimation("Display",_SafeCls_34._SafeStr_286);
         if(_SafeStr_118.mbAirClient)
         {
            _SafeStr_118.bRequestLoginConnect = true;
            _SafeStr_118.bShouldBeginLoginProcess = true;
            _SafeStr_118.mbCanLogInWithSteam = true;
         }
         else
         {
            _SafeStr_118.screenLogin.Display();
         }
      }
      
      private function _SafeStr_3170(param1:Event) : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_326();
         this._SafeStr_463 = true;
         this._SafeStr_650.PlayAnimation("Display",_SafeCls_34._SafeStr_286);
         _SafeStr_118.mbLostConnection = true;
         _SafeStr_118.beginStateLobby();
      }
      
      private function _SafeStr_3136(param1:Event) : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_326();
         this._SafeStr_463 = true;
         this._SafeStr_650.PlayAnimation("Display",_SafeCls_34._SafeStr_286);
         if(this._SafeStr_2816)
         {
            NativeApplication.nativeApplication.exit();
         }
         if(this._SafeStr_2936)
         {
            _SafeStr_118.screenCentralHUB.Display();
            this._SafeStr_463 = false;
            Hide();
         }
      }
      
      public function EnableButtons() : void
      {
         if(this._SafeStr_571)
         {
            this._SafeStr_571.EnableButton();
         }
         if(this._SafeStr_570)
         {
            this._SafeStr_570.EnableButton();
         }
         if(this._SafeStr_747)
         {
            this._SafeStr_747.EnableButton();
         }
      }
      
      public function _SafeStr_326() : void
      {
         if(this._SafeStr_571)
         {
            this._SafeStr_571.DisableButton("Ready");
         }
         if(this._SafeStr_570)
         {
            this._SafeStr_570.DisableButton("Ready");
         }
         if(this._SafeStr_747)
         {
            this._SafeStr_747.DisableButton("Ready");
         }
      }
      
      public function _SafeStr_191(param1:int) : Boolean
      {
         if(!mbVisible || this._SafeStr_463)
         {
            return false;
         }
         switch(param1)
         {
            case Game._SafeStr_242:
            case Game._SafeStr_216:
               this._SafeStr_571.mMovieClip.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
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
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_79 = "_-gL"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_130 = "_-Ri"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_286 = "_-kZ"
 * @identifier _SafeStr_326 = "_-IZ"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_463 = "_-45"
 * @identifier _SafeStr_570 = "_-iE"
 * @identifier _SafeStr_571 = "_-wn"
 * @identifier _SafeStr_650 = "_-ed"
 * @identifier _SafeStr_685 = "_-NA"
 * @identifier _SafeStr_747 = "_-I6"
 * @identifier _SafeStr_918 = "_-SY"
 * @identifier _SafeStr_983 = "_-9W"
 * @identifier _SafeStr_997 = "_-5B"
 * @identifier _SafeStr_1538 = "_-nT"
 * @identifier _SafeStr_1565 = "_-65"
 * @identifier _SafeStr_1655 = "_-PP"
 * @identifier _SafeStr_1852 = "_-IF"
 * @identifier _SafeStr_1935 = "_-rp"
 * @identifier _SafeStr_1961 = "_-wV"
 * @identifier _SafeStr_2009 = "_-sg"
 * @identifier _SafeStr_2194 = "_-5A"
 * @identifier _SafeStr_2228 = "_-3B"
 * @identifier _SafeStr_2300 = "_-0Q"
 * @identifier _SafeStr_2357 = "_-06"
 * @identifier _SafeStr_2816 = "_-R1"
 * @identifier _SafeStr_2936 = "_-rR"
 * @identifier _SafeStr_3110 = "_-O"
 * @identifier _SafeStr_3136 = "_-5N"
 * @identifier _SafeStr_3170 = "_-Ju"
 * @identifier _SafeStr_3461 = "_-Al"
 */
