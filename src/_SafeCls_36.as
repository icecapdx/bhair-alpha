package
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class _SafeCls_36
   {
      
      internal var _SafeStr_2491:uint;
      
      internal var _SafeStr_1867:Number = 0;
      
      internal var _SafeStr_1635:Number = 0;
      
      internal var _SafeStr_1135:Sound;
      
      internal var _SafeStr_720:SoundChannel;
      
      internal var _SafeStr_1849:String;
      
      internal var _SafeStr_2966:Number = 0;
      
      internal var _SafeStr_785:Number = 0;
      
      internal var _SafeStr_414:Number = 0;
      
      internal var _SafeStr_654:SoundChannel;
      
      public function _SafeCls_36(param1:uint, param2:Number, param3:Number)
      {
         super();
         this._SafeStr_2491 = param1;
         this._SafeStr_1867 = param2;
         this._SafeStr_1635 = param3;
      }
      
      public function _SafeStr_2031() : void
      {
         if(!this._SafeStr_720)
         {
            return;
         }
         if(!this._SafeStr_1635)
         {
            this._SafeStr_720.stop();
         }
         else
         {
            if(this._SafeStr_654)
            {
               this._SafeStr_654.stop();
            }
            this._SafeStr_654 = this._SafeStr_720;
         }
         this._SafeStr_1135 = null;
         this._SafeStr_720 = null;
      }
      
      public function _SafeStr_2654() : void
      {
         if(this._SafeStr_1849)
         {
            _SafeCls_13._SafeStr_1052(this._SafeStr_2491,this._SafeStr_1849,this._SafeStr_2966);
         }
      }
      
      public function _SafeStr_3422() : void
      {
         var _loc1_:SoundTransform = null;
         var _loc2_:Number = NaN;
         if(this._SafeStr_785 < this._SafeStr_414 && this._SafeStr_720 && this._SafeStr_1135 && this._SafeStr_1135.bytesLoaded >= this._SafeStr_1135.bytesTotal)
         {
            this._SafeStr_785 += this._SafeStr_1867;
            if(this._SafeStr_785 > this._SafeStr_414)
            {
               this._SafeStr_785 = this._SafeStr_414;
            }
            this._SafeStr_720.soundTransform.volume = this._SafeStr_785 * this._SafeStr_414;
         }
         if(this._SafeStr_654)
         {
            _loc1_ = this._SafeStr_654.soundTransform;
            _loc2_ = _loc1_.volume - this._SafeStr_1635;
            if(_loc2_ <= this._SafeStr_1635)
            {
               this._SafeStr_654.stop();
               this._SafeStr_654 = null;
            }
            else
            {
               _loc1_.volume = _loc2_;
               this._SafeStr_654.soundTransform = _loc1_;
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_13 = "_-Mg"
 * @identifier _SafeCls_36 = "_-3q"
 * @identifier _SafeStr_414 = "_-4G"
 * @identifier _SafeStr_654 = "_-ko"
 * @identifier _SafeStr_720 = "_-0T"
 * @identifier _SafeStr_785 = "_-9-"
 * @identifier _SafeStr_1052 = "_-du"
 * @identifier _SafeStr_1135 = "_-gW"
 * @identifier _SafeStr_1635 = "_-gw"
 * @identifier _SafeStr_1849 = "_-c2"
 * @identifier _SafeStr_1867 = "_-KV"
 * @identifier _SafeStr_2031 = "_-2L"
 * @identifier _SafeStr_2491 = "_-4u"
 * @identifier _SafeStr_2654 = "_-PB"
 * @identifier _SafeStr_2966 = "_-O2"
 * @identifier _SafeStr_3422 = "_-uy"
 */
