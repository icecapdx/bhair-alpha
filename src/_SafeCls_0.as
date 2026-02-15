package
{
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class _SafeCls_0
   {
      
      public static const _SafeStr_1290:int = 100;
      
      public static const _SafeStr_1574:int = 16000;
      
      public static const _SafeStr_1490:Number = 1 / _SafeStr_1290;
      
      public static const _SafeStr_1890:uint = 255;
      
      public static const _SafeStr_2404:uint = 65535;
      
      public static const _SafeStr_2018:uint = 16711935;
      
      public static const _SafeStr_2141:uint = 16711680;
      
      public static const _SafeStr_2554:uint = 65280;
      
      public static const _SafeStr_2152:uint = 16777215;
      
      public static const _SafeStr_2789:uint = 16776960;
      
      public static const _SafeStr_2881:uint = 16777113;
      
      public static const _SafeStr_2964:uint = 0;
      
      public static const _SafeStr_2764:uint = 6710886;
      
      public static const _SafeStr_2908:uint = 10027263;
      
      public static const _SafeStr_2579:uint = 26112;
      
      public static const _SafeStr_2548:uint = 102;
      
      public static const _SafeStr_2510:uint = 6684672;
      
      public static const _SafeStr_179:uint = 1;
      
      public static const _SafeStr_291:uint = 2;
      
      public static const _SafeStr_1831:uint = 4;
      
      public static const _SafeStr_1470:uint = 8;
      
      public static const _SafeStr_2276:int = -1;
      
      public static const _SafeStr_1605:uint = 1;
      
      internal static const _SafeStr_1416:Dictionary = new Dictionary();
      
      internal static const _SafeStr_372:Dictionary = new Dictionary();
      
      private static const _SafeStr_1643:uint = 10240;
      
      private static var _SafeStr_1036:Vector.<Number> = new Vector.<Number>(_SafeStr_1643,true);
      
      private static var _SafeStr_915:Vector.<Number> = new Vector.<Number>(_SafeStr_1643,true);
      
      private static var _SafeStr_1333:Point = new Point();
      
      private static var _SafeStr_846:Point = new Point(0,0);
      
      private static const _SafeStr_1495:uint = 1024;
      
      private static var _SafeStr_1101:Vector.<_SafeCls_20> = new Vector.<_SafeCls_20>(_SafeStr_1495,true);
      
      _SafeStr_372["DoorLocal"] = true;
      _SafeStr_372["Door"] = true;
      _SafeStr_372["Plummet"] = true;
      _SafeStr_372["Trigger"] = true;
      _SafeStr_372["MultiTrigger"] = true;
      _SafeStr_372["Badge"] = true;
      _SafeStr_372["RoomAggro"] = true;
      _SafeStr_372["Think"] = true;
      _SafeStr_372["CutScene"] = true;
      _SafeStr_372["Script"] = true;
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_375:Dictionary;
      
      internal var _SafeStr_1787:Vector.<_SafeCls_20>;
      
      private var _SafeStr_901:Vector.<_SafeCls_20>;
      
      public function _SafeCls_0(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_375 = new Dictionary();
         this._SafeStr_901 = new Vector.<_SafeCls_20>();
         this._SafeStr_1787 = new Vector.<_SafeCls_20>();
      }
      
      public static function _SafeStr_1080(param1:uint, param2:uint) : void
      {
         _SafeStr_1416[param1] = param2;
      }
      
      public static function _SafeStr_1451(param1:Number, param2:Number) : uint
      {
         var _loc3_:int = Math.floor(param1 + 0.01) * _SafeStr_1490;
         var _loc4_:int = Math.floor(param2 + 0.01) * _SafeStr_1490;
         return _loc3_ + _SafeStr_1574 << 16 | _loc4_ + _SafeStr_1574;
      }
      
      public function _SafeStr_3133() : void
      {
         var _loc1_:String = null;
         var _loc2_:uint = 0;
         var _loc3_:Vector.<_SafeCls_20> = null;
         var _loc4_:_SafeCls_20 = null;
         for(_loc1_ in this._SafeStr_375)
         {
            _loc3_ = this._SafeStr_375[_loc1_];
            for each(_loc4_ in _loc3_)
            {
               _loc4_._SafeStr_3114();
            }
            delete this._SafeStr_375[_loc1_];
         }
         this._SafeStr_375 = null;
         this._SafeStr_901 = null;
         this._SafeStr_1787 = null;
         _loc2_ = 0;
         while(_loc2_ < _SafeStr_1495)
         {
            _SafeStr_1101[_loc2_] = null;
            _loc2_++;
         }
         this._SafeStr_118 = null;
      }
      
      public function _SafeStr_3542() : void
      {
         var _loc1_:String = null;
         var _loc2_:Vector.<_SafeCls_20> = null;
         for(_loc1_ in this._SafeStr_375)
         {
            _loc2_ = this._SafeStr_375[_loc1_];
            _loc2_.fixed = true;
         }
      }
      
      public function _SafeStr_3642() : void
      {
         var _loc1_:String = null;
         var _loc2_:Vector.<_SafeCls_20> = null;
         for(_loc1_ in this._SafeStr_375)
         {
            _loc2_ = this._SafeStr_375[_loc1_];
            _loc2_.fixed = false;
         }
      }
      
      public function _SafeStr_3155(param1:_SafeCls_20) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         var _loc4_:int = _SafeCls_19._SafeStr_2731(param1._SafeStr_198,param1._SafeStr_261,param1._SafeStr_235,param1._SafeStr_306,_SafeStr_1036,_SafeStr_915,_SafeStr_1290);
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            _loc2_ = _SafeStr_1451(_SafeStr_1036[_loc3_],_SafeStr_915[_loc3_]);
            if(this._SafeStr_375[_loc2_] == undefined)
            {
               this._SafeStr_375[_loc2_] = new Vector.<_SafeCls_20>();
            }
            this._SafeStr_375[_loc2_].push(param1);
            _loc3_++;
         }
         this._SafeStr_1787.push(param1);
      }
      
      public function _SafeStr_3232(param1:_SafeCls_20) : void
      {
         this._SafeStr_901.fixed = false;
         this._SafeStr_901.push(param1);
         param1._SafeStr_1626 = true;
         this._SafeStr_901.fixed = true;
      }
      
      public function _SafeStr_3389(param1:Number, param2:Number, param3:Number, param4:Number, param5:Vector.<_SafeCls_20>) : int
      {
         var _loc6_:uint = 0;
         var _loc8_:_SafeCls_20 = null;
         var _loc9_:Vector.<_SafeCls_20> = null;
         var _loc10_:int = 0;
         var _loc7_:* = 0;
         var _loc11_:int = _SafeCls_19._SafeStr_2731(param1,param2,param3,param4,_SafeStr_1036,_SafeStr_915,_SafeStr_1290);
         _loc10_ = 0;
         while(_loc10_ < _loc11_)
         {
            _loc6_ = _SafeStr_1451(_SafeStr_1036[_loc10_],_SafeStr_915[_loc10_]);
            _loc9_ = this._SafeStr_375[_loc6_];
            if(_loc9_)
            {
               for each(_loc8_ in _loc9_)
               {
                  var _loc14_:*;
                  param5[_loc14_ = _loc7_++] = _loc8_;
               }
            }
            _loc10_++;
         }
         for each(_loc8_ in this._SafeStr_901)
         {
            param5[_loc14_ = _loc7_++] = _loc8_;
         }
         return _loc7_;
      }
      
      public function _SafeStr_174(param1:Number, param2:Number, param3:Point, param4:Point, param5:_SafeCls_20, param6:Point, param7:Point, param8:uint, param9:uint, param10:int = 0, param11:Vector.<_SafeCls_20> = null) : _SafeCls_20
      {
         var _loc16_:_SafeCls_20 = null;
         var _loc20_:int = 0;
         var _loc12_:_SafeCls_20 = null;
         var _loc13_:Number = 0;
         var _loc14_:Number = param3.x;
         var _loc15_:Number = param3.y;
         if(!_loc14_ && !_loc15_)
         {
            return null;
         }
         var _loc17_:Number = param1 + _loc14_;
         var _loc18_:Number = param2 + _loc15_;
         var _loc19_:* = param10 != _SafeStr_2276;
         var _loc21_:int = this._SafeStr_3389(param1,param2,_loc17_,_loc18_,_SafeStr_1101);
         _loc20_ = 0;
         while(_loc20_ < _loc21_)
         {
            _loc16_ = _SafeStr_1101[_loc20_];
            if(!_loc16_.bDisabled)
            {
               if(!(_loc19_ && _loc16_._SafeStr_3000 != param10))
               {
                  if(Boolean(_loc16_.type & param8) && _loc16_ != param5)
                  {
                     _loc13_ = _SafeCls_19._SafeStr_3246(param1,param2,_loc16_._SafeStr_198,_loc16_._SafeStr_261,_loc16_._SafeStr_235 - _loc16_._SafeStr_198,_loc16_._SafeStr_306 - _loc16_._SafeStr_261,_SafeStr_1333);
                     if(_loc13_ >= 0 || !(param8 & _SafeCls_0._SafeStr_291) || !(_loc16_.type & _SafeCls_0._SafeStr_291) || Boolean(param9 & _SafeStr_1605))
                     {
                        if(_SafeCls_19._SafeStr_2107(param1,param2,_loc17_,_loc18_,_loc16_._SafeStr_198,_loc16_._SafeStr_261,_loc16_._SafeStr_235,_loc16_._SafeStr_306,_SafeStr_846))
                        {
                           _loc12_ = _loc16_;
                           if(Boolean(param11) && param11.indexOf(_loc16_) == -1)
                           {
                              param11.push(_loc16_);
                           }
                           if(param6)
                           {
                              param6.x = _SafeStr_1333.x;
                              param6.y = _SafeStr_1333.y;
                           }
                           if(param7)
                           {
                              param7.x = _loc13_;
                           }
                           if(!param11)
                           {
                              _loc17_ = _SafeStr_846.x;
                              _loc18_ = _SafeStr_846.y;
                              _loc14_ = _loc17_ - param1;
                              _loc15_ = _loc18_ - param2;
                           }
                        }
                     }
                  }
               }
            }
            _loc20_++;
         }
         if(_loc12_)
         {
            param4.x = _SafeStr_846.x;
            param4.y = _SafeStr_846.y;
            param3.x = _loc14_;
            param3.y = _loc15_;
            return _loc12_;
         }
         return null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_20 = "_-9f"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_174 = "_-Mt"
 * @identifier _SafeStr_179 = "_-BZ"
 * @identifier _SafeStr_198 = "_-Jk"
 * @identifier _SafeStr_235 = "_-KF"
 * @identifier _SafeStr_261 = "_-dm"
 * @identifier _SafeStr_291 = "_-Ce"
 * @identifier _SafeStr_306 = "_-r9"
 * @identifier _SafeStr_372 = "_-m7"
 * @identifier _SafeStr_375 = "_-dJ"
 * @identifier _SafeStr_846 = "_-eZ"
 * @identifier _SafeStr_901 = "_-Dm"
 * @identifier _SafeStr_915 = "_-i7"
 * @identifier _SafeStr_1036 = "_-KH"
 * @identifier _SafeStr_1080 = "_-8d"
 * @identifier _SafeStr_1101 = "_-jK"
 * @identifier _SafeStr_1290 = "_-lZ"
 * @identifier _SafeStr_1333 = "_-K0"
 * @identifier _SafeStr_1416 = "_-L1"
 * @identifier _SafeStr_1451 = "_-cY"
 * @identifier _SafeStr_1470 = "_-MK"
 * @identifier _SafeStr_1490 = "_-Ut"
 * @identifier _SafeStr_1495 = "_-ao"
 * @identifier _SafeStr_1574 = "_-MY"
 * @identifier _SafeStr_1605 = "_-3O"
 * @identifier _SafeStr_1626 = "_-Gw"
 * @identifier _SafeStr_1643 = "_-XY"
 * @identifier _SafeStr_1787 = "_-9Q"
 * @identifier _SafeStr_1831 = "_-Dn"
 * @identifier _SafeStr_1890 = "_-8D"
 * @identifier _SafeStr_2018 = "_-vq"
 * @identifier _SafeStr_2107 = "_-IB"
 * @identifier _SafeStr_2141 = "_-Di"
 * @identifier _SafeStr_2152 = "_-QZ"
 * @identifier _SafeStr_2276 = "_-Pr"
 * @identifier _SafeStr_2404 = "_-I0"
 * @identifier _SafeStr_2510 = "_-OY"
 * @identifier _SafeStr_2548 = "_-Tp"
 * @identifier _SafeStr_2554 = "_-q6"
 * @identifier _SafeStr_2579 = "_-BA"
 * @identifier _SafeStr_2731 = "_-J0"
 * @identifier _SafeStr_2764 = "_-bm"
 * @identifier _SafeStr_2789 = "_-8P"
 * @identifier _SafeStr_2881 = "_-Ij"
 * @identifier _SafeStr_2908 = "_-T2"
 * @identifier _SafeStr_2964 = "_-J2"
 * @identifier _SafeStr_3000 = "_-Ic"
 * @identifier _SafeStr_3114 = "_-6M"
 * @identifier _SafeStr_3133 = "_-kW"
 * @identifier _SafeStr_3155 = "_-N3"
 * @identifier _SafeStr_3232 = "_-0R"
 * @identifier _SafeStr_3246 = "_-F6"
 * @identifier _SafeStr_3389 = "_-Mb"
 * @identifier _SafeStr_3542 = "_-iJ"
 * @identifier _SafeStr_3642 = "_-ZW"
 */
