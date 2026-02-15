package
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class _SafeCls_5 extends Sprite
   {
      
      public static const _SafeStr_2094:Number = 30;
      
      public static const _SafeStr_427:uint = _SafeCls_13._SafeStr_3297(0.01,0);
      
      internal var _SafeStr_1025:Game;
      
      internal var _SafeStr_429:Number = 1;
      
      internal var _SafeStr_2803:Number = 0.66;
      
      internal var _SafeStr_597:Number = 0.66;
      
      internal var _SafeStr_3194:Number = 1;
      
      internal var _SafeStr_1705:Boolean = true;
      
      internal var _SafeStr_1641:Boolean;
      
      public function _SafeCls_5()
      {
         super();
      }
      
      public function Init() : void
      {
         stage.frameRate = _SafeStr_2094;
         _SafeCls_10._SafeStr_1725 = this;
         addEventListener(Event.ENTER_FRAME,this._SafeStr_3268);
         this._SafeStr_1025 = new Game(this);
         this._SafeStr_1641 = true;
      }
      
      private function _SafeStr_3268(param1:Event) : void
      {
         _SafeCls_9._SafeStr_2982();
         if(!this._SafeStr_1641)
         {
            if(this._SafeStr_1025 && this._SafeStr_1025.screenError)
            {
               if(!this._SafeStr_1025.screenError.mbVisible)
               {
                  this._SafeStr_1025.screenError.Display("Fatal Error detected and logged, sorry!",true);
               }
               this._SafeStr_1025._SafeStr_168._SafeStr_841();
            }
         }
         else if(this._SafeStr_1025)
         {
            if(!_SafeCls_1.flags)
            {
               this._SafeStr_1641 = this._SafeStr_1025._SafeStr_3146();
            }
            else
            {
               this._SafeStr_1641 = this._SafeStr_1025._SafeStr_3002();
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_5 = "_-N0"
 * @identifier _SafeCls_9 = "_-cU"
 * @identifier _SafeCls_10 = "_-HZ"
 * @identifier _SafeCls_13 = "_-Mg"
 * @identifier _SafeStr_168 = "_-gx"
 * @identifier _SafeStr_427 = "_-fv"
 * @identifier _SafeStr_429 = "_-Y4"
 * @identifier _SafeStr_597 = "_-q8"
 * @identifier _SafeStr_841 = "_-4L"
 * @identifier _SafeStr_1025 = "_-O4"
 * @identifier _SafeStr_1641 = "_-HI"
 * @identifier _SafeStr_1705 = "_-QN"
 * @identifier _SafeStr_1725 = "_-aJ"
 * @identifier _SafeStr_2094 = "_-02"
 * @identifier _SafeStr_2803 = "_-F1"
 * @identifier _SafeStr_2982 = "_-oL"
 * @identifier _SafeStr_3002 = "_-iu"
 * @identifier _SafeStr_3146 = "_-7R"
 * @identifier _SafeStr_3194 = "_-CM"
 * @identifier _SafeStr_3268 = "_-sR"
 * @identifier _SafeStr_3297 = "_-D8"
 */
