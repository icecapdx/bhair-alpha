package
{
   import flash.display.*;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   
   public class _SafeCls_110
   {
      
      private static const _SafeStr_2709:uint = 100;
      
      private static var _SafeStr_1007:int = 1;
      
      private static const _SafeStr_816:uint = 10;
      
      private static const _SafeStr_1077:Number = 1 / _SafeStr_816;
      
      private static const _SafeStr_1666:uint = 4;
      
      private static const _SafeStr_1422:uint = 10;
      
      private static const _SafeStr_1927:Number = 125;
      
      private static var _SafeStr_432:Point = new Point();
      
      private static var _SafeStr_360:Point = new Point();
      
      private static var _SafeStr_1209:Point = new Point();
      
      private static var _SafeStr_772:Point = new Point();
      
      private static var _SafeStr_818:Point = new Point();
      
      public function _SafeCls_110()
      {
         super();
      }
      
      public static function _SafeStr_1991(param1:Sprite, param2:Sprite, param3:Dictionary, param4:_SafeCls_86, param5:Dictionary, param6:Boolean, param7:_SafeCls_0) : void
      {
         var _loc9_:DisplayObject = null;
         var _loc8_:Vector.<IGraphicsData> = param1.graphics.readGraphicsData(false);
         if(_loc8_.length)
         {
            _SafeCls_22._SafeStr_135("THIS SPRITE HAS A NONEMPTY GRAPHICS OBJECT. I WAS NOT EXPECTING THAT");
         }
         var _loc10_:int = 0;
         while(_loc10_ < param1.numChildren)
         {
            _loc9_ = param1.getChildAt(_loc10_);
            if(_loc9_ is Shape)
            {
               _SafeStr_2502(_loc9_ as Shape,param1,param2,param3,param4,param5,param6,param7);
            }
            else if(_loc9_ is Sprite)
            {
               _SafeStr_1991(_loc9_ as Sprite,param2,param3,param4,param5,param6,param7);
            }
            _loc10_++;
         }
      }
      
      public static function _SafeStr_2502(param1:Shape, param2:Sprite, param3:Sprite, param4:Dictionary, param5:_SafeCls_86, param6:Dictionary, param7:Boolean, param8:_SafeCls_0) : void
      {
         var _loc9_:GraphicsPath = null;
         var _loc18_:IGraphicsData = null;
         var _loc19_:int = 0;
         var _loc20_:GraphicsStroke = null;
         var _loc21_:GraphicsSolidFill = null;
         var _loc10_:uint = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:uint = 0;
         var _loc14_:* = 0;
         var _loc15_:Boolean = false;
         var _loc16_:Vector.<IGraphicsData> = param1.graphics.readGraphicsData(false);
         var _loc17_:int = int(_loc16_.length);
         ++_SafeStr_1007;
         _loc11_ = 0;
         while(_loc11_ < _loc17_)
         {
            _loc18_ = _loc16_[_loc11_] as IGraphicsData;
            if(_loc18_ is GraphicsPath)
            {
               _loc9_ = _loc18_ as GraphicsPath;
               _SafeStr_432.x = 0;
               _SafeStr_432.y = 0;
               _SafeStr_360.x = 0;
               _SafeStr_360.y = 0;
               _loc14_ = 0;
               _loc13_ = _loc9_.commands.length;
               _loc12_ = 0;
               while(_loc12_ < _loc13_)
               {
                  _loc19_ = _loc9_.commands[_loc12_];
                  if(_loc19_ == GraphicsPathCommand.CURVE_TO)
                  {
                     _SafeStr_1209.x = _loc9_.data[_loc14_++];
                     _SafeStr_1209.y = _loc9_.data[_loc14_++];
                     _SafeStr_360.x = _loc9_.data[_loc14_++];
                     _SafeStr_360.y = _loc9_.data[_loc14_++];
                     if(!_loc15_)
                     {
                        _SafeCls_22._SafeStr_135("ROOM " + getQualifiedClassName(param5._SafeStr_2179) + " No line color set in collision object?");
                     }
                     _SafeStr_1693(_SafeStr_432,_SafeStr_360,_SafeStr_1209,_loc10_,param2,param3,param4,param5,param6,param7,param8);
                     _SafeStr_432.x = _SafeStr_360.x;
                     _SafeStr_432.y = _SafeStr_360.y;
                  }
                  else if(_loc19_ == GraphicsPathCommand.MOVE_TO)
                  {
                     _SafeStr_432.x = _loc9_.data[_loc14_++];
                     _SafeStr_432.y = _loc9_.data[_loc14_++];
                  }
                  else if(_loc19_ == GraphicsPathCommand.LINE_TO)
                  {
                     _SafeStr_360.x = _loc9_.data[_loc14_++];
                     _SafeStr_360.y = _loc9_.data[_loc14_++];
                     if(!_loc15_)
                     {
                        _SafeCls_22._SafeStr_135("ROOM " + getQualifiedClassName(param5._SafeStr_2179) + " No line color set in collision object?");
                     }
                     _SafeStr_1693(_SafeStr_432,_SafeStr_360,null,_loc10_,param2,param3,param4,param5,param6,param7,param8);
                     _SafeStr_432.x = _SafeStr_360.x;
                     _SafeStr_432.y = _SafeStr_360.y;
                  }
                  else if(_loc19_ != GraphicsPathCommand.NO_OP)
                  {
                     _SafeCls_22._SafeStr_135("ROOM " + getQualifiedClassName(param5._SafeStr_2179) + " has a messed up collision object. Either it\'s not alone on the top layer, or its got garbage in it");
                  }
                  _loc12_++;
               }
            }
            else if(_loc18_ is GraphicsStroke)
            {
               _loc20_ = _loc18_ as GraphicsStroke;
               _loc21_ = _loc20_.fill as GraphicsSolidFill;
               if(_loc21_)
               {
                  _loc10_ = _loc21_.color;
                  _loc15_ = true;
               }
               if(!_loc21_ && Boolean(_loc20_.fill))
               {
                  _SafeCls_22._SafeStr_135("This is not a Graphics Solid Fill Strange");
               }
            }
            _loc11_++;
         }
      }
      
      private static function _SafeStr_1693(param1:Point, param2:Point, param3:Point, param4:uint, param5:Sprite, param6:Sprite, param7:Dictionary, param8:_SafeCls_86, param9:Dictionary, param10:Boolean, param11:_SafeCls_0) : void
      {
         var _loc13_:Point = null;
         var _loc14_:uint = 0;
         var _loc15_:Vector.<String> = null;
         var _loc16_:Vector.<String> = null;
         var _loc17_:int = 0;
         var _loc18_:String = null;
         var _loc19_:Array = null;
         var _loc20_:String = null;
         var _loc21_:String = null;
         var _loc22_:Array = null;
         var _loc23_:String = null;
         var _loc24_:uint = 0;
         var _loc25_:uint = 0;
         var _loc26_:String = null;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:uint = 0;
         var _loc30_:uint = 0;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc12_:uint = uint(_SafeCls_0._SafeStr_1416[param4]);
         param1 = param5.localToGlobal(param1);
         param2 = param5.localToGlobal(param2);
         if(param3)
         {
            param3 = param5.localToGlobal(param3);
         }
         if(param1.x > param2.x)
         {
            _loc13_ = param2;
            param2 = param1;
            param1 = _loc13_;
         }
         param1.x = Math.round(param1.x * _SafeStr_1077) * _SafeStr_816;
         param1.y = Math.round(param1.y * _SafeStr_1077) * _SafeStr_816;
         param2.x = Math.round(param2.x * _SafeStr_1077) * _SafeStr_816;
         param2.y = Math.round(param2.y * _SafeStr_1077) * _SafeStr_816;
         if(param1.x != param2.x || param1.y != param2.y)
         {
            _loc14_ = 0;
            _loc15_ = null;
            _loc16_ = null;
            _loc17_ = 0;
            _loc18_ = param5.name;
            if(!_loc18_.indexOf("am_") && _loc18_ != "am_CollisionObject" && _loc18_ != "am_CollisionLayer")
            {
               _loc19_ = _loc18_.split("$");
               for each(_loc20_ in _loc19_)
               {
                  if(_loc20_.indexOf("am_"))
                  {
                     _SafeCls_22._SafeStr_195("BadLineName Bad Convention: " + _loc20_ + " @ (" + Math.round(param1.x) + ", " + Math.round(param1.y) + ") - (" + Math.round(param2.x) + ", " + Math.round(param2.y) + ")");
                  }
                  else
                  {
                     _loc21_ = _loc20_.substr(3);
                     _loc22_ = _loc21_.split("_");
                     _loc23_ = _loc22_[0];
                     if(_loc23_ == "DynamicCollision")
                     {
                        if(!_loc16_)
                        {
                           _loc16_ = new Vector.<String>();
                        }
                        _loc16_.push(_loc20_);
                     }
                     else if(_loc23_ == "Water")
                     {
                        if(_loc22_[1] == "Blue")
                        {
                           _loc14_ |= _SafeCls_20._SafeStr_1887;
                        }
                        else
                        {
                           _loc14_ |= _SafeCls_20._SafeStr_2039;
                        }
                     }
                     else if(_loc23_ == "Ice")
                     {
                        _loc14_ |= _SafeCls_20._SafeStr_2316;
                     }
                     else if(_loc23_ == "Metal")
                     {
                        _loc14_ |= _SafeCls_20._SafeStr_1870;
                     }
                     else if(_loc23_ == "Wood")
                     {
                        _loc14_ |= _SafeCls_20._SafeStr_1952;
                     }
                     else if(_loc23_ == "Puddle")
                     {
                        _loc14_ |= _SafeCls_20._SafeStr_1863;
                     }
                     else if(_loc23_ == "RopeBridge")
                     {
                        _loc14_ |= _SafeCls_20._SafeStr_1924;
                     }
                     else if(_SafeCls_0._SafeStr_372[_loc23_])
                     {
                        if(!_loc15_)
                        {
                           _loc15_ = new Vector.<String>();
                        }
                        _loc15_.push(_loc21_);
                        if(_loc23_ == "Badge")
                        {
                           _loc24_ = 0.5 * (param1.x + param2.x);
                           _loc25_ = 0.5 * (param1.y + param2.y);
                           _loc26_ = _loc22_[1];
                           if(param9)
                           {
                              param9[_loc26_] = new Point(_loc24_,_loc25_);
                           }
                           else
                           {
                              _SafeCls_22._SafeStr_195("Badge Collision line, but this game doesn\'t support badges!: " + getQualifiedClassName(param6));
                           }
                        }
                     }
                     else if(_loc23_.indexOf("CameraZone") != -1)
                     {
                        _loc17_ = _SafeStr_1007;
                     }
                     else
                     {
                        _SafeCls_22._SafeStr_195("BadLineName NoSuch: " + getQualifiedClassName(param6) + " => (" + _loc20_ + ")");
                     }
                  }
               }
            }
            if(!param3)
            {
               _SafeStr_1811(param1,param2,_loc12_,_loc14_,_loc15_,param8,_loc17_,param11,_loc16_,param7,param10);
            }
            else
            {
               _loc27_ = Math.abs(param2.x - param3.x) + Math.abs(param1.x - param3.x);
               _loc28_ = Math.abs(param2.y - param3.y) + Math.abs(param1.y - param3.y);
               _loc29_ = Math.round((_loc27_ + _loc28_) / _SafeStr_1927);
               if(_loc29_ < _SafeStr_1666)
               {
                  _loc29_ = _SafeStr_1666;
               }
               else if(_loc29_ > _SafeStr_1422)
               {
                  _loc29_ = _SafeStr_1422;
               }
               _SafeStr_772.x = param1.x;
               _SafeStr_772.y = param1.y;
               _loc30_ = 1;
               while(_loc30_ <= _loc29_)
               {
                  _loc31_ = _loc30_ / _loc29_;
                  _loc32_ = 1 - _loc31_;
                  _loc33_ = (param3.x - param1.x) * _loc31_;
                  _loc34_ = (param3.x - param2.x) * _loc32_;
                  _SafeStr_818.x = (param1.x + _loc33_) * _loc32_ + (param2.x + _loc34_) * _loc31_;
                  _loc35_ = (param3.y - param1.y) * _loc31_;
                  _loc36_ = (param3.y - param2.y) * _loc32_;
                  _SafeStr_818.y = (param1.y + _loc35_) * _loc32_ + (param2.y + _loc36_) * _loc31_;
                  _SafeStr_1811(_SafeStr_772,_SafeStr_818,_loc12_,_loc14_,_loc15_,param8,_loc17_,param11,_loc16_,param7,param10);
                  _SafeStr_772.x = _SafeStr_818.x;
                  _SafeStr_772.y = _SafeStr_818.y;
                  _loc30_++;
               }
            }
         }
      }
      
      private static function _SafeStr_1811(param1:Point, param2:Point, param3:uint, param4:uint, param5:Vector.<String>, param6:_SafeCls_86, param7:int, param8:_SafeCls_0, param9:Vector.<String>, param10:Dictionary, param11:Boolean) : void
      {
         var _loc13_:String = null;
         var _loc14_:Array = null;
         var _loc12_:_SafeCls_20 = new _SafeCls_20(param1,param2,param3,param4,param5,param6,param7);
         if(Boolean(param9) && param11)
         {
            param8._SafeStr_3232(_loc12_);
         }
         else
         {
            param8._SafeStr_3155(_loc12_);
         }
         if(param9)
         {
            for each(_loc13_ in param9)
            {
               _loc14_ = param10[_loc13_];
               if(!_loc14_)
               {
                  _loc14_ = param10[_loc13_] = new Array();
               }
               _loc14_.push(_loc12_);
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_20 = "_-9f"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_86 = "_-k1"
 * @identifier _SafeCls_110 = "_-EN"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_195 = "_-70"
 * @identifier _SafeStr_360 = "_-ZC"
 * @identifier _SafeStr_372 = "_-m7"
 * @identifier _SafeStr_432 = "_-Ws"
 * @identifier _SafeStr_772 = "for"
 * @identifier _SafeStr_816 = "_-E6"
 * @identifier _SafeStr_818 = "_-CC"
 * @identifier _SafeStr_1007 = "_-kM"
 * @identifier _SafeStr_1077 = "_-4M"
 * @identifier _SafeStr_1209 = "_-2n"
 * @identifier _SafeStr_1416 = "_-L1"
 * @identifier _SafeStr_1422 = "_-TT"
 * @identifier _SafeStr_1666 = "_-E"
 * @identifier _SafeStr_1693 = "_-5j"
 * @identifier _SafeStr_1811 = "_-fJ"
 * @identifier _SafeStr_1863 = "_-jh"
 * @identifier _SafeStr_1870 = "_-S8"
 * @identifier _SafeStr_1887 = "_-eN"
 * @identifier _SafeStr_1924 = "_-FH"
 * @identifier _SafeStr_1927 = "_-b2"
 * @identifier _SafeStr_1952 = "_-tR"
 * @identifier _SafeStr_1991 = "_-8i"
 * @identifier _SafeStr_2039 = "_-F9"
 * @identifier _SafeStr_2179 = "_-Kc"
 * @identifier _SafeStr_2316 = "_-fW"
 * @identifier _SafeStr_2502 = "_-TU"
 * @identifier _SafeStr_2709 = "_-hQ"
 * @identifier _SafeStr_3155 = "_-N3"
 * @identifier _SafeStr_3232 = "_-0R"
 */
