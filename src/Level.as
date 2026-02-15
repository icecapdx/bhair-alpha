package
{
   import flash.display.DisplayObject;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   
   public class Level
   {
      
      private static const _SafeStr_2342:String = "am_DynamicCollision_";
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_340:_SafeCls_7;
      
      internal var _SafeStr_322:MovieClip;
      
      internal var _SafeStr_188:Rectangle;
      
      internal var _SafeStr_1212:Sprite;
      
      internal var _SafeStr_253:Rectangle;
      
      internal var _SafeStr_2188:Rectangle;
      
      internal var _SafeStr_449:Vector.<Point>;
      
      internal var _SafeStr_617:Vector.<Sprite>;
      
      internal var _SafeStr_691:Dictionary;
      
      internal var _SafeStr_1431:Vector.<Rectangle>;
      
      internal var mNavMesh:_SafeCls_109;
      
      private var _SafeStr_3587:int = 1;
      
      public function Level(param1:Game)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_691 = new Dictionary();
         this._SafeStr_1431 = new Vector.<Rectangle>();
         this.mNavMesh = new _SafeCls_109(this._SafeStr_118);
      }
      
      public function _SafeStr_3544() : void
      {
         var _loc1_:String = null;
         this._SafeStr_322 = null;
         this._SafeStr_188 = null;
         this._SafeStr_118 = null;
         for(_loc1_ in this._SafeStr_691)
         {
            delete this._SafeStr_691[_loc1_];
         }
         this._SafeStr_691 = null;
         this._SafeStr_1431 = null;
         this._SafeStr_1212 = null;
      }
      
      public function _SafeStr_3647() : uint
      {
         if(!this._SafeStr_340._SafeStr_724)
         {
            return 0;
         }
         var _loc1_:_SafeCls_21 = _SafeCls_9._SafeStr_2319(this._SafeStr_340._SafeStr_724);
         if(!_loc1_ || !_loc1_._SafeStr_285)
         {
            return 0;
         }
         return 100 * (_loc1_._SafeStr_1278 / _loc1_._SafeStr_982);
      }
      
      public function _SafeStr_1319(param1:_SafeCls_7) : void
      {
         this._SafeStr_340 = param1;
         _SafeCls_9._SafeStr_500(this._SafeStr_340._SafeStr_724,"Level");
         _SafeCls_9._SafeStr_2101("Level");
      }
      
      public function _SafeStr_3053() : Boolean
      {
         var _loc9_:Sprite = null;
         var _loc10_:DisplayObject = null;
         var _loc11_:String = null;
         var _loc12_:Point = null;
         var _loc13_:Rectangle = null;
         var _loc1_:Vector.<Sprite> = new Vector.<Sprite>();
         this._SafeStr_449 = new Vector.<Point>();
         if(this._SafeStr_340 == null)
         {
            return false;
         }
         var _loc2_:LoaderInfo = _SafeCls_9._SafeStr_688[this._SafeStr_340._SafeStr_724];
         if(_loc2_ == null)
         {
            return false;
         }
         var _loc3_:ApplicationDomain = _loc2_.applicationDomain;
         if(!_loc3_.hasDefinition(this._SafeStr_340._SafeStr_1413))
         {
            return false;
         }
         var _loc4_:Class = _loc3_.getDefinition(this._SafeStr_340._SafeStr_1413) as Class;
         this._SafeStr_322 = new _loc4_();
         _SafeCls_19._SafeStr_1514(this._SafeStr_322);
         this._SafeStr_617 = new Vector.<Sprite>();
         this._SafeStr_118.main.stage.addChild(this._SafeStr_322);
         this._SafeStr_118._SafeStr_156.x = 0;
         this._SafeStr_118._SafeStr_156.y = 0;
         this._SafeStr_118._SafeStr_156.scaleX = 0;
         this._SafeStr_118._SafeStr_156.scaleY = 0;
         var _loc5_:Array = new Array();
         _loc5_.push(0);
         var _loc6_:Boolean = _SafeCls_1.flags & _SafeCls_1._SafeStr_2391 ? true : false;
         var _loc7_:uint = uint(this._SafeStr_322.numChildren);
         var _loc8_:uint = 0;
         while(_loc8_ < _loc7_)
         {
            _loc10_ = this._SafeStr_322.getChildAt(_loc8_);
            _loc11_ = getQualifiedClassName(_loc10_);
            if(Boolean(_loc10_.filters) && Boolean(_loc10_.filters.length))
            {
               _loc10_.filters = null;
               _SafeCls_22._SafeStr_195("Object has Filters: " + _loc11_ + " - " + _loc10_.name);
            }
            if(_loc11_ == "a_Handle")
            {
               _loc10_.visible = false;
            }
            else if(!_loc10_.name.indexOf(_SafeCls_42._SafeStr_2364))
            {
               _loc1_.push(_loc10_ as Sprite);
               if(_loc10_["am_ParallaxMask"])
               {
                  this._SafeStr_1212 = _loc10_["am_ParallaxMask"];
               }
               else if(Boolean(_loc10_["am_ParallaxBG"]) && Boolean(_loc10_["am_ParallaxBG"]["am_ParallaxMask"]))
               {
                  this._SafeStr_1212 = _loc10_["am_ParallaxBG"]["am_ParallaxMask"];
               }
            }
            else if(!_loc11_.indexOf(_SafeCls_42._SafeStr_2402))
            {
               this._SafeStr_118._SafeStr_256._SafeStr_2643(_loc10_ as MovieClip);
            }
            else if(_loc10_.name == "am_CollisionLayer" || _loc10_.name == "am_CollisionObject")
            {
               _SafeCls_110._SafeStr_1991(_loc10_ as Sprite,this._SafeStr_322,this._SafeStr_691,null,null,true,this._SafeStr_118._SafeStr_165);
               _loc10_.visible = _loc6_;
               this._SafeStr_3503(_loc10_);
            }
            else if(_loc10_.name == "am_CameraLayer")
            {
               this._SafeStr_253 = _loc10_.getBounds(this._SafeStr_118._SafeStr_156);
               if(!_loc6_)
               {
                  this._SafeStr_617.push(_loc10_);
               }
            }
            else if(_loc10_.name == "am_RespawnPoint")
            {
               _loc12_ = new Point(_loc10_.x,_loc10_.y);
               this._SafeStr_449.push(_loc12_);
               if(!_loc6_)
               {
                  this._SafeStr_617.push(_loc10_);
               }
            }
            else if(_loc10_.name == "am_SpawnBotZone")
            {
               this._SafeStr_2188 = _loc10_.getBounds(this._SafeStr_118._SafeStr_156);
               if(!_loc6_)
               {
                  this._SafeStr_617.push(_loc10_);
               }
            }
            else if(_loc10_.name == "am_ItemDrop")
            {
               _loc13_ = new Rectangle(_loc10_.x,_loc10_.y,_loc10_.width,_loc10_.height);
               this._SafeStr_1431.push(_loc13_);
               if(!_loc6_)
               {
                  this._SafeStr_617.push(_loc10_);
               }
            }
            else if(!_loc10_.name.indexOf("am_NavMesh"))
            {
               this.mNavMesh._SafeStr_3385(_loc10_ as Sprite);
               this._SafeStr_617.push(_loc10_);
            }
            else
            {
               this._SafeStr_1139(_loc10_ as MovieClip,1,_loc5_,false,false,null,null);
            }
            _loc8_++;
         }
         this._SafeStr_449.sort(this._SafeStr_3426);
         this._SafeStr_3165();
         if(_loc1_.length)
         {
            this._SafeStr_118._SafeStr_256._SafeStr_3344(_loc1_);
         }
         this._SafeStr_118._SafeStr_256._SafeStr_3187();
         for each(_loc9_ in this._SafeStr_617)
         {
            if(Boolean(_loc9_) && Boolean(_loc9_.parent))
            {
               _loc9_.parent.removeChild(_loc9_);
            }
         }
         this._SafeStr_617 = null;
         this._SafeStr_188 = this._SafeStr_322.getBounds(this._SafeStr_322.parent);
         if(this._SafeStr_322.parent)
         {
            this._SafeStr_322.parent.removeChild(this._SafeStr_322);
         }
         this._SafeStr_118._SafeStr_165._SafeStr_3542();
         if(this._SafeStr_118._SafeStr_613)
         {
            this._SafeStr_118._SafeStr_613._SafeStr_1214();
         }
         return true;
      }
      
      private function _SafeStr_3165() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Vector.<_SafeCls_20> = null;
         var _loc5_:String = null;
         var _loc6_:uint = 0;
         var _loc7_:_SafeCls_102 = null;
         var _loc1_:Vector.<_SafeCls_102> = this._SafeStr_118._SafeStr_256._SafeStr_657;
         var _loc2_:uint = _loc1_.length;
         for(_loc3_ in this._SafeStr_691)
         {
            _loc4_ = this._SafeStr_691[_loc3_];
            _loc5_ = _loc3_.substr(_SafeStr_2342.length);
            _loc6_ = 0;
            while(_loc6_ < _loc2_)
            {
               _loc7_ = _loc1_[_loc6_];
               if(_loc7_._SafeStr_1820 == _loc5_)
               {
                  _loc7_._SafeStr_3491(_loc4_);
               }
               _loc6_++;
            }
         }
      }
      
      public function _SafeStr_1139(param1:Sprite, param2:int, param3:Array, param4:Boolean, param5:Boolean, param6:String, param7:String) : int
      {
         var _loc10_:int = 0;
         var _loc11_:DisplayObject = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:Sprite = null;
         var _loc15_:String = null;
         var _loc16_:Matrix = null;
         var _loc19_:String = null;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         if(param1 == null)
         {
            return 0;
         }
         var _loc8_:String = param1.name;
         if((Boolean(_loc8_)) && !_loc8_.indexOf("am_"))
         {
            param6 = _loc8_;
         }
         param3.push(0);
         var _loc9_:* = 0;
         while(_loc9_ < param1.numChildren)
         {
            _loc10_ = 0;
            _loc11_ = param1.getChildAt(_loc9_);
            _loc12_ = getQualifiedClassName(_loc11_);
            _loc13_ = _loc11_.name;
            if(Boolean(_loc11_.filters) && Boolean(_loc11_.filters.length))
            {
               _SafeCls_19._SafeStr_3432(param1 as MovieClip,_loc11_,_loc12_,_loc13_);
            }
            if(_loc11_ is Sprite)
            {
               _loc14_ = _loc11_ as Sprite;
               _loc15_ = _loc14_.name;
               if(!_loc12_.indexOf(_SafeCls_42._SafeStr_2074))
               {
                  _loc16_ = _loc14_.transform.concatenatedMatrix;
                  _loc19_ = !_loc15_.indexOf("am_") ? _loc15_ : param6;
                  var _loc20_:_SafeCls_105 = this._SafeStr_118._SafeStr_256._SafeStr_3055(_loc14_ as MovieClip,_loc12_,_loc19_,this._SafeStr_340._SafeStr_724,_loc16_,null,param4 || !_loc15_.indexOf("am_Foreground"),param5 || !_loc15_.indexOf("am_Background"));
                  this._SafeStr_617.push(_loc14_);
               }
               else if(!_loc15_.indexOf("am_Foreground"))
               {
                  _loc21_ = this._SafeStr_118._SafeStr_256._SafeStr_563.numChildren;
                  this._SafeStr_1139(_loc14_,param2 + 1,param3,true,false,null,null);
                  this._SafeStr_118._SafeStr_256._SafeStr_3029(_loc14_,_loc21_,null);
                  _loc9_--;
               }
               else if(!_loc15_.indexOf("am_Midground"))
               {
                  _loc22_ = this._SafeStr_118._SafeStr_256._SafeStr_594.numChildren;
                  this._SafeStr_1139(_loc14_,param2 + 1,param3,true,false,null,null);
                  this._SafeStr_118._SafeStr_256._SafeStr_3463(_loc14_,_loc22_,null);
                  _loc9_--;
               }
               else if(!_loc15_.indexOf("am_Background"))
               {
                  _loc23_ = this._SafeStr_118._SafeStr_256._SafeStr_625.numChildren;
                  this._SafeStr_1139(_loc14_,param2 + 1,param3,true,false,null,null);
                  this._SafeStr_118._SafeStr_256._SafeStr_3145(_loc14_,_loc23_,null);
                  _loc9_--;
               }
               else
               {
                  this._SafeStr_1139(_loc14_,param2 + 1,param3,param4,param5,param6,null);
               }
            }
            _loc9_++;
         }
         param3.pop();
         return _loc10_;
      }
      
      public function _SafeStr_3724(param1:String, param2:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc3_:Array = this._SafeStr_691[param1];
         if(!_loc3_)
         {
            return;
         }
         var _loc5_:int = int(_loc3_.length);
         _loc4_ = 0;
         while(_loc4_ < _loc5_)
         {
            _loc3_[_loc4_].bDisabled = param2;
            _loc4_++;
         }
      }
      
      private function _SafeStr_3426(param1:Point, param2:Point) : Number
      {
         return param1.x - param2.x;
      }
      
      private function _SafeStr_3503(param1:DisplayObject) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc11_:_SafeCls_20 = null;
         var _loc2_:Vector.<_SafeCls_20> = new Vector.<_SafeCls_20>();
         var _loc3_:Vector.<_SafeCls_20> = new Vector.<_SafeCls_20>();
         var _loc6_:Point = new Point();
         var _loc7_:Point = new Point();
         var _loc8_:Point = new Point();
         var _loc9_:Point = new Point();
         var _loc10_:Point = new Point();
         for each(_loc11_ in this._SafeStr_118._SafeStr_165._SafeStr_1787)
         {
            _loc11_._SafeStr_199 = new Point(Math.abs(_loc11_._SafeStr_261 - _loc11_._SafeStr_306),Math.abs(_loc11_._SafeStr_198 - _loc11_._SafeStr_235));
            _loc2_.length = 0;
            _loc3_.length = 0;
            _loc4_ = (_loc11_._SafeStr_198 + _loc11_._SafeStr_235) * 0.5;
            _loc5_ = (_loc11_._SafeStr_261 + _loc11_._SafeStr_306) * 0.5;
            _loc4_ += 5 - _loc4_ % 10;
            _loc5_ += 5 - _loc5_ % 10;
            if(_loc11_.type & _SafeCls_0._SafeStr_291)
            {
               _loc11_._SafeStr_199.y *= -1;
               if(_loc11_._SafeStr_306 < _loc11_._SafeStr_261)
               {
                  _loc11_._SafeStr_199.x *= -1;
               }
            }
            else
            {
               if(_loc11_._SafeStr_198 == _loc11_._SafeStr_235)
               {
                  _loc8_.x = param1.width;
                  _loc9_.x = -param1.width;
                  this._SafeStr_118._SafeStr_165._SafeStr_174(_loc4_,_loc5_,_loc8_,_loc10_,_loc11_,null,null,_SafeCls_0._SafeStr_179,0,0,_loc3_);
                  this._SafeStr_118._SafeStr_165._SafeStr_174(_loc4_,_loc5_,_loc9_,_loc10_,_loc11_,null,null,_SafeCls_0._SafeStr_179,0,0,_loc2_);
                  if(_loc3_.length % 2)
                  {
                     _loc11_._SafeStr_199.x *= -1;
                  }
               }
               else
               {
                  _loc6_.y = param1.height;
                  _loc7_.y = -param1.height;
                  this._SafeStr_118._SafeStr_165._SafeStr_174(_loc4_,_loc5_,_loc6_,_loc10_,_loc11_,null,null,_SafeCls_0._SafeStr_179,0,0,_loc3_);
                  this._SafeStr_118._SafeStr_165._SafeStr_174(_loc4_,_loc5_,_loc7_,_loc10_,_loc11_,null,null,_SafeCls_0._SafeStr_179,0,0,_loc2_);
                  if(_loc11_._SafeStr_306 >= _loc11_._SafeStr_261)
                  {
                     if(_loc3_.length % 2)
                     {
                        _loc11_._SafeStr_199.y *= -1;
                     }
                     else
                     {
                        _loc11_._SafeStr_199.x *= -1;
                     }
                  }
                  else if(_loc3_.length % 2)
                  {
                     _loc11_._SafeStr_199.x *= -1;
                     _loc11_._SafeStr_199.y *= -1;
                  }
               }
               if(_loc3_.length % 2 == _loc2_.length % 2)
               {
                  _SafeCls_22._SafeStr_195("You have an unclosed shape in the collisions layer using line: (" + _loc11_._SafeStr_198 + ", " + _loc11_._SafeStr_261 + ") - (" + _loc11_._SafeStr_235 + ", " + _loc11_._SafeStr_306 + ")");
               }
            }
            _loc11_._SafeStr_199.normalize(1);
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_7 = "_-Af"
 * @identifier _SafeCls_9 = "_-cU"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_20 = "_-9f"
 * @identifier _SafeCls_21 = "_-0r"
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_42 = "_-w0"
 * @identifier _SafeCls_102 = "_-9E"
 * @identifier _SafeCls_105 = " each"
 * @identifier _SafeCls_109 = "_-Zs"
 * @identifier _SafeCls_110 = "_-EN"
 * @identifier _SafeCls_0 = "_-D6"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_156 = "_-gH"
 * @identifier _SafeStr_165 = "_-Ix"
 * @identifier _SafeStr_174 = "_-Mt"
 * @identifier _SafeStr_179 = "_-BZ"
 * @identifier _SafeStr_188 = "_-qs"
 * @identifier _SafeStr_195 = "_-70"
 * @identifier _SafeStr_198 = "_-Jk"
 * @identifier _SafeStr_199 = "_-rq"
 * @identifier _SafeStr_235 = "_-KF"
 * @identifier _SafeStr_253 = "_-BW"
 * @identifier _SafeStr_256 = "_-A1"
 * @identifier _SafeStr_261 = "_-dm"
 * @identifier _SafeStr_285 = "_-N-"
 * @identifier _SafeStr_291 = "_-Ce"
 * @identifier _SafeStr_306 = "_-r9"
 * @identifier _SafeStr_322 = "_-uU"
 * @identifier _SafeStr_340 = "_-He"
 * @identifier _SafeStr_449 = "_-UC"
 * @identifier _SafeStr_500 = "_-dS"
 * @identifier _SafeStr_563 = "_-Vo"
 * @identifier _SafeStr_594 = "_-Lc"
 * @identifier _SafeStr_613 = "_-u4"
 * @identifier _SafeStr_617 = "_-Oj"
 * @identifier _SafeStr_625 = "_-LM"
 * @identifier _SafeStr_657 = "_-nC"
 * @identifier _SafeStr_688 = "true"
 * @identifier _SafeStr_691 = "_-ss"
 * @identifier _SafeStr_724 = "_-mW"
 * @identifier _SafeStr_982 = "_-UZ"
 * @identifier _SafeStr_1139 = "_-QF"
 * @identifier _SafeStr_1212 = "_-mZ"
 * @identifier _SafeStr_1214 = "_-Er"
 * @identifier _SafeStr_1278 = "_-h2"
 * @identifier _SafeStr_1319 = "_-Yg"
 * @identifier _SafeStr_1413 = "_-IR"
 * @identifier _SafeStr_1431 = "_-NI"
 * @identifier _SafeStr_1514 = "_-Mj"
 * @identifier _SafeStr_1787 = "_-9Q"
 * @identifier _SafeStr_1820 = "_-8S"
 * @identifier _SafeStr_1991 = "_-8i"
 * @identifier _SafeStr_2074 = "_-U5"
 * @identifier _SafeStr_2101 = "_-60"
 * @identifier _SafeStr_2188 = "_-EF"
 * @identifier _SafeStr_2319 = "_-Ne"
 * @identifier _SafeStr_2342 = "_-YY"
 * @identifier _SafeStr_2364 = "_-d"
 * @identifier _SafeStr_2391 = "_-JN"
 * @identifier _SafeStr_2402 = "_-v5"
 * @identifier _SafeStr_2643 = "_-lA"
 * @identifier _SafeStr_3029 = "_-0o"
 * @identifier _SafeStr_3053 = "_-Cj"
 * @identifier _SafeStr_3055 = "_-I2"
 * @identifier _SafeStr_3145 = "_-6f"
 * @identifier _SafeStr_3165 = "_-pV"
 * @identifier _SafeStr_3187 = "_-os"
 * @identifier _SafeStr_3344 = "_-2z"
 * @identifier _SafeStr_3385 = "_-4z"
 * @identifier _SafeStr_3426 = "_-fY"
 * @identifier _SafeStr_3432 = "_-fN"
 * @identifier _SafeStr_3463 = "_-MQ"
 * @identifier _SafeStr_3491 = "_-9p"
 * @identifier _SafeStr_3503 = "_-bu"
 * @identifier _SafeStr_3542 = "_-iJ"
 * @identifier _SafeStr_3544 = "_-9x"
 * @identifier _SafeStr_3587 = "_-2c"
 * @identifier _SafeStr_3647 = "_-Gf"
 * @identifier _SafeStr_3724 = "_-Wx"
 */
