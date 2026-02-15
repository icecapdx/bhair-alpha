package
{
   import flash.events.MouseEvent;
   
   public class _SafeCls_59 extends _SafeCls_35
   {
      
      private static const _SafeStr_1433:String = "************";
      
      private var _SafeStr_1511:_SafeCls_34;
      
      private var _SafeStr_1122:Boolean;
      
      private var _SafeStr_2260:_SafeCls_34;
      
      private var _SafeStr_2693:_SafeCls_62;
      
      internal var _SafeStr_1225:Boolean = false;
      
      public function _SafeCls_59(param1:Game)
      {
         super(param1,"a_ScreenLogin","am_Panel");
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         this._SafeStr_2693 = _SafeStr_145(_SafeStr_123.am_VersionNumber);
         _SafeStr_177(_SafeStr_123.am_Login,this.Login,this._SafeStr_376);
         _SafeStr_177(_SafeStr_123.am_CreateAccount,this._SafeStr_3131,this._SafeStr_376);
         this._SafeStr_2260 = _SafeStr_177(_SafeStr_123.am_RememberPassword,this._SafeStr_3316,this._SafeStr_376);
         this._SafeStr_1511 = _SafeStr_124(this._SafeStr_2260.mMovieClip.am_CheckMark);
         _SafeStr_1585(_SafeStr_123.am_Close);
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_1511 = null;
         this._SafeStr_2693 = null;
         this._SafeStr_2260 = null;
      }
      
      override public function OnRefreshScreen() : void
      {
         if(this._SafeStr_1122)
         {
            this._SafeStr_1511.Show();
         }
         else
         {
            this._SafeStr_1511.Hide();
         }
      }
      
      public function OnInitDisplay() : void
      {
         var _loc1_:Object = _SafeStr_118.cachedCharInfo.data;
         if(_loc1_.dbUserEmail)
         {
            _SafeCls_19._SafeStr_374(_SafeStr_123.am_AccountName,_loc1_.dbUserEmail);
         }
         else
         {
            _SafeCls_19._SafeStr_374(_SafeStr_123.am_Password,"");
            _SafeStr_118.main.stage.focus = _SafeStr_123.am_AccountName;
         }
         this._SafeStr_1122 = true;
         if(_loc1_.dbPassHash)
         {
            this._SafeStr_1225 = true;
            _SafeCls_19._SafeStr_374(_SafeStr_123.am_Password,_SafeStr_1433);
         }
         else
         {
            this._SafeStr_1225 = false;
            _SafeCls_19._SafeStr_374(_SafeStr_123.am_Password,"");
            if(_loc1_.dbUserEmail)
            {
               _SafeStr_118.main.stage.focus = _SafeStr_123.am_Password;
            }
         }
      }
      
      private function _SafeStr_3316(param1:MouseEvent) : void
      {
         this._SafeStr_1122 = !this._SafeStr_1122;
         _SafeStr_141();
      }
      
      private function _SafeStr_3131(param1:MouseEvent) : void
      {
         _SafeStr_118.screenCreateAccount.Display();
         Hide();
      }
      
      private function Login(param1:MouseEvent) : void
      {
         this._SafeStr_2671();
      }
      
      public function _SafeStr_3218() : void
      {
      }
      
      private function _SafeStr_2671() : void
      {
         var _loc1_:String = _SafeStr_123.am_AccountName.text;
         var _loc2_:String = _SafeStr_123.am_Password.text;
         if(_SafeStr_118.cachedCharInfo.data.dbUserEmail != _loc1_)
         {
            this._SafeStr_1225 = false;
         }
         if(_loc2_ != _SafeStr_1433)
         {
            this._SafeStr_1225 = false;
         }
         var _loc3_:Boolean = this._SafeStr_1122;
         if(!_loc1_ || _loc1_.indexOf(" ") != -1 || _loc1_.indexOf("@") == -1 || _loc1_.indexOf(".") == -1)
         {
            _SafeStr_118.screenError.Display("You must enter a valid email address");
            return;
         }
         var _loc4_:String = this._SafeStr_1225 ? _SafeStr_118.cachedCharInfo.data.dbPassHash : _SafeCls_107._SafeStr_2885("#bmg#" + _loc2_);
         _SafeStr_118.BeginLoginProcess(_loc1_,_loc4_,_loc3_,false);
      }
      
      public function _SafeStr_191(param1:int) : Boolean
      {
         if(!this.mbVisible)
         {
            return false;
         }
         if(Boolean(_SafeStr_123.am_AccountName.stage.focus) || Boolean(_SafeStr_123.am_Password.stage.focus))
         {
            return true;
         }
         switch(param1)
         {
            case Game._SafeStr_216:
               this._SafeStr_2671();
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
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_59 = "_-Ed"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_107 = "_-Rz"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_141 = "_-Ay"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_177 = "_-eJ"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_374 = "_-ws"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_1122 = "set"
 * @identifier _SafeStr_1225 = "_-rn"
 * @identifier _SafeStr_1433 = "_-8o"
 * @identifier _SafeStr_1511 = "_-2m"
 * @identifier _SafeStr_1585 = "_-UA"
 * @identifier _SafeStr_2260 = "_-EC"
 * @identifier _SafeStr_2671 = "_-EO"
 * @identifier _SafeStr_2693 = "_-Ue"
 * @identifier _SafeStr_2885 = "_-8w"
 * @identifier _SafeStr_3131 = "_-hY"
 * @identifier _SafeStr_3218 = "_-Oz"
 * @identifier _SafeStr_3316 = "_-YZ"
 */
