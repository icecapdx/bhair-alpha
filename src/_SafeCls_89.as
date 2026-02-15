package
{
   import flash.utils.Dictionary;
   
   public class _SafeCls_89
   {
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_126:_SafeCls_25;
      
      internal var mKills:uint;
      
      internal var _SafeStr_1265:uint;
      
      internal var mDeaths:uint;
      
      internal var _SafeStr_844:uint;
      
      internal var _SafeStr_1586:Number;
      
      internal var _SafeStr_1492:Number;
      
      internal var _SafeStr_2287:Number;
      
      internal var _SafeStr_1939:Number;
      
      internal var _SafeStr_1493:uint;
      
      internal var _SafeStr_1337:uint;
      
      internal var _SafeStr_1629:uint;
      
      internal var _SafeStr_1656:uint;
      
      internal var _SafeStr_1662:uint;
      
      internal var _SafeStr_1875:uint;
      
      internal var _SafeStr_1496:uint;
      
      internal var _SafeStr_1158:Dictionary;
      
      internal var _SafeStr_1851:Dictionary;
      
      internal var _SafeStr_1296:Dictionary;
      
      internal var _SafeStr_1035:Dictionary;
      
      internal var _SafeStr_2227:Dictionary;
      
      public function _SafeCls_89(param1:Game, param2:_SafeCls_25)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_126 = param2;
         this.Reset();
      }
      
      public function _SafeStr_3452() : void
      {
         this._SafeStr_1158 = null;
         this._SafeStr_1851 = null;
         this._SafeStr_1296 = null;
         this._SafeStr_1035 = null;
         this._SafeStr_2227 = null;
         this._SafeStr_126 = null;
         this._SafeStr_118 = null;
      }
      
      public function Reset() : void
      {
         this._SafeStr_1158 = new Dictionary();
         this._SafeStr_1851 = new Dictionary();
         this._SafeStr_1296 = new Dictionary();
         this._SafeStr_1035 = new Dictionary();
         this._SafeStr_2227 = new Dictionary();
         this.mKills = 0;
         this._SafeStr_1265 = 0;
         this.mDeaths = 0;
         this._SafeStr_844 = 0;
         this._SafeStr_1586 = 0;
         this._SafeStr_1492 = 0;
         this._SafeStr_2287 = 0;
         this._SafeStr_1939 = 0;
         this._SafeStr_1493 = 0;
         this._SafeStr_1337 = 0;
         this._SafeStr_1629 = 0;
         this._SafeStr_1656 = 0;
         this._SafeStr_1662 = 0;
         this._SafeStr_1875 = 0;
         this._SafeStr_1496 = 0;
      }
      
      public function _SafeStr_3420(param1:Number) : void
      {
         this._SafeStr_1586 += param1;
         if(param1 > this._SafeStr_2287)
         {
            this._SafeStr_2287 = param1;
         }
      }
      
      public function _SafeStr_3322(param1:Number) : void
      {
         this._SafeStr_1492 += param1;
         if(param1 > this._SafeStr_1939)
         {
            this._SafeStr_1939 = param1;
         }
      }
      
      public function HeldItem(param1:_SafeCls_6, param2:uint) : void
      {
         if(!this._SafeStr_1296[param1])
         {
            this._SafeStr_1296[param1] = 1;
         }
         else
         {
            ++this._SafeStr_1296[param1];
         }
         if(!this._SafeStr_1035[param1])
         {
            this._SafeStr_1035[param1] = param2;
         }
         else
         {
            this._SafeStr_1035[param1] += param2;
         }
      }
      
      public function _SafeStr_2536(param1:_SafeCls_25, param2:_SafeCls_87) : void
      {
         var _loc3_:Dictionary = null;
         if(param1.mTeam == this._SafeStr_126.mTeam)
         {
            ++this._SafeStr_1265;
            _loc3_ = this._SafeStr_2227;
         }
         else
         {
            ++this.mKills;
            _loc3_ = this._SafeStr_1851;
         }
         if(!_loc3_[param1])
         {
            _loc3_[param1] = 1;
         }
         else
         {
            ++_loc3_[param1];
         }
         var _loc4_:_SafeCls_6 = param2 ? param2._SafeStr_151 : _SafeCls_6._SafeStr_416["BasicUnarmed"];
         if(!this._SafeStr_1158[_loc4_])
         {
            this._SafeStr_1158[_loc4_] = 1;
         }
         else
         {
            ++this._SafeStr_1158[_loc4_];
         }
      }
      
      public function _SafeStr_2288(param1:uint, param2:Boolean) : void
      {
         if(param1 > this._SafeStr_1875)
         {
            this._SafeStr_1875 = param1;
         }
         if(param2 && (!this._SafeStr_1496 || param1 < this._SafeStr_1496))
         {
            this._SafeStr_1496 = param1;
         }
      }
      
      public function GetAccidents() : uint
      {
         return this._SafeStr_844 + this._SafeStr_1265;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_6 = "_-0u"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_87 = "_-CY"
 * @identifier _SafeCls_89 = "_-wU"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_126 = "_-Wp"
 * @identifier _SafeStr_151 = "_-0w"
 * @identifier _SafeStr_416 = "_-DY"
 * @identifier _SafeStr_844 = "_-4V"
 * @identifier _SafeStr_1035 = "_-ey"
 * @identifier _SafeStr_1158 = "_-cT"
 * @identifier _SafeStr_1265 = "_-vm"
 * @identifier _SafeStr_1296 = "get "
 * @identifier _SafeStr_1337 = "_-T3"
 * @identifier _SafeStr_1492 = "_-bc"
 * @identifier _SafeStr_1493 = "_-2C"
 * @identifier _SafeStr_1496 = "_-3R"
 * @identifier _SafeStr_1586 = "_-vE"
 * @identifier _SafeStr_1629 = "_-aQ"
 * @identifier _SafeStr_1656 = "_-NO"
 * @identifier _SafeStr_1662 = "_-jJ"
 * @identifier _SafeStr_1851 = "_-cN"
 * @identifier _SafeStr_1875 = "_-tn"
 * @identifier _SafeStr_1939 = "_-i3"
 * @identifier _SafeStr_2227 = "_-aO"
 * @identifier _SafeStr_2287 = "_-Wy"
 * @identifier _SafeStr_2288 = "_-di"
 * @identifier _SafeStr_2536 = "_-bk"
 * @identifier _SafeStr_3322 = "_-Gq"
 * @identifier _SafeStr_3420 = "_-MM"
 * @identifier _SafeStr_3452 = "_-4w"
 */
