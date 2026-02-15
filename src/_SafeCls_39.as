package
{
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class _SafeCls_39
   {
      
      internal static const UNBOUNDKEY:int = 255;
      
      public static const _SafeStr_1211:uint = 1;
      
      public static const _SafeStr_1340:uint = 2;
      
      internal var _SafeStr_768:int;
      
      private var _SafeStr_209:int;
      
      private var _SafeStr_958:int;
      
      private var _SafeStr_196:Array;
      
      private var _SafeStr_263:Dictionary;
      
      private var _SafeStr_1503:Array;
      
      private var _SafeStr_870:Array;
      
      private var _SafeStr_1081:Array;
      
      private var mDefault2:Array;
      
      private var _SafeStr_948:Vector.<String>;
      
      private var _SafeStr_131:Vector.<String>;
      
      public var mbStatePickKey:Boolean = false;
      
      public var mActiveCommand:int = 0;
      
      public var mbUseAlternate:Boolean = false;
      
      private var _SafeStr_1009:Vector.<Object>;
      
      public var _SafeStr_1128:Boolean = false;
      
      public function _SafeCls_39(param1:int)
      {
         super();
         this._SafeStr_768 = param1;
         this._SafeStr_3067();
         this._SafeStr_196 = new Array();
         this._SafeStr_209 = -1;
         this._SafeStr_1503 = new Array();
         this._SafeStr_870 = new Array();
         this._SafeStr_948 = new Vector.<String>(this._SafeStr_768 + 1);
         this._SafeStr_948[0] = "";
         this._SafeStr_1009 = new Vector.<Object>();
      }
      
      public function _SafeStr_169(param1:int, param2:int = -1) : int
      {
         var _loc3_:int = this._SafeStr_209;
         if(param2 != -1)
         {
            _loc3_ = param2;
         }
         var _loc4_:Array = this._SafeStr_196[_loc3_]["map"];
         var _loc5_:Array = this._SafeStr_196[_loc3_]["map2"];
         var _loc6_:uint = uint(_loc4_[param1]);
         if(!_loc6_)
         {
            _loc6_ = _loc5_ ? uint(_loc5_[param1]) : _loc6_;
         }
         return _loc6_;
      }
      
      public function FetchKeyFromCommand(param1:int, param2:Boolean = false, param3:Boolean = false) : String
      {
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         if(param2)
         {
            if(!param3)
            {
               _loc4_ = this._SafeStr_263["map"];
            }
            else
            {
               _loc4_ = this._SafeStr_263["map2"];
            }
            _loc5_ = this._SafeStr_263["exceptions"];
         }
         else
         {
            if(!param3)
            {
               _loc4_ = this._SafeStr_196[this._SafeStr_209]["map"];
            }
            else
            {
               _loc4_ = this._SafeStr_196[this._SafeStr_209]["map2"];
            }
            _loc5_ = this._SafeStr_196[this._SafeStr_209]["exceptions"];
         }
         if(param1 == 255)
         {
            return "---";
         }
         if(param1 > 0 && param1 <= this._SafeStr_768)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc4_.length)
            {
               if(_loc5_.indexOf(_loc6_) <= -1)
               {
                  if(this._SafeStr_870.indexOf(_loc6_) <= -1)
                  {
                     if(_loc4_[_loc6_] == param1)
                     {
                        return this.GetReadableKey(_loc6_);
                     }
                  }
               }
               _loc6_++;
            }
         }
         return "---";
      }
      
      public function FetchIntKeyFromCommand(param1:int, param2:Boolean = false, param3:Boolean = false) : int
      {
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         if(param2)
         {
            if(!param3)
            {
               _loc4_ = this._SafeStr_263["map"];
            }
            else
            {
               _loc4_ = this._SafeStr_263["map2"];
            }
            _loc5_ = this._SafeStr_263["exceptions"];
         }
         else
         {
            if(!param3)
            {
               _loc4_ = this._SafeStr_196[this._SafeStr_209]["map"];
            }
            else
            {
               _loc4_ = this._SafeStr_196[this._SafeStr_209]["map2"];
            }
            _loc5_ = this._SafeStr_196[this._SafeStr_209]["exceptions"];
         }
         if(param1 > 0 && param1 <= this._SafeStr_768)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc4_.length)
            {
               if(_loc5_.indexOf(_loc6_) <= -1)
               {
                  if(_loc4_[_loc6_] == param1)
                  {
                     return _loc6_;
                  }
               }
               _loc6_++;
            }
         }
         return UNBOUNDKEY;
      }
      
      public function IsValidKey(param1:int) : Boolean
      {
         if(this._SafeStr_1503.indexOf(param1) > -1)
         {
            return false;
         }
         return true;
      }
      
      public function SetKeys(param1:int, param2:int, param3:Boolean = true, param4:Boolean = false, param5:Boolean = false) : int
      {
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         if(param4)
         {
            _loc6_ = this._SafeStr_263["map"];
         }
         else
         {
            _loc6_ = this._SafeStr_196[this._SafeStr_209]["map"];
         }
         if(!_loc6_)
         {
            return _loc7_;
         }
         if(!param3)
         {
            this._SafeStr_2737(param2);
         }
         if(param5)
         {
            this._SafeStr_870[param1] = param2;
         }
         var _loc8_:uint = 0;
         while(_loc8_ < this._SafeStr_870.length)
         {
            if(this._SafeStr_870[_loc8_] == param2 && param1 != _loc8_)
            {
               delete this._SafeStr_870[_loc8_];
            }
            _loc8_++;
         }
         if(!(this._SafeStr_196[this._SafeStr_209]["flags"] & _SafeStr_1211))
         {
            _loc7_ = this._SafeStr_3561(param1,param4);
         }
         _loc6_[param2] = param1;
         return _loc7_;
      }
      
      public function SetKeysAlt(param1:int, param2:int, param3:Boolean = true, param4:Boolean = false) : int
      {
         var _loc5_:Array = null;
         if(param4)
         {
            _loc5_ = this._SafeStr_263["map2"];
         }
         else
         {
            _loc5_ = this._SafeStr_196[this._SafeStr_209]["map2"];
         }
         if(!_loc5_)
         {
            return 0;
         }
         if(!param3)
         {
            this._SafeStr_2737(param2);
         }
         if(!(this._SafeStr_196[this._SafeStr_209]["flags"] & _SafeStr_1211))
         {
            var _loc6_:int = this._SafeStr_3488(param1,param4);
         }
         _loc5_[param2] = param1;
         return 0;
      }
      
      private function _SafeStr_3561(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         if(param1 == _SafeCls_39.UNBOUNDKEY)
         {
            return 0;
         }
         if(param2)
         {
            _loc3_ = this._SafeStr_263["map"];
            _loc4_ = this._SafeStr_263["exceptions"];
         }
         else
         {
            _loc3_ = this._SafeStr_196[this._SafeStr_209]["map"];
            _loc4_ = this._SafeStr_196[this._SafeStr_209]["exceptions"];
         }
         for(_loc5_ in _loc3_)
         {
            if(_loc4_.indexOf(int(_loc5_)) <= -1)
            {
               if(this._SafeStr_870.indexOf(int(_loc5_)) <= -1)
               {
                  if(param1 == _loc3_[_loc5_])
                  {
                     if(this._SafeStr_1081[_loc5_] == param1)
                     {
                        delete _loc3_[_loc5_];
                        return 0;
                     }
                     _loc3_[_loc5_] = 255;
                     return int(_loc5_);
                  }
               }
            }
         }
         return 0;
      }
      
      private function _SafeStr_3488(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         if(param1 == _SafeCls_39.UNBOUNDKEY)
         {
            return 0;
         }
         if(param2)
         {
            _loc3_ = this._SafeStr_263["map2"];
            _loc4_ = this._SafeStr_263["exceptions"];
         }
         else
         {
            _loc3_ = this._SafeStr_196[this._SafeStr_209]["map2"];
            _loc4_ = this._SafeStr_196[this._SafeStr_209]["exceptions"];
         }
         for(_loc5_ in _loc3_)
         {
            if(_loc4_.indexOf(int(_loc5_)) <= -1)
            {
               if(param1 == _loc3_[_loc5_])
               {
                  if(this.mDefault2[_loc5_] == param1)
                  {
                     delete _loc3_[_loc5_];
                     return 0;
                  }
                  _loc3_[_loc5_] = 255;
                  return int(_loc5_);
               }
            }
         }
         return 0;
      }
      
      public function RemoveKeyBindForMap(param1:uint, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Array = null;
         if(param1 == UNBOUNDKEY)
         {
            return;
         }
         if(param2)
         {
            if(!param3)
            {
               _loc4_ = this._SafeStr_263["map"];
            }
            else
            {
               _loc4_ = this._SafeStr_263["map2"];
            }
         }
         else if(!param3)
         {
            _loc4_ = this._SafeStr_196[this._SafeStr_209]["map"];
         }
         else
         {
            _loc4_ = this._SafeStr_196[this._SafeStr_209]["map2"];
         }
         if(_loc4_)
         {
            delete _loc4_[param1];
         }
      }
      
      private function _SafeStr_2737(param1:int) : void
      {
         var _loc2_:Array = this._SafeStr_196[this._SafeStr_209]["exceptions"];
         _loc2_.push(param1);
         this._SafeStr_1503.push(param1);
      }
      
      public function _SafeStr_1630(param1:int) : void
      {
         this._SafeStr_1503.push(param1);
      }
      
      public function _SafeStr_2254(param1:uint = 0) : int
      {
         ++this._SafeStr_209;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:Array = new Array();
         var _loc4_:Array = new Array();
         _loc2_["map"] = _loc3_;
         _loc2_["exceptions"] = _loc4_;
         _loc2_["flags"] = param1;
         this._SafeStr_196.push(_loc2_);
         return this._SafeStr_209;
      }
      
      public function SetContext(param1:int) : void
      {
         if(this._SafeStr_209 >= 0 && this._SafeStr_209 < this._SafeStr_196.length)
         {
            this._SafeStr_209 = param1;
         }
      }
      
      public function _SafeStr_3066(param1:int) : void
      {
         this._SafeStr_958 = param1;
         this._SafeStr_1081 = this._SafeStr_196[this._SafeStr_958]["map"].slice();
         if(this._SafeStr_196[this._SafeStr_958]["map2"])
         {
            this.mDefault2 = this._SafeStr_196[this._SafeStr_958]["map2"].slice();
         }
         this._SafeStr_1128 = true;
      }
      
      public function _SafeStr_3705() : Vector.<Object>
      {
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         this._SafeStr_1128 = true;
         var _loc1_:Array = this._SafeStr_196[this._SafeStr_958]["map"];
         var _loc2_:Array = this._SafeStr_196[this._SafeStr_958]["exceptions"];
         var _loc3_:Vector.<int> = new Vector.<int>(this._SafeStr_768 + 1);
         var _loc4_:Vector.<Boolean> = new Vector.<Boolean>(this._SafeStr_768 + 1);
         _loc6_ = 1;
         while(_loc6_ < _loc4_.length)
         {
            _loc4_[_loc6_] = false;
            _loc6_++;
         }
         for(_loc5_ in _loc1_)
         {
            if(int(_loc5_) != 255)
            {
               if(_loc1_[int(_loc5_)] <= this._SafeStr_768 + 1)
               {
                  if(_loc1_[int(_loc5_)] != undefined)
                  {
                     if(_loc2_.indexOf(int(_loc5_)) <= -1)
                     {
                        _loc7_ = int(_loc1_[int(_loc5_)]);
                        if(_loc7_ < _loc4_.length)
                        {
                           _loc4_[_loc7_] = true;
                        }
                        if(_loc7_ != this._SafeStr_1081[int(_loc5_)])
                        {
                           _loc3_[_loc7_] = int(_loc5_);
                        }
                     }
                  }
               }
            }
         }
         _loc6_ = 1;
         while(_loc6_ < _loc3_.length)
         {
            if(_loc3_[_loc6_] != 0)
            {
               _loc8_ = new Object();
               _loc8_["exists"] = true;
               _loc8_["key"] = _loc3_[_loc6_];
               this._SafeStr_1009.push(_loc8_);
               this._SafeStr_1128 = false;
            }
            else if(!_loc4_[_loc6_] && this._SafeStr_1081.indexOf(_loc6_) > -1)
            {
               this._SafeStr_1128 = false;
               _loc8_ = new Object();
               _loc8_["exists"] = true;
               _loc8_["key"] = _SafeCls_39.UNBOUNDKEY;
               this._SafeStr_1009.push(_loc8_);
               this._SafeStr_1128 = false;
            }
            else
            {
               _loc8_ = new Object();
               _loc8_["exists"] = false;
               this._SafeStr_1009.push(_loc8_);
            }
            _loc6_++;
         }
         return this._SafeStr_1009;
      }
      
      public function _SafeStr_3666() : void
      {
         this._SafeStr_1009.length = 0;
      }
      
      public function _SafeStr_516(param1:String, param2:int) : void
      {
         if(param2 < this._SafeStr_948.length)
         {
            this._SafeStr_948[param2] = param1;
         }
      }
      
      public function GetReadableCommands(param1:int) : String
      {
         if(param1 < this._SafeStr_948.length)
         {
            return this._SafeStr_948[param1];
         }
         return "";
      }
      
      public function GetReadableKey(param1:int) : String
      {
         if(param1 < this._SafeStr_131.length)
         {
            return this._SafeStr_131[param1];
         }
         return "";
      }
      
      private function _SafeStr_3067() : void
      {
         this._SafeStr_131 = new Vector.<String>(256);
         this._SafeStr_131[Keyboard.LEFT] = "[LEFT]";
         this._SafeStr_131[Keyboard.RIGHT] = "[RIGHT]";
         this._SafeStr_131[Keyboard.UP] = "[UP]";
         this._SafeStr_131[Keyboard.DOWN] = "[DOWN]";
         this._SafeStr_131[Keyboard.SPACE] = "[SPACE]";
         this._SafeStr_131[Keyboard.A] = "A";
         this._SafeStr_131[Keyboard.B] = "B";
         this._SafeStr_131[Keyboard.C] = "C";
         this._SafeStr_131[Keyboard.D] = "D";
         this._SafeStr_131[Keyboard.E] = "E";
         this._SafeStr_131[Keyboard.F] = "F";
         this._SafeStr_131[Keyboard.G] = "G";
         this._SafeStr_131[Keyboard.H] = "H";
         this._SafeStr_131[Keyboard.I] = "I";
         this._SafeStr_131[Keyboard.J] = "J";
         this._SafeStr_131[Keyboard.K] = "K";
         this._SafeStr_131[Keyboard.L] = "L";
         this._SafeStr_131[Keyboard.M] = "M";
         this._SafeStr_131[Keyboard.N] = "N";
         this._SafeStr_131[Keyboard.O] = "O";
         this._SafeStr_131[Keyboard.P] = "P";
         this._SafeStr_131[Keyboard.Q] = "Q";
         this._SafeStr_131[Keyboard.R] = "R";
         this._SafeStr_131[Keyboard.S] = "S";
         this._SafeStr_131[Keyboard.T] = "T";
         this._SafeStr_131[Keyboard.U] = "U";
         this._SafeStr_131[Keyboard.V] = "V";
         this._SafeStr_131[Keyboard.W] = "W";
         this._SafeStr_131[Keyboard.X] = "X";
         this._SafeStr_131[Keyboard.Y] = "Y";
         this._SafeStr_131[Keyboard.Z] = "Z";
         this._SafeStr_131[Keyboard.NUMBER_0] = "0";
         this._SafeStr_131[Keyboard.NUMBER_1] = "1";
         this._SafeStr_131[Keyboard.NUMBER_2] = "2";
         this._SafeStr_131[Keyboard.NUMBER_3] = "3";
         this._SafeStr_131[Keyboard.NUMBER_4] = "4";
         this._SafeStr_131[Keyboard.NUMBER_5] = "5";
         this._SafeStr_131[Keyboard.NUMBER_6] = "6";
         this._SafeStr_131[Keyboard.NUMBER_7] = "7";
         this._SafeStr_131[Keyboard.NUMBER_8] = "8";
         this._SafeStr_131[Keyboard.NUMBER_9] = "9";
         this._SafeStr_131[Keyboard.BACKSPACE] = "[Backspace]";
         this._SafeStr_131[Keyboard.TAB] = "[Tab]";
         this._SafeStr_131[Keyboard.SEMICOLON] = ";";
         this._SafeStr_131[Keyboard.EQUAL] = "=";
         this._SafeStr_131[Keyboard.COMMA] = ",";
         this._SafeStr_131[Keyboard.MINUS] = "-";
         this._SafeStr_131[Keyboard.PERIOD] = ".";
         this._SafeStr_131[Keyboard.BACKQUOTE] = "`";
         this._SafeStr_131[Keyboard.LEFTBRACKET] = "[";
         this._SafeStr_131[Keyboard.RIGHTBRACKET] = "]";
         this._SafeStr_131[Keyboard.QUOTE] = "\'";
         this._SafeStr_131[Keyboard.NUMPAD_0] = "NUM_0";
         this._SafeStr_131[Keyboard.NUMPAD_1] = "NUM_1";
         this._SafeStr_131[Keyboard.NUMPAD_2] = "NUM_2";
         this._SafeStr_131[Keyboard.NUMPAD_3] = "NUM_3";
         this._SafeStr_131[Keyboard.NUMPAD_4] = "NUM_4";
         this._SafeStr_131[Keyboard.NUMPAD_5] = "NUM_5";
         this._SafeStr_131[Keyboard.NUMPAD_6] = "NUM_6";
         this._SafeStr_131[Keyboard.NUMPAD_7] = "NUM_7";
         this._SafeStr_131[Keyboard.NUMPAD_8] = "NUM_8";
         this._SafeStr_131[Keyboard.NUMPAD_9] = "NUM_9";
         this._SafeStr_131[Keyboard.NUMPAD_MULTIPLY] = "*";
         this._SafeStr_131[Keyboard.NUMPAD_ADD] = "+";
         this._SafeStr_131[Keyboard.NUMPAD_SUBTRACT] = "-";
         this._SafeStr_131[Keyboard.NUMPAD_DECIMAL] = ".";
         this._SafeStr_131[Keyboard.NUMPAD_DIVIDE] = "/";
         this._SafeStr_131[Keyboard.PAGE_UP] = "[Page Up]";
         this._SafeStr_131[Keyboard.PAGE_DOWN] = "[Page Down]";
         this._SafeStr_131[Keyboard.END] = "[End]";
         this._SafeStr_131[Keyboard.HOME] = "[Home]";
         this._SafeStr_131[Keyboard.INSERT] = "[Insert]";
         this._SafeStr_131[Keyboard.DELETE] = "[Delete]";
         this._SafeStr_131[144] = "[Num Lock]";
         this._SafeStr_131[145] = "[Scroll Lock]";
         this._SafeStr_131[19] = "[Pause]";
         this._SafeStr_131[Keyboard.F1] = "F1";
         this._SafeStr_131[Keyboard.F2] = "F2";
         this._SafeStr_131[Keyboard.F3] = "F3";
         this._SafeStr_131[Keyboard.F4] = "F4";
         this._SafeStr_131[Keyboard.F5] = "F5";
         this._SafeStr_131[Keyboard.F6] = "F6";
         this._SafeStr_131[Keyboard.F7] = "F7";
         this._SafeStr_131[Keyboard.F8] = "F8";
         this._SafeStr_131[Keyboard.F9] = "F9";
         this._SafeStr_131[Keyboard.F10] = "F10";
         this._SafeStr_131[Keyboard.F11] = "F11";
         this._SafeStr_131[Keyboard.F12] = "F12";
         this._SafeStr_131[Keyboard.F13] = "F13";
         this._SafeStr_131[Keyboard.F14] = "F14";
         this._SafeStr_131[Keyboard.F15] = "F15";
         this._SafeStr_131[126] = "F16";
         this._SafeStr_131[255] = "---";
         this._SafeStr_131[Keyboard.SHIFT] = "[SHIFT]";
         this._SafeStr_131[Keyboard.ALTERNATE] = "[ALT]";
         this._SafeStr_131[Keyboard.CONTROL] = "[CTRL]";
         this._SafeStr_131[Keyboard.CAPS_LOCK] = "[Caps Lock]";
         this._SafeStr_131[Keyboard.SLASH] = "/";
         this._SafeStr_131[Keyboard.BACKSLASH] = "\\";
      }
      
      public function WriteIntoBuffer() : void
      {
         var _loc4_:Array = null;
         var _loc1_:Dictionary = new Dictionary();
         var _loc2_:Array = this._SafeStr_196[this._SafeStr_209]["map"].slice();
         var _loc3_:Array = this._SafeStr_196[this._SafeStr_209]["exceptions"].slice();
         if(this._SafeStr_196[this._SafeStr_209]["map2"])
         {
            _loc4_ = this._SafeStr_196[this._SafeStr_209]["map2"].slice();
            _loc1_["map2"] = _loc4_;
         }
         _loc1_["map"] = _loc2_;
         _loc1_["exceptions"] = _loc3_;
         this._SafeStr_263 = _loc1_;
      }
      
      public function saveBufferIntoReal() : void
      {
         this._SafeStr_196[this._SafeStr_209] = this._SafeStr_263;
      }
      
      public function ClearBuffer() : void
      {
         this._SafeStr_263 = null;
      }
      
      public function WriteDefaultsIntoBuffer() : void
      {
         this._SafeStr_263["map"] = this._SafeStr_1081.slice();
         if(this.mDefault2)
         {
            this._SafeStr_263["map2"] = this.mDefault2.slice();
         }
         this._SafeStr_263["exceptions"] = this._SafeStr_196[this._SafeStr_209]["exceptions"].slice();
      }
      
      public function _SafeStr_3592(param1:uint, param2:int = -1) : uint
      {
         var _loc3_:uint = uint(this._SafeStr_169(param1));
         if(param1 == Keyboard.NUMPAD_0 && this._SafeStr_169(Keyboard.NUMBER_0,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMBER_0,param2));
         }
         if(param1 == Keyboard.NUMPAD_1 && this._SafeStr_169(Keyboard.NUMBER_1,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMBER_1,param2));
         }
         if(param1 == Keyboard.NUMPAD_2 && this._SafeStr_169(Keyboard.NUMBER_2,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMBER_2,param2));
         }
         if(param1 == Keyboard.NUMPAD_3 && this._SafeStr_169(Keyboard.NUMBER_3,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMBER_3,param2));
         }
         if(param1 == Keyboard.NUMPAD_4 && this._SafeStr_169(Keyboard.NUMBER_4,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMBER_4,param2));
         }
         if(param1 == Keyboard.NUMPAD_5 && this._SafeStr_169(Keyboard.NUMBER_5,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMBER_5,param2));
         }
         if(param1 == Keyboard.NUMPAD_6 && this._SafeStr_169(Keyboard.NUMBER_6,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMBER_6,param2));
         }
         if(param1 == Keyboard.NUMPAD_7 && this._SafeStr_169(Keyboard.NUMBER_7,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMBER_7,param2));
         }
         if(param1 == Keyboard.NUMPAD_8 && this._SafeStr_169(Keyboard.NUMBER_8,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMBER_8,param2));
         }
         if(param1 == Keyboard.NUMPAD_9 && this._SafeStr_169(Keyboard.NUMBER_9,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMBER_9,param2));
         }
         if(param1 == Keyboard.NUMBER_0 && this._SafeStr_169(Keyboard.NUMPAD_0,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMPAD_0,param2));
         }
         if(param1 == Keyboard.NUMBER_1 && this._SafeStr_169(Keyboard.NUMPAD_1,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMPAD_1,param2));
         }
         if(param1 == Keyboard.NUMBER_2 && this._SafeStr_169(Keyboard.NUMPAD_2,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMPAD_2,param2));
         }
         if(param1 == Keyboard.NUMBER_3 && this._SafeStr_169(Keyboard.NUMPAD_3,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMPAD_3,param2));
         }
         if(param1 == Keyboard.NUMBER_4 && this._SafeStr_169(Keyboard.NUMPAD_4,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMPAD_4,param2));
         }
         if(param1 == Keyboard.NUMBER_5 && this._SafeStr_169(Keyboard.NUMPAD_5,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMPAD_5,param2));
         }
         if(param1 == Keyboard.NUMBER_6 && this._SafeStr_169(Keyboard.NUMPAD_6,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMPAD_6,param2));
         }
         if(param1 == Keyboard.NUMBER_7 && this._SafeStr_169(Keyboard.NUMPAD_7,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMPAD_7,param2));
         }
         if(param1 == Keyboard.NUMBER_8 && this._SafeStr_169(Keyboard.NUMPAD_8,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMPAD_8,param2));
         }
         if(param1 == Keyboard.NUMBER_9 && this._SafeStr_169(Keyboard.NUMPAD_9,param2) && (!_loc3_ || _loc3_ == 255))
         {
            _loc3_ = uint(this._SafeStr_169(Keyboard.NUMPAD_9,param2));
         }
         return _loc3_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_39 = "_-wD"
 * @identifier _SafeStr_131 = "_-Mr"
 * @identifier _SafeStr_169 = "_-We"
 * @identifier _SafeStr_196 = "_-qn"
 * @identifier _SafeStr_209 = "_-Lp"
 * @identifier _SafeStr_263 = "_-6H"
 * @identifier _SafeStr_516 = "_-lF"
 * @identifier _SafeStr_768 = "_-Ax"
 * @identifier _SafeStr_870 = "_-lR"
 * @identifier _SafeStr_948 = "_-qT"
 * @identifier _SafeStr_958 = "_-Gb"
 * @identifier _SafeStr_1009 = "_-6s"
 * @identifier _SafeStr_1081 = "_-Nr"
 * @identifier _SafeStr_1128 = "_-op"
 * @identifier _SafeStr_1211 = "_-2t"
 * @identifier _SafeStr_1340 = "_-NF"
 * @identifier _SafeStr_1503 = "_-aA"
 * @identifier _SafeStr_1630 = "_-Ex"
 * @identifier _SafeStr_2254 = "_-Y8"
 * @identifier _SafeStr_2737 = "_-Qx"
 * @identifier _SafeStr_3066 = "_-FI"
 * @identifier _SafeStr_3067 = "_-oi"
 * @identifier _SafeStr_3488 = "_-hI"
 * @identifier _SafeStr_3561 = "_-P1"
 * @identifier _SafeStr_3592 = "_-BB"
 * @identifier _SafeStr_3666 = "_-dR"
 * @identifier _SafeStr_3705 = "_-bf"
 */
