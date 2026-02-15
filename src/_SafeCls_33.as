package
{
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class _SafeCls_33
   {
      
      internal var _SafeStr_729:String;
      
      internal var _SafeStr_652:String;
      
      internal var _SafeStr_155:Dictionary;
      
      internal var _SafeStr_1748:uint;
      
      public function _SafeCls_33(param1:String, param2:String)
      {
         super();
         this._SafeStr_729 = param1;
         this._SafeStr_652 = param2;
         this._SafeStr_155 = new Dictionary();
      }
      
      public function _SafeStr_3620() : void
      {
         var _loc1_:String = null;
         var _loc2_:_SafeCls_31 = null;
         for(_loc1_ in this._SafeStr_155)
         {
            _loc2_ = this._SafeStr_155[_loc1_];
            _loc2_._SafeStr_2538();
            delete this._SafeStr_155[_loc1_];
         }
         this._SafeStr_155 = null;
      }
      
      public function _SafeStr_3021() : void
      {
         var _loc1_:_SafeCls_31 = null;
         var _loc2_:_SafeCls_31 = null;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:Number = NaN;
         for(_loc3_ in this._SafeStr_155)
         {
            _loc4_ = _loc3_.split("%");
            if(_loc4_.length > 1)
            {
               _loc2_ = this._SafeStr_155[_loc4_[0]];
               if(!_loc2_)
               {
                  _SafeCls_22._SafeStr_195("The Move " + _loc3_ + " has no base animation: " + _loc4_[0]);
               }
               else
               {
                  _loc1_ = this._SafeStr_155[_loc3_];
                  if(!_loc2_._SafeStr_1804)
                  {
                     _loc2_._SafeStr_1804 = new Vector.<_SafeCls_31>();
                  }
                  _loc2_._SafeStr_1804.push(_loc1_);
                  _loc1_._SafeStr_1854 = _loc2_;
                  _loc5_ = Number(_loc4_[1]) / 100;
                  if(_loc5_ <= 0 || _loc5_ >= 1)
                  {
                     _SafeCls_22._SafeStr_195("The Move " + _loc3_ + " has a flawed chance");
                     _loc5_ = 0;
                  }
                  _loc1_._SafeStr_3371 = _loc5_;
               }
            }
         }
      }
      
      public function _SafeStr_2594(param1:String, param2:MovieClip, param3:uint, param4:uint, param5:uint, param6:uint, param7:uint, param8:Vector.<uint>, param9:String) : void
      {
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:uint = 0;
         var _loc18_:uint = 0;
         var _loc10_:Boolean = true;
         if(!param1)
         {
            param3 = 1;
            param1 = "Ready";
            _loc10_ = false;
         }
         var _loc11_:Boolean = false;
         if(param9)
         {
            _loc14_ = param9.length;
            _loc15_ = int(param1.lastIndexOf(param9));
            _loc16_ = param1.length;
            if(_loc15_ >= 0 && _loc15_ == _loc16_ - _loc14_)
            {
               _loc11_ = true;
               param1 = param1.substr(0,_loc16_ - _loc14_);
            }
         }
         var _loc12_:_SafeCls_31 = this._SafeStr_155[param1];
         if(_loc12_)
         {
            if(!_loc11_)
            {
               _SafeCls_22._SafeStr_195("Duplicate move found for: " + param1 + " in file: " + this._SafeStr_652 + "/" + this._SafeStr_729);
               return;
            }
            _loc12_._SafeStr_2538();
         }
         if(!param4)
         {
            param4 = param2.totalFrames + 1;
            if(_loc10_)
            {
               _SafeCls_22._SafeStr_195("End Missing for: " + param1 + " in file: " + this._SafeStr_652 + "/" + this._SafeStr_729);
            }
         }
         if(!param5)
         {
            param5 = param3;
            if(_loc10_)
            {
               _SafeCls_22._SafeStr_195("Loop Missing for: " + param1 + " in file: " + this._SafeStr_652 + "/" + this._SafeStr_729);
            }
         }
         if(param5 == param4)
         {
            param4 += 1;
            _SafeCls_22._SafeStr_195("Loop Invalid for: " + param1 + " in file: " + this._SafeStr_652 + "/" + this._SafeStr_729);
         }
         if(!param6)
         {
            param6 = param4;
            if(_loc10_)
            {
               _SafeCls_22._SafeStr_195("Recover Missing for: " + param1 + " in file: " + this._SafeStr_652 + "/" + this._SafeStr_729);
            }
         }
         if(param6 <= param5)
         {
            param6 = param5 + 1;
            _SafeCls_22._SafeStr_195("Recover Early for: " + param1 + " in file: " + this._SafeStr_652 + "/" + this._SafeStr_729);
         }
         if(!param7)
         {
            param7 = param4;
            if(_loc10_)
            {
               _SafeCls_22._SafeStr_195("Free Missing for: " + param1 + " in file: " + this._SafeStr_652 + "/" + this._SafeStr_729);
            }
         }
         if(param8)
         {
            _loc17_ = param8.length;
            while(_loc18_ < _loc17_)
            {
               param8[_loc18_] -= param3;
               _loc18_++;
            }
         }
         var _loc13_:_SafeCls_31 = new _SafeCls_31(param1,this._SafeStr_1748,param2,param3,param4 - param3,param5 - param3,param6 - param3,param7 - param3,param8);
         this._SafeStr_155[param1] = _loc13_;
         ++this._SafeStr_1748;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_31 = "_-iH"
 * @identifier _SafeCls_33 = "_-bK"
 * @identifier _SafeStr_155 = "_-pr"
 * @identifier _SafeStr_195 = "_-70"
 * @identifier _SafeStr_652 = "_-M5"
 * @identifier _SafeStr_729 = "_-24"
 * @identifier _SafeStr_1748 = "_-mQ"
 * @identifier _SafeStr_1804 = "_-vH"
 * @identifier _SafeStr_1854 = "_-uO"
 * @identifier _SafeStr_2538 = "_-QP"
 * @identifier _SafeStr_2594 = "_-l0"
 * @identifier _SafeStr_3021 = "_-Iy"
 * @identifier _SafeStr_3371 = "_-Eu"
 * @identifier _SafeStr_3620 = "_-8K"
 */
