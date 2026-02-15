package
{
   import flash.display.MovieClip;
   import flash.events.*;
   
   public class _SafeCls_96
   {
      
      internal static var _SafeStr_681:MovieClip;
      
      public function _SafeCls_96()
      {
         super();
      }
      
      public static function _SafeStr_1803(param1:MouseEvent) : void
      {
         var _loc3_:Function = null;
         var _loc4_:Function = null;
         var _loc2_:MovieClip = _SafeStr_681;
         if(_loc2_)
         {
            _loc2_.removeEventListener(MouseEvent.MOUSE_MOVE,_SafeStr_2189);
            if(_loc2_.db_SliderCommitCallback)
            {
               _loc3_ = _loc2_.db_SliderCommitCallback;
               _loc4_ = _loc2_.db_ReadSlider;
               _loc3_(_loc4_(_loc2_));
            }
            _SafeStr_681 = null;
         }
      }
      
      public static function _SafeStr_2981(param1:MouseEvent) : void
      {
      }
      
      public static function _SafeStr_2452(param1:MouseEvent) : void
      {
         _SafeStr_1803(param1);
         var _loc2_:MovieClip = param1.target as MovieClip;
         _loc2_.removeEventListener(MouseEvent.MOUSE_MOVE,_SafeStr_2189);
         if(_SafeStr_681)
         {
            _SafeStr_681 = null;
         }
      }
      
      public static function _SafeStr_2189(param1:MouseEvent) : void
      {
         var _loc3_:Function = null;
         var _loc4_:Function = null;
         var _loc2_:MovieClip = param1.target as MovieClip;
         _SafeStr_1423(_loc2_,param1.localX,param1.localY);
         if(_loc2_.db_SliderChangeCallback)
         {
            _loc3_ = _loc2_.db_SliderChangeCallback;
            _loc4_ = _loc2_.db_ReadSlider;
            _loc3_(_loc4_(_loc2_));
         }
      }
      
      public static function _SafeStr_1732(param1:MouseEvent) : void
      {
         var _loc3_:Function = null;
         var _loc4_:Function = null;
         var _loc2_:MovieClip = param1.target as MovieClip;
         _SafeStr_681 = _loc2_;
         _loc2_.addEventListener(MouseEvent.MOUSE_MOVE,_SafeStr_2189);
         _SafeStr_1423(_loc2_,param1.localX,param1.localY);
         if(_loc2_.db_SliderChangeCallback)
         {
            _loc3_ = _loc2_.db_SliderChangeCallback;
            _loc4_ = _loc2_.db_ReadSlider;
            _loc3_(_loc4_(_loc2_));
         }
      }
      
      public static function _SafeStr_1423(param1:MovieClip, param2:Number, param3:Number) : void
      {
         var _loc4_:Function = null;
         var _loc5_:Number = NaN;
         param1.am_Knob.x = Math.min(Math.max(param2,param1.am_KnobStart.x),param1.am_KnobEnd.x);
         param1.am_Knob.y = Math.min(Math.max(param3,param1.am_KnobStart.y),param1.am_KnobEnd.y);
         if(param1.db_Snap)
         {
            _loc4_ = param1.db_ReadSlider;
            _loc5_ = _loc4_(param1);
            _loc5_ = Math.round(_loc5_ / param1.db_Snap) * param1.db_Snap;
            _SafeStr_2627(param1,_loc5_);
         }
      }
      
      public static function _SafeStr_2627(param1:MovieClip, param2:Number) : void
      {
         param1.am_Knob.x = param1.am_KnobStart.x + (param1.am_KnobEnd.x - param1.am_KnobStart.x) * param2;
         param1.am_Knob.y = param1.am_KnobStart.y + (param1.am_KnobEnd.y - param1.am_KnobStart.y) * param2;
      }
      
      public static function _SafeStr_3191(param1:MovieClip) : Number
      {
         var _loc2_:Number = (param1.am_Knob.x - param1.am_KnobStart.x) / (param1.am_KnobEnd.x - param1.am_KnobStart.x);
         return Math.max(Math.min(_loc2_,1),0);
      }
      
      public static function _SafeStr_3266(param1:MovieClip) : Number
      {
         var _loc2_:Number = (param1.am_Knob.y - param1.am_KnobStart.y) / (param1.am_KnobEnd.y - param1.am_KnobStart.y);
         return Math.max(Math.min(_loc2_,1),0);
      }
      
      public static function _SafeStr_3177(param1:MovieClip, param2:Function, param3:Function, param4:Number = 0, param5:Boolean = false) : void
      {
         param1.mouseChildren = false;
         param1.am_KnobStart.visible = false;
         param1.am_KnobEnd.visible = false;
         param1.db_SliderCommitCallback = param2;
         param1.db_SliderChangeCallback = param3;
         param1.db_Snap = param4;
         param1.db_ReadSlider = param5 ? _SafeStr_3266 : _SafeStr_3191;
         param1.addEventListener(MouseEvent.MOUSE_UP,_SafeStr_1803);
         param1.addEventListener(MouseEvent.ROLL_OVER,_SafeStr_2981);
         param1.addEventListener(MouseEvent.ROLL_OUT,_SafeStr_2452);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,_SafeStr_1732);
         param1.addEventListener(MouseEvent.RIGHT_MOUSE_DOWN,_SafeStr_1732);
      }
      
      public static function _SafeStr_3261(param1:MovieClip) : void
      {
         param1.filters = [];
         param1.db_SliderCommitCallback = null;
         param1.db_SliderChangeCallback = null;
         param1.db_ReadSlider = null;
         param1.removeEventListener(MouseEvent.MOUSE_UP,_SafeStr_1803);
         param1.removeEventListener(MouseEvent.ROLL_OVER,_SafeStr_2981);
         param1.removeEventListener(MouseEvent.ROLL_OUT,_SafeStr_2452);
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,_SafeStr_1732);
         param1.removeEventListener(MouseEvent.RIGHT_MOUSE_DOWN,_SafeStr_1732);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_96 = "_-u6"
 * @identifier _SafeStr_681 = "_-Ry"
 * @identifier _SafeStr_1423 = "_-17"
 * @identifier _SafeStr_1732 = "_-Ml"
 * @identifier _SafeStr_1803 = "_-v3"
 * @identifier _SafeStr_2189 = "_-Oh"
 * @identifier _SafeStr_2452 = "_-OC"
 * @identifier _SafeStr_2627 = "_-PS"
 * @identifier _SafeStr_2981 = "_-OF"
 * @identifier _SafeStr_3177 = "_-Nv"
 * @identifier _SafeStr_3191 = "_-JM"
 * @identifier _SafeStr_3261 = "_-oW"
 * @identifier _SafeStr_3266 = "_-gy"
 */
