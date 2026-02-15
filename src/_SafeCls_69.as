package
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class _SafeCls_69 extends _SafeCls_35
   {
      
      private var _SafeStr_1393:_SafeCls_62;
      
      public function _SafeCls_69(param1:Game)
      {
         super(param1,"a_ScreenBuildVersion",null);
         _SafeStr_690 = false;
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc1_:TextField = _SafeStr_123.getChildByName("am_BuildVersionText") as TextField || _SafeStr_123["am_BuildVersionText"] as TextField;
         if(!_loc1_)
         {
            _loc1_ = new TextField();
            _loc1_.name = "am_BuildVersionText";
            _loc1_.x = 10;
            _loc1_.y = 10;
            _loc1_.width = 400;
            _loc1_.height = 24;
            _loc1_.defaultTextFormat = new TextFormat("_sans",14,0xFFFFFF);
            _loc1_.text = "";
            _SafeStr_123.addChild(_loc1_);
         }
         this._SafeStr_1393 = _SafeStr_145(_loc1_);
         this._SafeStr_1393.mTextField.cacheAsBitmap = true;
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_1393 = null;
      }
      
      public function OnInitDisplay() : void
      {
         this._SafeStr_1393.SetText("ALPHA BUILD V 0.2.1");
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_69 = "_-gK"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_690 = "_-pK"
 * @identifier _SafeStr_1393 = "_-FW"
 */
