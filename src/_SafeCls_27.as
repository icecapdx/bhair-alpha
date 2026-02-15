package
{
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class _SafeCls_27
   {
      
      public static const _SafeStr_406:uint = 0;
      
      public static const _SafeStr_535:uint = 1;
      
      public static const _SafeStr_351:uint = 2;
      
      public static const _SafeStr_633:uint = 3;
      
      public static const _SafeStr_358:uint = 4;
      
      public static const _SafeStr_1349:uint = 5;
      
      public static const _SafeStr_1027:uint = 6;
      
      private static const _SafeStr_266:Number = 0.2;
      
      public static const _SafeStr_1792:Number = 0;
      
      public static const _SafeStr_1624:Number = 1550;
      
      public static const _SafeStr_1808:int = 35;
      
      public static const _SafeStr_2041:int = _SafeStr_1808 * _SafeStr_1808;
      
      public static const _SafeStr_1833:int = 15;
      
      public static const _SafeStr_2215:int = 25;
      
      public static const _SafeStr_2408:Number = 1.75;
      
      public static const _SafeStr_2410:uint = 400;
      
      public static const _SafeStr_502:Number = _SafeCls_25._SafeStr_502;
      
      public static const _SafeStr_1469:Number = 0.15;
      
      public static const _SafeStr_281:Number = _SafeCls_25._SafeStr_281;
      
      public static const _SafeStr_2998:Number = _SafeCls_25._SafeStr_510;
      
      public static const _SafeStr_2367:uint = 2500;
      
      private static const _SafeStr_1343:Number = 50;
      
      private static const _SafeStr_1920:Number = 10;
      
      private static const _SafeStr_2706:Number = 500;
      
      private static const _SafeStr_884:Number = 100;
      
      private static const _SafeStr_628:Number = 1.01;
      
      private static var _SafeStr_780:Point = new Point();
      
      private static var _SafeStr_401:Point = new Point();
      
      private static var _SafeStr_1038:Point = new Point();
      
      private static var _SafeStr_436:Point = new Point();
      
      private static var _SafeStr_1056:Point = new Point();
      
      private static var _SafeStr_2720:Point = new Point();
      
      private static var _SafeStr_331:Point = new Point();
      
      private static var _SafeStr_219:Point = new Point();
      
      private static var _SafeStr_403:Point = new Point();
      
      private static var _SafeStr_363:Point = new Point();
      
      private static var _SafeStr_667:Point = new Point();
      
      private static var _SafeStr_767:Point = new Point();
      
      private static var _SafeStr_1215:Point = new Point();
      
      private static var v:Point = new Point();
      
      private static var u:Point = new Point();
      
      private static var w:Point = new Point();
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_159:_SafeCls_87;
      
      internal var _SafeStr_151:_SafeCls_6;
      
      internal var _SafeStr_125:_SafeCls_40;
      
      internal var mCurrSurface:_SafeCls_20;
      
      internal var _SafeStr_2839:Boolean = true;
      
      internal var _SafeStr_474:Boolean;
      
      internal var _SafeStr_153:uint;
      
      internal var _SafeStr_444:Number = 0;
      
      internal var _SafeStr_1117:uint;
      
      internal var _SafeStr_421:uint;
      
      internal var _SafeStr_2169:_SafeCls_2;
      
      internal var _SafeStr_1708:_SafeCls_2;
      
      internal var _SafeStr_2484:uint;
      
      internal var _SafeStr_2393:_SafeCls_20;
      
      internal var _SafeStr_1198:Number;
      
      internal var _SafeStr_1222:Number;
      
      internal var mbLeft:Boolean;
      
      internal var mbFiring:Boolean;
      
      internal var _SafeStr_182:Boolean;
      
      internal var mbAirborne:Boolean;
      
      internal var mVelocityX:Number;
      
      internal var mVelocityY:Number;
      
      internal var _SafeStr_197:Number;
      
      internal var _SafeStr_181:Number;
      
      internal var _SafeStr_2328:Boolean;
      
      internal var _SafeStr_121:Number;
      
      internal var mPhysPosY:Number;
      
      internal var _SafeStr_152:Number;
      
      internal var _SafeStr_162:Number;
      
      internal var _SafeStr_215:Number;
      
      internal var _SafeStr_193:Number;
      
      internal var _SafeStr_1194:Number;
      
      internal var _SafeStr_1103:Number;
      
      internal var _SafeStr_2734:Boolean;
      
      internal var _SafeStr_1104:uint;
      
      internal var _SafeStr_2692:uint;
      
      internal var _SafeStr_1256:Number;
      
      internal var _SafeStr_949:Boolean;
      
      internal var _SafeStr_929:Dictionary;
      
      internal var _SafeStr_649:Dictionary;
      
      internal var _SafeStr_697:Boolean;
      
      internal var _SafeStr_2416:Boolean;
      
      internal var _SafeStr_379:Boolean;
      
      internal var _SafeStr_154:SpawnBot;
      
      private var _SafeStr_3315:Point = new Point();
      
      private var _SafeStr_3321:Point = new Point();
      
      internal var _SafeStr_234:MovieClip;
      
      private var _SafeStr_2962:Vector.<uint> = new Vector.<uint>();
      
      public function _SafeCls_27(param1:Game, param2:_SafeCls_87, param3:Number, param4:Number, param5:Boolean = false)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_1104 = param1.mTimeThisTick;
         this._SafeStr_121 = param3;
         this.mPhysPosY = param4;
         this._SafeStr_152 = param3;
         this._SafeStr_162 = param4;
         this.mVelocityX = 0;
         this.mVelocityY = 0;
         this._SafeStr_197 = 0;
         this._SafeStr_181 = 0;
         if(_SafeCls_1.flags & _SafeCls_1._SafeStr_2400)
         {
            this._SafeStr_234 = new MovieClip();
            this._SafeStr_118._SafeStr_156.addChild(this._SafeStr_234);
         }
         this._SafeStr_153 = param5 ? (this._SafeStr_118.IsPlayingWithoutServer() ? _SafeStr_633 : _SafeStr_1027) : _SafeStr_406;
         this._SafeStr_1944(param2);
      }
      
      public function DestroyWorldItem() : void
      {
         this._SafeStr_118 = null;
         this._SafeStr_159 = null;
         this._SafeStr_151 = null;
         if(this._SafeStr_125)
         {
            this._SafeStr_125._SafeStr_201();
            this._SafeStr_125 = null;
         }
         this._SafeStr_2393 = null;
         this.mCurrSurface = null;
         this._SafeStr_2169 = null;
         this._SafeStr_1708 = null;
         this._SafeStr_929 = null;
         this._SafeStr_649 = null;
         this._SafeStr_2962 = null;
         if(Boolean(this._SafeStr_234) && Boolean(this._SafeStr_234.parent))
         {
            this._SafeStr_234.parent.removeChild(this._SafeStr_234);
         }
         this._SafeStr_234 = null;
      }
      
      public function _SafeStr_1944(param1:_SafeCls_87) : void
      {
         var _loc2_:_SafeCls_88 = null;
         var _loc3_:_SafeCls_88 = null;
         var _loc4_:GfxType = null;
         var _loc5_:_SafeCls_6 = param1 ? param1._SafeStr_151 : null;
         if(this._SafeStr_125)
         {
            if(this._SafeStr_125._SafeStr_295)
            {
               _loc4_ = this._SafeStr_125._SafeStr_295._SafeStr_238._SafeStr_166;
            }
            if(this._SafeStr_151 && _loc5_ && this._SafeStr_151.mWorldGfxType._SafeStr_180 == _loc5_.mWorldGfxType._SafeStr_180 && this._SafeStr_151.mWorldGfxType._SafeStr_228 == _loc5_.mWorldGfxType._SafeStr_228)
            {
               _loc2_ = this._SafeStr_125._SafeStr_138;
               this._SafeStr_125._SafeStr_138 = null;
               if(this._SafeStr_125._SafeStr_250)
               {
                  _loc3_ = this._SafeStr_125._SafeStr_250._SafeStr_138;
                  this._SafeStr_125._SafeStr_250._SafeStr_138 = null;
               }
            }
            this._SafeStr_125._SafeStr_201();
         }
         this._SafeStr_159 = param1;
         this._SafeStr_151 = this._SafeStr_159 ? this._SafeStr_159._SafeStr_151 : null;
         this._SafeStr_159._SafeStr_972 = 0;
         this._SafeStr_159._SafeStr_1809 = this._SafeStr_118.mTimeThisTick;
         this._SafeStr_215 = this._SafeStr_152;
         this._SafeStr_193 = this._SafeStr_162 - this._SafeStr_151._SafeStr_163 * 0.5;
         var _loc6_:GfxType = this._SafeStr_151.mWorldGfxType;
         if(this._SafeStr_159._SafeStr_140)
         {
            _loc6_ = this._SafeStr_151.mWorldGfxType.GetDuplicate();
            _loc6_._SafeStr_254 = this._SafeStr_159._SafeStr_140;
         }
         else
         {
            _loc6_ = this._SafeStr_151.mWorldGfxType;
         }
         this._SafeStr_125 = new _SafeCls_40(this._SafeStr_118,_loc6_,true);
         this._SafeStr_125._SafeStr_120.x = this._SafeStr_152;
         this._SafeStr_125._SafeStr_120.y = this._SafeStr_162;
         if(this._SafeStr_151 && this._SafeStr_151._SafeStr_1366 && this._SafeStr_151._SafeStr_1742)
         {
            this._SafeStr_118._SafeStr_164.addChild(this._SafeStr_125._SafeStr_120);
         }
         else
         {
            this._SafeStr_118._SafeStr_2259.addChild(this._SafeStr_125._SafeStr_120);
         }
         if(_loc2_)
         {
            this._SafeStr_125._SafeStr_138._SafeStr_1783();
            this._SafeStr_125._SafeStr_138 = _loc2_;
            if(this._SafeStr_125._SafeStr_250)
            {
               this._SafeStr_125._SafeStr_250._SafeStr_138._SafeStr_1783();
               this._SafeStr_125._SafeStr_250._SafeStr_138 = _loc3_;
            }
         }
         if(_loc4_)
         {
            this._SafeStr_125._SafeStr_1729(_loc4_);
         }
         if(this._SafeStr_151)
         {
            this._SafeStr_1256 = this._SafeStr_151._SafeStr_1256;
            this._SafeStr_2169 = _SafeCls_2._SafeStr_232[this._SafeStr_151._SafeStr_2169];
            this._SafeStr_1708 = _SafeCls_2._SafeStr_232[this._SafeStr_151._SafeStr_1708];
         }
      }
      
      public function _SafeStr_3117() : Boolean
      {
         var _loc5_:Boolean = false;
         if(this._SafeStr_474)
         {
            return false;
         }
         this._SafeStr_2416 = false;
         var _loc1_:Number = this.mVelocityX;
         var _loc2_:uint = this._SafeStr_118.mTimeThisTick;
         var _loc3_:int = (this._SafeStr_118._SafeStr_227 + this._SafeStr_444) / _SafeStr_266;
         this._SafeStr_444 += this._SafeStr_118._SafeStr_227 - _loc3_ * _SafeStr_266;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this._SafeStr_2528();
            _loc4_++;
         }
         if(this._SafeStr_118._SafeStr_161 && this._SafeStr_118._SafeStr_365 && !this._SafeStr_118.IsPlayingWithoutServer())
         {
            _loc5_ = this._SafeStr_2328;
            this._SafeStr_2328 = this.mVelocityX != 0 || this.mVelocityY != 0;
            if(_loc5_ && !this._SafeStr_2328)
            {
               this._SafeStr_118._SafeStr_161._SafeStr_3346(this);
            }
         }
         if(this._SafeStr_153 == _SafeStr_1027)
         {
            if(this._SafeStr_1104 + _SafeStr_2367 < this._SafeStr_118.mTimeThisTick)
            {
               this._SafeStr_125._SafeStr_120.visible = true;
               this._SafeStr_125._SafeStr_120.alpha = 1;
               this._SafeStr_153 = _SafeStr_633;
            }
            else if(!this._SafeStr_118.IsPlayingWithoutServer() && this._SafeStr_159 && this._SafeStr_118.mClientEnt && this._SafeStr_159._SafeStr_1405 != this._SafeStr_118.mClientEnt.mEntID)
            {
               this._SafeStr_125._SafeStr_120.visible = false;
            }
            else
            {
               this._SafeStr_125._SafeStr_120.alpha = 0.5;
            }
         }
         else if(this._SafeStr_153 == _SafeStr_535)
         {
            this._SafeStr_2459();
         }
         else if(this._SafeStr_153 == _SafeStr_351 && !this._SafeStr_1117)
         {
            this._SafeStr_1117 = this._SafeStr_118.mTimeThisTick;
         }
         else if(this._SafeStr_379 && this._SafeStr_153 != _SafeStr_351)
         {
            this._SafeStr_2459();
         }
         this._SafeStr_125._SafeStr_120.x = this._SafeStr_152;
         this._SafeStr_125._SafeStr_120.y = this._SafeStr_162;
         if(this.mVelocityX != 0)
         {
            this.mbLeft = this.mVelocityX < 0;
         }
         this._SafeStr_3137();
         this._SafeStr_1175();
         this._SafeStr_1541();
         return true;
      }
      
      private function _SafeStr_3137() : void
      {
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc1_:Boolean = this._SafeStr_182;
         this._SafeStr_182 = this.mbLeft;
         this._SafeStr_125._SafeStr_120.scaleX = this._SafeStr_182 == this._SafeStr_125._SafeStr_238._SafeStr_166._SafeStr_875 ? 1 : -1;
         var _loc2_:uint = 0;
         if(this._SafeStr_379 || this._SafeStr_153 == _SafeStr_535)
         {
            _loc2_ |= _SafeCls_88._SafeStr_1611;
         }
         if(this._SafeStr_153 == _SafeStr_358)
         {
            _loc2_ |= _SafeCls_88._SafeStr_698;
         }
         if(this.mbAirborne)
         {
            _loc2_ |= _SafeCls_88._SafeStr_468;
         }
         if(this._SafeStr_182 != _loc1_)
         {
            _loc2_ |= _SafeCls_88._SafeStr_971;
         }
         if(this._SafeStr_379 && this._SafeStr_697)
         {
            _loc2_ |= _SafeCls_88._SafeStr_1434;
         }
         var _loc3_:_SafeCls_88 = this._SafeStr_125._SafeStr_138;
         _loc3_._SafeStr_160 = _loc2_;
         if(this._SafeStr_153 == _SafeStr_351)
         {
            _loc4_ = this._SafeStr_118.mTimeThisTick - this._SafeStr_1117;
            _loc5_ = (_SafeStr_1792 - _loc4_) / _SafeStr_1624 * 0.8;
            if(_loc5_ < 1)
            {
               this._SafeStr_125._SafeStr_1884 = Math.max(0,_loc5_);
               if(this._SafeStr_125._SafeStr_120)
               {
                  this._SafeStr_125._SafeStr_120.alpha = this._SafeStr_125._SafeStr_1884;
               }
               if(this._SafeStr_125._SafeStr_423)
               {
                  this._SafeStr_125._SafeStr_423.alpha = this._SafeStr_125._SafeStr_1884;
               }
            }
         }
         if(this._SafeStr_379 && this._SafeStr_125._SafeStr_120.filters && this._SafeStr_125._SafeStr_120.filters.length > 0)
         {
            this._SafeStr_125._SafeStr_120.filters = [];
         }
      }
      
      public function _SafeStr_1175() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this._SafeStr_234)
         {
            this._SafeStr_234.graphics.clear();
            this._SafeStr_234.graphics.beginFill(8947712,0.5);
            _loc1_ = this._SafeStr_151._SafeStr_163;
            _loc2_ = this._SafeStr_151._SafeStr_237;
            this._SafeStr_234.graphics.drawRoundRect(this._SafeStr_152 - 0.5 * _loc2_,this._SafeStr_162 - _loc1_,_loc2_,_loc1_,_loc2_,_loc2_);
            this._SafeStr_234.graphics.endFill();
         }
      }
      
      public function _SafeStr_2528() : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:_SafeCls_20 = null;
         var _loc13_:Rectangle = null;
         this._SafeStr_1198 = this._SafeStr_121;
         this._SafeStr_1222 = this.mPhysPosY;
         if(this._SafeStr_153 == _SafeStr_1349)
         {
            this._SafeStr_125._SafeStr_120.visible = false;
            return;
         }
         if(this._SafeStr_153 == _SafeStr_1027)
         {
            return;
         }
         this._SafeStr_125._SafeStr_120.visible = true;
         if(this._SafeStr_153 == _SafeStr_358)
         {
            return;
         }
         if(Boolean(this.mCurrSurface) && this.mCurrSurface._SafeStr_1626)
         {
            this._SafeStr_121 += this.mCurrSurface._SafeStr_198 - this.mCurrSurface._SafeStr_1651;
            this.mPhysPosY += this.mCurrSurface._SafeStr_261 - this.mCurrSurface._SafeStr_2135;
         }
         if(!this.mVelocityX && !this.mVelocityY && !this._SafeStr_197 && !this._SafeStr_181 && !this._SafeStr_2839 && this._SafeStr_153 == _SafeStr_406 && this.mCurrSurface || this._SafeStr_697)
         {
            this._SafeStr_152 = this._SafeStr_121;
            this._SafeStr_162 = this.mPhysPosY;
            this._SafeStr_193 = this._SafeStr_162;
            return;
         }
         this._SafeStr_2839 = false;
         var _loc1_:uint = uint(_SafeCls_0._SafeStr_179 | _SafeCls_0._SafeStr_291);
         var _loc2_:_SafeCls_20 = this.mCurrSurface;
         if(this.mVelocityX)
         {
            this.mVelocityX = this._SafeStr_2965(this.mVelocityX);
         }
         var _loc4_:Number = _SafeCls_25._SafeStr_1394;
         var _loc5_:Boolean = this._SafeStr_151._SafeStr_1742;
         this.mVelocityX += this._SafeStr_197;
         if(this.mCurrSurface)
         {
            _loc11_ = this.mVelocityX * _SafeStr_266;
            while(_loc11_)
            {
               _SafeStr_780.x = this.mCurrSurface._SafeStr_235 - this.mCurrSurface._SafeStr_198;
               _SafeStr_780.y = this.mCurrSurface._SafeStr_306 - this.mCurrSurface._SafeStr_261;
               _SafeStr_780.normalize(_loc11_);
               _SafeStr_401.x = _SafeStr_780.x;
               _SafeStr_401.y = _SafeStr_780.y;
               _SafeStr_1038.x = this._SafeStr_121 + _SafeStr_401.x;
               _SafeStr_1038.y = this.mPhysPosY + _SafeStr_401.y;
               _loc12_ = this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_121,this.mPhysPosY,_SafeStr_401,_SafeStr_1038,this.mCurrSurface,_SafeStr_1215,null,_loc1_,0);
               this._SafeStr_121 += _SafeStr_401.x;
               this.mPhysPosY += _SafeStr_401.y;
               if(!_loc12_)
               {
                  break;
               }
               this.mCurrSurface = _loc12_;
               _SafeStr_436.x = _SafeStr_401.x;
               _SafeStr_436.y = _SafeStr_401.y;
               _SafeStr_436.normalize(_SafeStr_628);
               this._SafeStr_121 -= _SafeStr_436.x;
               this.mPhysPosY -= _SafeStr_436.y;
               _loc11_ -= _SafeStr_401.length * (Math.abs(_loc11_) / _loc11_);
               if(_loc12_._SafeStr_198 == _loc12_._SafeStr_235)
               {
                  this._SafeStr_2050(_loc12_);
                  break;
               }
            }
         }
         var _loc6_:Number = Boolean(this._SafeStr_421) && !this._SafeStr_949 ? this._SafeStr_151._SafeStr_1414 : this._SafeStr_151._SafeStr_404;
         this.mVelocityY += this._SafeStr_181;
         this.mVelocityY += _loc6_ * _SafeStr_266;
         if(this.mVelocityY > _SafeStr_281)
         {
            this.mVelocityY = _SafeStr_281;
         }
         _SafeStr_331.x = this.mVelocityX * _SafeStr_266;
         _SafeStr_331.y = this.mVelocityY * _SafeStr_266;
         if(this.mCurrSurface)
         {
            _SafeStr_331.x = 0;
            _SafeStr_331.y += _SafeStr_628 * 2;
         }
         _SafeStr_219.x = _SafeStr_331.x;
         _SafeStr_219.y = _SafeStr_331.y;
         _SafeStr_403.x = this._SafeStr_121 + _SafeStr_219.x;
         _SafeStr_403.y = this.mPhysPosY + _SafeStr_219.y;
         var _loc7_:_SafeCls_20 = this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_121,this.mPhysPosY,_SafeStr_219,_SafeStr_403,null,_SafeStr_1215,null,_loc1_,0);
         var _loc8_:_SafeCls_20 = null;
         if(_SafeStr_331.x != 0 || _SafeStr_331.y < 0)
         {
            _SafeStr_363.x = _SafeStr_331.x;
            _SafeStr_363.y = _SafeStr_331.y;
            _SafeStr_667.x = this._SafeStr_121 + _SafeStr_363.x;
            _SafeStr_667.y = this.mPhysPosY + _SafeStr_363.y;
            _loc8_ = this._SafeStr_118._SafeStr_165._SafeStr_174(this._SafeStr_121,this.mPhysPosY - this._SafeStr_151._SafeStr_163,_SafeStr_363,_SafeStr_667,null,_SafeStr_1215,null,_SafeCls_0._SafeStr_179,0);
         }
         if(Boolean(_loc8_) && !(_SafeStr_331.y >= 0 && _loc8_._SafeStr_306 == _loc8_._SafeStr_261))
         {
            this.mCurrSurface = null;
            _SafeStr_219.x = _SafeStr_363.x;
            _SafeStr_219.y = _SafeStr_363.y;
            _SafeStr_403.x = _SafeStr_667.x;
            _SafeStr_403.y = _SafeStr_667.y;
            if(this._SafeStr_153 != _SafeStr_633 && this._SafeStr_153 != _SafeStr_1027)
            {
               this._SafeStr_2050(_loc8_);
               if(this._SafeStr_697)
               {
                  this.mCurrSurface = _loc8_;
                  this._SafeStr_121 += _SafeStr_219.x;
                  this.mPhysPosY += _SafeStr_219.y - this._SafeStr_151._SafeStr_163;
               }
               else if(this._SafeStr_2416)
               {
                  _SafeStr_436.x = _SafeStr_363.x;
                  _SafeStr_436.y = _SafeStr_363.y;
                  _SafeStr_436.normalize(_SafeStr_628);
                  this._SafeStr_121 -= _SafeStr_436.x;
                  this.mPhysPosY -= _SafeStr_436.y;
               }
            }
         }
         else if(_loc7_)
         {
            this.mCurrSurface = _loc7_;
            this._SafeStr_121 += _SafeStr_219.x;
            this.mPhysPosY += _SafeStr_219.y;
            _SafeStr_767.x = _SafeStr_219.x;
            _SafeStr_767.y = _SafeStr_219.y;
            _SafeStr_767.normalize(_SafeStr_628);
            this._SafeStr_121 -= _SafeStr_767.x;
            this.mPhysPosY -= _SafeStr_767.y;
            if(this.mCurrSurface._SafeStr_199.y > 0)
            {
               this.mCurrSurface = null;
               this.mPhysPosY += _SafeStr_628 + _SafeStr_628;
            }
            else if((this.mVelocityX != 0 || this.mVelocityY != 0) && (this._SafeStr_153 == _SafeStr_406 || this._SafeStr_153 == _SafeStr_535))
            {
               this._SafeStr_2050(this.mCurrSurface);
            }
         }
         else
         {
            this._SafeStr_121 += _SafeStr_219.x;
            this.mPhysPosY += _SafeStr_219.y;
            this.mCurrSurface = null;
         }
         this._SafeStr_197 = 0;
         this._SafeStr_181 = 0;
         var _loc9_:Boolean = this.mbAirborne;
         this.mbAirborne = this.mCurrSurface == null;
         this._SafeStr_152 = this._SafeStr_121;
         this._SafeStr_162 = this.mPhysPosY;
         this._SafeStr_215 = this._SafeStr_152;
         this._SafeStr_193 = this._SafeStr_162 - this._SafeStr_151._SafeStr_163 * 0.5;
         if(this._SafeStr_1198 == this._SafeStr_121 && this._SafeStr_1222 == this.mPhysPosY && this.mVelocityY != 0)
         {
            var _temp_19:* = this;
            this.mVelocityX = 0;
            _temp_19.mVelocityY = 0;
         }
         var _loc10_:Number = this.mVelocityX * this.mVelocityX + this.mVelocityY * this.mVelocityY;
         if(this._SafeStr_153 == _SafeStr_535 && _loc10_ <= _SafeStr_2041 && Boolean(this.mCurrSurface))
         {
            this._SafeStr_153 = _SafeStr_406;
         }
         else if(this._SafeStr_153 == _SafeStr_633 && !this.mVelocityX && !this.mVelocityY && Boolean(this.mCurrSurface))
         {
            if(this._SafeStr_151._SafeStr_1873)
            {
               this._SafeStr_118.PlaySoundAtPosition(0,this._SafeStr_151._SafeStr_1873,this._SafeStr_121,this.mPhysPosY);
            }
            this._SafeStr_153 = _SafeStr_406;
         }
         if((this._SafeStr_118.IsPlayingWithoutServer() || this._SafeStr_118._SafeStr_365) && this._SafeStr_153 != _SafeStr_351)
         {
            _loc13_ = this._SafeStr_118.level._SafeStr_253;
            if(Math.abs(_SafeCls_19._SafeStr_546(_loc13_.right,_loc13_.left,this._SafeStr_121) - this._SafeStr_121) > _SafeCls_25._SafeStr_634 || this.mPhysPosY - _loc13_.bottom > _SafeCls_25._SafeStr_634)
            {
               if(!this._SafeStr_118.IsPlayingWithoutServer() && Boolean(this._SafeStr_118._SafeStr_161))
               {
                  this._SafeStr_118._SafeStr_161._SafeStr_1762(this._SafeStr_159._SafeStr_173);
               }
               this._SafeStr_153 = _SafeStr_351;
            }
         }
      }
      
      private function _SafeStr_2965(param1:Number) : Number
      {
         var _loc2_:Number = this.mbAirborne ? this._SafeStr_151._SafeStr_2020 : this._SafeStr_151._SafeStr_1161;
         var _loc3_:Number = param1 > 0 ? 1 : -1;
         var _loc4_:Number = _loc3_ * param1 - _loc2_ * _SafeStr_266;
         if(_loc4_ < 0)
         {
            _loc4_ = 0;
         }
         return _loc4_ * _loc3_;
      }
      
      public function _SafeStr_319(param1:Number, param2:Number) : void
      {
         this._SafeStr_121 = param1;
         this.mPhysPosY = param2;
         this._SafeStr_152 = this._SafeStr_121;
         this._SafeStr_162 = this.mPhysPosY;
         this._SafeStr_215 = this._SafeStr_152;
         this._SafeStr_193 = this._SafeStr_162 - this._SafeStr_151._SafeStr_163 * 0.5;
      }
      
      private function _SafeStr_2459() : void
      {
         var _loc1_:_SafeCls_25 = null;
         var _loc3_:Array = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:uint = 0;
         var _loc8_:_SafeCls_25 = null;
         var _loc9_:_SafeCls_27 = null;
         var _loc10_:_SafeCls_27 = null;
         var _loc11_:_SafeCls_25 = null;
         var _loc12_:Point = null;
         var _loc13_:Point = null;
         var _loc2_:_SafeCls_25 = this._SafeStr_118._SafeStr_200(this._SafeStr_421);
         var _loc4_:Number = this._SafeStr_151._SafeStr_237 >= this._SafeStr_151._SafeStr_163 ? this._SafeStr_151._SafeStr_237 * 0.5 : this._SafeStr_151._SafeStr_163 * 0.5;
         if(this._SafeStr_2734)
         {
            _loc5_ = _SafeCls_47._SafeStr_387 * 0.5;
            _loc6_ = this._SafeStr_379 && Boolean(this.mCurrSurface);
            if(!this._SafeStr_159._SafeStr_151._SafeStr_1123)
            {
               _loc6_ ||= this._SafeStr_949 || this._SafeStr_118.mTimeThisTick - this._SafeStr_2692 > _SafeStr_2410;
            }
            _loc7_ = _loc6_ ? uint(0) : Game._SafeStr_580;
            _loc3_ = this._SafeStr_118._SafeStr_430(_loc2_,this._SafeStr_215,this._SafeStr_193,_loc5_,_loc5_,_loc7_);
            for each(_loc8_ in _loc3_)
            {
               if(!(Boolean(this._SafeStr_929) && Boolean(this._SafeStr_929[_loc8_.mEntID])))
               {
                  if(_SafeCls_26._SafeStr_2979(new Point(this._SafeStr_215,this._SafeStr_193),new Point(this.mVelocityX,this.mVelocityY),_loc8_,_loc4_))
                  {
                     _loc1_ = _loc8_;
                     break;
                  }
               }
            }
         }
         if(_loc1_)
         {
            if(!this._SafeStr_118.IsPlayingWithoutServer())
            {
               this._SafeStr_118._SafeStr_161._SafeStr_3091(_loc2_,_loc1_,this._SafeStr_159._SafeStr_173,this.mVelocityX,this.mVelocityY,this._SafeStr_121,this.mPhysPosY);
            }
            this._SafeStr_2418(_loc2_,_loc1_,this.mVelocityX,this.mVelocityY,this._SafeStr_121,this.mPhysPosY);
         }
         else if(this._SafeStr_153 == _SafeStr_535 && (this._SafeStr_118.IsPlayingWithoutServer() || this._SafeStr_118._SafeStr_365))
         {
            _loc9_ = null;
            _loc3_ = this._SafeStr_118._SafeStr_2222(_loc2_,this._SafeStr_215,this._SafeStr_193,_loc5_,_loc5_,Game._SafeStr_1578);
            for each(_loc10_ in _loc3_)
            {
               if(_loc10_ != this)
               {
                  if(!(Boolean(this._SafeStr_649) && Boolean(this._SafeStr_649[_loc10_._SafeStr_159._SafeStr_173])))
                  {
                     if(_SafeCls_26._SafeStr_3412(new Point(this._SafeStr_215,this._SafeStr_193),new Point(this.mVelocityX,this.mVelocityY),_loc10_,_loc4_))
                     {
                        _loc9_ = _loc10_;
                        break;
                     }
                  }
               }
            }
            if(_loc9_ && _loc9_._SafeStr_379 && _loc9_._SafeStr_697)
            {
               _loc11_ = this._SafeStr_118._SafeStr_200(this._SafeStr_421);
               _loc12_ = new Point(_loc9_.mVelocityX,_loc9_.mVelocityY);
               _loc13_ = new Point(this.mVelocityX,this.mVelocityY);
               if(this._SafeStr_118._SafeStr_161 && this._SafeStr_118._SafeStr_365 && !this._SafeStr_118.IsPlayingWithoutServer())
               {
                  this._SafeStr_118._SafeStr_161._SafeStr_3096(this._SafeStr_421,this._SafeStr_159._SafeStr_173,_loc9_._SafeStr_159._SafeStr_173,_loc13_,_loc12_,this._SafeStr_121,this.mPhysPosY);
               }
               this._SafeStr_2618(_loc11_,_loc9_,_loc13_,_loc12_,this._SafeStr_121,this.mPhysPosY);
            }
         }
      }
      
      public function _SafeStr_2418(param1:_SafeCls_25, param2:_SafeCls_25, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:Point = null;
         if(this._SafeStr_474)
         {
            return;
         }
         if(param2.mCombatState._SafeStr_1415)
         {
            _loc7_ = new Point(-this.mVelocityX,-this.mVelocityY);
            _loc7_.normalize(_loc7_.length / 2 + 120);
            this._SafeStr_1719(_loc7_,param2.mEntID);
         }
         else
         {
            this.mVelocityX = param3;
            this.mVelocityY = param4;
            this._SafeStr_121 = param5;
            this.mPhysPosY = param6;
            if(this._SafeStr_929)
            {
               this._SafeStr_929[param2.mEntID] = true;
            }
            this._SafeStr_949 = true;
            this._SafeStr_1874(param1,param2,new Point(param3,param4));
            this._SafeStr_153 = _SafeStr_406;
            this.mVelocityX *= -0.1;
            this.mVelocityY = -30;
         }
      }
      
      public function _SafeStr_1874(param1:_SafeCls_25, param2:_SafeCls_25, param3:Point, param4:_SafeCls_27 = null) : void
      {
         var _loc8_:Point = null;
         var _loc9_:Point = null;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc5_:Boolean = param4 ? this._SafeStr_151._SafeStr_2339 || param4._SafeStr_151._SafeStr_2339 : false;
         var _loc6_:Boolean = this._SafeStr_2046();
         var _loc7_:_SafeCls_2 = _loc6_ ? this._SafeStr_1708 : this._SafeStr_2169;
         if((_loc7_) && param1 && !(param1._SafeStr_137 & _SafeCls_25._SafeStr_194) && !_loc5_ && this._SafeStr_118.mTimeThisTick >= this._SafeStr_2484)
         {
            _loc8_ = new Point(this._SafeStr_121,this.mPhysPosY);
            _loc9_ = new Point(this._SafeStr_121,this.mPhysPosY);
            param1.mCombatState._SafeStr_3514(_loc7_,param2,_loc8_,_loc9_,this,param3,this._SafeStr_125._SafeStr_120.rotation);
            if(this._SafeStr_151._SafeStr_1995)
            {
               this._SafeStr_2484 = this._SafeStr_118.mTimeThisTick + this._SafeStr_151._SafeStr_1995;
            }
         }
         if(!_loc5_ && this._SafeStr_159._SafeStr_151._SafeStr_1896)
         {
            if(this._SafeStr_118._SafeStr_161 && this._SafeStr_118._SafeStr_365 && !this._SafeStr_118.IsPlayingWithoutServer())
            {
               this._SafeStr_118._SafeStr_161._SafeStr_1762(this._SafeStr_159._SafeStr_173);
            }
            this._SafeStr_474 = true;
         }
         if(param4 && !_loc5_ && _loc7_ && _loc7_._SafeStr_127 == _SafeCls_2._SafeStr_498 && !param4._SafeStr_151._SafeStr_1896)
         {
            if(_loc6_)
            {
               param4._SafeStr_1358(this.mCurrSurface);
            }
            _loc10_ = new Point(param4.mVelocityX,param4.mVelocityY);
            if(_loc7_._SafeStr_2192)
            {
               _loc12_ = Math.abs(_loc10_.x);
               _loc13_ = Math.abs(_loc10_.y);
               if(_loc12_ > _loc13_)
               {
                  _loc10_.y = _loc10_.y > 0 ? _loc12_ : -_loc12_;
               }
               else if(_loc12_ < _loc13_)
               {
                  _loc10_.x = _loc10_.x > 0 ? _loc13_ : -_loc13_;
               }
            }
            _loc11_ = _loc7_._SafeStr_385.length ? _loc7_._SafeStr_385[0] : 0;
            _loc11_ = _loc11_ + (_loc7_._SafeStr_366.length ? _loc7_._SafeStr_366[0] : 0);
            if(_loc11_)
            {
               _loc10_.normalize(_loc11_);
            }
            param4.mVelocityX = 0;
            param4.mVelocityY = 0;
            param4._SafeStr_1719(_loc10_,param4._SafeStr_421);
         }
      }
      
      public function _SafeStr_2618(param1:_SafeCls_25, param2:_SafeCls_27, param3:Point, param4:Point, param5:Number, param6:Number) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         if(this._SafeStr_474)
         {
            return;
         }
         this._SafeStr_121 = param5;
         this.mPhysPosY = param6;
         param2._SafeStr_121 = param5;
         param2.mPhysPosY = param6;
         this.mVelocityX = param3.x;
         this.mVelocityY = param3.y;
         param2.mVelocityX = param4.x;
         param2.mVelocityY = param4.y;
         if(param2._SafeStr_151._SafeStr_2763)
         {
            var _loc7_:Point = new Point(-param3.x,-param3.y);
            _loc7_.normalize(60);
            this._SafeStr_1719(new Point(param2._SafeStr_121,param2.mPhysPosY),param2._SafeStr_421 || this._SafeStr_421);
            this._SafeStr_949 = true;
         }
         else
         {
            _loc8_ = param3.length;
            _loc9_ = param4.length;
         }
         if(this._SafeStr_649)
         {
            this._SafeStr_649[param2._SafeStr_159._SafeStr_173] = true;
         }
         if(param2._SafeStr_649)
         {
            param2._SafeStr_649[this._SafeStr_159._SafeStr_173] = true;
         }
         this._SafeStr_1874(param1,null,param3,param2);
         param2._SafeStr_1874(param1,null,param4,this);
      }
      
      public function _SafeStr_2490() : Boolean
      {
         return (this._SafeStr_153 == _SafeStr_406 || this._SafeStr_153 == _SafeStr_633 || this._SafeStr_153 == _SafeStr_358) && !this._SafeStr_379;
      }
      
      public function _SafeStr_1719(param1:Point, param2:uint) : void
      {
         this._SafeStr_1104 = 0;
         this._SafeStr_197 = param1.x * this._SafeStr_151._SafeStr_1996;
         this._SafeStr_181 = param1.y * this._SafeStr_151._SafeStr_1996;
         this._SafeStr_153 = _SafeStr_535;
         this._SafeStr_421 = param2;
         if(this._SafeStr_159._SafeStr_151._SafeStr_1366)
         {
            this._SafeStr_379 = true;
         }
         var _loc3_:_SafeCls_25 = this._SafeStr_118._SafeStr_200(param2);
         if(Boolean(_loc3_) && !(_loc3_._SafeStr_137 & _SafeCls_25._SafeStr_194))
         {
            this._SafeStr_2734 = true;
            this._SafeStr_949 = false;
         }
         if(!this._SafeStr_151._SafeStr_2435)
         {
            this._SafeStr_929 = new Dictionary();
            this._SafeStr_649 = new Dictionary();
         }
      }
      
      public function _SafeStr_1541() : void
      {
         if(this._SafeStr_474)
         {
            return;
         }
         if(this._SafeStr_153 == _SafeStr_351 && this._SafeStr_1117 && this._SafeStr_118.mTimeThisTick > this._SafeStr_1117 + _SafeStr_1792 + _SafeStr_1624)
         {
            this._SafeStr_474 = true;
         }
      }
      
      public function PlayAnimation(param1:String, param2:Boolean = false) : void
      {
         if(param1)
         {
            this._SafeStr_125._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,param1,param2);
         }
      }
      
      public function _SafeStr_1358(param1:_SafeCls_20) : void
      {
         var _loc2_:Number = NaN;
         if(Boolean(param1) && param1._SafeStr_198 == param1._SafeStr_235)
         {
            this.mVelocityX *= -this._SafeStr_1256;
         }
         else if(Boolean(param1) && param1._SafeStr_261 == param1._SafeStr_306)
         {
            this.mVelocityY *= -this._SafeStr_1256;
         }
         else
         {
            _loc2_ = this.mVelocityX * param1._SafeStr_199.x + this.mVelocityY * param1._SafeStr_199.y;
            u.x = _loc2_ * param1._SafeStr_199.x;
            u.y = _loc2_ * param1._SafeStr_199.y;
            w.x = this.mVelocityX - u.x;
            w.y = this.mVelocityY - u.y;
            if(w.length > this._SafeStr_151._SafeStr_1161 * 1.5)
            {
               w.normalize(w.length - this._SafeStr_151._SafeStr_1161);
            }
            u.x *= this._SafeStr_1256;
            u.y *= this._SafeStr_1256;
            this.mVelocityX = w.x - u.x;
            this.mVelocityY = w.y - u.y;
         }
         this._SafeStr_949 = true;
      }
      
      public function _SafeStr_2050(param1:_SafeCls_20) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Boolean = this._SafeStr_151._SafeStr_1742;
         var _loc3_:Number = Math.sqrt(this.mVelocityX * this.mVelocityX + this.mVelocityY * this.mVelocityY);
         if(this._SafeStr_151._SafeStr_2497)
         {
            _loc4_ = this.mVelocityX * param1._SafeStr_199.x + this.mVelocityY * param1._SafeStr_199.y;
            _loc5_ = _loc3_ ? _loc4_ / _loc3_ : 0;
            _loc6_ = Math.acos(_loc5_);
            if(_loc6_ >= 2.38)
            {
               _loc2_ = true;
            }
         }
         if(_loc2_)
         {
            this._SafeStr_125._SafeStr_120.rotation = _SafeCls_19._SafeStr_2378(0,param1._SafeStr_199,360);
            this._SafeStr_697 = true;
            this.mbAirborne = false;
            this.mVelocityX = 0;
            this.mVelocityY = 0;
            if(this._SafeStr_151._SafeStr_1878)
            {
               this._SafeStr_118.PlaySoundAtPosition(0,this._SafeStr_151._SafeStr_1878,this._SafeStr_121,this.mPhysPosY);
            }
         }
         else if(!(param1._SafeStr_199.y == -1 && _loc3_ < 1))
         {
            if(Boolean(this._SafeStr_151._SafeStr_2354) && Math.abs(this.mVelocityY) > _SafeStr_1833)
            {
               this._SafeStr_118.PlaySoundAtPosition(this._SafeStr_421,this._SafeStr_151._SafeStr_2354,this._SafeStr_121,this.mPhysPosY,0.35);
            }
            this._SafeStr_1358(param1);
            this._SafeStr_2416 = true;
         }
         else
         {
            this.mVelocityY = 0;
            this.mVelocityX = 0;
         }
      }
      
      public function _SafeStr_2046() : Boolean
      {
         return this._SafeStr_379 && Boolean(this._SafeStr_1708) && this._SafeStr_697;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_2 = "_-jR"
 * @identifier _SafeCls_6 = "_-0u"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_20 = "_-9f"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_26 = "_-LQ"
 * @identifier _SafeCls_27 = "_-C7"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_47 = "_-Km"
 * @identifier _SafeCls_87 = "_-CY"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_121 = "_-Dk"
 * @identifier _SafeStr_125 = "_-5"
 * @identifier _SafeStr_127 = "_-jo"
 * @identifier _SafeStr_137 = "_-3"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_140 = "_-qo"
 * @identifier _SafeStr_151 = "_-0w"
 * @identifier _SafeStr_152 = "_-PC"
 * @identifier _SafeStr_153 = "_-2k"
 * @identifier _SafeStr_154 = "_-1N"
 * @identifier _SafeStr_156 = "_-gH"
 * @identifier _SafeStr_159 = "_-eE"
 * @identifier _SafeStr_160 = "_-CV"
 * @identifier _SafeStr_161 = "_-ve"
 * @identifier _SafeStr_162 = "_-a4"
 * @identifier _SafeStr_163 = "_-eC"
 * @identifier _SafeStr_164 = "_-QU"
 * @identifier _SafeStr_165 = "_-Ix"
 * @identifier _SafeStr_166 = "_-PJ"
 * @identifier _SafeStr_173 = "_-KG"
 * @identifier _SafeStr_174 = "_-Mt"
 * @identifier _SafeStr_179 = "_-BZ"
 * @identifier _SafeStr_180 = "_-az"
 * @identifier _SafeStr_181 = "_-Xr"
 * @identifier _SafeStr_182 = "_-af"
 * @identifier _SafeStr_193 = "_-MG"
 * @identifier _SafeStr_194 = "_-rD"
 * @identifier _SafeStr_197 = "_-hJ"
 * @identifier _SafeStr_198 = "_-Jk"
 * @identifier _SafeStr_199 = "_-rq"
 * @identifier _SafeStr_200 = "_-H-"
 * @identifier _SafeStr_201 = "_-x"
 * @identifier _SafeStr_215 = "_-Hm"
 * @identifier _SafeStr_219 = "_-u5"
 * @identifier _SafeStr_227 = "_-XT"
 * @identifier _SafeStr_228 = "_-QK"
 * @identifier _SafeStr_232 = "_-6u"
 * @identifier _SafeStr_234 = "_-Cy"
 * @identifier _SafeStr_235 = "_-KF"
 * @identifier _SafeStr_237 = "_-Q6"
 * @identifier _SafeStr_238 = "_-0F"
 * @identifier _SafeStr_250 = "_-AD"
 * @identifier _SafeStr_253 = "_-BW"
 * @identifier _SafeStr_254 = "_-H5"
 * @identifier _SafeStr_261 = "_-dm"
 * @identifier _SafeStr_266 = "native"
 * @identifier _SafeStr_281 = "_-Ii"
 * @identifier _SafeStr_291 = "_-Ce"
 * @identifier _SafeStr_295 = "_-Op"
 * @identifier _SafeStr_298 = "_-j2"
 * @identifier _SafeStr_306 = "_-r9"
 * @identifier _SafeStr_307 = "_-mp"
 * @identifier _SafeStr_319 = "_-vX"
 * @identifier _SafeStr_331 = "_-nv"
 * @identifier _SafeStr_351 = "_-Mq"
 * @identifier _SafeStr_358 = "_-la"
 * @identifier _SafeStr_363 = "_-Wi"
 * @identifier _SafeStr_365 = "_-eH"
 * @identifier _SafeStr_366 = "_-L3"
 * @identifier _SafeStr_379 = "_-mg"
 * @identifier _SafeStr_385 = "_-fb"
 * @identifier _SafeStr_387 = "_-nt"
 * @identifier _SafeStr_401 = "_-LX"
 * @identifier _SafeStr_403 = "_-HW"
 * @identifier _SafeStr_404 = "_-py"
 * @identifier _SafeStr_406 = "_-wZ"
 * @identifier _SafeStr_421 = "_-jC"
 * @identifier _SafeStr_423 = "_-fu"
 * @identifier _SafeStr_430 = "_-kA"
 * @identifier _SafeStr_436 = "_-RG"
 * @identifier _SafeStr_444 = "_-vk"
 * @identifier _SafeStr_468 = "_-g-"
 * @identifier _SafeStr_474 = "_-WB"
 * @identifier _SafeStr_498 = "_-Po"
 * @identifier _SafeStr_502 = "_-l2"
 * @identifier _SafeStr_510 = "_-U3"
 * @identifier _SafeStr_535 = "_-rg"
 * @identifier _SafeStr_546 = "_-ej"
 * @identifier _SafeStr_580 = "_-4J"
 * @identifier _SafeStr_628 = "_-Ox"
 * @identifier _SafeStr_633 = "_-en"
 * @identifier _SafeStr_634 = "_-ei"
 * @identifier _SafeStr_649 = "_-j6"
 * @identifier _SafeStr_667 = "_-K6"
 * @identifier _SafeStr_697 = "_-NN"
 * @identifier _SafeStr_698 = "_-bd"
 * @identifier _SafeStr_767 = "_-gF"
 * @identifier _SafeStr_780 = "_-mX"
 * @identifier _SafeStr_875 = "_-cK"
 * @identifier _SafeStr_884 = "_-Wf"
 * @identifier _SafeStr_929 = "_-B"
 * @identifier _SafeStr_949 = "_-Ek"
 * @identifier _SafeStr_971 = "_-dB"
 * @identifier _SafeStr_972 = "_-f3"
 * @identifier _SafeStr_1027 = "_-rC"
 * @identifier _SafeStr_1038 = "_-e"
 * @identifier _SafeStr_1056 = "_-bU"
 * @identifier _SafeStr_1103 = "_-BX"
 * @identifier _SafeStr_1104 = "_-cI"
 * @identifier _SafeStr_1117 = "_-KL"
 * @identifier _SafeStr_1123 = "_-L7"
 * @identifier _SafeStr_1161 = "_-Lz"
 * @identifier _SafeStr_1175 = "_-BT"
 * @identifier _SafeStr_1194 = "null"
 * @identifier _SafeStr_1198 = "_-4h"
 * @identifier _SafeStr_1215 = "_-rV"
 * @identifier _SafeStr_1222 = "_-Jw"
 * @identifier _SafeStr_1256 = "_-Q1"
 * @identifier _SafeStr_1343 = "_-oV"
 * @identifier _SafeStr_1349 = "_-6n"
 * @identifier _SafeStr_1358 = "_-6d"
 * @identifier _SafeStr_1366 = "_-Cm"
 * @identifier _SafeStr_1394 = "_-ok"
 * @identifier _SafeStr_1405 = "_-wK"
 * @identifier _SafeStr_1414 = "_-BV"
 * @identifier _SafeStr_1415 = "_-Yv"
 * @identifier _SafeStr_1434 = "_-3W"
 * @identifier _SafeStr_1469 = "_-TE"
 * @identifier _SafeStr_1541 = "_-fo"
 * @identifier _SafeStr_1578 = "_-8V"
 * @identifier _SafeStr_1611 = "_-ha"
 * @identifier _SafeStr_1624 = "_-kF"
 * @identifier _SafeStr_1626 = "_-Gw"
 * @identifier _SafeStr_1651 = "_-l1"
 * @identifier _SafeStr_1708 = "_-Fk"
 * @identifier _SafeStr_1719 = "_-nG"
 * @identifier _SafeStr_1729 = "_-0h"
 * @identifier _SafeStr_1742 = "_-JS"
 * @identifier _SafeStr_1762 = "_-Wg"
 * @identifier _SafeStr_1783 = "_-MU"
 * @identifier _SafeStr_1792 = "_-mv"
 * @identifier _SafeStr_1808 = "_-C3"
 * @identifier _SafeStr_1809 = "_-cb"
 * @identifier _SafeStr_1833 = "_-R8"
 * @identifier _SafeStr_1873 = "_-LC"
 * @identifier _SafeStr_1874 = "_-q4"
 * @identifier _SafeStr_1878 = "_-ie"
 * @identifier _SafeStr_1884 = "_-lU"
 * @identifier _SafeStr_1896 = "_-4Q"
 * @identifier _SafeStr_1920 = "_-j1"
 * @identifier _SafeStr_1944 = "_-4-"
 * @identifier _SafeStr_1995 = "_-qY"
 * @identifier _SafeStr_1996 = "_-3e"
 * @identifier _SafeStr_2020 = "_-WS"
 * @identifier _SafeStr_2041 = "_-Dp"
 * @identifier _SafeStr_2046 = "_-vY"
 * @identifier _SafeStr_2050 = "_-NS"
 * @identifier _SafeStr_2135 = "_-d3"
 * @identifier _SafeStr_2169 = "_-PR"
 * @identifier _SafeStr_2192 = "_-9k"
 * @identifier _SafeStr_2215 = "_-KJ"
 * @identifier _SafeStr_2222 = "_-v1"
 * @identifier _SafeStr_2259 = "_-Lf"
 * @identifier _SafeStr_2328 = "_-5Q"
 * @identifier _SafeStr_2339 = "_-km"
 * @identifier _SafeStr_2354 = "_-dY"
 * @identifier _SafeStr_2367 = "_-8r"
 * @identifier _SafeStr_2378 = "_-Qu"
 * @identifier _SafeStr_2393 = "_-ar"
 * @identifier _SafeStr_2400 = "_-Lu"
 * @identifier _SafeStr_2408 = "_-YL"
 * @identifier _SafeStr_2410 = "_-sP"
 * @identifier _SafeStr_2416 = "_-A3"
 * @identifier _SafeStr_2418 = "_-iU"
 * @identifier _SafeStr_2435 = "_-fX"
 * @identifier _SafeStr_2459 = "_-Hj"
 * @identifier _SafeStr_2484 = "_-O-"
 * @identifier _SafeStr_2490 = "_-8M"
 * @identifier _SafeStr_2497 = "_-gP"
 * @identifier _SafeStr_2528 = "_-p9"
 * @identifier _SafeStr_2618 = "_-sf"
 * @identifier _SafeStr_2692 = "_-K5"
 * @identifier _SafeStr_2706 = "_-Bq"
 * @identifier _SafeStr_2720 = "_-be"
 * @identifier _SafeStr_2734 = "_-36"
 * @identifier _SafeStr_2763 = "_-Mw"
 * @identifier _SafeStr_2839 = "_-QG"
 * @identifier _SafeStr_2962 = "_-nl"
 * @identifier _SafeStr_2965 = "_-PO"
 * @identifier _SafeStr_2979 = "_-jt"
 * @identifier _SafeStr_2998 = "_-Zu"
 * @identifier _SafeStr_3091 = "_-P8"
 * @identifier _SafeStr_3096 = "_-Ns"
 * @identifier _SafeStr_3117 = "_-8n"
 * @identifier _SafeStr_3137 = "_-on"
 * @identifier _SafeStr_3315 = "_-DO"
 * @identifier _SafeStr_3321 = "_-r8"
 * @identifier _SafeStr_3346 = "finally"
 * @identifier _SafeStr_3412 = "_-hG"
 * @identifier _SafeStr_3514 = "_-E1"
 */
