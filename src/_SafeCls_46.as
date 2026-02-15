package
{
   import flash.events.MouseEvent;
   
   public class _SafeCls_46 extends _SafeCls_35
   {
      
      private var _SafeStr_1735:_SafeCls_34;
      
      public function _SafeCls_46(param1:Game)
      {
         super(param1,"a_ScreenCreateCharacter","am_Panel");
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         this._SafeStr_1735 = _SafeStr_177(_SafeStr_123.am_CreateCharacter,this._SafeStr_3285,this._SafeStr_376);
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_1735 = null;
      }
      
      override public function OnTickScreen() : void
      {
         if(_SafeStr_123.am_CharacterName.text)
         {
            this._SafeStr_1735.EnableButton();
         }
         else
         {
            this._SafeStr_1735.DisableButton("Inactive");
         }
      }
      
      public function OnInitDisplay() : void
      {
         _SafeStr_123.am_CharacterName.text = "";
      }
      
      private function _SafeStr_3285(param1:MouseEvent) : void
      {
         this._SafeStr_2582();
         param1.stopPropagation();
      }
      
      public function _SafeStr_191(param1:int) : Boolean
      {
         if(!this.mbVisible)
         {
            return false;
         }
         if(_SafeStr_123.am_CharacterName.stage.focus)
         {
            return true;
         }
         switch(param1)
         {
            case Game._SafeStr_216:
            case Game._SafeStr_242:
               this._SafeStr_2582();
         }
         return true;
      }
      
      public function _SafeStr_2582() : void
      {
         var _loc1_:String = _SafeStr_123.am_CharacterName.text;
         if(!this._SafeStr_3353(_loc1_))
         {
            _SafeStr_118.screenError.Display("Character name is not allowed. Please choose a new name.");
            return;
         }
         var _loc2_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_2054);
         _loc2_._SafeStr_279(_loc1_);
         if(_SafeStr_118.serverConn)
         {
            _SafeStr_118.serverConn.SendPacket(_loc2_);
         }
      }
      
      private function _SafeStr_3353(param1:String) : Boolean
      {
         if(_SafeCls_61._SafeStr_1982(param1))
         {
            return false;
         }
         var _loc2_:String = param1.replace(/([a-z])\1+/gi,"$1");
         if(_SafeCls_61._SafeStr_1982(_loc2_) || _SafeCls_61._SafeStr_2827(_loc2_))
         {
            return false;
         }
         var _loc3_:String = param1.replace(/([a-z])\1+/gi,"$1$1");
         if(_SafeCls_61._SafeStr_1982(_loc3_) || _SafeCls_61._SafeStr_2827(_loc3_))
         {
            return false;
         }
         if(param1.length > 16)
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
 * @identifier _SafeCls_46 = "_-u2"
 * @identifier _SafeCls_61 = "_-Cc"
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_177 = "_-eJ"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_279 = "_-CT"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_1735 = "_-VC"
 * @identifier _SafeStr_1982 = "_-Vk"
 * @identifier _SafeStr_2054 = "_-5Z"
 * @identifier _SafeStr_2582 = "_-FS"
 * @identifier _SafeStr_2827 = "_-pl"
 * @identifier _SafeStr_3285 = "_-lr"
 * @identifier _SafeStr_3353 = "_-Pk"
 */
