package
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class _SafeCls_83
   {
      
      private static const _SafeStr_1572:Sprite = new Sprite();
      
      private static const _SafeStr_1107:Matrix = new Matrix();
      
      private static const _SafeStr_692:TextField = new TextField();
      
      private static const _SafeStr_1305:Sprite = new Sprite();
      
      private static const _SafeStr_969:uint = 5;
      
      private static const _SafeStr_562:Vector.<uint> = new Vector.<uint>(_SafeStr_969,true);
      
      private static const _SafeStr_725:Vector.<uint> = new Vector.<uint>(_SafeStr_969,true);
      
      private static const _SafeStr_797:Vector.<uint> = new Vector.<uint>(_SafeStr_969,true);
      
      _SafeStr_692.textColor = 16777215;
      _SafeStr_692.scaleX = 1.5;
      _SafeStr_692.scaleY = 1.5;
      _SafeStr_692.filters = [new GlowFilter(0,1,4,4,10)];
      _SafeStr_1305.addChild(_SafeStr_692);
      _SafeStr_562[0] = 0;
      _SafeStr_725[0] = 16777215;
      _SafeStr_797[0] = 0;
      _SafeStr_562[1] = 25;
      _SafeStr_725[1] = 65280;
      _SafeStr_797[1] = 0.2;
      _SafeStr_562[2] = 50;
      _SafeStr_725[2] = 16776960;
      _SafeStr_797[2] = 0.4;
      _SafeStr_562[3] = 100;
      _SafeStr_725[3] = 16711680;
      _SafeStr_797[3] = 0.6;
      _SafeStr_562[4] = 200;
      _SafeStr_725[4] = 8388736;
      _SafeStr_797[4] = 0.8;
      
      public function _SafeCls_83()
      {
         super();
      }
      
      public static function _SafeStr_2704(param1:BitmapData, param2:uint, param3:String, param4:Rectangle) : void
      {
         if(param2 < _SafeStr_562[0])
         {
            return;
         }
         var _loc5_:uint = _SafeStr_969 - 1;
         while(Boolean(_loc5_) && param2 < _SafeStr_562[_loc5_])
         {
            _loc5_--;
         }
         var _loc6_:Graphics = _SafeStr_1572.graphics;
         _loc6_.clear();
         _loc6_.lineStyle(2,0);
         _loc6_.beginFill(_SafeStr_725[_loc5_],0.3);
         if(param4)
         {
            _loc6_.drawRect(param4.x,param4.y,param4.width,param4.height);
         }
         else
         {
            _loc6_.drawRect(0,0,param1.width,param1.height);
         }
         _loc6_.endFill();
         param1.drawWithQuality(_SafeStr_1572,null,null,null,null,false,StageQuality.LOW);
         _SafeStr_692.text = String(param2) + " ms, " + param3;
         if(!param4)
         {
            param1.drawWithQuality(_SafeStr_1305,null,null,null,null,false,StageQuality.LOW);
         }
         else
         {
            _SafeStr_1107.tx = param4.x;
            _SafeStr_1107.ty = param4.y;
            param1.drawWithQuality(_SafeStr_1305,_SafeStr_1107,null,null,null,false,StageQuality.LOW);
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_83 = "_-YW"
 * @identifier _SafeStr_562 = "_-pk"
 * @identifier _SafeStr_692 = "_-eK"
 * @identifier _SafeStr_725 = "switch"
 * @identifier _SafeStr_797 = "_-ne"
 * @identifier _SafeStr_969 = "_-g9"
 * @identifier _SafeStr_1107 = "_-ht"
 * @identifier _SafeStr_1305 = "_-aM"
 * @identifier _SafeStr_1572 = "_-0t"
 * @identifier _SafeStr_2704 = "_-oe"
 */
