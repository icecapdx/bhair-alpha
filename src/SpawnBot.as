package
{
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class SpawnBot
   {
      
      public static const _SafeStr_230:uint = 0;
      
      public static const _SafeStr_792:uint = 1;
      
      public static const _SafeStr_825:uint = 2;
      
      public static const _SafeStr_1131:uint = 3;
      
      public static const _SafeStr_545:uint = 4;
      
      public static const _SafeStr_565:uint = 5;
      
      public static const _SafeStr_1013:uint = 6;
      
      public static const _SafeStr_666:uint = 7;
      
      public static const _SafeStr_396:uint = 8;
      
      public static const _SafeStr_523:uint = 9;
      
      private static const _SafeStr_778:Number = 0.5;
      
      private static const _SafeStr_2290:uint = 2000;
      
      private static const _SafeStr_2171:uint = Game._SafeStr_1686;
      
      private static const _SafeStr_2069:uint = 10000;
      
      private static const _SafeStr_763:Number = 600;
      
      private static const _SafeStr_1049:uint = 500;
      
      private static const _SafeStr_2064:uint = 3000;
      
      private static const _SafeStr_2374:uint = 2000;
      
      private static const _SafeStr_1710:uint = 2500;
      
      private static const _SafeStr_2674:uint = 8000;
      
      private static const _SafeStr_1144:Number = 0.75;
      
      private static const _SafeStr_1018:Number = 1000;
      
      private static const _SafeStr_1687:uint = 17000 / Game._SafeStr_354;
      
      private static const _SafeStr_1474:Number = 0.15;
      
      private static const _SafeStr_1560:int = 18;
      
      private static const _SafeStr_2343:int = -85;
      
      private static const _SafeStr_862:Number = -200;
      
      private static const _SafeStr_1453:Number = 300;
      
      public static const _SafeStr_899:Number = 100;
      
      internal var _SafeStr_125:_SafeCls_40;
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_121:Number;
      
      internal var mPhysPosY:Number;
      
      internal var mVelocityX:Number;
      
      internal var mVelocityY:Number;
      
      internal var _SafeStr_152:Number;
      
      internal var _SafeStr_162:Number;
      
      internal var mPhysCenterX:Number;
      
      internal var mPhysCenterY:Number;
      
      internal var _SafeStr_711:Number;
      
      internal var _SafeStr_700:Number;
      
      internal var _SafeStr_371:Number;
      
      internal var _SafeStr_1953:Number;
      
      internal var _SafeStr_606:Number;
      
      internal var _SafeStr_601:Number;
      
      internal var _SafeStr_481:Number;
      
      internal var _SafeStr_519:Number;
      
      internal var _SafeStr_766:Number;
      
      internal var _SafeStr_583:Number;
      
      internal var _SafeStr_568:Number;
      
      internal var _SafeStr_2284:Boolean;
      
      private var _SafeStr_262:uint = 0;
      
      internal var _SafeStr_150:_SafeCls_25;
      
      internal var _SafeStr_255:Sprite;
      
      internal var _SafeStr_383:Rectangle;
      
      internal var _SafeStr_182:Boolean;
      
      internal var _SafeStr_599:uint;
      
      internal var _SafeStr_786:Number;
      
      internal var _SafeStr_798:Number;
      
      internal var _SafeStr_1397:Number;
      
      internal var _SafeStr_1645:Number;
      
      internal var _SafeStr_1810:uint;
      
      internal var _SafeStr_457:uint;
      
      internal var _SafeStr_991:uint;
      
      internal var _SafeStr_1456:Number;
      
      internal var _SafeStr_1724:Number;
      
      internal var _SafeStr_1183:uint;
      
      internal var _SafeStr_947:uint;
      
      internal var _SafeStr_1023:uint;
      
      private var _SafeStr_710:Rectangle;
      
      private var _SafeStr_188:Rectangle;
      
      private var _SafeStr_620:Sprite;
      
      internal var _SafeStr_147:_SafeCls_27;
      
      private var _SafeStr_528:Vector.<_SafeCls_27>;
      
      private var _SafeStr_864:Vector.<_SafeCls_25>;
      
      private var _SafeStr_2011:Number;
      
      private var _SafeStr_1642:Number;
      
      public var _SafeStr_2625:_SafeCls_11;
      
      private var _SafeStr_1701:uint = 4;
      
      private var _SafeStr_355:_SafeCls_40;
      
      private var _SafeStr_434:_SafeCls_40;
      
      public function SpawnBot(param1:Game, param2:_SafeCls_25, param3:GfxType)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_125 = new _SafeCls_40(this._SafeStr_118,param3,true);
         this._SafeStr_125._SafeStr_120.x = 0;
         this._SafeStr_125._SafeStr_120.y = 0;
         this._SafeStr_118._SafeStr_164.addChild(this._SafeStr_125._SafeStr_120);
         this._SafeStr_255 = this._SafeStr_118._SafeStr_1089;
         this._SafeStr_255.addChild(this._SafeStr_125._SafeStr_120);
         var _temp_1:* = this;
         this.mPhysPosY = 0;
         _temp_1._SafeStr_121 = 0;
         this._SafeStr_371 = _SafeStr_778;
         this._SafeStr_150 = param2;
         this._SafeStr_528 = new Vector.<_SafeCls_27>();
         this._SafeStr_864 = new Vector.<_SafeCls_25>();
         this._SafeStr_2625 = new _SafeCls_11(0,0);
         var _temp_2:* = this;
         var _loc6_:int;
         this._SafeStr_700 = _loc6_ = 0;
         _temp_2._SafeStr_711 = 0;
         var _loc4_:GfxType = new GfxType();
         _loc4_._SafeStr_180 = "a_BotTrail_Front";
         _loc4_._SafeStr_228 = "SFX_1.swf";
         this._SafeStr_434 = new _SafeCls_40(this._SafeStr_118,_loc4_,false,true);
         this._SafeStr_434._SafeStr_120.visible = false;
         this._SafeStr_125._SafeStr_120.addChild(this._SafeStr_434._SafeStr_120);
         this._SafeStr_434._SafeStr_120.x = -94.2;
         this._SafeStr_434._SafeStr_120.y = -222.35;
         var _loc5_:GfxType = new GfxType();
         _loc5_._SafeStr_180 = "a_BotTrail_Rear";
         _loc5_._SafeStr_228 = "SFX_1.swf";
         this._SafeStr_355 = new _SafeCls_40(this._SafeStr_118,_loc5_,false,true);
         this._SafeStr_355._SafeStr_120.visible = false;
         this._SafeStr_125._SafeStr_120.addChildAt(this._SafeStr_355._SafeStr_120,0);
         this._SafeStr_355._SafeStr_120.x = -2.2;
         this._SafeStr_355._SafeStr_120.y = -208.3;
         this._SafeStr_229(_SafeStr_230);
      }
      
      public function _SafeStr_3111() : void
      {
         var _loc1_:_SafeCls_27 = null;
         if(this._SafeStr_150)
         {
            this._SafeStr_150._SafeStr_154 = null;
         }
         this._SafeStr_150 = null;
         this._SafeStr_255 = null;
         this._SafeStr_383 = null;
         this._SafeStr_710 = null;
         this._SafeStr_188 = null;
         this._SafeStr_2625 = null;
         if(this._SafeStr_125)
         {
            this._SafeStr_125._SafeStr_201();
         }
         this._SafeStr_125 = null;
         if(this._SafeStr_147)
         {
            this._SafeStr_147._SafeStr_153 = _SafeCls_27._SafeStr_351;
            this._SafeStr_147._SafeStr_154 = null;
            this._SafeStr_147 = null;
         }
         if(this._SafeStr_528)
         {
            for each(_loc1_ in this._SafeStr_528)
            {
               if(_loc1_)
               {
                  _loc1_._SafeStr_153 = _SafeCls_27._SafeStr_351;
               }
            }
            this._SafeStr_528.length = 0;
         }
         this._SafeStr_528 = null;
         if(this._SafeStr_864)
         {
            this._SafeStr_864.length = 0;
         }
         this._SafeStr_864 = null;
         this._SafeStr_620 = null;
         if(this._SafeStr_355)
         {
            this._SafeStr_355._SafeStr_201();
         }
         this._SafeStr_355 = null;
         if(this._SafeStr_434)
         {
            this._SafeStr_434._SafeStr_201();
         }
         this._SafeStr_434 = null;
      }
      
      public function _SafeStr_2613(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:Array = null;
         var _loc10_:_SafeCls_2 = null;
         var _loc11_:Point = null;
         var _loc12_:_SafeCls_25 = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         if(this._SafeStr_150 == null)
         {
            this._SafeStr_262 = _SafeStr_230;
         }
         switch(this._SafeStr_262)
         {
            case _SafeStr_230:
               if(this._SafeStr_528.length > 0)
               {
                  this._SafeStr_229(this._SafeStr_1701);
                  break;
               }
               if(this._SafeStr_255 != this._SafeStr_118._SafeStr_1089)
               {
                  this._SafeStr_255 = this._SafeStr_118._SafeStr_1089;
                  this._SafeStr_255.addChild(this._SafeStr_125._SafeStr_120);
                  _loc5_ = true;
               }
               _loc6_ = this._SafeStr_766 * 6;
               if(!this._SafeStr_606 && !this._SafeStr_601 || this._SafeStr_671(this._SafeStr_606,this._SafeStr_121) && this._SafeStr_671(this._SafeStr_601,this.mPhysPosY) || this._SafeStr_1023 && _loc6_ && param1 - this._SafeStr_1023 > _loc6_)
               {
                  this._SafeStr_606 = _loc5_ ? _SafeCls_19._SafeStr_546(this._SafeStr_383.x,this._SafeStr_383.right,this._SafeStr_121 + _SafeStr_763 * Math.random() * (this._SafeStr_182 ? -1 : 1)) : _SafeCls_19._SafeStr_546(this._SafeStr_383.x + Math.random() * this._SafeStr_383.width,this._SafeStr_121 - _SafeStr_763,this._SafeStr_121 + _SafeStr_763);
                  this._SafeStr_601 = _SafeCls_19._SafeStr_546(this._SafeStr_383.y + Math.random() * this._SafeStr_383.height,this.mPhysPosY - _SafeStr_763,this.mPhysPosY + _SafeStr_763);
                  this._SafeStr_481 = 0;
                  this._SafeStr_519 = 0;
                  this._SafeStr_1023 = param1 + Math.random() * _SafeStr_2069;
                  this._SafeStr_766 = Math.sqrt((this._SafeStr_606 - this._SafeStr_481) * (this._SafeStr_606 - this._SafeStr_481) + (this._SafeStr_601 - this._SafeStr_519) * (this._SafeStr_601 - this._SafeStr_519));
                  _loc6_ = Math.abs(this._SafeStr_766 * 3);
                  this.mVelocityX = this._SafeStr_606 - this._SafeStr_121;
                  this.mVelocityY = this._SafeStr_601 - this.mPhysPosY;
                  if(this._SafeStr_766 > _SafeStr_1144)
                  {
                     this.mVelocityX *= _SafeStr_1144 / this._SafeStr_766;
                     this.mVelocityY *= _SafeStr_1144 / this._SafeStr_766;
                  }
               }
               if(this._SafeStr_1023 <= param1)
               {
                  if(!this._SafeStr_481 && !this._SafeStr_519)
                  {
                     this._SafeStr_481 = this._SafeStr_121;
                     this._SafeStr_519 = this.mPhysPosY;
                  }
                  _loc4_ = (param1 - this._SafeStr_1023) / (_loc6_ * 0.5);
                  if(_loc4_ < 1)
                  {
                     _loc4_ = 0.5 * _loc4_ * _loc4_ * _loc4_;
                     this.mVelocityX = (this._SafeStr_606 - this._SafeStr_481) * _loc4_ + this._SafeStr_481 - this._SafeStr_121;
                     this.mVelocityY = (this._SafeStr_601 - this._SafeStr_519) * _loc4_ + this._SafeStr_519 - this.mPhysPosY;
                  }
                  else
                  {
                     _loc4_ -= 2;
                     _loc4_ = _loc4_ * _loc4_ * _loc4_ + 2;
                     this.mVelocityX = (this._SafeStr_606 - this._SafeStr_481) * 0.5 * _loc4_ + this._SafeStr_481 - this._SafeStr_121;
                     this.mVelocityY = (this._SafeStr_601 - this._SafeStr_519) * 0.5 * _loc4_ + this._SafeStr_519 - this.mPhysPosY;
                  }
               }
               if(this._SafeStr_371 < _SafeStr_778)
               {
                  this._SafeStr_371 = _SafeStr_778;
                  break;
               }
               if(this._SafeStr_371 > _SafeStr_778)
               {
                  this._SafeStr_371 -= 0.005;
               }
               break;
            case _SafeStr_792:
               if(this._SafeStr_150.mEntState == _SafeCls_25._SafeStr_244 && Boolean(this._SafeStr_150._SafeStr_137 & _SafeCls_25._SafeStr_194))
               {
                  this._SafeStr_229(_SafeStr_230);
                  return;
               }
               _loc7_ = this._SafeStr_118._SafeStr_314 ? _SafeStr_2171 : _SafeStr_2290;
               if(this._SafeStr_671(this._SafeStr_121,this._SafeStr_150._SafeStr_121) && this._SafeStr_671(this.mPhysPosY,this._SafeStr_150.mPhysPosY) || this._SafeStr_457 && param1 - this._SafeStr_457 > _loc7_)
               {
                  this._SafeStr_229(_SafeStr_825);
                  this._SafeStr_118._SafeStr_164.setChildIndex(this._SafeStr_150._SafeStr_125._SafeStr_120,this._SafeStr_118._SafeStr_164.numChildren - 1);
                  return;
               }
               if(!this._SafeStr_457)
               {
                  this._SafeStr_457 = param1;
                  this._SafeStr_786 = this._SafeStr_121;
                  this._SafeStr_798 = this.mPhysPosY;
               }
               _loc4_ = (param1 - this._SafeStr_457) / _loc7_;
               _loc4_ *= _loc4_;
               this.mVelocityX = (this._SafeStr_150._SafeStr_121 - this._SafeStr_786) * _loc4_ + this._SafeStr_786 - this._SafeStr_121;
               this.mVelocityY = (this._SafeStr_150.mPhysPosY - this._SafeStr_798) * _loc4_ + this._SafeStr_798 - this.mPhysPosY;
               break;
            case _SafeStr_825:
               return;
            case _SafeStr_1131:
            case _SafeStr_545:
               if(this.mPhysPosY <= this._SafeStr_188.top + _SafeStr_862 || this._SafeStr_457 && param1 - this._SafeStr_457 > _SafeStr_1049)
               {
                  this.mPhysPosY = this._SafeStr_188.top + _SafeStr_862;
                  if(this._SafeStr_147)
                  {
                     this._SafeStr_147._SafeStr_153 = _SafeCls_27._SafeStr_351;
                     this._SafeStr_147._SafeStr_154 = null;
                     this._SafeStr_147 = null;
                     this._SafeStr_229(_SafeStr_230);
                     break;
                  }
                  this._SafeStr_147 = this._SafeStr_528.shift();
                  if(!this._SafeStr_147)
                  {
                     this._SafeStr_229(_SafeStr_230);
                     return;
                  }
                  this._SafeStr_121 = this._SafeStr_150._SafeStr_121;
                  this._SafeStr_229(this._SafeStr_150.mEntState == _SafeCls_25._SafeStr_292 ? _SafeStr_523 : (Boolean(this._SafeStr_147._SafeStr_1194) && Boolean(this._SafeStr_147._SafeStr_1103) ? _SafeStr_666 : _SafeStr_565));
                  this._SafeStr_147._SafeStr_154 = this;
                  break;
               }
               if(!this._SafeStr_457)
               {
                  this._SafeStr_457 = param1;
                  this._SafeStr_798 = this.mPhysPosY;
                  this._SafeStr_786 = this._SafeStr_121;
               }
               _loc4_ = (param1 - this._SafeStr_457) / _SafeStr_1049;
               _loc4_ *= _loc4_;
               this.mVelocityX = (this._SafeStr_188.left + this._SafeStr_188.width / 2 - this._SafeStr_786) * _loc4_ + this._SafeStr_786 - this._SafeStr_121;
               this.mVelocityY = (this._SafeStr_188.top + _SafeStr_862 - this._SafeStr_798) * _loc4_ + this._SafeStr_798 - this.mPhysPosY;
               break;
            case _SafeStr_565:
               this._SafeStr_371 = 1;
               if(this._SafeStr_255 != this._SafeStr_118._SafeStr_164)
               {
                  this._SafeStr_255 = this._SafeStr_118._SafeStr_164;
                  this._SafeStr_255.addChild(this._SafeStr_125._SafeStr_120);
               }
               if(!this._SafeStr_1183)
               {
                  this._SafeStr_1183 = param1;
                  this._SafeStr_147._SafeStr_153 = _SafeCls_27._SafeStr_358;
               }
               if(Boolean(this._SafeStr_583) || Boolean(this._SafeStr_568))
               {
                  if(!this._SafeStr_2284)
                  {
                     this._SafeStr_583 -= this._SafeStr_583 * _SafeStr_1474 * this._SafeStr_118._SafeStr_227;
                     this._SafeStr_568 -= this._SafeStr_568 * _SafeStr_1474 * this._SafeStr_118._SafeStr_227;
                     if(this._SafeStr_583 > -1 && this._SafeStr_583 < 1)
                     {
                        this._SafeStr_583 = 0;
                     }
                     if(this._SafeStr_568 > -1 && this._SafeStr_568 < 1)
                     {
                        this._SafeStr_568 = 0;
                     }
                  }
                  this.mVelocityX = this._SafeStr_583;
                  this.mVelocityY = this._SafeStr_568;
                  this._SafeStr_2284 = false;
                  break;
               }
               if(!this._SafeStr_147)
               {
                  this._SafeStr_229(_SafeStr_230);
                  break;
               }
               if(param1 - this._SafeStr_1183 > _SafeStr_1049)
               {
                  this.mVelocityY = this._SafeStr_188.top + _SafeStr_1453 - this.mPhysPosY;
               }
               else
               {
                  _loc4_ = (param1 - this._SafeStr_1183) / _SafeStr_1049 - 1;
                  this.mVelocityY = (_SafeStr_1453 - _SafeStr_862) * (_loc4_ * _loc4_ * _loc4_ + 1) + this._SafeStr_188.top + _SafeStr_862 - this.mPhysPosY;
               }
               this.mVelocityX = Math.max(-_SafeStr_1560,Math.min(_SafeStr_1560,this._SafeStr_150._SafeStr_121 - this._SafeStr_121)) * this._SafeStr_118._SafeStr_227;
               break;
            case _SafeStr_396:
               this._SafeStr_371 = 1;
               if(!this._SafeStr_1810)
               {
                  this._SafeStr_1810 = param1;
                  this._SafeStr_147 = this._SafeStr_528.shift();
                  if(!this._SafeStr_147)
                  {
                     this._SafeStr_229(_SafeStr_230);
                     return;
                  }
                  this._SafeStr_147._SafeStr_153 = _SafeCls_27._SafeStr_358;
                  this._SafeStr_147._SafeStr_154 = this;
                  this.mPhysPosY = this._SafeStr_1642 - 50;
                  this._SafeStr_121 = this._SafeStr_188.right + _SafeStr_899;
               }
               else
               {
                  if(this._SafeStr_255 != this._SafeStr_118._SafeStr_164)
                  {
                     this._SafeStr_255 = this._SafeStr_118._SafeStr_164;
                     this._SafeStr_255.addChild(this._SafeStr_125._SafeStr_120);
                  }
                  this._SafeStr_355._SafeStr_536();
                  this._SafeStr_434._SafeStr_536();
               }
               if(this._SafeStr_121 < this._SafeStr_188.left)
               {
                  this._SafeStr_229(_SafeStr_230);
                  this.mVelocityX = 0;
               }
               else if(this._SafeStr_121 <= this._SafeStr_2011 && Boolean(this._SafeStr_147))
               {
                  this._SafeStr_147._SafeStr_153 = _SafeCls_27._SafeStr_406;
                  this._SafeStr_147.mVelocityX = 0;
                  this._SafeStr_147.mVelocityY = 0;
                  this._SafeStr_147._SafeStr_121 = this._SafeStr_2011;
                  this._SafeStr_147.mPhysPosY = this._SafeStr_1642;
                  this._SafeStr_147._SafeStr_154 = null;
                  this._SafeStr_147 = null;
               }
               this.mVelocityY = 0;
               this.mVelocityX = this._SafeStr_188.right + _SafeStr_899 - this._SafeStr_121 + (param1 - this._SafeStr_1810) * _SafeStr_2343 * Game._SafeStr_354 / 1000;
               break;
            case _SafeStr_666:
               this._SafeStr_371 = 1;
               if(!this._SafeStr_147)
               {
                  this._SafeStr_229(_SafeStr_230);
               }
               if(this._SafeStr_255 != this._SafeStr_118._SafeStr_164)
               {
                  this._SafeStr_255 = this._SafeStr_118._SafeStr_164;
                  this._SafeStr_255.addChild(this._SafeStr_125._SafeStr_120);
               }
               if(this._SafeStr_671(this._SafeStr_121,this._SafeStr_147._SafeStr_1194) && this._SafeStr_671(this.mPhysPosY,this._SafeStr_147._SafeStr_1103) || this._SafeStr_947 && param1 - this._SafeStr_947 > _SafeStr_1710)
               {
                  this._SafeStr_229(_SafeStr_1013);
                  this._SafeStr_121 = this._SafeStr_147._SafeStr_1194;
                  this.mPhysPosY = this._SafeStr_147._SafeStr_1103;
                  break;
               }
               if(!this._SafeStr_947)
               {
                  this._SafeStr_947 = param1;
                  this._SafeStr_1397 = this._SafeStr_121;
                  this._SafeStr_1645 = this.mPhysPosY;
                  this._SafeStr_147._SafeStr_153 = _SafeCls_27._SafeStr_358;
               }
               _loc4_ = (param1 - this._SafeStr_947) / _SafeStr_1710;
               _loc4_ *= _loc4_;
               this.mVelocityX = (this._SafeStr_147._SafeStr_1194 - this._SafeStr_1397) * _loc4_ + this._SafeStr_1397 - this._SafeStr_121;
               this.mVelocityY = (this._SafeStr_147._SafeStr_1103 - this._SafeStr_1645) * _loc4_ + this._SafeStr_1645 - this.mPhysPosY;
               break;
            case _SafeStr_523:
               this._SafeStr_229(_SafeStr_230);
               break;
            case _SafeStr_1013:
               if(!this._SafeStr_147)
               {
                  this._SafeStr_262 = _SafeStr_230;
                  return;
               }
               this.mVelocityX = 0;
               this.mVelocityY = 0;
               if(!this._SafeStr_599)
               {
                  this._SafeStr_599 = param1 + _SafeStr_1687;
                  this._SafeStr_147._SafeStr_153 = _SafeCls_27._SafeStr_358;
                  break;
               }
               if(this._SafeStr_599 <= param1)
               {
                  this._SafeStr_599 = 0;
                  this._SafeStr_262 = _SafeStr_230;
                  this._SafeStr_147._SafeStr_153 = _SafeCls_27._SafeStr_633;
                  this._SafeStr_147.mVelocityY = _SafeCls_27._SafeStr_281;
                  this._SafeStr_147._SafeStr_154 = null;
                  this._SafeStr_147 = null;
               }
         }
         if(isNaN(this.mVelocityX) || isNaN(this.mVelocityY) || isNaN(this._SafeStr_121) || isNaN(this.mPhysPosY))
         {
         }
         if(this.mVelocityX)
         {
            this._SafeStr_121 += this.mVelocityX;
         }
         if(this.mVelocityY)
         {
            this.mPhysPosY += this.mVelocityY;
         }
         this.mPhysCenterX = this._SafeStr_121;
         this.mPhysCenterY = this.mPhysPosY - 250;
         if((this._SafeStr_262 == _SafeStr_825 || this._SafeStr_262 == _SafeStr_523) && Boolean(this._SafeStr_150))
         {
            this._SafeStr_150._SafeStr_319(this._SafeStr_121,this.mPhysPosY);
         }
         if((this._SafeStr_262 == _SafeStr_565 || this._SafeStr_262 == _SafeStr_666 || this._SafeStr_262 == _SafeStr_523 || this._SafeStr_262 == _SafeStr_545 || this._SafeStr_262 == _SafeStr_396) && Boolean(this._SafeStr_147))
         {
            this._SafeStr_147._SafeStr_319(this._SafeStr_121,this.mPhysPosY);
         }
         if(this._SafeStr_262 == _SafeStr_396 && Boolean(this._SafeStr_150._SafeStr_137 & _SafeCls_25.LOCAL))
         {
            _loc9_ = this._SafeStr_118._SafeStr_430(this._SafeStr_150,this.mPhysCenterX,this.mPhysCenterY,50,150,Game._SafeStr_580);
            if((Boolean(_loc9_)) && _loc9_.length > 0)
            {
               _loc10_ = _SafeCls_2._SafeStr_232["SpawnBotFlyby"];
               _loc11_ = new Point(_loc10_._SafeStr_1418,_loc10_._SafeStr_1815);
               _loc11_.normalize(1);
               for each(_loc12_ in _loc9_)
               {
                  if(_loc12_._SafeStr_1193() && this._SafeStr_864.indexOf(_loc12_) == -1)
                  {
                     this._SafeStr_864.push(_loc12_);
                     this._SafeStr_150.mCombatState._SafeStr_2907(_loc10_,_loc12_,_loc11_,0,true,1,0,0);
                  }
               }
            }
         }
         switch(this._SafeStr_262)
         {
            case _SafeStr_230:
            case _SafeStr_792:
            case _SafeStr_545:
               _loc13_ = this._SafeStr_710.width / this._SafeStr_188.width;
               _loc13_ = _loc13_ + (1 - _loc13_) * 0.75;
               _loc14_ = this._SafeStr_710.height / this._SafeStr_188.height;
               _loc14_ = _loc14_ + (1 - _loc14_) * 0.75;
               _loc15_ = this._SafeStr_710.x + this._SafeStr_710.width * 0.5;
               _loc16_ = this._SafeStr_710.y + this._SafeStr_710.height * 0.5;
               this._SafeStr_152 = _loc15_ + (this._SafeStr_121 - _loc15_) * _loc13_;
               this._SafeStr_162 = _loc16_ + (this.mPhysPosY - _loc16_) * _loc14_;
               this._SafeStr_1953 = _loc13_ > _loc14_ ? _loc13_ : _loc14_;
               break;
            default:
               this._SafeStr_152 = this._SafeStr_121;
               this._SafeStr_162 = this.mPhysPosY;
               this._SafeStr_1953 = 1;
         }
         this._SafeStr_125._SafeStr_120.x = this._SafeStr_152;
         this._SafeStr_125._SafeStr_120.y = this._SafeStr_162;
         this._SafeStr_3039();
      }
      
      private function _SafeStr_3039() : void
      {
         var _loc1_:Number = this._SafeStr_1953 * this._SafeStr_371;
         this._SafeStr_182 = this.mVelocityX != 0 ? this.mVelocityX < 0 : this._SafeStr_182;
         this._SafeStr_125._SafeStr_120.scaleX = _loc1_ * (this._SafeStr_182 == this._SafeStr_125._SafeStr_238._SafeStr_166._SafeStr_875 ? 1 : -1);
         this._SafeStr_125._SafeStr_120.scaleY = _loc1_;
         var _loc2_:uint = 0;
         switch(this._SafeStr_262)
         {
            case _SafeStr_825:
               _loc2_ |= this._SafeStr_150._SafeStr_529 ? _SafeCls_88._SafeStr_1170 : _SafeCls_88._SafeStr_698;
               if(this._SafeStr_150)
               {
                  this._SafeStr_150.mbLeft = this._SafeStr_182;
               }
               break;
            case _SafeStr_565:
            case _SafeStr_666:
            case _SafeStr_396:
            case _SafeStr_523:
               _loc2_ |= _SafeCls_88._SafeStr_698;
               break;
            case _SafeStr_1131:
            case _SafeStr_1013:
               _loc2_ |= _SafeCls_88._SafeStr_1289;
               break;
            case _SafeStr_230:
               if(this._SafeStr_371 > (1 + _SafeStr_778) * 0.5)
               {
                  _loc2_ |= _SafeCls_88._SafeStr_621;
               }
               break;
            case _SafeStr_792:
               if(this._SafeStr_118._SafeStr_714)
               {
                  _loc2_ |= _SafeCls_88._SafeStr_698;
               }
         }
         var _loc3_:_SafeCls_88 = this._SafeStr_125._SafeStr_138;
         _loc3_._SafeStr_160 = _loc2_;
      }
      
      public function _SafeStr_2762() : void
      {
         var _loc2_:Point = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc1_:uint = this._SafeStr_150 ? this._SafeStr_150.mEntID : 0;
         this._SafeStr_118.PlaySoundAtPosition(_loc1_,"drone_down",this._SafeStr_121,this.mPhysPosY);
         this._SafeStr_229(_SafeStr_792);
         if(this._SafeStr_150 && this._SafeStr_118.level._SafeStr_449 && Boolean(this._SafeStr_118.level._SafeStr_449.length))
         {
            _loc3_ = this._SafeStr_118.level._SafeStr_449.length;
            _loc4_ = this._SafeStr_118.mGameMode.mNumTeams;
            if(_loc4_ > 1)
            {
               _loc5_ = this._SafeStr_150._SafeStr_861 % (_loc3_ / _loc4_) + _loc3_ / _loc4_ * this._SafeStr_150.mTeam;
               if(_loc5_ >= _loc3_)
               {
                  _SafeCls_22._SafeStr_195("The respawn indexing has a bug. Given index: " + this._SafeStr_150._SafeStr_861 + ", num spawn points: " + _loc3_ + ", player team: " + this._SafeStr_150.mTeam + ", resulting index: " + _loc5_);
                  _loc5_ = this._SafeStr_150._SafeStr_861 % _loc3_;
               }
               _loc2_ = this._SafeStr_118.level._SafeStr_449[_loc5_];
            }
            else
            {
               _loc2_ = this._SafeStr_118.level._SafeStr_449[this._SafeStr_150._SafeStr_861 % _loc3_];
            }
            this._SafeStr_711 = _loc2_.x;
            this._SafeStr_700 = _loc2_.y;
         }
         else
         {
            this._SafeStr_711 = 0;
            this._SafeStr_700 = 0;
         }
         if(this._SafeStr_147)
         {
            this._SafeStr_147._SafeStr_153 = _SafeCls_27._SafeStr_406;
            this._SafeStr_147._SafeStr_154 = null;
            this._SafeStr_147 = null;
         }
      }
      
      public function _SafeStr_2753() : void
      {
         if(Boolean(this._SafeStr_118.level) && Boolean(this._SafeStr_118.level._SafeStr_2188))
         {
            this._SafeStr_383 = this._SafeStr_118.level._SafeStr_2188;
         }
         else
         {
            this._SafeStr_383 = new Rectangle(this._SafeStr_711 + _SafeStr_1018 * -0.5,this._SafeStr_700 + _SafeStr_1018 * -0.5,_SafeStr_1018,_SafeStr_1018);
         }
         this._SafeStr_121 = this._SafeStr_383.x + Math.random() * this._SafeStr_383.width;
         this.mPhysPosY = this._SafeStr_383.y + Math.random() * this._SafeStr_383.height;
         this._SafeStr_710 = this._SafeStr_118.mCamera._SafeStr_223;
         this._SafeStr_188 = this._SafeStr_118.level._SafeStr_253;
      }
      
      private function _SafeStr_671(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:int = int(param1) - int(param2);
         return _loc3_ <= 1 && _loc3_ >= -1;
      }
      
      public function _SafeStr_3324(param1:_SafeCls_27) : void
      {
         this._SafeStr_2334(param1);
         this._SafeStr_1701 = _SafeStr_545;
      }
      
      public function _SafeStr_3490(param1:_SafeCls_27, param2:Number, param3:Number) : void
      {
         this._SafeStr_2334(param1);
         this._SafeStr_1701 = _SafeStr_545;
         param1._SafeStr_1194 = param2;
         param1._SafeStr_1103 = param3;
      }
      
      public function _SafeStr_2689(param1:_SafeCls_27, param2:Number, param3:Number) : void
      {
         this._SafeStr_2334(param1);
         this._SafeStr_1701 = _SafeStr_396;
         this._SafeStr_2011 = param2 + 15;
         this._SafeStr_1642 = param3;
         this.mPhysPosY = this._SafeStr_1642 - 50;
         this._SafeStr_121 = this._SafeStr_188.right + _SafeStr_899;
      }
      
      public function _SafeStr_2334(param1:_SafeCls_27) : void
      {
         this._SafeStr_528.push(param1);
      }
      
      public function _SafeStr_3296() : void
      {
         if(this._SafeStr_262 != _SafeStr_396 && this._SafeStr_262 != _SafeStr_792)
         {
            this._SafeStr_229(SpawnBot._SafeStr_230);
         }
         this._SafeStr_147._SafeStr_154 = null;
         this._SafeStr_147 = null;
      }
      
      private function _SafeStr_3639() : void
      {
         var _loc1_:Graphics = null;
         if(this._SafeStr_620 == null)
         {
            this._SafeStr_620 = new Sprite();
            _loc1_ = this._SafeStr_620.graphics;
            _loc1_.lineStyle(10,16711680,1);
            _loc1_.beginFill(16711680,1);
            _loc1_.drawCircle(0,0,50);
            _loc1_.beginFill(16711680,1);
            _loc1_.endFill();
            this._SafeStr_118._SafeStr_164.addChildAt(this._SafeStr_620,0);
         }
         if(this._SafeStr_262 == _SafeStr_545 && this._SafeStr_118.mClientEnt == this._SafeStr_150)
         {
            this._SafeStr_620.visible = true;
            this._SafeStr_620.x = this._SafeStr_121;
            this._SafeStr_620.y = this.mPhysPosY;
         }
         else
         {
            this._SafeStr_620.visible = false;
         }
      }
      
      public function _SafeStr_1112(param1:Point, param2:Boolean) : void
      {
         this._SafeStr_583 = param1.x;
         this._SafeStr_568 = param1.y;
         this._SafeStr_2284 = true;
         if(param2)
         {
            this._SafeStr_147._SafeStr_153 = _SafeCls_27._SafeStr_406;
            this._SafeStr_147._SafeStr_154 = null;
            this._SafeStr_147 = null;
         }
      }
      
      public function _SafeStr_1146(param1:uint) : Boolean
      {
         return this._SafeStr_262 == param1;
      }
      
      public function _SafeStr_229(param1:uint) : void
      {
         var _loc2_:uint = 0;
         if(param1 == _SafeStr_396)
         {
            if(!this._SafeStr_355._SafeStr_120.visible)
            {
               this._SafeStr_355._SafeStr_120.visible = true;
               this._SafeStr_355._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,"Ready",true);
               this._SafeStr_434._SafeStr_120.visible = true;
               this._SafeStr_434._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,"Ready",true);
               _loc2_ = this._SafeStr_150 ? this._SafeStr_150.mEntID : 0;
               this._SafeStr_118.PlaySoundAtPosition(_loc2_,"drone_flyby",this._SafeStr_121,this.mPhysPosY);
            }
         }
         else if(this._SafeStr_355._SafeStr_120.visible)
         {
            this._SafeStr_355._SafeStr_120.visible = false;
            this._SafeStr_434._SafeStr_120.visible = false;
         }
         this._SafeStr_262 = param1;
         this._SafeStr_599 = 0;
         this._SafeStr_1183 = 0;
         this._SafeStr_786 = 0;
         this._SafeStr_798 = 0;
         this._SafeStr_457 = 0;
         this._SafeStr_947 = 0;
         this._SafeStr_1397 = 0;
         this._SafeStr_1645 = 0;
         this._SafeStr_1456 = 0;
         this._SafeStr_1724 = 0;
         this._SafeStr_991 = 0;
         this._SafeStr_1023 = 0;
         this._SafeStr_481 = 0;
         this._SafeStr_519 = 0;
         this._SafeStr_606 = 0;
         this._SafeStr_601 = 0;
         this._SafeStr_766 = 0;
         this.mVelocityX = 0;
         this.mVelocityY = 0;
         this._SafeStr_864.length = 0;
         this._SafeStr_1810 = 0;
      }
      
      public function _SafeStr_2533() : void
      {
         var _loc1_:_SafeCls_27 = null;
         if(this._SafeStr_262 == _SafeStr_565)
         {
            this._SafeStr_229(_SafeStr_545);
         }
         else if(this._SafeStr_262 == _SafeStr_545)
         {
            _loc1_ = this._SafeStr_528.shift();
            if(this._SafeStr_118._SafeStr_161 && this._SafeStr_118._SafeStr_365 && _loc1_ && _loc1_._SafeStr_159 && !this._SafeStr_118.IsPlayingWithoutServer())
            {
               this._SafeStr_118._SafeStr_161._SafeStr_1762(_loc1_._SafeStr_159._SafeStr_173);
            }
            this._SafeStr_229(_SafeStr_230);
         }
      }
      
      public function _SafeStr_3094() : void
      {
         this._SafeStr_121 = this._SafeStr_118.level._SafeStr_253.x + this._SafeStr_118.level._SafeStr_253.width * 0.5;
         this.mPhysPosY = this._SafeStr_118.level._SafeStr_253.y - 200;
         if(this._SafeStr_255 != this._SafeStr_118._SafeStr_164)
         {
            this._SafeStr_255 = this._SafeStr_118._SafeStr_164;
            this._SafeStr_255.addChildAt(this._SafeStr_125._SafeStr_120,0);
         }
         else
         {
            this._SafeStr_255.setChildIndex(this._SafeStr_125._SafeStr_120,0);
         }
         this._SafeStr_371 = 1;
         this._SafeStr_2762();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "_-jR"
 * @identifier _SafeCls_11 = "_-XP"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_27 = "_-C7"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_121 = "_-Dk"
 * @identifier _SafeStr_125 = "_-5"
 * @identifier _SafeStr_137 = "_-3"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_147 = "_-fd"
 * @identifier _SafeStr_150 = "_-Ia"
 * @identifier _SafeStr_152 = "_-PC"
 * @identifier _SafeStr_153 = "_-2k"
 * @identifier _SafeStr_154 = "_-1N"
 * @identifier _SafeStr_159 = "_-eE"
 * @identifier _SafeStr_160 = "_-CV"
 * @identifier _SafeStr_161 = "_-ve"
 * @identifier _SafeStr_162 = "_-a4"
 * @identifier _SafeStr_164 = "_-QU"
 * @identifier _SafeStr_166 = "_-PJ"
 * @identifier _SafeStr_173 = "_-KG"
 * @identifier _SafeStr_180 = "_-az"
 * @identifier _SafeStr_182 = "_-af"
 * @identifier _SafeStr_188 = "_-qs"
 * @identifier _SafeStr_194 = "_-rD"
 * @identifier _SafeStr_195 = "_-70"
 * @identifier _SafeStr_201 = "_-x"
 * @identifier _SafeStr_223 = "_-8x"
 * @identifier _SafeStr_227 = "_-XT"
 * @identifier _SafeStr_228 = "_-QK"
 * @identifier _SafeStr_229 = "_-Jj"
 * @identifier _SafeStr_230 = "_-51"
 * @identifier _SafeStr_232 = "_-6u"
 * @identifier _SafeStr_238 = "_-0F"
 * @identifier _SafeStr_244 = "_-HJ"
 * @identifier _SafeStr_253 = "_-BW"
 * @identifier _SafeStr_255 = "_-Y2"
 * @identifier _SafeStr_262 = "_-Wm"
 * @identifier _SafeStr_281 = "_-Ii"
 * @identifier _SafeStr_292 = "_-6U"
 * @identifier _SafeStr_298 = "_-j2"
 * @identifier _SafeStr_307 = "_-mp"
 * @identifier _SafeStr_314 = "_-9t"
 * @identifier _SafeStr_319 = "_-vX"
 * @identifier _SafeStr_351 = "_-Mq"
 * @identifier _SafeStr_354 = "_-4x"
 * @identifier _SafeStr_355 = "_-CW"
 * @identifier _SafeStr_358 = "_-la"
 * @identifier _SafeStr_365 = "_-eH"
 * @identifier _SafeStr_371 = "_-9h"
 * @identifier _SafeStr_383 = "_-4D"
 * @identifier _SafeStr_396 = "_-Fy"
 * @identifier _SafeStr_406 = "_-wZ"
 * @identifier _SafeStr_430 = "_-kA"
 * @identifier _SafeStr_434 = "_-tj"
 * @identifier _SafeStr_449 = "_-UC"
 * @identifier _SafeStr_457 = "_-K-"
 * @identifier _SafeStr_481 = "_-JC"
 * @identifier _SafeStr_519 = "_-Xu"
 * @identifier _SafeStr_523 = "_-Me"
 * @identifier _SafeStr_528 = "_-sV"
 * @identifier _SafeStr_529 = "_-mi"
 * @identifier _SafeStr_536 = "_-Va"
 * @identifier _SafeStr_545 = "_-YG"
 * @identifier _SafeStr_546 = "_-ej"
 * @identifier _SafeStr_565 = "_-el"
 * @identifier _SafeStr_568 = "_-nV"
 * @identifier _SafeStr_580 = "_-4J"
 * @identifier _SafeStr_583 = "_-16"
 * @identifier _SafeStr_599 = "_-vW"
 * @identifier _SafeStr_601 = "_-Vs"
 * @identifier _SafeStr_606 = "_-Hz"
 * @identifier _SafeStr_620 = "_-1s"
 * @identifier _SafeStr_621 = "_-p-"
 * @identifier _SafeStr_633 = "_-en"
 * @identifier _SafeStr_666 = "_-nd"
 * @identifier _SafeStr_671 = "_-2F"
 * @identifier _SafeStr_698 = "_-bd"
 * @identifier _SafeStr_700 = "_-1u"
 * @identifier _SafeStr_710 = "_-Ff"
 * @identifier _SafeStr_711 = "_-SH"
 * @identifier _SafeStr_714 = "_-pE"
 * @identifier _SafeStr_763 = "_-W7"
 * @identifier _SafeStr_766 = "_-ET"
 * @identifier _SafeStr_778 = "_-OV"
 * @identifier _SafeStr_786 = "_-iD"
 * @identifier _SafeStr_792 = "_-Zj"
 * @identifier _SafeStr_798 = "_-le"
 * @identifier _SafeStr_825 = "_-B5"
 * @identifier _SafeStr_861 = "_-ge"
 * @identifier _SafeStr_862 = "_-qm"
 * @identifier _SafeStr_864 = "_-kR"
 * @identifier _SafeStr_875 = "_-cK"
 * @identifier _SafeStr_899 = "_-LO"
 * @identifier _SafeStr_947 = "_-v0"
 * @identifier _SafeStr_991 = "_-Le"
 * @identifier _SafeStr_1013 = "_-8v"
 * @identifier _SafeStr_1018 = "_-px"
 * @identifier _SafeStr_1023 = "_-jc"
 * @identifier _SafeStr_1049 = "_-hX"
 * @identifier _SafeStr_1089 = "_-b9"
 * @identifier _SafeStr_1103 = "_-BX"
 * @identifier _SafeStr_1112 = "_-EZ"
 * @identifier _SafeStr_1131 = "_-EG"
 * @identifier _SafeStr_1144 = "_-we"
 * @identifier _SafeStr_1146 = "_-XC"
 * @identifier _SafeStr_1170 = "_-T0"
 * @identifier _SafeStr_1183 = "_-Uy"
 * @identifier _SafeStr_1193 = "_-I3"
 * @identifier _SafeStr_1194 = "null"
 * @identifier _SafeStr_1289 = "_-bJ"
 * @identifier _SafeStr_1397 = "_-jH"
 * @identifier _SafeStr_1418 = "_-h"
 * @identifier _SafeStr_1453 = "false"
 * @identifier _SafeStr_1456 = "_-QC"
 * @identifier _SafeStr_1474 = "_-YR"
 * @identifier _SafeStr_1560 = "_-vV"
 * @identifier _SafeStr_1642 = "_-BD"
 * @identifier _SafeStr_1645 = "_-G1"
 * @identifier _SafeStr_1686 = "_-6b"
 * @identifier _SafeStr_1687 = "_-EJ"
 * @identifier _SafeStr_1701 = "_-Jh"
 * @identifier _SafeStr_1710 = "_-qr"
 * @identifier _SafeStr_1724 = "_-us"
 * @identifier _SafeStr_1762 = "_-Wg"
 * @identifier _SafeStr_1810 = "_-mj"
 * @identifier _SafeStr_1815 = "_-kf"
 * @identifier _SafeStr_1953 = "_-kK"
 * @identifier _SafeStr_2011 = "_-al"
 * @identifier _SafeStr_2064 = "_-kx"
 * @identifier _SafeStr_2069 = "_-rI"
 * @identifier _SafeStr_2171 = "_-vU"
 * @identifier _SafeStr_2188 = "_-EF"
 * @identifier _SafeStr_2284 = "_-E7"
 * @identifier _SafeStr_2290 = "_-t7"
 * @identifier _SafeStr_2334 = "_-h6"
 * @identifier _SafeStr_2343 = "_-5V"
 * @identifier _SafeStr_2374 = "_-qX"
 * @identifier _SafeStr_2533 = "_-v"
 * @identifier _SafeStr_2613 = "_-ni"
 * @identifier _SafeStr_2625 = "_-Uc"
 * @identifier _SafeStr_2674 = "_-wt"
 * @identifier _SafeStr_2689 = "_-iR"
 * @identifier _SafeStr_2753 = "_-cJ"
 * @identifier _SafeStr_2762 = "_-mD"
 * @identifier _SafeStr_2907 = "_-XA"
 * @identifier _SafeStr_3039 = "_-uc"
 * @identifier _SafeStr_3094 = "_-il"
 * @identifier _SafeStr_3111 = "_-7c"
 * @identifier _SafeStr_3296 = "_-B7"
 * @identifier _SafeStr_3324 = "_-sj"
 * @identifier _SafeStr_3490 = "_-9O"
 * @identifier _SafeStr_3639 = "each"
 */
