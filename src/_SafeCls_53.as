package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _SafeCls_53 extends _SafeCls_35
   {
      
      private static const _SafeStr_788:uint = 4;
      
      private static const _SafeStr_373:uint = 7;
      
      private static const _SafeStr_2918:uint = _SafeStr_788 * _SafeStr_373;
      
      private static const _SafeStr_1840:uint = 9;
      
      private static const _SafeStr_1102:Vector.<uint> = Vector.<uint>([_SafeStr_1840]);
      
      private var _SafeStr_898:_SafeCls_34;
      
      private var _SafeStr_506:_SafeCls_34;
      
      private var _SafeStr_2203:_SafeCls_62;
      
      private var _SafeStr_1331:Vector.<_SafeCls_16>;
      
      private var _SafeStr_494:Vector.<_SafeCls_16>;
      
      private var _SafeStr_205:Point;
      
      private var _SafeStr_245:_SafeCls_34;
      
      private var _SafeStr_1380:_SafeCls_34;
      
      private var _SafeStr_218:Vector.<Vector.<_SafeCls_34>>;
      
      private var _SafeStr_463:Boolean;
      
      private var _SafeStr_2406:Boolean;
      
      public function _SafeCls_53(param1:Game)
      {
         super(param1,"a_ScreenHeroList",null);
         _SafeStr_158 = true;
      }
      
      override public function OnCreateScreen() : void
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc1_:MovieClip = _SafeStr_123.am_Panel;
         this._SafeStr_898 = _SafeStr_124(_loc1_);
         var _loc2_:MovieClip = _loc1_.am_PanelInternal;
         this._SafeStr_218 = new Vector.<Vector.<_SafeCls_34>>();
         var _loc3_:uint = 0;
         while(_loc3_ < _SafeStr_788)
         {
            this._SafeStr_218.push(new Vector.<_SafeCls_34>());
            _loc4_ = 0;
            while(_loc4_ < _SafeStr_373)
            {
               _loc5_ = _loc3_ * _SafeStr_373 + _loc4_;
               this._SafeStr_218[_loc3_][_loc4_] = _SafeStr_246(_loc2_["am_Portrait" + _loc5_],_loc5_,this._SafeStr_3214,this._SafeStr_376);
               _loc4_++;
            }
            _loc3_++;
         }
         this._SafeStr_506 = _SafeStr_124(_loc2_.am_NamePlate);
         this._SafeStr_2203 = _SafeStr_145(this._SafeStr_506.mMovieClip.am_Name);
         this._SafeStr_205 = new Point(0,0);
         this._SafeStr_1380 = this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205.x][this._SafeStr_205.y];
         this._SafeStr_1331 = new Vector.<_SafeCls_16>();
         this._SafeStr_494 = new Vector.<_SafeCls_16>();
         _SafeStr_130(_loc2_.am_Close,this.OnClose);
      }
      
      override public function OnDestroyScreen() : void
      {
         var _loc1_:_SafeCls_34 = null;
         var _loc2_:Vector.<_SafeCls_34> = null;
         this._SafeStr_898 = null;
         this._SafeStr_205 = null;
         this._SafeStr_245 = null;
         this._SafeStr_1380 = null;
         this._SafeStr_506 = null;
         this._SafeStr_2203 = null;
         this._SafeStr_1331 = null;
         this._SafeStr_494 = null;
         if(this._SafeStr_218)
         {
            for each(_loc2_ in this._SafeStr_218)
            {
               for each(_loc1_ in _loc2_)
               {
                  _loc1_.mMovieClip.removeChildren();
               }
               _loc2_.length = 0;
               _loc2_ = null;
            }
            this._SafeStr_218 = null;
         }
      }
      
      override public function OnRefreshScreen() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:_SafeCls_34 = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:_SafeCls_16 = null;
         var _loc9_:uint = 0;
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_1380.mMovieClip.am_Highlighter.visible = false;
         this._SafeStr_245.mMovieClip.am_Highlighter.visible = true;
         this._SafeStr_1380 = this._SafeStr_245;
         var _loc1_:MovieClip = this._SafeStr_506.mMovieClip;
         this._SafeStr_506.mMovieClip.x = this._SafeStr_245.mMovieClip.x;
         this._SafeStr_506.mMovieClip.y = this._SafeStr_245.mMovieClip.y;
         var _loc2_:_SafeCls_16 = this._SafeStr_494[this._SafeStr_205.x * _SafeStr_373 + this._SafeStr_205.y];
         if(!_loc2_)
         {
            if(this._SafeStr_506.mbVisible)
            {
               this._SafeStr_506.Hide();
            }
         }
         else
         {
            if(!this._SafeStr_506.mbVisible)
            {
               this._SafeStr_506.Show();
            }
            this._SafeStr_2203.SetText(_SafeStr_1102.indexOf(_loc2_.mHeroID) != -1 ? "COMING SOON" : _loc2_.mDisplayName);
         }
         if(this._SafeStr_2406)
         {
            _loc9_ = this._SafeStr_494.length;
            _loc5_ = 0;
            while(_loc5_ < _SafeStr_788)
            {
               _loc6_ = 0;
               while(_loc6_ < _SafeStr_373)
               {
                  _loc4_ = this._SafeStr_218[_loc5_][_loc6_];
                  _loc3_ = _loc4_.mMovieClip.am_Holder;
                  _loc3_.removeChildren();
                  _loc7_ = _loc5_ * _SafeStr_373 + _loc6_;
                  if(_loc7_ < _loc9_)
                  {
                     _loc8_ = this._SafeStr_494[_loc7_];
                     if(_loc8_)
                     {
                        _loc3_.addChild(_SafeCls_12._SafeStr_294(_loc8_._SafeStr_1279 + "_HeroList"));
                     }
                  }
                  _loc6_++;
               }
               _loc5_++;
            }
            this._SafeStr_2406 = false;
         }
      }
      
      override public function OnTickScreen() : void
      {
         if(this._SafeStr_463)
         {
            if(this._SafeStr_898.mbCompleted)
            {
               this._SafeStr_463 = false;
               Hide();
            }
         }
      }
      
      public function OnInitDisplay() : void
      {
         this._SafeStr_898.ClearAnimation();
         this._SafeStr_898.PlayAnimation("Display");
         this._SafeStr_2406 = true;
         this._SafeStr_2905();
         this._SafeStr_3305(_SafeStr_1102);
         this._SafeStr_494 = this._SafeStr_3397();
      }
      
      public function OnClose(param1:MouseEvent = null) : void
      {
         if(this._SafeStr_463)
         {
            return;
         }
         this._SafeStr_463 = true;
         this._SafeStr_898.PlayAnimation("Display",_SafeCls_34._SafeStr_286);
      }
      
      public function _SafeStr_191(param1:int) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         if(!mbVisible || this._SafeStr_463)
         {
            return false;
         }
         var _loc4_:Boolean = false;
         switch(param1)
         {
            case Game._SafeStr_216:
            case Game._SafeStr_305:
               if(this._SafeStr_245)
               {
                  this._SafeStr_245.mMovieClip.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
               }
               break;
            case Game._SafeStr_208:
               _loc2_ = this._SafeStr_205.x == 0 ? uint(_SafeStr_788 - 1) : uint(this._SafeStr_205.x - 1);
               if(this._SafeStr_1663(_loc2_,this._SafeStr_205.y))
               {
                  this._SafeStr_205.x = _loc2_;
                  _loc4_ = true;
               }
               break;
            case Game._SafeStr_207:
               _loc2_ = this._SafeStr_205.x < _SafeStr_788 - 1 ? uint(this._SafeStr_205.x + 1) : 0;
               if(this._SafeStr_1663(_loc2_,this._SafeStr_205.y))
               {
                  this._SafeStr_205.x = _loc2_;
                  _loc4_ = true;
               }
               break;
            case Game._SafeStr_213:
               _loc3_ = this._SafeStr_205.y < _SafeStr_373 - 1 ? uint(this._SafeStr_205.y + 1) : 0;
               if(this._SafeStr_1663(this._SafeStr_205.x,_loc3_))
               {
                  this._SafeStr_205.y = _loc3_;
                  _loc4_ = true;
               }
               break;
            case Game._SafeStr_214:
               _loc3_ = this._SafeStr_205.y == 0 ? uint(_SafeStr_373 - 1) : uint(this._SafeStr_205.y - 1);
               if(this._SafeStr_1663(this._SafeStr_205.x,_loc3_))
               {
                  this._SafeStr_205.y = _loc3_;
                  _loc4_ = true;
               }
               break;
            case Game._SafeStr_242:
            case Game._SafeStr_247:
            case Game._SafeStr_288:
            case Game._SafeStr_293:
               this.OnClose();
         }
         if(_loc4_)
         {
            this._SafeStr_245 = this._SafeStr_218[this._SafeStr_205.x][this._SafeStr_205.y];
            _SafeStr_118.PlaySound("Mouseover_Click");
            _SafeStr_141();
         }
         return true;
      }
      
      private function _SafeStr_376(param1:MouseEvent, param2:uint) : void
      {
         if(this._SafeStr_463 || param2 >= this._SafeStr_494.length)
         {
            return;
         }
         var _loc3_:uint = param2 / _SafeStr_373;
         var _loc4_:uint = param2 % _SafeStr_373;
         this._SafeStr_205.x = _loc3_;
         this._SafeStr_205.y = _loc4_;
         this._SafeStr_245 = this._SafeStr_218[_loc3_][_loc4_];
         _SafeStr_118.PlaySound("Mouseover_Click");
         _SafeStr_141();
      }
      
      private function _SafeStr_3214(param1:MouseEvent, param2:uint) : void
      {
         if(this._SafeStr_463 || param2 >= this._SafeStr_494.length)
         {
            return;
         }
         var _loc3_:_SafeCls_16 = this._SafeStr_494[param2];
         if(!_loc3_)
         {
            return;
         }
         if(_SafeStr_1102.indexOf(_loc3_.mHeroID) != -1)
         {
            return;
         }
         _SafeStr_118.screenHeroOverview.Display(_loc3_);
         this.OnClose();
      }
      
      private function _SafeStr_2905() : void
      {
         var _loc1_:Vector.<_SafeCls_34> = null;
         var _loc2_:_SafeCls_34 = null;
         for each(_loc1_ in this._SafeStr_218)
         {
            for each(_loc2_ in _loc1_)
            {
               _loc2_.mMovieClip.am_Highlighter.visible = false;
            }
         }
      }
      
      private function _SafeStr_1663(param1:uint, param2:uint) : Boolean
      {
         var _loc3_:uint = param1 * _SafeStr_373 + param2;
         return _loc3_ < this._SafeStr_494.length;
      }
      
      private function _SafeStr_3305(param1:Vector.<uint>) : void
      {
         var _loc2_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:_SafeCls_16 = null;
         this._SafeStr_1331.length = 0;
         var _loc3_:uint = param1.length;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            _loc4_ = param1[_loc2_];
            _loc5_ = _SafeCls_16._SafeStr_272[_loc4_];
            if(_loc5_)
            {
               this._SafeStr_1331.push(_loc5_);
            }
            _loc2_++;
         }
      }
      
      private function _SafeStr_3397() : Vector.<_SafeCls_16>
      {
         var _loc1_:Vector.<_SafeCls_16> = _SafeCls_16._SafeStr_389.slice();
         _loc1_.pop();
         return _loc1_.concat(this._SafeStr_1331);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_12 = "_-G5"
 * @identifier _SafeCls_16 = "_-DS"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_53 = "_-Yr"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_130 = "_-Ri"
 * @identifier _SafeStr_141 = "_-Ay"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_205 = "_-Ht"
 * @identifier _SafeStr_207 = "_-wd"
 * @identifier _SafeStr_208 = "_-9P"
 * @identifier _SafeStr_213 = "_-Rl"
 * @identifier _SafeStr_214 = "_-W1"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_218 = "_-6B"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_245 = "_-7I"
 * @identifier _SafeStr_246 = "_-L0"
 * @identifier _SafeStr_247 = "_-PM"
 * @identifier _SafeStr_272 = "_-7S"
 * @identifier _SafeStr_286 = "_-kZ"
 * @identifier _SafeStr_288 = "_-m2"
 * @identifier _SafeStr_293 = "_-tr"
 * @identifier _SafeStr_294 = "_-2P"
 * @identifier _SafeStr_305 = "_-2J"
 * @identifier _SafeStr_373 = "_-Cu"
 * @identifier _SafeStr_376 = "_-BM"
 * @identifier _SafeStr_389 = "_-b7"
 * @identifier _SafeStr_463 = "_-45"
 * @identifier _SafeStr_494 = "_-Rj"
 * @identifier _SafeStr_506 = " for"
 * @identifier _SafeStr_788 = "_-aU"
 * @identifier _SafeStr_898 = "_-bZ"
 * @identifier _SafeStr_1102 = "_-Rc"
 * @identifier _SafeStr_1279 = "_-s5"
 * @identifier _SafeStr_1331 = "_-bn"
 * @identifier _SafeStr_1380 = "_-cG"
 * @identifier _SafeStr_1663 = "_-Xy"
 * @identifier _SafeStr_1840 = "_-kn"
 * @identifier _SafeStr_2203 = "_-Re"
 * @identifier _SafeStr_2406 = "_-0g"
 * @identifier _SafeStr_2905 = "_-vr"
 * @identifier _SafeStr_2918 = "_-Jr"
 * @identifier _SafeStr_3214 = "_-e2"
 * @identifier _SafeStr_3305 = "_-Tn"
 * @identifier _SafeStr_3397 = "_-3b"
 */
