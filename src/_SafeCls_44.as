package
{
   import flash.events.MouseEvent;
   
   public class _SafeCls_44 extends _SafeCls_35
   {
      
      internal var _SafeStr_2623:uint;
      
      internal var _SafeStr_2662:String;
      
      internal var _SafeStr_2869:String;
      
      private var _SafeStr_1196:Function;
      
      private var _SafeStr_1283:Function;
      
      public function _SafeCls_44(param1:Game)
      {
         super(param1,"a_DialogBox",null);
         _SafeStr_158 = true;
         _SafeStr_690 = false;
      }
      
      override public function OnCreateScreen() : void
      {
         _SafeStr_130(_SafeStr_123.am_YesButton,this._SafeStr_3366,this._SafeStr_376);
         _SafeStr_130(_SafeStr_123.am_Close,this._SafeStr_3404,this._SafeStr_376);
      }
      
      override public function OnRefreshScreen() : void
      {
         _SafeCls_19._SafeStr_374(_SafeStr_123.am_DialogText,this._SafeStr_2662);
      }
      
      public function OnInitDisplay(param1:String, param2:uint, param3:String) : void
      {
         this._SafeStr_2623 = param2;
         this._SafeStr_2662 = param1;
         this._SafeStr_2869 = param3;
      }
      
      private function _SafeStr_2681(param1:Boolean) : void
      {
         if(!_SafeStr_118.serverConn)
         {
            return;
         }
         var _loc2_:_SafeCls_77 = new _SafeCls_77(_SafeCls_73._SafeStr_2128);
         _loc2_._SafeStr_146(this._SafeStr_2623);
         _loc2_._SafeStr_279(this._SafeStr_2869);
         _loc2_._SafeStr_206(param1);
         _SafeStr_118.serverConn.SendPacket(_loc2_);
      }
      
      private function _SafeStr_3404(param1:MouseEvent) : void
      {
         if(this._SafeStr_1283 != null)
         {
            this._SafeStr_1283();
         }
         else
         {
            this._SafeStr_2681(false);
         }
         this._SafeStr_1283 = null;
         this._SafeStr_1196 = null;
         Hide();
      }
      
      private function _SafeStr_3366(param1:MouseEvent) : void
      {
         if(this._SafeStr_1196 != null)
         {
            this._SafeStr_1196();
         }
         else
         {
            this._SafeStr_2681(true);
         }
         this._SafeStr_1196 = null;
         this._SafeStr_1283 = null;
         Hide();
      }
      
      public function _SafeStr_3341(param1:String, param2:Function, param3:Function) : void
      {
         this._SafeStr_1196 = param2;
         this._SafeStr_1283 = param3;
         Display(param1,0,"");
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
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_44 = "_-L6"
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_130 = "_-Ri"
 * @identifier _SafeStr_146 = "_-jy"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_206 = "_-pe"
 * @identifier _SafeStr_279 = "_-CT"
 * @identifier _SafeStr_374 = "_-ws"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_690 = "_-pK"
 * @identifier _SafeStr_1196 = "_-eQ"
 * @identifier _SafeStr_1283 = "_-A7"
 * @identifier _SafeStr_2128 = "_-cH"
 * @identifier _SafeStr_2623 = "_-pX"
 * @identifier _SafeStr_2662 = "_-uf"
 * @identifier _SafeStr_2681 = "_-or"
 * @identifier _SafeStr_2869 = "_-vg"
 * @identifier _SafeStr_3341 = "_-Aw"
 * @identifier _SafeStr_3366 = "_-X2"
 * @identifier _SafeStr_3404 = "_-hT"
 */
