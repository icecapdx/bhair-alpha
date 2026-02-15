package
{
   import flash.display.DisplayObject;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.net.URLRequest;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class _SafeCls_9
   {
      
      private static var _SafeStr_2396:String;
      
      private static var _SafeStr_743:uint;
      
      public static var _SafeStr_2271:_SafeCls_21;
      
      private static var _SafeStr_534:Vector.<String>;
      
      private static var _SafeStr_1855:uint;
      
      public static var _SafeStr_869:uint;
      
      public static var _SafeStr_1350:uint;
      
      private static var _SafeStr_836:uint;
      
      private static var _SafeStr_1032:uint;
      
      private static var _SafeStr_1067:Vector.<uint>;
      
      private static var _SafeStr_1236:Vector.<uint>;
      
      private static var _SafeStr_1554:Vector.<Function>;
      
      private static var _SafeStr_1731:Vector.<_SafeCls_21>;
      
      private static var _SafeStr_1266:Vector.<_SafeCls_21> = new Vector.<_SafeCls_21>();
      
      private static var _SafeStr_1561:Dictionary = new Dictionary();
      
      public static const _SafeStr_688:Dictionary = new Dictionary();
      
      private static const _SafeStr_1201:Dictionary = new Dictionary();
      
      public static var _SafeStr_933:String = "";
      
      private static var _SafeStr_967:Dictionary = new Dictionary();
      
      private static var _SafeStr_1798:Dictionary = new Dictionary();
      
      private static const _SafeStr_1439:Dictionary = new Dictionary();
      
      private static const _SafeStr_2118:uint = 6;
      
      public static const _SafeStr_1721:uint = 1;
      
      public static const _SafeStr_1684:uint = 2;
      
      public static const _SafeStr_989:uint = 3;
      
      public static const _SafeStr_1745:uint = 4;
      
      public static const _SafeStr_1607:uint = 5;
      
      private static const _SafeStr_1322:String = "masterFileList.xml";
      
      private static const _SafeStr_1232:String = "devSettings.xml";
      
      public static const _SafeStr_661:String = "Required";
      
      public static const _SafeStr_1659:String = "Init";
      
      public static var _SafeStr_680:uint = 0;
      
      private static const _SafeStr_2247:uint = 10000;
      
      private static const _SafeStr_2123:uint = 30000;
      
      private static const _SafeStr_2235:uint = 5000;
      
      private static const _SafeStr_2295:uint = 5000;
      
      public function _SafeCls_9()
      {
         super();
      }
      
      public static function _SafeStr_873(param1:Array) : void
      {
         var _loc2_:String = null;
         _SafeStr_534 = new Vector.<String>();
         _SafeStr_534.push(_SafeStr_661);
         _SafeStr_534.push(_SafeStr_1659);
         for each(_loc2_ in param1)
         {
            _SafeStr_534.push(_loc2_);
         }
         _SafeStr_534.fixed = true;
         _SafeStr_1855 = _SafeStr_534.length;
      }
      
      public static function _SafeStr_524(param1:String, param2:Function) : void
      {
         _SafeStr_1201[param1] = param2;
      }
      
      public static function _SafeStr_3678(param1:String, param2:Function) : void
      {
         _SafeStr_1439[param1] = param2;
      }
      
      public static function _SafeStr_2101(param1:String) : void
      {
         _SafeStr_743 = _SafeStr_534.indexOf(param1);
      }
      
      public static function _SafeStr_1262(param1:String) : Boolean
      {
         var _loc2_:int = int(_SafeStr_534.indexOf(param1));
         return _SafeStr_743 > _loc2_;
      }
      
      public static function _SafeStr_3708(param1:String) : void
      {
         var _loc2_:_SafeCls_21 = null;
         for each(_loc2_ in _SafeStr_1266)
         {
            if(_loc2_._SafeStr_394 == param1 || _loc2_.fileName == param1)
            {
               if(_loc2_._SafeStr_394 == _SafeCls_21._SafeStr_758)
               {
                  _loc2_._SafeStr_285.unload();
                  _SafeStr_688[_loc2_.fileName] = null;
               }
               _loc2_._SafeStr_1521();
            }
         }
      }
      
      private static function _SafeStr_2678(param1:_SafeCls_21) : void
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:uint = 0;
         var _loc2_:XML = param1._SafeStr_2997();
         for each(_loc3_ in _loc2_.*)
         {
            _loc4_ = _loc3_.name();
            _loc5_ = _loc3_.attribute("Name");
            _loc6_ = _loc3_.attribute("Version");
            _loc7_ = _loc3_.attribute("Stage");
            _loc8_ = _loc3_.attribute("Size");
            _loc9_ = uint(_loc8_) * 1024;
            _SafeStr_1798[_loc5_] = _loc9_;
            _SafeStr_967[_loc5_] = _loc6_;
            if(_loc4_ != "Level")
            {
               _SafeStr_500(_loc5_,_loc7_);
            }
            else if(_SafeCls_1.flags & _SafeCls_1._SafeStr_1377)
            {
               _SafeStr_500(_loc5_,"Level");
            }
         }
      }
      
      private static function _SafeStr_2955(param1:_SafeCls_21) : void
      {
         var _loc2_:LoaderInfo = param1._SafeStr_285.contentLoaderInfo;
         var _loc3_:MovieClip = _loc2_.content as MovieClip;
         _loc3_.gotoAndStop(1);
         if(_loc3_.numChildren)
         {
            _SafeCls_22._SafeStr_135("Imported Swfs cannot have any children on the stage, change the layer to a guide: " + param1.fileName);
         }
         _SafeStr_688[param1.fileName] = _loc2_;
      }
      
      private static function _SafeStr_2648(param1:_SafeCls_21) : void
      {
         var _loc6_:ByteArray = null;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Function = null;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc2_:ByteArray = param1._SafeStr_3413();
         var _loc3_:uint = uint(_loc2_.readInt());
         var _loc4_:uint = uint(_loc2_.readInt());
         var _loc5_:uint = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = new ByteArray();
            _loc7_ = uint(_loc2_.readInt());
            _loc6_.length = _loc7_;
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               _loc12_ = uint(_loc8_ & 7);
               _loc13_ = _loc2_.readUnsignedByte();
               _loc6_[_loc8_] = _loc13_ ^ _loc3_ & 0xFF;
               _loc3_ = uint(_loc3_ << 32 - _loc12_ | _loc3_ >>> _loc12_);
               _loc8_++;
            }
            _loc6_.uncompress();
            _loc9_ = new XML(_loc6_);
            _loc10_ = _loc9_.name().toString();
            _loc11_ = _SafeStr_1201[_loc10_];
            if(_loc11_ == null)
            {
               _SafeCls_22._SafeStr_135("Unknown XML type, all handlers must be registered before loading begins: " + param1.fileName);
            }
            _loc11_(_loc9_);
            _loc5_++;
         }
      }
      
      private static function _SafeStr_2859(param1:_SafeCls_21) : void
      {
         var _loc2_:XML = param1._SafeStr_2997();
         var _loc3_:String = _loc2_.name().toString();
         var _loc4_:Function = _SafeStr_1201[_loc3_];
         if(_loc4_ == null)
         {
            _SafeCls_22._SafeStr_135("Unknown XML type, all handlers must be registered before loading begins: " + param1.fileName);
         }
         _loc4_(_loc2_);
      }
      
      private static function _SafeStr_2779(param1:_SafeCls_21) : void
      {
         var _loc2_:Function = _SafeStr_1439[param1._SafeStr_2512];
         if(_loc2_ == null)
         {
            _SafeCls_22._SafeStr_135("Unknown Miscellaneous File, all handlers must be registered before loading begins: " + param1.fileName);
         }
         _loc2_(param1);
      }
      
      public static function _SafeStr_3329(param1:String, param2:uint = 0) : URLRequest
      {
         var _loc3_:String = param1;
         if(param2)
         {
            _loc3_ += "?v=" + param2;
         }
         var _loc4_:String = _SafeStr_2396;
         if(!_loc4_)
         {
            return new URLRequest(_loc3_);
         }
         var _loc5_:String = _SafeStr_967[param1];
         if(_loc5_)
         {
            _loc4_ += _loc5_ + "/";
         }
         return new URLRequest(_loc4_ + _loc3_);
      }
      
      public static function _SafeStr_2982() : void
      {
         var _loc1_:uint = 0;
         var _loc5_:_SafeCls_21 = null;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:_SafeCls_21 = null;
         var _loc11_:uint = 0;
         if(_SafeStr_1032)
         {
            _loc6_ = uint(getTimer());
            _loc7_ = 0;
            while(_loc7_ < _SafeStr_1032)
            {
               _loc8_ = _SafeStr_1731[_loc7_];
               if(_loc8_._SafeStr_627 == _SafeStr_989)
               {
                  var _loc9_:uint = _SafeStr_1236[_loc7_];
                  var _loc10_:uint = uint(_loc8_._SafeStr_520.data);
                  if(_loc10_ != 0)
                  {
                     _SafeStr_1236[_loc7_] = 0;
                  }
                  _SafeStr_1067[_loc7_] = _loc6_;
                  _loc8_._SafeStr_627 = _SafeStr_1745;
               }
               else if(_loc6_ - _SafeStr_1067[_loc7_] >= 1000)
               {
                  _loc8_._SafeStr_1521();
                  _loc8_._SafeStr_1509();
                  _SafeStr_1067[_loc7_] = _loc6_;
               }
               _loc7_++;
            }
         }
         if(_SafeStr_743 >= _SafeStr_1855 || Boolean(_SafeStr_2271))
         {
            return;
         }
         var _loc2_:uint = uint(getTimer());
         var _loc4_:String = _SafeStr_534[_SafeStr_743];
         for each(_loc5_ in _SafeStr_1266)
         {
            if(_loc5_._SafeStr_1188 == _loc4_)
            {
               _loc1_ = _loc5_._SafeStr_627;
               if(_loc1_ == _SafeStr_1721)
               {
                  if(_SafeStr_836 + _loc5_._SafeStr_930 <= _SafeStr_2118)
                  {
                     _loc5_._SafeStr_1509();
                     _SafeStr_836 += _loc5_._SafeStr_930;
                  }
                  var _loc3_:Boolean = false;
               }
               else if(_loc1_ == _SafeStr_1684)
               {
                  _loc11_ = _loc5_._SafeStr_1278 ? _SafeStr_2123 : _SafeStr_2247;
                  var _loc12_:uint = _loc11_ + _SafeStr_2235 * _loc5_._SafeStr_1970;
                  if(_loc2_ - _loc5_._SafeStr_1197 >= 0)
                  {
                     ++_SafeStr_680;
                     _loc5_._SafeStr_1521();
                     _loc5_._SafeStr_1509();
                  }
                  _loc3_ = false;
               }
               else if(_loc1_ == _SafeStr_1607)
               {
                  if(_loc2_ - _loc5_._SafeStr_1197 >= _SafeStr_2295)
                  {
                     ++_SafeStr_680;
                     _loc5_._SafeStr_1521();
                     _loc5_._SafeStr_1509();
                  }
                  _loc3_ = false;
               }
               else if(_loc1_ == _SafeStr_989)
               {
                  _SafeStr_2519(_loc5_);
                  _loc5_._SafeStr_627 = _SafeStr_1745;
                  _SafeStr_836 -= _loc5_._SafeStr_930;
                  _loc3_ = false;
               }
            }
         }
         ++_SafeStr_743;
      }
      
      public static function _SafeStr_2519(param1:_SafeCls_21) : void
      {
         var currResource:_SafeCls_21 = param1;
         try
         {
            _SafeStr_2595(currResource);
         }
         catch(e:Error)
         {
            _SafeStr_2271 = currResource;
         }
      }
      
      public static function _SafeStr_2595(param1:_SafeCls_21) : void
      {
         if(param1.fileName == _SafeStr_1322)
         {
            _SafeStr_2678(param1);
         }
         else if(param1.fileName == _SafeStr_1232)
         {
            _SafeCls_1._SafeStr_3470(param1);
         }
         else if(param1._SafeStr_394 == _SafeCls_21._SafeStr_758)
         {
            _SafeStr_2955(param1);
         }
         else if(param1._SafeStr_394 == _SafeCls_21._SafeStr_1091)
         {
            _SafeStr_2648(param1);
         }
         else if(param1._SafeStr_394 == _SafeCls_21._SafeStr_1709 || param1._SafeStr_394 == _SafeCls_21._SafeStr_1238)
         {
            _SafeStr_2779(param1);
         }
         else if(_SafeCls_1.flags)
         {
            _SafeStr_2859(param1);
         }
      }
      
      public static function _SafeStr_2319(param1:String) : _SafeCls_21
      {
         return _SafeStr_1561[param1];
      }
      
      public static function _SafeStr_500(param1:String, param2:String) : void
      {
         if(_SafeStr_2319(param1))
         {
            return;
         }
         var _loc3_:uint = uint(_SafeStr_1798[param1]);
         if(!_loc3_)
         {
            _loc3_ = 4096;
         }
         var _loc4_:_SafeCls_21 = new _SafeCls_21(param1,_loc3_,param2);
         _SafeStr_1266.push(_loc4_);
         _SafeStr_1561[param1] = _loc4_;
         _SafeStr_869 += _loc4_._SafeStr_982;
      }
      
      public static function _SafeStr_3295(param1:String, param2:String) : void
      {
         _SafeStr_967[_SafeStr_1232] = param1;
         _SafeStr_967[_SafeStr_1322] = param1;
         _SafeStr_2396 = param2;
         _SafeStr_2101(_SafeStr_661);
         _SafeStr_500(_SafeStr_1322,_SafeStr_661);
         if(_SafeCls_1.flags & _SafeCls_1._SafeStr_1356)
         {
            _SafeStr_500(_SafeStr_1232,_SafeStr_661);
         }
      }
      
      public static function _SafeStr_3697(param1:String, param2:Function) : void
      {
         if(!_SafeStr_1032)
         {
            _SafeStr_1067 = new Vector.<uint>();
            _SafeStr_1236 = new Vector.<uint>();
            _SafeStr_1554 = new Vector.<Function>();
            _SafeStr_1731 = new Vector.<_SafeCls_21>();
         }
         _SafeStr_1731.push(new _SafeCls_21(param1,1,"None"));
         _SafeStr_1554.push(param2);
         _SafeStr_1067.push(0);
         _SafeStr_1236.push(0);
         ++_SafeStr_1032;
      }
      
      public static function _SafeStr_3590(param1:Stage, param2:String, param3:String, param4:String) : String
      {
         var _loc5_:String = param1.loaderInfo.url;
         if(!_loc5_.indexOf("http://" + param2) || !_loc5_.indexOf("http://" + param3))
         {
            Security.allowDomain("http://" + param2);
            Security.allowDomain("http://" + param3);
            return "http://" + param3 + param4;
         }
         if(!_loc5_.indexOf("https://" + param2) || !_loc5_.indexOf("https://" + param3))
         {
            Security.allowDomain("https://" + param2);
            Security.allowDomain("https://" + param3);
            return "https://" + param3 + param4;
         }
         _SafeCls_22._SafeStr_135("Failed to load the Swf");
         return null;
      }
      
      public static function _SafeStr_3608(param1:DisplayObject) : String
      {
         var _loc2_:String = param1.loaderInfo.parameters.fv;
         if(!_loc2_)
         {
            _SafeCls_22._SafeStr_135("Failed Swf loading");
         }
         return _loc2_;
      }
      
      public static function _SafeStr_3645(param1:String) : void
      {
         _SafeStr_933 = param1;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_9 = "_-cU"
 * @identifier _SafeCls_21 = "_-0r"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_285 = "_-N-"
 * @identifier _SafeStr_394 = "_-Ej"
 * @identifier _SafeStr_500 = "_-dS"
 * @identifier _SafeStr_520 = "_-ks"
 * @identifier _SafeStr_524 = "_-57"
 * @identifier _SafeStr_534 = "_-8I"
 * @identifier _SafeStr_627 = "_-Xa"
 * @identifier _SafeStr_661 = "_-Tb"
 * @identifier _SafeStr_680 = "_-1-"
 * @identifier _SafeStr_688 = "true"
 * @identifier _SafeStr_743 = "_-WQ"
 * @identifier _SafeStr_758 = "in"
 * @identifier _SafeStr_836 = "_-Q"
 * @identifier _SafeStr_869 = "_-UM"
 * @identifier _SafeStr_873 = "_-VZ"
 * @identifier _SafeStr_930 = "_-11"
 * @identifier _SafeStr_933 = "_-Vt"
 * @identifier _SafeStr_967 = "_-UU"
 * @identifier _SafeStr_982 = "_-UZ"
 * @identifier _SafeStr_989 = "_-Tm"
 * @identifier _SafeStr_1032 = "_-L4"
 * @identifier _SafeStr_1067 = "_-UN"
 * @identifier _SafeStr_1091 = "_-T9"
 * @identifier _SafeStr_1188 = "_-qz"
 * @identifier _SafeStr_1197 = "_-2U"
 * @identifier _SafeStr_1201 = "_-1Z"
 * @identifier _SafeStr_1232 = "_-Yp"
 * @identifier _SafeStr_1236 = "_-uz"
 * @identifier _SafeStr_1238 = "_-Yy"
 * @identifier _SafeStr_1262 = "_-VH"
 * @identifier _SafeStr_1266 = "_-jp"
 * @identifier _SafeStr_1278 = "_-h2"
 * @identifier _SafeStr_1322 = "_-JK"
 * @identifier _SafeStr_1350 = "_-wS"
 * @identifier _SafeStr_1356 = "_-4j"
 * @identifier _SafeStr_1377 = "_-DA"
 * @identifier _SafeStr_1439 = "_-NR"
 * @identifier _SafeStr_1509 = "_-H6"
 * @identifier _SafeStr_1521 = "_-U8"
 * @identifier _SafeStr_1554 = "_-cZ"
 * @identifier _SafeStr_1561 = "_-1H"
 * @identifier _SafeStr_1607 = "_-U1"
 * @identifier _SafeStr_1659 = "_-YI"
 * @identifier _SafeStr_1684 = "_-77"
 * @identifier _SafeStr_1709 = "_-6S"
 * @identifier _SafeStr_1721 = "_-NT"
 * @identifier _SafeStr_1731 = "_-08"
 * @identifier _SafeStr_1745 = "_-Sf"
 * @identifier _SafeStr_1798 = "_-AH"
 * @identifier _SafeStr_1855 = "_-up"
 * @identifier _SafeStr_1970 = "_-SV"
 * @identifier _SafeStr_2101 = "_-60"
 * @identifier _SafeStr_2118 = "_-J4"
 * @identifier _SafeStr_2123 = "_-Z0"
 * @identifier _SafeStr_2235 = "_-Pv"
 * @identifier _SafeStr_2247 = "_-Yw"
 * @identifier _SafeStr_2271 = "_-Bg"
 * @identifier _SafeStr_2295 = "_-5C"
 * @identifier _SafeStr_2319 = "_-Ne"
 * @identifier _SafeStr_2396 = "_-GY"
 * @identifier _SafeStr_2512 = "_-8m"
 * @identifier _SafeStr_2519 = "_-IM"
 * @identifier _SafeStr_2595 = "_-iZ"
 * @identifier _SafeStr_2648 = "_-SB"
 * @identifier _SafeStr_2678 = "_-AL"
 * @identifier _SafeStr_2779 = "_-ag"
 * @identifier _SafeStr_2859 = "_-H4"
 * @identifier _SafeStr_2955 = "_-cr"
 * @identifier _SafeStr_2982 = "_-oL"
 * @identifier _SafeStr_2997 = "_-Gr"
 * @identifier _SafeStr_3295 = "_-4H"
 * @identifier _SafeStr_3329 = "_-L"
 * @identifier _SafeStr_3413 = "_-37"
 * @identifier _SafeStr_3470 = "_-Gt"
 * @identifier _SafeStr_3590 = "_-sH"
 * @identifier _SafeStr_3608 = "_-9w"
 * @identifier _SafeStr_3645 = "_-oN"
 * @identifier _SafeStr_3678 = "_-WJ"
 * @identifier _SafeStr_3697 = "_-5x"
 * @identifier _SafeStr_3708 = "_-Gl"
 */
