package
{
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   
   public class _SafeCls_13
   {
      
      public static var _SafeStr_944:Boolean;
      
      private static const _SafeStr_1553:Dictionary = new Dictionary();
      
      private static const _SafeStr_1485:Dictionary = new Dictionary();
      
      public static var _SafeStr_526:Number = 0;
      
      private static const _SafeStr_1615:SoundTransform = new SoundTransform(_SafeStr_526);
      
      private static var _SafeStr_512:Vector.<_SafeCls_36> = new Vector.<_SafeCls_36>();
      
      public function _SafeCls_13()
      {
         super();
      }
      
      public static function _SafeStr_2677(param1:Number) : void
      {
         _SafeStr_526 = param1;
         _SafeStr_1615.volume = param1;
      }
      
      public static function _SafeStr_3640(param1:Boolean) : void
      {
         var _loc2_:_SafeCls_36 = null;
         if(param1 == _SafeStr_944)
         {
            return;
         }
         _SafeStr_944 = param1;
         SoundMixer.soundTransform = new SoundTransform(param1 ? 0 : 1);
         for each(_loc2_ in _SafeStr_512)
         {
            if(!param1)
            {
               _loc2_._SafeStr_2654();
            }
            else
            {
               _loc2_._SafeStr_2031();
            }
         }
      }
      
      public static function _SafeStr_2043(param1:uint) : Number
      {
         var _loc2_:_SafeCls_36 = _SafeStr_512[param1];
         return _loc2_ ? _loc2_._SafeStr_414 : 0;
      }
      
      public static function _SafeStr_3297(param1:Number, param2:Number) : uint
      {
         var _loc3_:uint = _SafeStr_512.length;
         var _loc4_:_SafeCls_36 = new _SafeCls_36(_loc3_,param1,param2);
         _SafeStr_512.push(_loc4_);
         return _loc3_;
      }
      
      public static function _SafeStr_2903(param1:uint, param2:Number) : void
      {
         var _loc6_:SoundTransform = null;
         var _loc3_:_SafeCls_36 = _SafeStr_512[param1];
         if(!_loc3_)
         {
            return;
         }
         if(_loc3_._SafeStr_414 == param2)
         {
            return;
         }
         var _loc4_:Number = _loc3_._SafeStr_414;
         _loc3_._SafeStr_414 = param2;
         var _loc5_:SoundChannel = _loc3_._SafeStr_720;
         if(param2 <= 0)
         {
            _loc3_._SafeStr_2031();
         }
         else if(_loc4_ <= 0)
         {
            _loc3_._SafeStr_2654();
         }
         else if(_loc5_)
         {
            _loc6_ = _loc5_.soundTransform;
            _loc6_.volume = _loc3_._SafeStr_785 * param2;
            _loc5_.soundTransform = _loc6_;
         }
      }
      
      public static function _SafeStr_3576() : void
      {
         var _loc1_:_SafeCls_36 = null;
         for each(_loc1_ in _SafeStr_512)
         {
            _loc1_._SafeStr_3422();
         }
      }
      
      public static function _SafeStr_1052(param1:uint, param2:String, param3:Number = 1) : void
      {
         var _loc4_:_SafeCls_36 = _SafeStr_512[param1];
         if(!_loc4_)
         {
            return;
         }
         _loc4_._SafeStr_2031();
         _loc4_._SafeStr_1849 = param2;
         _loc4_._SafeStr_2966 = param3;
         if(!param2 || _loc4_._SafeStr_414 <= 0 || _SafeStr_944)
         {
            return;
         }
         var _loc5_:Sound = _SafeStr_1549(param2);
         var _loc6_:SoundChannel = _SafeStr_964(_loc5_,0,true);
         if(!_loc6_)
         {
            return;
         }
         _loc6_.soundTransform = new SoundTransform(_loc4_._SafeStr_1867 ? param3 * _loc4_._SafeStr_414 : 0);
         _loc4_._SafeStr_1135 = _loc5_;
         _loc4_._SafeStr_720 = _loc6_;
      }
      
      public static function _SafeStr_3742(param1:uint, param2:String, param3:Number = 1) : void
      {
         var _loc4_:_SafeCls_36 = _SafeStr_512[param1];
         if(!_loc4_ || _loc4_._SafeStr_414 <= 0 || _SafeStr_944)
         {
            return;
         }
         var _loc5_:Sound = _SafeStr_1549(param2);
         var _loc6_:SoundChannel = _SafeStr_964(_loc5_,0,false);
         if(_loc6_)
         {
            _loc6_.soundTransform = new SoundTransform(param3 * _loc4_._SafeStr_414);
         }
      }
      
      public static function _SafeStr_622(param1:String, param2:Number = 1, param3:Boolean = false, param4:Number = 0) : SoundChannel
      {
         var _loc9_:String = null;
         var _loc10_:Sound = null;
         var _loc11_:SoundChannel = null;
         var _loc12_:ApplicationDomain = null;
         if(_SafeStr_526 <= 0 || _SafeStr_944)
         {
            return null;
         }
         var _loc5_:Array = param1.split("|");
         var _loc6_:uint = uint(Math.random() * _loc5_.length);
         param1 = _loc5_[_loc6_];
         var _loc7_:SoundChannel = null;
         var _loc8_:Array = param1.split(",");
         for each(_loc9_ in _loc8_)
         {
            if(_loc9_ != "snd_silence")
            {
               _loc10_ = _SafeStr_1553[_loc9_];
               if(!_loc10_)
               {
                  _loc12_ = ApplicationDomain.currentDomain;
                  if(!_loc12_.hasDefinition(_loc9_))
                  {
                     _SafeStr_2870(_loc9_);
                     continue;
                  }
                  var _loc13_:Class = _loc12_.getDefinition(_loc9_) as Class;
                  _loc10_ = new _loc13_();
                  _SafeStr_1553[_loc9_] = _loc10_;
               }
               _loc11_ = _SafeStr_964(_loc10_,param4,param3);
               if(_loc11_)
               {
                  if(param2 != 1)
                  {
                     _loc11_.soundTransform = new SoundTransform(_SafeStr_526 * param2);
                  }
                  else
                  {
                     _loc11_.soundTransform = _SafeStr_1615;
                  }
                  _loc7_ = _loc11_;
               }
            }
         }
         return _loc7_;
      }
      
      private static function _SafeStr_2870(param1:String) : void
      {
         _SafeCls_22._SafeStr_195("SoundManager: Could not find sound: " + param1);
      }
      
      public static function _SafeStr_750(param1:SoundChannel) : SoundChannel
      {
         if(param1)
         {
            param1.stop();
         }
         return null;
      }
      
      private static function _SafeStr_1549(param1:String) : Sound
      {
         var _loc2_:Sound = _SafeStr_1485[param1];
         if(!_loc2_)
         {
            _loc2_ = new Sound(_SafeCls_9._SafeStr_3329("mp3/" + param1),new SoundLoaderContext(3000));
            _loc2_.addEventListener(IOErrorEvent.IO_ERROR,_SafeStr_2815);
            _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,_SafeStr_2815);
            _SafeStr_1485[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      private static function _SafeStr_2815(param1:IOErrorEvent) : void
      {
         _SafeCls_22._SafeStr_195(param1.text);
      }
      
      private static function _SafeStr_964(param1:Sound, param2:uint, param3:Boolean) : SoundChannel
      {
         var _loc4_:SoundChannel = null;
         try
         {
            _loc4_ = param1.play(param2,param3 ? 9999 : 0);
         }
         catch(e:Error)
         {
         }
         return _loc4_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_9 = "_-cU"
 * @identifier _SafeCls_13 = "_-Mg"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_36 = "_-3q"
 * @identifier _SafeStr_195 = "_-70"
 * @identifier _SafeStr_414 = "_-4G"
 * @identifier _SafeStr_512 = "_-rK"
 * @identifier _SafeStr_526 = "_-Pa"
 * @identifier _SafeStr_622 = "_-i2"
 * @identifier _SafeStr_720 = "_-0T"
 * @identifier _SafeStr_750 = "_-2a"
 * @identifier _SafeStr_785 = "_-9-"
 * @identifier _SafeStr_944 = "_-w6"
 * @identifier _SafeStr_964 = "_-GO"
 * @identifier _SafeStr_1052 = "_-du"
 * @identifier _SafeStr_1135 = "_-gW"
 * @identifier _SafeStr_1485 = "_-jj"
 * @identifier _SafeStr_1549 = "_-1A"
 * @identifier _SafeStr_1553 = "_-T6"
 * @identifier _SafeStr_1615 = "_-Ss"
 * @identifier _SafeStr_1849 = "_-c2"
 * @identifier _SafeStr_1867 = "_-KV"
 * @identifier _SafeStr_2031 = "_-2L"
 * @identifier _SafeStr_2043 = "_-lp"
 * @identifier _SafeStr_2654 = "_-PB"
 * @identifier _SafeStr_2677 = "_-se"
 * @identifier _SafeStr_2815 = "_-GT"
 * @identifier _SafeStr_2870 = "_-j0"
 * @identifier _SafeStr_2903 = "_-Js"
 * @identifier _SafeStr_2966 = "_-O2"
 * @identifier _SafeStr_3297 = "_-D8"
 * @identifier _SafeStr_3329 = "_-L"
 * @identifier _SafeStr_3422 = "_-uy"
 * @identifier _SafeStr_3576 = "_-G"
 * @identifier _SafeStr_3640 = "_-CS"
 * @identifier _SafeStr_3742 = "_-kj"
 */
