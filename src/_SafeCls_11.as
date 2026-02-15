package
{
   import flash.geom.Point;
   
   public class _SafeCls_11
   {
      
      public static var _SafeStr_1218:Number = 11;
      
      public static var _SafeStr_1570:Number = 1;
      
      public static var _SafeStr_1597:Number = 2;
      
      public static var _SafeStr_2377:Number = 2;
      
      public static var _SafeStr_1109:Number = 2;
      
      public static var _SafeStr_1555:Number = 15;
      
      public static var _SafeStr_2204:Number = 1.2;
      
      public static var _SafeStr_1606:Number = 18;
      
      public static var _SafeStr_1653:Number = 1;
      
      public static const _SafeStr_628:Number = 1.01;
      
      private static const _SafeStr_1343:Number = 50;
      
      private static const _SafeStr_1920:Number = 10;
      
      private static const _SafeStr_2706:Number = 500;
      
      private static const _SafeStr_884:Number = 100;
      
      internal var mPosX:Number;
      
      internal var mPosY:Number;
      
      internal var mVelocityX:Number;
      
      internal var mVelocityY:Number;
      
      internal var _SafeStr_197:Number;
      
      internal var _SafeStr_181:Number;
      
      internal var _SafeStr_257:_SafeCls_20;
      
      private var _SafeStr_532:Number = _SafeStr_1218;
      
      private var _SafeStr_1161:Number = _SafeStr_1570;
      
      private var _SafeStr_1203:Number = _SafeStr_1597;
      
      private var _SafeStr_2173:Number = _SafeStr_2377;
      
      private var _SafeStr_404:Number = _SafeStr_1109;
      
      private var _SafeStr_1918:Number = _SafeStr_1555;
      
      private var _SafeStr_2854:Number = _SafeStr_2204;
      
      private var _SafeStr_2938:Number = _SafeStr_1606;
      
      private var _SafeStr_2855:Number = _SafeStr_1653;
      
      public function _SafeCls_11(param1:Number, param2:Number)
      {
         super();
         this.mVelocityX = 0;
         this.mVelocityY = 0;
         this._SafeStr_197 = 0;
         this._SafeStr_181 = 0;
         this.mPosX = param1;
         this.mPosY = param2;
      }
      
      public function _SafeStr_3692(param1:Number) : void
      {
         this._SafeStr_404 = _SafeStr_1109 * param1;
      }
      
      public function _SafeStr_3728(param1:Number) : void
      {
         this._SafeStr_532 = _SafeStr_1218 * param1;
      }
      
      private function _SafeStr_2965(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 > 0 ? 1 : -1;
         var _loc4_:Number = _loc3_ * param2 - this._SafeStr_1161 * param1;
         if(_loc4_ < 0)
         {
            _loc4_ = 0;
         }
         return _loc4_ * _loc3_;
      }
      
      private function _SafeStr_3406(param1:Number, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:Number = NaN;
         if(this.mVelocityX)
         {
            this.mVelocityX = this._SafeStr_2965(param1,this.mVelocityX);
         }
         if(param2)
         {
            _loc4_ = this._SafeStr_257 ? this._SafeStr_1203 : this._SafeStr_2173;
            if(param3)
            {
               this.mVelocityX -= _loc4_ * param1;
               if(this.mVelocityX <= -this._SafeStr_532)
               {
                  this.mVelocityX = -this._SafeStr_532;
               }
            }
            else
            {
               this.mVelocityX += _loc4_ * param1;
               if(this.mVelocityX >= this._SafeStr_532)
               {
                  this.mVelocityX = this._SafeStr_532;
               }
            }
         }
      }
      
      private function _SafeStr_3184(param1:Number, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:Number = NaN;
         if(!this._SafeStr_404)
         {
            if(this.mVelocityY)
            {
               this.mVelocityY = this._SafeStr_2965(param1,this.mVelocityY);
            }
            _loc4_ = this._SafeStr_257 ? this._SafeStr_1203 : this._SafeStr_2173;
            if(param2)
            {
               this.mVelocityY -= this._SafeStr_1203 * param1;
               if(this.mVelocityY <= -this._SafeStr_532)
               {
                  this.mVelocityY = -this._SafeStr_532;
               }
            }
            else if(param3)
            {
               this.mVelocityY += this._SafeStr_1203 * param1;
               if(this.mVelocityY >= this._SafeStr_532)
               {
                  this.mVelocityY = this._SafeStr_532;
               }
            }
         }
         else if(param2)
         {
            if(this._SafeStr_257)
            {
               this._SafeStr_257 = null;
               this._SafeStr_181 -= this._SafeStr_2938;
            }
            else
            {
               this.mVelocityY -= this._SafeStr_2854 * param1;
            }
         }
      }
      
      public function _SafeStr_2528(param1:Game, param2:Number, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         var _loc14_:Number = NaN;
         var _loc15_:Point = null;
         var _loc16_:Point = null;
         var _loc17_:Point = null;
         var _loc18_:_SafeCls_20 = null;
         var _loc19_:Point = null;
         var _loc20_:Point = null;
         var _loc21_:_SafeCls_20 = null;
         var _loc22_:Point = null;
         var _loc23_:Point = null;
         var _loc24_:_SafeCls_20 = null;
         var _loc25_:Point = null;
         var _loc26_:Number = NaN;
         var _loc27_:_SafeCls_20 = null;
         var _loc28_:Point = null;
         var _loc29_:Point = null;
         var _loc7_:uint = uint(_SafeCls_0._SafeStr_179 | _SafeCls_0._SafeStr_291);
         this._SafeStr_3406(param2,param3,param4);
         this._SafeStr_3184(param2,param5,param6);
         if(param6 || !this._SafeStr_404)
         {
            _loc7_ = _SafeCls_0._SafeStr_179;
            if(Boolean(this._SafeStr_257) && this._SafeStr_257.type == _SafeCls_0._SafeStr_291)
            {
               this._SafeStr_257 = null;
               this._SafeStr_181 += this._SafeStr_2855;
            }
         }
         this.mVelocityX += this._SafeStr_197;
         if(this._SafeStr_257)
         {
            _loc14_ = this.mVelocityX * param2;
            while(_loc14_)
            {
               _loc15_ = new Point();
               _loc15_.x = this._SafeStr_257._SafeStr_235 - this._SafeStr_257._SafeStr_198;
               _loc15_.y = this._SafeStr_257._SafeStr_306 - this._SafeStr_257._SafeStr_261;
               _loc15_.normalize(_loc14_);
               _loc16_ = new Point();
               _loc16_.x = _loc15_.x;
               _loc16_.y = _loc15_.y;
               _loc17_ = new Point();
               _loc17_.x = this.mPosX + _loc16_.x;
               _loc17_.y = this.mPosY + _loc16_.y;
               _loc18_ = param1._SafeStr_165._SafeStr_174(this.mPosX,this.mPosY,_loc16_,_loc17_,this._SafeStr_257,null,null,_loc7_,0);
               this.mPosX += _loc16_.x;
               this.mPosY += _loc16_.y;
               if(!_loc18_)
               {
                  if(this._SafeStr_404)
                  {
                     _loc20_ = new Point();
                     _loc20_.x = 0;
                     _loc20_.y = _SafeStr_1343;
                     _loc21_ = param1._SafeStr_165._SafeStr_174(this.mPosX,this.mPosY,_loc20_,_loc17_,null,null,null,_loc7_,0);
                     if((Boolean(_loc21_)) && _loc21_ != this._SafeStr_257)
                     {
                        if(_loc20_.y < _SafeStr_1920)
                        {
                           this._SafeStr_181 += _SafeStr_1343;
                        }
                     }
                  }
                  break;
               }
               this._SafeStr_257 = _loc18_;
               _loc19_ = new Point();
               _loc19_.x = _loc16_.x;
               _loc19_.y = _loc16_.y;
               _loc19_.normalize(_SafeStr_628);
               this.mPosX -= _loc19_.x;
               this.mPosY -= _loc19_.y;
               _loc14_ -= _loc16_.length * (Math.abs(_loc14_) / _loc14_);
               if(_loc18_._SafeStr_235 - _loc18_._SafeStr_198 < 0.01)
               {
                  break;
               }
            }
         }
         if(this._SafeStr_404)
         {
            this.mVelocityY += this._SafeStr_181;
            this.mVelocityY += this._SafeStr_404 * param2;
            if(this.mVelocityY > this._SafeStr_1918)
            {
               this.mVelocityY = this._SafeStr_1918;
            }
         }
         var _loc8_:Point = new Point();
         _loc8_.x = this.mVelocityX * param2;
         _loc8_.y = this.mVelocityY * param2;
         if(this._SafeStr_257)
         {
            _loc8_.y += _SafeStr_628 * 2;
            _loc8_.x = 0;
         }
         var _loc9_:Point = new Point();
         var _loc10_:Point = new Point();
         _loc9_.x = _loc8_.x;
         _loc9_.y = _loc8_.y;
         _loc10_.x = this.mPosX + _loc9_.x;
         _loc10_.y = this.mPosY + _loc9_.y;
         var _loc11_:_SafeCls_20 = param1._SafeStr_165._SafeStr_174(this.mPosX,this.mPosY,_loc9_,_loc10_,null,null,null,_loc7_,0);
         var _loc12_:Boolean = false;
         if(!this._SafeStr_257)
         {
            _loc22_ = new Point();
            _loc23_ = new Point();
            _loc22_.x = _loc8_.x;
            _loc22_.y = _loc8_.y;
            _loc23_.x = this.mPosX + _loc22_.x;
            _loc23_.y = this.mPosY + _loc22_.y;
            _loc24_ = param1._SafeStr_165._SafeStr_174(this.mPosX,this.mPosY - _SafeStr_884,_loc22_,_loc23_,null,null,null,_SafeCls_0._SafeStr_179,0);
            if((Boolean(_loc24_)) && _loc22_.length < _loc9_.length)
            {
               _loc9_.x = _loc22_.x;
               _loc9_.y = _loc22_.y;
               _loc10_.x = _loc23_.x;
               _loc10_.y = _loc23_.y;
               if(_loc24_._SafeStr_198 != _loc24_._SafeStr_235)
               {
                  _loc12_ = true;
               }
            }
         }
         this._SafeStr_257 = _loc11_;
         this.mPosX += _loc9_.x;
         this.mPosY += _loc9_.y;
         if(this._SafeStr_257)
         {
            _loc25_ = new Point();
            _loc25_.x = _loc9_.x;
            _loc25_.y = _loc9_.y;
            _loc25_.normalize(_SafeStr_628);
            this.mPosX -= _loc25_.x;
            this.mPosY -= _loc25_.y;
         }
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            if(this.mVelocityY < this._SafeStr_404 * param2)
            {
               this.mVelocityY = this._SafeStr_404 * param2;
            }
            _loc26_ = _loc8_.length - _loc9_.length;
            _loc26_ = _loc26_ + _SafeStr_628;
            _loc9_.x = 0;
            _loc9_.y = _loc26_;
            _loc13_ = true;
         }
         else if(Boolean(_loc11_) && _loc11_._SafeStr_198 == _loc11_._SafeStr_235)
         {
            _loc9_.x = 0;
            _loc9_.y = this.mVelocityY * param2;
            _loc13_ = true;
         }
         if(_loc13_)
         {
            _loc27_ = param1._SafeStr_165._SafeStr_174(this.mPosX,this.mPosY,_loc9_,_loc10_,null,null,null,_loc7_,0);
            _loc24_ = null;
            _loc28_ = new Point();
            _loc29_ = new Point();
            _loc28_.x = _loc9_.x;
            _loc28_.y = _loc9_.y;
            _loc29_.x = this.mPosX + _loc9_.x;
            _loc29_.y = this.mPosY + _loc9_.y;
            _loc24_ = param1._SafeStr_165._SafeStr_174(this.mPosX,this.mPosY - _SafeStr_884,_loc28_,_loc29_,null,null,null,_SafeCls_0._SafeStr_179,0);
            if((Boolean(_loc24_)) && _loc28_.length < _loc9_.length)
            {
               _loc9_.x = _loc28_.x;
               _loc9_.y = _loc28_.y;
               _loc10_.x = _loc29_.x;
               _loc10_.y = _loc29_.y;
               _loc27_ = null;
               this.mPosY += _SafeStr_628;
               if(this.mVelocityY < this._SafeStr_404 * param2)
               {
                  this.mVelocityY = this._SafeStr_404 * param2;
               }
            }
            this.mPosX += _loc9_.x;
            this.mPosY += _loc9_.y;
            if(_loc27_)
            {
               this.mPosY -= _SafeStr_628;
            }
            this._SafeStr_257 = _loc27_;
         }
         if(Boolean(this._SafeStr_257) && Boolean(this._SafeStr_404))
         {
            this.mVelocityY = 0;
         }
         this._SafeStr_197 = 0;
         this._SafeStr_181 = 0;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_11 = "_-XP"
 * @identifier _SafeCls_20 = "_-9f"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_165 = "_-Ix"
 * @identifier _SafeStr_174 = "_-Mt"
 * @identifier _SafeStr_179 = "_-BZ"
 * @identifier _SafeStr_181 = "_-Xr"
 * @identifier _SafeStr_197 = "_-hJ"
 * @identifier _SafeStr_198 = "_-Jk"
 * @identifier _SafeStr_235 = "_-KF"
 * @identifier _SafeStr_257 = "_-2X"
 * @identifier _SafeStr_261 = "_-dm"
 * @identifier _SafeStr_291 = "_-Ce"
 * @identifier _SafeStr_306 = "_-r9"
 * @identifier _SafeStr_404 = "_-py"
 * @identifier _SafeStr_532 = "_-jd"
 * @identifier _SafeStr_628 = "_-Ox"
 * @identifier _SafeStr_884 = "_-Wf"
 * @identifier _SafeStr_1109 = "_-2-"
 * @identifier _SafeStr_1161 = "_-Lz"
 * @identifier _SafeStr_1203 = "_-IS"
 * @identifier _SafeStr_1218 = "_-s-"
 * @identifier _SafeStr_1343 = "_-oV"
 * @identifier _SafeStr_1555 = "_-89"
 * @identifier _SafeStr_1570 = "_-q9"
 * @identifier _SafeStr_1597 = "_-hi"
 * @identifier _SafeStr_1606 = "_-te"
 * @identifier _SafeStr_1653 = "_-31"
 * @identifier _SafeStr_1918 = "_-oR"
 * @identifier _SafeStr_1920 = "_-j1"
 * @identifier _SafeStr_2173 = "_-UE"
 * @identifier _SafeStr_2204 = "_-tE"
 * @identifier _SafeStr_2377 = "_-D3"
 * @identifier _SafeStr_2528 = "_-p9"
 * @identifier _SafeStr_2706 = "_-Bq"
 * @identifier _SafeStr_2854 = "_-1G"
 * @identifier _SafeStr_2855 = "_-3Q"
 * @identifier _SafeStr_2938 = "_-EM"
 * @identifier _SafeStr_2965 = "_-PO"
 * @identifier _SafeStr_3184 = "_-gE"
 * @identifier _SafeStr_3406 = "_-Rp"
 * @identifier _SafeStr_3692 = "_-53"
 * @identifier _SafeStr_3728 = "_-43"
 */
