package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class _SafeCls_74
   {
      
      internal static var _SafeStr_1015:MovieClip;
      
      internal static var _SafeStr_1527:Sprite;
      
      internal static var _SafeStr_1507:Array = new Array();
      
      internal static var _SafeStr_1250:uint = 0;
      
      internal static var _SafeStr_2800:Boolean = false;
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_189:Sprite;
      
      internal var _SafeStr_1558:_SafeCls_40;
      
      internal var _SafeStr_2503:Number;
      
      internal var _SafeStr_832:Number = 5;
      
      internal var _SafeStr_3502:Number = 0;
      
      internal var _SafeStr_1177:Number = 200;
      
      internal var _SafeStr_1506:Number = 400;
      
      internal var _SafeStr_1930:Number = 0;
      
      internal var _SafeStr_3272:Boolean = false;
      
      internal var _SafeStr_728:int = 0;
      
      internal var scale:Number = 1;
      
      internal var _SafeStr_1501:Boolean = false;
      
      public function _SafeCls_74(param1:Game, param2:String, param3:Number, param4:Number, param5:uint, param6:Number, param7:Boolean, param8:MovieClip = null, param9:_SafeCls_40 = null, param10:uint = 0)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_2503 = this._SafeStr_118.mTimeThisTick;
         this.scale = param6;
         if(param8)
         {
            param8.mouseChildren = false;
            param8.mouseEnabled = false;
            this._SafeStr_189 = param8;
            this._SafeStr_1558 = param9;
            this._SafeStr_189.scaleX = this._SafeStr_189.scaleY = this.scale;
            this._SafeStr_189.x = 0;
            this._SafeStr_189.y = 0;
         }
         else
         {
            this._SafeStr_189 = new Sprite();
            this._SafeStr_189.mouseChildren = false;
            this._SafeStr_189.mouseEnabled = false;
            this._SafeStr_189.addChild(this._SafeStr_3294(param2,this.scale,param5));
         }
         this._SafeStr_189.x = param3;
         this._SafeStr_189.y = param4;
         if(param7)
         {
            this._SafeStr_118._SafeStr_707.addChild(this._SafeStr_189);
         }
         else
         {
            this._SafeStr_118._SafeStr_381.addChild(this._SafeStr_189);
         }
         this._SafeStr_1930 = param10;
      }
      
      public function _SafeStr_3294(param1:String, param2:Number, param3:uint) : Bitmap
      {
         var _loc7_:TextField = null;
         var _loc8_:Rectangle = null;
         var _loc9_:Matrix = null;
         var _loc10_:Number = NaN;
         var _loc4_:BitmapData = null;
         var _loc5_:String = null;
         if(param1.length < 6 && param2 < 2)
         {
            _loc5_ = param1 + ":" + param2 + ":" + param3;
            _loc4_ = _SafeStr_1507[_loc5_];
            this._SafeStr_1501 = false;
         }
         else
         {
            this._SafeStr_1501 = true;
         }
         if(!_loc4_)
         {
            if(!_SafeStr_1015)
            {
               _SafeStr_1015 = _SafeCls_12._SafeStr_294("a_ScoreFloater");
               _SafeStr_1527 = new Sprite();
               _SafeStr_1527.addChild(_SafeStr_1015);
            }
            _loc7_ = _SafeStr_1015["am_FloatText"];
            _loc7_.textColor = param3;
            _loc7_.x = 0;
            _loc7_.y = 0;
            _loc7_.width = 0;
            _loc7_.height = 0;
            _loc7_.scaleX = param2 * this._SafeStr_118.main._SafeStr_429;
            _loc7_.scaleY = param2 * this._SafeStr_118.main._SafeStr_429;
            _loc7_.autoSize = TextFieldAutoSize.LEFT;
            _loc7_.wordWrap = false;
            _SafeCls_19._SafeStr_374(_loc7_,param1);
            _loc7_.autoSize = TextFieldAutoSize.LEFT;
            _loc7_.antiAliasType = "advanced";
            _loc7_.autoSize = TextFieldAutoSize.LEFT;
            _loc8_ = _loc7_.getBounds(_SafeStr_1015.parent);
            _loc9_ = new Matrix();
            _loc9_.tx = -_loc8_.x;
            _loc9_.ty = -_loc8_.y;
            _loc10_ = 4 * this._SafeStr_118.main._SafeStr_429;
            _loc4_ = new BitmapData(_loc7_.width + _loc10_,_loc7_.height + _loc10_,true,0);
            _loc4_.drawWithQuality(_SafeStr_1527,_loc9_,null,null,null,true,StageQuality.HIGH);
            if(!this._SafeStr_1501)
            {
               _SafeStr_1507[_loc5_] = _loc4_;
               _SafeStr_1250 += _loc4_.height * _loc4_.width * 4;
            }
         }
         var _loc6_:Bitmap = new Bitmap(_loc4_,PixelSnapping.ALWAYS,true);
         _loc6_.scaleX = _loc6_.scaleY = 1 / this._SafeStr_118.main._SafeStr_429;
         _loc6_.x = int(-_loc6_.width / 2);
         _loc6_.y = int(-_loc6_.height / 1.2);
         return _loc6_;
      }
      
      public function DestroyTextFloater() : void
      {
         var _loc1_:Bitmap = null;
         if(this._SafeStr_1501)
         {
            _loc1_ = this._SafeStr_189.getChildAt(0) as Bitmap;
            _loc1_.bitmapData.dispose();
         }
         if(this._SafeStr_1558)
         {
            this._SafeStr_1558._SafeStr_201();
         }
         this._SafeStr_1558 = null;
         if(Boolean(this._SafeStr_189) && Boolean(this._SafeStr_189.parent))
         {
            this._SafeStr_189.parent.removeChild(this._SafeStr_189);
         }
         this._SafeStr_189 = null;
         this._SafeStr_118 = null;
      }
      
      public function _SafeStr_3660() : Boolean
      {
         var _loc1_:Number = this._SafeStr_118.mTimeThisTick - this._SafeStr_2503 - this._SafeStr_1930;
         if(_loc1_ < this._SafeStr_1930)
         {
            return true;
         }
         if(_loc1_ > this._SafeStr_1177)
         {
            this._SafeStr_189.alpha = 1 - (_loc1_ - this._SafeStr_1177) / (this._SafeStr_1506 - this._SafeStr_1177);
         }
         this._SafeStr_189.y -= this._SafeStr_118._SafeStr_227 * this._SafeStr_832;
         this._SafeStr_832 -= this._SafeStr_3502 * this._SafeStr_118._SafeStr_227;
         if(this._SafeStr_3272)
         {
            ++this._SafeStr_728;
            if(this._SafeStr_728 >= 6)
            {
               this._SafeStr_189.scaleX = this._SafeStr_189.scaleY = 1;
            }
            else if(this._SafeStr_728 == 5)
            {
               this._SafeStr_189.scaleX = this._SafeStr_189.scaleY = 1.3076923076923077;
            }
            else if(this._SafeStr_728 == 4)
            {
               this._SafeStr_189.scaleX = this._SafeStr_189.scaleY = 1.6230769230769229;
            }
            else if(this._SafeStr_728 == 3)
            {
               this._SafeStr_189.scaleX = this._SafeStr_189.scaleY = 1.923076923076923;
            }
            else if(this._SafeStr_728 == 2)
            {
               this._SafeStr_189.scaleX = this._SafeStr_189.scaleY = 1.346153846153846;
            }
            else if(this._SafeStr_728 == 1)
            {
               this._SafeStr_189.scaleX = this._SafeStr_189.scaleY = 0.7692307692307692;
            }
         }
         if(this._SafeStr_832 < 0)
         {
            this._SafeStr_832 = 0;
         }
         return _loc1_ <= this._SafeStr_1506;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_12 = "_-G5"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_74 = "_-3f"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_189 = "_-9u"
 * @identifier _SafeStr_201 = "_-x"
 * @identifier _SafeStr_227 = "_-XT"
 * @identifier _SafeStr_294 = "_-2P"
 * @identifier _SafeStr_374 = "_-ws"
 * @identifier _SafeStr_381 = "_-7W"
 * @identifier _SafeStr_429 = "_-Y4"
 * @identifier _SafeStr_707 = "_-nM"
 * @identifier _SafeStr_728 = "_-C2"
 * @identifier _SafeStr_832 = "_-BF"
 * @identifier _SafeStr_1015 = "_-fM"
 * @identifier _SafeStr_1177 = "_-81"
 * @identifier _SafeStr_1250 = "_-ii"
 * @identifier _SafeStr_1501 = "_-BE"
 * @identifier _SafeStr_1506 = "_-n6"
 * @identifier _SafeStr_1507 = "_-JF"
 * @identifier _SafeStr_1527 = "_-8g"
 * @identifier _SafeStr_1558 = "_-pn"
 * @identifier _SafeStr_1930 = "_-8z"
 * @identifier _SafeStr_2503 = "_-CP"
 * @identifier _SafeStr_2800 = "_-LP"
 * @identifier _SafeStr_3272 = "_-ax"
 * @identifier _SafeStr_3294 = "_-ld"
 * @identifier _SafeStr_3502 = "_-JW"
 * @identifier _SafeStr_3660 = "_-ZV"
 */
