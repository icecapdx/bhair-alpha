package
{
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class _SafeCls_62
   {
      
      private var _SafeStr_118:Game;
      
      public var mTextField:TextField;
      
      private var _SafeStr_867:String;
      
      private var _SafeStr_1857:String;
      
      public var mbVisible:Boolean;
      
      public var mValue:int;
      
      public var _SafeStr_2927:String;
      
      public var _SafeStr_327:int;
      
      private var _SafeStr_2840:int;
      
      private var _SafeStr_880:Number;
      
      private var _SafeStr_2199:Number;
      
      private var _SafeStr_1382:Boolean;
      
      public function _SafeCls_62(param1:Game, param2:TextField)
      {
         super();
         this._SafeStr_118 = param1;
         if(!param2)
         {
            this._SafeStr_867 = "";
            this._SafeStr_1857 = "";
            this.mbVisible = false;
            this.mTextField = null;
            return;
         }
         this._SafeStr_867 = param2.text;
         this._SafeStr_1857 = this._SafeStr_867;
         this.mbVisible = param2.visible;
         this.mTextField = param2;
         this.mTextField.mouseEnabled = false;
         param2.embedFonts = true;
         param2.antiAliasType = AntiAliasType.ADVANCED;
         var _loc3_:TextFormat = param2.getTextFormat();
         param2.defaultTextFormat = _loc3_;
         param2.setTextFormat(_loc3_);
      }
      
      public function _SafeStr_3059() : void
      {
         this.mTextField = null;
         this._SafeStr_118 = null;
      }
      
      public function Hide() : void
      {
         if(this.mTextField)
            this.mTextField.visible = false;
         this.mbVisible = false;
      }
      
      public function Show() : void
      {
         if(this.mTextField)
            this.mTextField.visible = true;
         this.mbVisible = true;
      }
      
      public function _SafeStr_3120(param1:Number, param2:String = "") : void
      {
         this._SafeStr_2927 = param2;
         this._SafeStr_2199 = param1 * Game._SafeStr_354;
         this._SafeStr_3071();
      }
      
      public function SetText(param1:String) : void
      {
         this._SafeStr_867 = param1 ? param1 : "";
         this._SafeStr_327 = 0;
         this.mValue = 0;
         this._SafeStr_1382 = false;
      }
      
      public function _SafeStr_3071() : void
      {
         this._SafeStr_327 = int.MIN_VALUE;
         this._SafeStr_1382 = true;
      }
      
      public function _SafeStr_1905() : void
      {
         if(this._SafeStr_327 != this.mValue)
         {
            if(!this._SafeStr_2199)
            {
               this._SafeStr_327 = this.mValue;
            }
            else if(this._SafeStr_1382)
            {
               this._SafeStr_327 = this.mValue;
               this._SafeStr_1382 = false;
            }
            else if(!this._SafeStr_880 || this._SafeStr_2840 != this.mValue)
            {
               this._SafeStr_880 = (this.mValue - this._SafeStr_327) / this._SafeStr_2199;
               this._SafeStr_2840 = this.mValue;
            }
            else if(this._SafeStr_880 > 0)
            {
               this._SafeStr_327 += int(this._SafeStr_880 * (this._SafeStr_118 ? this._SafeStr_118._SafeStr_227 : 1)) + 1;
               if(this._SafeStr_327 >= this.mValue)
               {
                  this._SafeStr_327 = this.mValue;
                  this._SafeStr_880 = 0;
               }
            }
            else
            {
               this._SafeStr_327 += int(this._SafeStr_880 * (this._SafeStr_118 ? this._SafeStr_118._SafeStr_227 : 1)) - 1;
               if(this._SafeStr_327 <= this.mValue)
               {
                  this._SafeStr_327 = this.mValue;
                  this._SafeStr_880 = 0;
               }
            }
            this._SafeStr_867 = _SafeCls_19._SafeStr_3247(this._SafeStr_327) + this._SafeStr_2927;
         }
         if(this._SafeStr_867 != this._SafeStr_1857)
         {
            this._SafeStr_1857 = this._SafeStr_867;
            if(this.mTextField)
               this.mTextField.text = this._SafeStr_867;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_227 = "_-XT"
 * @identifier _SafeStr_327 = "_-Ib"
 * @identifier _SafeStr_354 = "_-4x"
 * @identifier _SafeStr_867 = "_-uZ"
 * @identifier _SafeStr_880 = "_-MJ"
 * @identifier _SafeStr_1382 = "_-mu"
 * @identifier _SafeStr_1857 = "_-mV"
 * @identifier _SafeStr_1905 = "_-V2"
 * @identifier _SafeStr_2199 = "_-2B"
 * @identifier _SafeStr_2840 = "_-tS"
 * @identifier _SafeStr_2927 = "_-SK"
 * @identifier _SafeStr_3059 = "_-bw"
 * @identifier _SafeStr_3071 = "_-D0"
 * @identifier _SafeStr_3120 = "_-ez"
 * @identifier _SafeStr_3247 = "_-r6"
 */
