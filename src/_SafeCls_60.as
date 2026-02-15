package
{
   import flash.events.MouseEvent;
   
   public class _SafeCls_60 extends _SafeCls_35
   {
      
      private var _SafeStr_1511:_SafeCls_34;
      
      private var _SafeStr_943:Boolean;
      
      private var _SafeStr_2134:_SafeCls_34;
      
      private var _SafeStr_1020:_SafeCls_34;
      
      public var _SafeStr_2253:Boolean = false;
      
      private var _SafeStr_2266:Boolean = false;
      
      private var _SafeStr_1122:Boolean = true;
      
      private var _SafeStr_2260:_SafeCls_34;
      
      public function _SafeCls_60(param1:Game)
      {
         super(param1,"a_ScreenCreateAccount","am_Panel");
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         this._SafeStr_1020 = _SafeStr_177(_SafeStr_123.am_CreateAccount,this._SafeStr_3131,this._SafeStr_376);
         this._SafeStr_2134 = _SafeStr_177(_SafeStr_123.am_AgeCheckButton,this._SafeStr_3473,this._SafeStr_376);
         this._SafeStr_2260 = _SafeStr_177(_SafeStr_123.am_RememberPasswordButton,this._SafeStr_3316,this._SafeStr_376);
         this._SafeStr_1511 = _SafeStr_124(this._SafeStr_2134.mMovieClip.am_CheckMark);
         _SafeStr_1585(_SafeStr_123.am_Close);
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_1511 = null;
         this._SafeStr_2134 = null;
         this._SafeStr_1020 = null;
      }
      
      override public function OnRefreshScreen() : void
      {
         if(this._SafeStr_943)
         {
            this._SafeStr_1511.Show();
         }
         else
         {
            this._SafeStr_1511.Hide();
         }
      }
      
      override public function OnTickScreen() : void
      {
         if(_SafeStr_123.am_AccountName.text && _SafeStr_123.am_Password.text && this._SafeStr_943 && !this._SafeStr_2266)
         {
            if(this._SafeStr_1020.mMovieClip.currentFrameLabel == "Inactive")
            {
               this._SafeStr_1020.EnableButton();
            }
         }
         else if(this._SafeStr_1020.mMovieClip.currentFrameLabel != "Inactive")
         {
            this._SafeStr_1020.DisableButton("Inactive");
         }
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
            case Game._SafeStr_242:
               this._SafeStr_2755();
               break;
            case Game._SafeStr_247:
            case Game._SafeStr_288:
               this._SafeStr_3154();
         }
         return true;
      }
      
      override public function Hide() : void
      {
         if(!this._SafeStr_2253)
         {
            _SafeStr_118.screenLogin.Display();
         }
         super.Hide();
      }
      
      public function OnInitDisplay() : void
      {
         this._SafeStr_943 = false;
      }
      
      private function _SafeStr_3473(param1:MouseEvent) : void
      {
         this._SafeStr_943 = !this._SafeStr_943;
         _SafeStr_141();
      }
      
      private function _SafeStr_3316(param1:MouseEvent) : void
      {
         this._SafeStr_1122 = !this._SafeStr_1122;
         _SafeStr_141();
      }
      
      private function _SafeStr_3131(param1:MouseEvent) : void
      {
         this._SafeStr_2755();
         param1.stopPropagation();
      }
      
      private function _SafeStr_2755() : void
      {
         if(!this._SafeStr_943)
         {
            _SafeStr_118.screenError.Display("Only those of age 13 and older can create a new Smash Blitz account!");
            return;
         }
         var _loc1_:String = _SafeStr_123.am_AccountName.text;
         var _loc2_:String = _SafeStr_123.am_Password.text;
         var _loc3_:Boolean = this._SafeStr_1122;
         if(!this._SafeStr_3384(_loc1_))
         {
            _SafeStr_118.screenError.Display("You must enter a valid email");
            return;
         }
         if(_loc1_ == _loc2_)
         {
            _SafeStr_118.screenError.Display("Email and Password must be different");
            return;
         }
         if(_loc2_.length < 6)
         {
            _SafeStr_118.screenError.Display("Password must be at least 6 characters");
            return;
         }
         this._SafeStr_2253 = true;
         var _loc4_:String = _SafeCls_107._SafeStr_2885("#bmg#" + _loc2_);
         _SafeStr_118.BeginLoginProcess(_loc1_,_loc4_,_loc3_,true);
         this._SafeStr_2266 = true;
      }
      
      public function _SafeStr_3154() : void
      {
         this.Hide();
      }
      
      public function _SafeStr_2664() : void
      {
         this._SafeStr_2266 = false;
      }
      
      private function _SafeStr_3384(param1:String) : Boolean
      {
         if(param1.length > 320)
         {
            return false;
         }
         if(param1.indexOf(" ") != -1)
         {
            return false;
         }
         var _loc2_:Array = param1.split("@");
         if(_loc2_.length != 2)
         {
            return false;
         }
         var _loc3_:String = _loc2_[0];
         var _loc4_:String = _loc2_[1];
         if(_loc4_.indexOf(".") == -1)
         {
            return false;
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
 * @identifier _SafeCls_60 = "_-nZ"
 * @identifier _SafeCls_107 = "_-Rz"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_141 = "_-Ay"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_177 = "_-eJ"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_247 = "_-PM"
 * @identifier _SafeStr_288 = "_-m2"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_943 = "_-3c"
 * @identifier _SafeStr_1020 = "_-Ku"
 * @identifier _SafeStr_1122 = "set"
 * @identifier _SafeStr_1511 = "_-2m"
 * @identifier _SafeStr_1585 = "_-UA"
 * @identifier _SafeStr_2134 = "_-tv"
 * @identifier _SafeStr_2253 = "_-jZ"
 * @identifier _SafeStr_2260 = "_-EC"
 * @identifier _SafeStr_2266 = "_-mY"
 * @identifier _SafeStr_2664 = "_-7M"
 * @identifier _SafeStr_2755 = "_-5p"
 * @identifier _SafeStr_2885 = "_-8w"
 * @identifier _SafeStr_3131 = "_-hY"
 * @identifier _SafeStr_3154 = "_-LK"
 * @identifier _SafeStr_3316 = "_-YZ"
 * @identifier _SafeStr_3384 = "_-Cw"
 * @identifier _SafeStr_3473 = "_-Ki"
 */
