package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.StageQuality;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   
   public class _SafeCls_12
   {
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_533:Vector.<_SafeCls_35>;
      
      internal var _SafeStr_794:Vector.<_SafeCls_35>;
      
      internal var _SafeStr_2521:Boolean = false;
      
      internal var _SafeStr_1675:Boolean = false;
      
      public function _SafeCls_12(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_533 = new Vector.<_SafeCls_35>();
         this._SafeStr_794 = new Vector.<_SafeCls_35>();
      }
      
      public static function _SafeStr_873(param1:String) : void
      {
         _SafeCls_34._SafeStr_1173 = param1;
      }
      
      public static function _SafeStr_3635(param1:Game, param2:String, param3:Number) : Bitmap
      {
         var _loc4_:Bitmap = new Bitmap(null,PixelSnapping.ALWAYS);
         var _loc5_:MovieClip = _SafeStr_294(param2);
         var _loc6_:Rectangle = _loc5_.getBounds(_loc5_);
         var _loc7_:Number = param1.main._SafeStr_429;
         var _loc8_:Number = _loc7_ * param3;
         var _loc9_:uint = Math.ceil(_loc6_.width * _loc8_);
         var _loc10_:uint = Math.ceil(_loc6_.height * _loc8_);
         if(!_loc10_ || !_loc9_)
         {
            return _loc4_;
         }
         var _loc11_:BitmapData = new BitmapData(_loc9_,_loc10_,true,0);
         _loc11_.drawWithQuality(_loc5_,new Matrix(_loc8_,0,0,_loc8_,-_loc6_.x * _loc8_,-_loc6_.y * _loc8_),null,null,null,false,StageQuality.HIGH);
         _loc4_.bitmapData = _loc11_;
         var _loc12_:Number = 1 / _loc8_;
         _loc4_.x = _loc6_.x * param3;
         _loc4_.y = _loc6_.y * param3;
         _loc4_.scaleX = _loc12_;
         _loc4_.scaleY = _loc12_;
         return _loc4_;
      }
      
      public static function _SafeStr_294(param1:String, param2:Boolean = false) : MovieClip
      {
         var _loc3_:MovieClip = null;
         var _loc5_:Class = null;
         var _loc4_:ApplicationDomain = ApplicationDomain.currentDomain;
         if(!_loc4_.hasDefinition(param1))
         {
            _loc3_ = new MovieClip();
         }
         else
         {
            _loc5_ = _loc4_.getDefinition(param1) as Class;
            _loc3_ = new _loc5_();
         }
         _SafeStr_1522(_loc3_,param2);
         return _loc3_;
      }
      
      public static function _SafeStr_1522(param1:DisplayObjectContainer, param2:Boolean = false) : void
      {
         var _loc3_:TextField = null;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(!param2)
         {
            param1.mouseEnabled = false;
            param1.mouseChildren = false;
         }
         var _loc6_:uint = uint(param1.numChildren);
         var _loc7_:uint = 0;
         while(_loc7_ < _loc6_)
         {
            _loc4_ = param1.getChildAt(_loc7_);
            _loc3_ = _loc4_ as TextField;
            if(_loc3_)
            {
               _loc3_.embedFonts = true;
               _loc3_.antiAliasType = AntiAliasType.ADVANCED;
            }
            else
            {
               _loc5_ = _loc4_ as DisplayObjectContainer;
               if(_loc5_)
               {
                  _SafeStr_1522(_loc5_,param2);
               }
            }
            _loc7_++;
         }
      }
      
      public function _SafeStr_2780() : void
      {
         var _loc1_:_SafeCls_35 = null;
         for each(_loc1_ in this._SafeStr_794)
         {
            _loc1_._SafeStr_3540();
         }
         this._SafeStr_794 = null;
         this._SafeStr_533 = null;
         this._SafeStr_118 = null;
      }
      
      private function _SafeStr_2710(param1:MouseEvent) : void
      {
         this._SafeStr_2521 = true;
         param1.stopPropagation();
      }
      
      private function _SafeStr_2465(param1:MouseEvent) : void
      {
         this._SafeStr_2521 = false;
         param1.stopPropagation();
      }
      
      private function _SafeStr_1698(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      public function _SafeStr_222(param1:Class) : _SafeCls_35
      {
         var _loc2_:_SafeCls_35 = new param1(this._SafeStr_118);
         this._SafeStr_794.push(_loc2_);
         _loc2_._SafeStr_1320 = this._SafeStr_794.length;
         return _loc2_;
      }
      
      public function _SafeStr_3710() : void
      {
         this._SafeStr_794.fixed = true;
      }
      
      public function _SafeStr_3516(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = _SafeStr_294(param1,true);
         _loc2_.addEventListener(MouseEvent.ROLL_OVER,this._SafeStr_2710);
         _loc2_.addEventListener(MouseEvent.ROLL_OUT,this._SafeStr_2465);
         _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_1698);
         _loc2_.addEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this._SafeStr_1698);
         return _loc2_;
      }
      
      public function _SafeStr_3166(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.ROLL_OVER,this._SafeStr_2710);
         param1.removeEventListener(MouseEvent.ROLL_OUT,this._SafeStr_2465);
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_1698);
         param1.removeEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this._SafeStr_1698);
      }
      
      public function _SafeStr_3300() : void
      {
         var _loc1_:_SafeCls_35 = null;
         var _loc2_:* = int(this._SafeStr_533.length - 1);
         while(_loc2_ >= 0)
         {
            _loc1_ = this._SafeStr_533[_loc2_];
            if(_loc1_._SafeStr_690)
            {
               _loc1_.Hide();
            }
            _loc2_--;
         }
      }
      
      public function _SafeStr_841() : void
      {
         var _loc1_:_SafeCls_35 = null;
         var _loc2_:* = int(this._SafeStr_533.length - 1);
         while(_loc2_ >= 0)
         {
            _loc1_ = this._SafeStr_533[_loc2_];
            _loc1_._SafeStr_2990();
            _loc2_--;
         }
      }
      
      public function _SafeStr_3573() : Boolean
      {
         return this._SafeStr_1675;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_12 = "_-G5"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_222 = "_-0i"
 * @identifier _SafeStr_294 = "_-2P"
 * @identifier _SafeStr_429 = "_-Y4"
 * @identifier _SafeStr_533 = "_-YQ"
 * @identifier _SafeStr_690 = "_-pK"
 * @identifier _SafeStr_794 = "_-c1"
 * @identifier _SafeStr_841 = "_-4L"
 * @identifier _SafeStr_873 = "_-VZ"
 * @identifier _SafeStr_1173 = "_-mF"
 * @identifier _SafeStr_1320 = "_-Hq"
 * @identifier _SafeStr_1522 = "_-62"
 * @identifier _SafeStr_1675 = "_-Ir"
 * @identifier _SafeStr_1698 = "_-Qw"
 * @identifier _SafeStr_2465 = "_-KP"
 * @identifier _SafeStr_2521 = "_-Hu"
 * @identifier _SafeStr_2710 = "_-wm"
 * @identifier _SafeStr_2780 = "_-Lo"
 * @identifier _SafeStr_2990 = "_-Qc"
 * @identifier _SafeStr_3166 = "_-fD"
 * @identifier _SafeStr_3300 = "_-2l"
 * @identifier _SafeStr_3516 = "_-IG"
 * @identifier _SafeStr_3540 = "_-jv"
 * @identifier _SafeStr_3573 = "_-fS"
 * @identifier _SafeStr_3635 = "_-Qs"
 * @identifier _SafeStr_3710 = "_-Mk"
 */
