package
{
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class TrailEffect
   {
      
      private var _SafeStr_118:Game;
      
      public var mbRunning:Boolean;
      
      private var _SafeStr_308:_SafeCls_25;
      
      public var _SafeStr_479:_SafeCls_8;
      
      private var _SafeStr_435:_SafeCls_40;
      
      private var _SafeStr_1309:uint;
      
      private var _SafeStr_787:Vector.<_SafeCls_111>;
      
      public function TrailEffect(param1:Game, param2:_SafeCls_25, param3:_SafeCls_8)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_308 = param2;
         this._SafeStr_787 = new Vector.<_SafeCls_111>();
         this.mbRunning = false;
         this._SafeStr_3182(param3);
         this._SafeStr_750();
      }
      
      public function _SafeStr_2499() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:_SafeCls_111 = null;
         this._SafeStr_118 = null;
         this._SafeStr_308 = null;
         if(this._SafeStr_435)
         {
            this._SafeStr_435._SafeStr_201();
            this._SafeStr_435 = null;
         }
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_1309)
         {
            _loc2_ = this._SafeStr_787[_loc1_];
            _loc2_._SafeStr_2545();
            _loc2_ = null;
            _loc1_++;
         }
         this._SafeStr_787 = null;
      }
      
      public function _SafeStr_3031() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:_SafeCls_111 = null;
         if(!this.mbRunning)
         {
            return;
         }
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_1309)
         {
            _loc2_ = this._SafeStr_787[_loc1_];
            _loc2_._SafeStr_2066 = this._SafeStr_308.mPhysCenterX;
            _loc2_._SafeStr_2303 = this._SafeStr_308.mPhysCenterY;
            _loc2_._SafeStr_3423();
            _loc1_++;
         }
         if(this._SafeStr_435)
         {
            this._SafeStr_435._SafeStr_536();
         }
      }
      
      public function _SafeStr_3369() : void
      {
         var _loc1_:uint = 0;
         this.mbRunning = true;
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_1309)
         {
            this._SafeStr_787[_loc1_].Reset();
            _loc1_++;
         }
         if(this._SafeStr_479._SafeStr_1168)
         {
            this._SafeStr_2299(this._SafeStr_479._SafeStr_1168,true);
         }
         if(this._SafeStr_435)
         {
            this._SafeStr_435._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,"Ready",true);
            this._SafeStr_435._SafeStr_120.visible = true;
         }
      }
      
      public function _SafeStr_750() : void
      {
         this.mbRunning = false;
         if(this._SafeStr_479._SafeStr_1078)
         {
            this._SafeStr_2299(this._SafeStr_479._SafeStr_1078,false);
         }
         if(this._SafeStr_435)
         {
            this._SafeStr_435._SafeStr_120.visible = false;
         }
      }
      
      public function _SafeStr_3182(param1:_SafeCls_8) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:String = null;
         var _loc5_:_SafeCls_14 = null;
         this._SafeStr_787.length = 0;
         var _loc2_:Vector.<_SafeCls_14> = param1._SafeStr_2208;
         this._SafeStr_1309 = _loc2_.length;
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_1309)
         {
            _loc4_ = _loc2_[_loc3_].mDataName;
            _loc5_ = _SafeCls_14._SafeStr_1041[_loc4_];
            this._SafeStr_787.push(new _SafeCls_111(this._SafeStr_118,_loc5_));
            _loc3_++;
         }
         if(param1._SafeStr_1307)
         {
            this._SafeStr_435 = new _SafeCls_40(this._SafeStr_118,param1._SafeStr_1307,false,true);
            var _loc6_:Sprite = this._SafeStr_435._SafeStr_120;
            _loc6_.x = 0;
            _loc6_.y = 0;
            this._SafeStr_308._SafeStr_125._SafeStr_120.addChild(_loc6_);
         }
         this._SafeStr_479 = param1;
      }
      
      private function _SafeStr_2299(param1:GfxType, param2:Boolean, param3:Boolean = false) : void
      {
         var _loc6_:Rectangle = null;
         var _loc4_:_SafeCls_40 = new _SafeCls_40(this._SafeStr_118,param1,false);
         var _loc5_:Sprite = _loc4_._SafeStr_120;
         if(param2)
         {
            if(!param3)
            {
               _loc5_.x = this._SafeStr_308.mPhysCenterX;
               _loc5_.y = this._SafeStr_308.mPhysCenterY;
            }
            else
            {
               _loc6_ = this._SafeStr_118.level._SafeStr_253;
               if(this._SafeStr_308.mPhysCenterX <= _loc6_.x)
               {
                  _loc5_.rotation = 90;
               }
               else if(this._SafeStr_308.mPhysCenterX >= _loc6_.right)
               {
                  _loc5_.rotation = -90;
               }
               else if(this._SafeStr_308.mPhysCenterY <= _loc6_.y)
               {
                  _loc5_.rotation = 180;
               }
               else
               {
                  _loc5_.rotation = 0;
               }
               _loc5_.x = _SafeCls_19._SafeStr_546(this._SafeStr_308.mPhysCenterX,_loc6_.left,_loc6_.right);
               _loc5_.y = _SafeCls_19._SafeStr_546(this._SafeStr_308.mPhysCenterY,_loc6_.top,_loc6_.bottom);
            }
            this._SafeStr_118._SafeStr_164.addChildAt(_loc5_,0);
         }
         else
         {
            _loc5_.x = 0;
            _loc5_.y = 0;
            this._SafeStr_308._SafeStr_125._SafeStr_120.addChild(_loc5_);
         }
      }
      
      public function _SafeStr_2748() : void
      {
         if(this._SafeStr_479._SafeStr_1328)
         {
            this._SafeStr_2299(this._SafeStr_479._SafeStr_1328,true,true);
         }
         if(this._SafeStr_479._SafeStr_1994)
         {
            this._SafeStr_118.PlaySoundAtPosition(this._SafeStr_308.mEntID,this._SafeStr_479._SafeStr_1994,this._SafeStr_308.mPhysCenterX,this._SafeStr_308.mPhysCenterY);
         }
         this._SafeStr_118.mCamera._SafeStr_706(15);
         this.mbRunning = false;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_8 = "_-So"
 * @identifier _SafeCls_14 = "_-fx"
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeCls_111 = "_-Xb"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_125 = "_-5"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_164 = "_-QU"
 * @identifier _SafeStr_201 = "_-x"
 * @identifier _SafeStr_253 = "_-BW"
 * @identifier _SafeStr_298 = "_-j2"
 * @identifier _SafeStr_307 = "_-mp"
 * @identifier _SafeStr_308 = "_-Pq"
 * @identifier _SafeStr_435 = "_-Nu"
 * @identifier _SafeStr_479 = "_-5f"
 * @identifier _SafeStr_536 = "_-Va"
 * @identifier _SafeStr_546 = "_-ej"
 * @identifier _SafeStr_706 = "_-mP"
 * @identifier _SafeStr_750 = "_-2a"
 * @identifier _SafeStr_787 = "_-g2"
 * @identifier _SafeStr_1041 = "_-tK"
 * @identifier _SafeStr_1078 = "_-XV"
 * @identifier _SafeStr_1168 = "_-Yl"
 * @identifier _SafeStr_1307 = "_-b3"
 * @identifier _SafeStr_1309 = "_-aW"
 * @identifier _SafeStr_1328 = "_-QL"
 * @identifier _SafeStr_1994 = "_-lb"
 * @identifier _SafeStr_2066 = "_-SJ"
 * @identifier _SafeStr_2208 = "_-S-"
 * @identifier _SafeStr_2299 = "_-cd"
 * @identifier _SafeStr_2303 = "_-B8"
 * @identifier _SafeStr_2499 = "_-7E"
 * @identifier _SafeStr_2545 = "_-AC"
 * @identifier _SafeStr_2748 = "_-s2"
 * @identifier _SafeStr_3031 = "_-8e"
 * @identifier _SafeStr_3182 = "_-5Y"
 * @identifier _SafeStr_3369 = "_-i-"
 * @identifier _SafeStr_3423 = "_-lq"
 */
