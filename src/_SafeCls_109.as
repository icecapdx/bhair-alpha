package
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class _SafeCls_109
   {
      
      public var _SafeStr_118:Game;
      
      public var _SafeStr_359:Array;
      
      public var mGroundLine:Number = 0;
      
      public var mPanicLine:Number = 0;
      
      public function _SafeCls_109(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_359 = new Array();
      }
      
      public function _SafeStr_3627() : void
      {
         var _loc1_:_SafeCls_112 = null;
         for each(_loc1_ in this._SafeStr_359)
         {
            _loc1_._SafeStr_3017();
         }
         this._SafeStr_359 = null;
      }
      
      public function _SafeStr_3385(param1:Sprite) : void
      {
         var _loc2_:DisplayObject = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:uint = uint(param1.numChildren);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = param1.getChildAt(_loc4_);
            if(!_loc2_.name.indexOf("am_Nav"))
            {
               this._SafeStr_3398(_loc2_.name,_loc2_.x + param1.x,_loc2_.y + param1.y);
            }
            _loc4_++;
         }
      }
      
      public function _SafeStr_3398(param1:String, param2:int, param3:int) : void
      {
         var _loc6_:uint = 0;
         var _loc4_:Array = param1.substring(6).split("_");
         var _loc5_:String = _loc4_[0];
         var _loc7_:uint = _SafeCls_112._SafeStr_1120;
         var _loc8_:int = int(_loc4_.length);
         switch(_loc5_.charAt(0))
         {
            case "W":
               _loc7_ = _SafeCls_112._SafeStr_482;
               _loc6_ = uint(_loc5_.substr(1));
               break;
            case "L":
               _loc7_ = _SafeCls_112._SafeStr_1317;
               _loc6_ = uint(_loc5_.substr(1));
               break;
            case "A":
               _loc7_ = _SafeCls_112._SafeStr_1681;
               _loc6_ = uint(_loc5_.substr(1));
               break;
            default:
               _loc6_ = uint(_loc5_);
         }
         var _loc9_:_SafeCls_112 = new _SafeCls_112(_loc6_,param2,param3,_loc7_);
         this._SafeStr_359[_loc6_] = _loc9_;
         if((_loc7_ == _SafeCls_112._SafeStr_1120 || _loc7_ == _SafeCls_112._SafeStr_1317) && _loc9_.mPosY > this.mGroundLine)
         {
            this.mGroundLine = _loc9_.mPosY;
         }
         if((_loc7_ == _SafeCls_112._SafeStr_1681 || _loc7_ == _SafeCls_112._SafeStr_482) && _loc9_.mPosY > this.mPanicLine)
         {
            this.mPanicLine = _loc9_.mPosY;
         }
         var _loc10_:int = 1;
         while(_loc10_ < _loc8_)
         {
            this._SafeStr_3523(_loc9_,_loc4_[_loc10_]);
            _loc10_++;
         }
      }
      
      public function _SafeStr_3523(param1:_SafeCls_112, param2:String) : void
      {
         var _loc9_:String = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:uint = uint(param2.length);
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            _loc9_ = param2.charAt(_loc8_);
            if(int(_loc9_))
            {
               var _loc3_:uint = uint(param2.substr(_loc8_));
               break;
            }
            if(_loc9_ == "A")
            {
               _loc4_ = true;
            }
            else if(_loc9_ == "D")
            {
               _loc5_ = true;
            }
            else if(_loc9_ == "L")
            {
               _loc6_ = true;
            }
            _loc8_++;
         }
         param1._SafeStr_3291(0,_loc4_,_loc5_,_loc6_);
      }
      
      public function GetNextNode(param1:_SafeCls_112, param2:_SafeCls_112, param3:Vector.<_SafeCls_112>) : _SafeCls_112
      {
         var _loc4_:_SafeCls_112 = null;
         var _loc6_:uint = 0;
         var _loc7_:_SafeCls_112 = null;
         var _loc8_:int = 0;
         if(!param1)
         {
            return null;
         }
         var _loc5_:int = 1215752191;
         for each(_loc6_ in param1._SafeStr_1001)
         {
            _loc7_ = this._SafeStr_359[_loc6_ & _SafeCls_112._SafeStr_1111];
            _loc8_ = this._SafeStr_2975(0,param3.slice(),_loc7_,param2);
            if(_loc8_ >= 0 && _loc8_ < _loc5_)
            {
               _loc5_ = _loc8_;
               _loc4_ = _loc7_;
            }
         }
         if(_loc4_ == param1)
         {
            _loc4_ = param2;
         }
         return _loc4_;
      }
      
      public function _SafeStr_2656(param1:_SafeCls_112, param2:_SafeCls_112) : Vector.<_SafeCls_112>
      {
         var _loc4_:_SafeCls_112 = null;
         var _loc5_:_SafeCls_112 = null;
         var _loc10_:uint = 0;
         var _loc3_:Vector.<_SafeCls_112> = new Vector.<_SafeCls_112>();
         _loc3_.push(param1);
         if(param1 == param2)
         {
            return _loc3_;
         }
         var _loc6_:Boolean = false;
         var _loc7_:Vector.<_SafeCls_112> = new Vector.<_SafeCls_112>();
         var _loc8_:Vector.<_SafeCls_112> = new Vector.<_SafeCls_112>();
         _loc7_.push(param1);
         param1._SafeStr_1806 = 0;
         var _loc9_:int = 0;
         while(_loc9_ < _loc3_.length)
         {
            _loc4_ = _loc3_[_loc9_];
            if(_loc4_)
            {
               for each(_loc10_ in _loc4_._SafeStr_1001)
               {
                  _loc5_ = this._SafeStr_359[_loc10_ & _SafeCls_112._SafeStr_1111];
                  if((Boolean(_loc5_)) && _loc7_.indexOf(_loc5_) < 0)
                  {
                     _loc5_._SafeStr_1806 = _loc4_._SafeStr_2407;
                     if(_loc5_ == param2)
                     {
                        _loc6_ = true;
                        break;
                     }
                     _loc3_.push(_loc5_);
                     _loc7_.push(_loc5_);
                  }
               }
            }
            _loc9_++;
         }
         if(_loc6_)
         {
            _loc4_ = param2;
            while(_loc4_._SafeStr_1806)
            {
               _loc8_.push(_loc4_);
               _loc4_ = this._SafeStr_359[_loc4_._SafeStr_1806];
            }
         }
         return _loc8_;
      }
      
      public function _SafeStr_3739(param1:Vector.<_SafeCls_112>, param2:_SafeCls_112, param3:_SafeCls_112, param4:_SafeCls_112, param5:Boolean, param6:Boolean, param7:Boolean) : int
      {
         if(!param3)
         {
            return -1;
         }
         if(param1.indexOf(param3) >= 0)
         {
            return -1;
         }
         var _loc8_:int = 0;
         if(param3.mPosX - param2.mPosX + (param4.mPosX - param3.mPosX) == param4.mPosX - param2.mPosX)
         {
            _loc8_ += 10000;
         }
         if(param3.mPosY - param2.mPosY + (param4.mPosY - param3.mPosY) == param4.mPosY - param2.mPosY)
         {
            _loc8_ += 1000;
         }
         if(!param5)
         {
            _loc8_ += 100;
         }
         if(!param6)
         {
            _loc8_ += 10;
         }
         return _loc8_;
      }
      
      public function _SafeStr_2975(param1:uint, param2:Vector.<_SafeCls_112>, param3:_SafeCls_112, param4:_SafeCls_112) : int
      {
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         if(!param3)
         {
            return -1;
         }
         if(param3 == param4)
         {
            return param1;
         }
         if(param2.indexOf(param3) >= 0)
         {
            return -1;
         }
         param2.push(param3);
         var _loc5_:uint = 99999999;
         for each(_loc6_ in param3._SafeStr_1001)
         {
            _loc7_ = this._SafeStr_2975(param1 + 1,param2,this._SafeStr_359[_loc6_ & _SafeCls_112._SafeStr_1111],param4);
            if(_loc7_ >= 0 && _loc7_ < _loc5_)
            {
               _loc5_ = uint(_loc7_);
            }
         }
         return _loc5_;
      }
      
      public function _SafeStr_1251(param1:Number, param2:Number, param3:Boolean, param4:uint = 0) : _SafeCls_112
      {
         var _loc11_:_SafeCls_112 = null;
         var _loc12_:Number = NaN;
         var _loc5_:_SafeCls_112 = this._SafeStr_359[1];
         var _loc6_:Number = 99999999;
         var _loc7_:_SafeCls_112 = this._SafeStr_359[1];
         var _loc8_:_SafeCls_112 = this._SafeStr_359[1];
         var _loc9_:Point = new Point();
         var _loc10_:Point = new Point();
         for each(_loc11_ in this._SafeStr_359)
         {
            if(!(Boolean(param4) && _loc11_.mNodeType != param4))
            {
               _loc12_ = Math.pow(_loc11_.mPosX - param1,2) + Math.pow(_loc11_.mPosY - param2,2);
               if(_loc12_ < _loc6_)
               {
                  _loc8_ = _loc7_;
                  _loc7_ = _loc5_;
                  _loc5_ = _loc11_;
                  _loc6_ = _loc12_;
               }
            }
         }
         if(param3 && Boolean(_loc5_))
         {
            _loc9_.x = _loc5_.mPosX - param1;
            _loc9_.y = _loc5_.mPosY - param2;
            if(this._SafeStr_118._SafeStr_165._SafeStr_174(param1,param2,_loc9_,_loc10_,null,null,null,_SafeCls_0._SafeStr_179,0))
            {
               _loc5_ = _loc7_;
               _loc9_.x = _loc5_.mPosX - param1;
               _loc9_.y = _loc5_.mPosY - param2;
               if(this._SafeStr_118._SafeStr_165._SafeStr_174(param1,param2,_loc9_,_loc10_,null,null,null,_SafeCls_0._SafeStr_179,0))
               {
                  _loc5_ = _loc8_;
               }
            }
         }
         return _loc5_;
      }
      
      public function _SafeStr_3023(param1:Number, param2:Number) : _SafeCls_112
      {
         var _loc5_:_SafeCls_112 = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:_SafeCls_112 = this._SafeStr_359[1];
         var _loc4_:Number = 99999999;
         for each(_loc5_ in this._SafeStr_359)
         {
            if(!(_loc5_.mNodeType != _SafeCls_112._SafeStr_1317 && _loc5_.mNodeType != _SafeCls_112._SafeStr_482))
            {
               _loc6_ = Math.abs(_loc5_.mPosX - param1);
               _loc7_ = _loc5_.mPosY > param2 ? Math.abs(_loc5_.mPosY - param2) : 1.5 * Math.abs(_loc5_.mPosY - param2);
               _loc6_ += _loc7_;
               if(_loc6_ < _loc4_)
               {
                  _loc3_ = _loc5_;
                  _loc4_ = _loc6_;
               }
            }
         }
         return _loc3_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_109 = "_-Zs"
 * @identifier _SafeCls_112 = "_-Pl"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_165 = "_-Ix"
 * @identifier _SafeStr_174 = "_-Mt"
 * @identifier _SafeStr_179 = "_-BZ"
 * @identifier _SafeStr_359 = "_-Yq"
 * @identifier _SafeStr_482 = "_-wA"
 * @identifier _SafeStr_1001 = "_-dv"
 * @identifier _SafeStr_1111 = "_-5R"
 * @identifier _SafeStr_1120 = "true "
 * @identifier _SafeStr_1251 = "_-w3"
 * @identifier _SafeStr_1317 = "_-To"
 * @identifier _SafeStr_1681 = "_-AN"
 * @identifier _SafeStr_1806 = "_-pB"
 * @identifier _SafeStr_2407 = "_-Pf"
 * @identifier _SafeStr_2656 = "_-au"
 * @identifier _SafeStr_2975 = "_-7B"
 * @identifier _SafeStr_3017 = "_-oD"
 * @identifier _SafeStr_3023 = "_-a6"
 * @identifier _SafeStr_3291 = "_-v7"
 * @identifier _SafeStr_3385 = "_-4z"
 * @identifier _SafeStr_3398 = "_-X"
 * @identifier _SafeStr_3523 = "_-Up"
 * @identifier _SafeStr_3627 = "_-Ds"
 * @identifier _SafeStr_3739 = "_-f8"
 */
