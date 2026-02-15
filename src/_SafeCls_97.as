package
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Point;
   
   public class _SafeCls_97
   {
      
      private static const _SafeStr_1299:Number = 1;
      
      private var _SafeStr_118:Game;
      
      private var _SafeStr_2611:Number;
      
      private var _SafeStr_2811:Number;
      
      private var _SafeStr_2496:Number;
      
      private var _SafeStr_2498:Number;
      
      private var _SafeStr_855:Number;
      
      private var _SafeStr_1782:Boolean;
      
      private var _SafeStr_1354:Function;
      
      private var _SafeStr_1547:Function;
      
      private var _SafeStr_2925:Point;
      
      private var _SafeStr_2721:Point;
      
      private var _SafeStr_2667:uint;
      
      private var _SafeStr_476:DisplayObject;
      
      private var _SafeStr_2670:Boolean;
      
      private var _SafeStr_2756:Boolean;
      
      public function _SafeCls_97(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_2721 = new Point();
         this._SafeStr_2925 = new Point();
      }
      
      public static function _SafeStr_3254(param1:Number) : Number
      {
         return param1;
      }
      
      public static function _SafeStr_3456(param1:Number) : Number
      {
         return param1 * param1 * (3 - 2 * param1);
      }
      
      public function _SafeStr_2558() : void
      {
         if(Boolean(this._SafeStr_476) && this._SafeStr_2756)
         {
            this._SafeStr_476.parent.removeChild(this._SafeStr_476);
            this._SafeStr_476 = null;
         }
         this._SafeStr_118 = null;
         this._SafeStr_2721 = null;
         this._SafeStr_2925 = null;
         this._SafeStr_1354 = null;
         this._SafeStr_1547 = null;
      }
      
      public function _SafeStr_3767() : DisplayObject
      {
         return this._SafeStr_476;
      }
      
      public function _SafeStr_3537() : void
      {
         this._SafeStr_1782 = true;
      }
      
      public function _SafeStr_1936(param1:MovieClip, param2:Boolean = true) : void
      {
         this._SafeStr_476 = param1;
         this._SafeStr_2756 = param2;
      }
      
      public function _SafeStr_3567(param1:Boolean) : void
      {
         this._SafeStr_2670 = param1;
      }
      
      public function _SafeStr_2252(param1:Number, param2:Number, param3:uint, param4:Function, param5:Function) : void
      {
         this._SafeStr_855 = 0;
         this._SafeStr_2667 = param3;
         this._SafeStr_1782 = false;
         if(param4 == null)
         {
            this._SafeStr_1354 = _SafeStr_3254;
         }
         else
         {
            this._SafeStr_1354 = param4;
         }
         this._SafeStr_1547 = param5;
         this._SafeStr_2611 = this._SafeStr_476.x;
         this._SafeStr_2811 = this._SafeStr_476.y;
         this._SafeStr_2496 = param1;
         this._SafeStr_2498 = param2;
      }
      
      public function _SafeStr_3239() : Boolean
      {
         var _loc1_:Number = NaN;
         if(this._SafeStr_1782)
         {
            return true;
         }
         if(this._SafeStr_855 < _SafeStr_1299)
         {
            this._SafeStr_855 += this._SafeStr_118._SafeStr_227 * 1000 / Game._SafeStr_354 / this._SafeStr_2667;
            if(this._SafeStr_855 >= _SafeStr_1299)
            {
               this._SafeStr_855 = _SafeStr_1299;
               if(this._SafeStr_1547 != null)
               {
                  this._SafeStr_1547();
               }
               this._SafeStr_1782 = true;
            }
            _loc1_ = this._SafeStr_1354(this._SafeStr_855);
            if(this._SafeStr_2670)
            {
               this._SafeStr_476.alpha = 1 - _loc1_;
            }
            this._SafeStr_476.x = this._SafeStr_2611 * (1 - _loc1_) + this._SafeStr_2496 * _loc1_;
            this._SafeStr_476.y = this._SafeStr_2811 * (1 - _loc1_) + this._SafeStr_2498 * _loc1_;
         }
         return false;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_97 = "_-IO"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_227 = "_-XT"
 * @identifier _SafeStr_354 = "_-4x"
 * @identifier _SafeStr_476 = "_-bB"
 * @identifier _SafeStr_855 = "_-ai"
 * @identifier _SafeStr_1299 = "_-54"
 * @identifier _SafeStr_1354 = "_-Uz"
 * @identifier _SafeStr_1547 = "_-TO"
 * @identifier _SafeStr_1782 = "_-r5"
 * @identifier _SafeStr_1936 = "_-kq"
 * @identifier _SafeStr_2252 = "_-PY"
 * @identifier _SafeStr_2496 = "_-aG"
 * @identifier _SafeStr_2498 = "_-FY"
 * @identifier _SafeStr_2558 = "_-ah"
 * @identifier _SafeStr_2611 = "_-kH"
 * @identifier _SafeStr_2667 = "_-jV"
 * @identifier _SafeStr_2670 = "_-ER"
 * @identifier _SafeStr_2721 = "_-JV"
 * @identifier _SafeStr_2756 = "_-QA"
 * @identifier _SafeStr_2811 = "_-f5"
 * @identifier _SafeStr_2925 = "_-6c"
 * @identifier _SafeStr_3239 = "_-Wo"
 * @identifier _SafeStr_3254 = "_-HD"
 * @identifier _SafeStr_3456 = "_-8s"
 * @identifier _SafeStr_3537 = "_-Yk"
 * @identifier _SafeStr_3567 = "_-Pi"
 * @identifier _SafeStr_3767 = "_-RL"
 */
