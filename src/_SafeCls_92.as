package
{
   import flash.display.MovieClip;
   
   public class _SafeCls_92
   {
      
      private static const _SafeStr_1432:uint = 0;
      
      private static const _SafeStr_1351:uint = 1;
      
      private static const _SafeStr_1957:uint = 2;
      
      private static const _SafeStr_530:uint = 12;
      
      private static const _SafeStr_2231:uint = 2000;
      
      private static const _SafeStr_2333:uint = 4000;
      
      private static const _SafeStr_910:String = "Display";
      
      private static const _SafeStr_987:String = "Hide";
      
      private var _SafeStr_118:Game;
      
      private var _SafeStr_1142:uint;
      
      private var _SafeStr_454:uint;
      
      private var _SafeStr_1026:uint;
      
      private var _SafeStr_1488:uint;
      
      private var _SafeStr_2886:uint;
      
      private var _SafeStr_624:_SafeCls_34;
      
      private var mDisplayName:_SafeCls_62;
      
      private var _SafeStr_490:_SafeCls_34;
      
      private var _SafeStr_527:Vector.<GfxType>;
      
      private var _SafeStr_1543:Vector.<_SafeCls_34>;
      
      private var _SafeStr_1316:Vector.<_SafeCls_40>;
      
      private var _SafeStr_990:Vector.<_SafeCls_34>;
      
      private var _SafeStr_126:_SafeCls_25;
      
      private var _SafeStr_718:_SafeCls_34;
      
      private var _SafeStr_854:_SafeCls_34;
      
      private var _SafeStr_3121:GfxType;
      
      private var _SafeStr_1006:_SafeCls_40;
      
      private var _SafeStr_736:_SafeCls_34;
      
      private var _SafeStr_566:_SafeCls_34;
      
      private var _SafeStr_556:_SafeCls_34;
      
      private var _SafeStr_553:_SafeCls_34;
      
      private var _SafeStr_596:_SafeCls_34;
      
      private var _SafeStr_874:_SafeCls_34;
      
      private var _SafeStr_1294:Boolean;
      
      public function _SafeCls_92(param1:Game, param2:_SafeCls_25)
      {
         super();
         this._SafeStr_118 = param1;
         this._SafeStr_126 = param2;
         this._SafeStr_2122();
      }
      
      private function _SafeStr_2122() : void
      {
         var _loc2_:uint = 0;
         var _loc3_:MovieClip = null;
         var _loc4_:_SafeCls_34 = null;
         if(!this._SafeStr_118.screenBroadcast._SafeStr_123)
         {
            return;
         }
         this._SafeStr_1294 = true;
         var _loc1_:MovieClip = _SafeCls_12._SafeStr_294("a_CombatBroadcastAsset");
         this._SafeStr_118.screenBroadcast._SafeStr_123.addChild(_loc1_);
         this._SafeStr_527 = new Vector.<GfxType>(_SafeStr_530,true);
         this._SafeStr_1543 = new Vector.<_SafeCls_34>(_SafeStr_530,true);
         this._SafeStr_990 = new Vector.<_SafeCls_34>(_SafeStr_530,true);
         this._SafeStr_1316 = new Vector.<_SafeCls_40>(_SafeStr_530,true);
         _loc2_ = 0;
         while(_loc2_ < _SafeStr_530)
         {
            _loc3_ = _loc1_["am_HeadIcon" + _loc2_] as MovieClip;
            _loc4_ = this._SafeStr_118.screenBroadcast._SafeStr_124(_loc3_);
            _loc4_.Hide();
            this._SafeStr_1543[_loc2_] = this._SafeStr_118.screenBroadcast._SafeStr_124(_loc4_.mMovieClip.am_Head);
            this._SafeStr_990[_loc2_] = _loc4_;
            _loc2_++;
         }
         this._SafeStr_736 = this._SafeStr_118.screenBroadcast._SafeStr_124(_loc1_.am_Base);
         this._SafeStr_736.Hide();
         this._SafeStr_854 = this._SafeStr_118.screenBroadcast._SafeStr_124(_loc1_.am_ParentHeadAnim);
         this._SafeStr_718 = this._SafeStr_118.screenBroadcast._SafeStr_124(this._SafeStr_854.mMovieClip.am_HeadShot);
         this._SafeStr_854.Hide();
         this._SafeStr_624 = this._SafeStr_118.screenBroadcast._SafeStr_124(_loc1_.am_NameWrapper);
         this._SafeStr_624.Hide();
         this.mDisplayName = this._SafeStr_118.screenBroadcast._SafeStr_145(this._SafeStr_624.mMovieClip.am_NameAnim.am_Name);
         this.mDisplayName.SetText(this._SafeStr_126._SafeStr_144.mDisplayName);
         this._SafeStr_566 = this._SafeStr_118.screenBroadcast._SafeStr_124(_loc1_.am_DoubleKill);
         this._SafeStr_566.Hide();
         this._SafeStr_556 = this._SafeStr_118.screenBroadcast._SafeStr_124(_loc1_.am_TripleKill);
         this._SafeStr_556.Hide();
         this._SafeStr_553 = this._SafeStr_118.screenBroadcast._SafeStr_124(_loc1_.am_QuadraKill);
         this._SafeStr_553.Hide();
         this._SafeStr_596 = this._SafeStr_118.screenBroadcast._SafeStr_124(_loc1_.am_PentaKill);
         this._SafeStr_596.Hide();
         this._SafeStr_874 = this._SafeStr_118.screenBroadcast._SafeStr_124(_loc1_.am_RampageKill);
         this._SafeStr_874.Hide();
         this._SafeStr_2782();
      }
      
      public function _SafeStr_3250() : void
      {
         var _loc1_:uint = 0;
         var _loc4_:_SafeCls_40 = null;
         this._SafeStr_1446();
         this._SafeStr_118 = null;
         this._SafeStr_126 = null;
         this._SafeStr_3121 = null;
         if(this._SafeStr_718)
         {
            this._SafeStr_718.mMovieClip.removeChildren();
         }
         if(this._SafeStr_1006)
         {
            this._SafeStr_1006._SafeStr_201();
         }
         this._SafeStr_1006 = null;
         this._SafeStr_718 = null;
         this._SafeStr_736 = null;
         this._SafeStr_624 = null;
         this.mDisplayName = null;
         this._SafeStr_490 = null;
         this._SafeStr_566 = null;
         this._SafeStr_556 = null;
         this._SafeStr_553 = null;
         this._SafeStr_596 = null;
         this._SafeStr_874 = null;
         if(!this._SafeStr_1294)
         {
            return;
         }
         this._SafeStr_1294 = false;
         _loc1_ = 0;
         while(_loc1_ < _SafeStr_530)
         {
            _loc4_ = this._SafeStr_1316[_loc1_];
            if(_loc4_)
            {
               _loc4_._SafeStr_201();
               _loc4_ = null;
            }
            _loc1_++;
         }
         this._SafeStr_527 = null;
         this._SafeStr_1543 = null;
         this._SafeStr_990 = null;
         this._SafeStr_1316 = null;
      }
      
      public function _SafeStr_3100() : Boolean
      {
         var _loc1_:uint = 0;
         var _loc2_:_SafeCls_34 = null;
         var _loc3_:_SafeCls_34 = null;
         var _loc4_:_SafeCls_40 = null;
         var _loc5_:uint = 0;
         var _loc6_:_SafeCls_34 = null;
         if(this._SafeStr_1142 == _SafeStr_1432)
         {
            if(Boolean(this._SafeStr_490) && this._SafeStr_490.mbCompleted)
            {
               this._SafeStr_1488 = this._SafeStr_118.mTimeThisTick;
               this._SafeStr_490 = null;
            }
            _loc1_ = this._SafeStr_118.mTimeThisTick;
            if(Boolean(this._SafeStr_1488) && _loc1_ - this._SafeStr_1488 > _SafeStr_2231)
            {
               this._SafeStr_1446();
               return false;
            }
            return true;
         }
         if(this._SafeStr_1142 == _SafeStr_1351)
         {
            if(!this._SafeStr_624.mbVisible)
            {
               this._SafeStr_624.Show();
               this._SafeStr_624.ClearAnimation();
               this._SafeStr_624.PlayAnimation(_SafeStr_910);
            }
            if(!this._SafeStr_736.mbVisible)
            {
               this._SafeStr_736.Show();
               this._SafeStr_736.ClearAnimation();
               this._SafeStr_736.PlayAnimation(_SafeStr_910);
               this._SafeStr_854.Show();
               this._SafeStr_854.ClearAnimation();
               this._SafeStr_854.PlayAnimation(_SafeStr_910);
            }
            if(Boolean(this._SafeStr_490) && !this._SafeStr_490.mbCompleted)
            {
               return true;
            }
            if(this._SafeStr_1026 <= this._SafeStr_454)
            {
               this._SafeStr_1142 = _SafeStr_1432;
               return true;
            }
            _loc2_ = this._SafeStr_990[this._SafeStr_454];
            if(!_loc2_.mbVisible)
            {
               switch(this._SafeStr_454)
               {
                  case 0:
                     this._SafeStr_566.Show();
                     this._SafeStr_566.ClearAnimation();
                     this._SafeStr_566.PlayAnimation("Display");
                     this._SafeStr_118.PlaySoundAtPosition(0,"DoubleKnockout",0,0);
                     ++this._SafeStr_126.mGameStats._SafeStr_1493;
                     break;
                  case 1:
                     if(this._SafeStr_566.mbVisible)
                     {
                        this._SafeStr_566.PlayAnimation("Hide",_SafeCls_34._SafeStr_303);
                     }
                     this._SafeStr_556.Show();
                     this._SafeStr_556.ClearAnimation();
                     this._SafeStr_556.PlayAnimation("Display");
                     this._SafeStr_118.PlaySoundAtPosition(0,"TripleKnockout",0,0);
                     ++this._SafeStr_126.mGameStats._SafeStr_1337;
                     break;
                  case 2:
                     if(this._SafeStr_556.mbVisible)
                     {
                        this._SafeStr_556.PlayAnimation("Hide",_SafeCls_34._SafeStr_303);
                     }
                     this._SafeStr_553.Show();
                     this._SafeStr_553.ClearAnimation();
                     this._SafeStr_553.PlayAnimation("Display");
                     this._SafeStr_118.PlaySoundAtPosition(0,"QuadKnockout",0,0);
                     ++this._SafeStr_126.mGameStats._SafeStr_1629;
                     break;
                  case 3:
                     if(this._SafeStr_553.mbVisible)
                     {
                        this._SafeStr_553.PlayAnimation("Hide",_SafeCls_34._SafeStr_303);
                     }
                     this._SafeStr_596.Show();
                     this._SafeStr_596.ClearAnimation();
                     this._SafeStr_596.PlayAnimation("Display");
                     this._SafeStr_118.PlaySoundAtPosition(0,"MultiKnockout",0,0);
                     ++this._SafeStr_126.mGameStats._SafeStr_1656;
                     break;
                  case 5:
                  default:
                     if(this._SafeStr_596.mbVisible)
                     {
                        this._SafeStr_596.PlayAnimation("Hide",_SafeCls_34._SafeStr_303);
                     }
                     this._SafeStr_874.Show();
                     this._SafeStr_874.ClearAnimation();
                     this._SafeStr_874.PlayAnimation("Display");
                     this._SafeStr_118.PlaySoundAtPosition(0,"Rampage",0,0);
                     ++this._SafeStr_126.mGameStats._SafeStr_1662;
                     break;
                  case 4:
               }
               _loc3_ = this._SafeStr_1543[this._SafeStr_454];
               _loc4_ = this._SafeStr_1316[this._SafeStr_454];
               if(_loc4_)
               {
                  _loc4_._SafeStr_201();
                  _loc4_ = null;
               }
               _loc3_.mMovieClip.removeChildren();
               _loc4_ = new _SafeCls_40(this._SafeStr_118,this._SafeStr_527[this._SafeStr_454],true);
               _loc4_._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,"FaceKO",true);
               _loc3_.mMovieClip.addChild(_loc4_._SafeStr_120);
               this._SafeStr_1316[this._SafeStr_454] = _loc4_;
               this._SafeStr_490 = _loc2_;
               this._SafeStr_490.ClearAnimation();
               this._SafeStr_490.PlayAnimation(_SafeStr_910);
               this._SafeStr_490.Show();
               _loc5_ = 0;
               while(_loc5_ < this._SafeStr_454)
               {
                  _loc6_ = this._SafeStr_990[_loc5_];
                  _loc6_.Show();
                  _loc6_.PlayAnimation("Static");
                  _loc5_++;
               }
            }
            ++this._SafeStr_454;
            return true;
         }
         return false;
      }
      
      public function _SafeStr_2647(param1:_SafeCls_25) : void
      {
         if(!param1)
         {
            return;
         }
         if(!this._SafeStr_1294)
         {
            this._SafeStr_2122();
         }
         var _loc2_:uint = this._SafeStr_118.mTimeThisTick;
         if(_loc2_ - this._SafeStr_2886 > _SafeStr_2333)
         {
            this._SafeStr_454 = 0;
            this._SafeStr_1026 = 0;
         }
         this._SafeStr_2886 = _loc2_;
         this._SafeStr_527[this._SafeStr_1026] = param1._SafeStr_527;
         if(this._SafeStr_1026 < _SafeStr_530 - 1)
         {
            ++this._SafeStr_1026;
         }
         this._SafeStr_1142 = _SafeStr_1351;
         if(!this._SafeStr_118.screenBroadcast._SafeStr_3531(this))
         {
            this._SafeStr_118.screenBroadcast._SafeStr_3098(this);
         }
      }
      
      public function _SafeStr_1446() : void
      {
         var _loc2_:_SafeCls_34 = null;
         if(!this._SafeStr_1294)
         {
            return;
         }
         var _loc1_:uint = 0;
         while(_loc1_ < _SafeStr_530)
         {
            _loc2_ = this._SafeStr_990[_loc1_];
            if(_loc2_.mbVisible)
            {
               _loc2_.PlayAnimation(_SafeStr_987,_SafeCls_34._SafeStr_303);
            }
            _loc1_++;
         }
         this._SafeStr_566.Hide();
         this._SafeStr_556.Hide();
         this._SafeStr_553.Hide();
         this._SafeStr_596.Hide();
         this._SafeStr_874.Hide();
         this._SafeStr_624.PlayAnimation(_SafeStr_987,_SafeCls_34._SafeStr_303);
         this._SafeStr_736.PlayAnimation(_SafeStr_987,_SafeCls_34._SafeStr_303);
         this._SafeStr_854.PlayAnimation(_SafeStr_987,_SafeCls_34._SafeStr_303);
         this._SafeStr_1488 = 0;
         this._SafeStr_1142 = _SafeStr_1957;
      }
      
      public function _SafeStr_2782() : void
      {
         this._SafeStr_1006 = new _SafeCls_40(this._SafeStr_118,this._SafeStr_126._SafeStr_527,true);
         this._SafeStr_1006._SafeStr_138._SafeStr_307(_SafeCls_88._SafeStr_298,"FaceVictory",true);
         if(Boolean(this._SafeStr_718) && Boolean(this._SafeStr_718.mMovieClip))
         {
            this._SafeStr_718.mMovieClip.removeChildren();
            this._SafeStr_718.mMovieClip.addChild(this._SafeStr_1006._SafeStr_120);
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_12 = "_-G5"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_40 = "_-84"
 * @identifier _SafeCls_62 = "_-EA"
 * @identifier _SafeCls_88 = "_-Ny"
 * @identifier _SafeCls_92 = "_-JZ"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_120 = "_-NL"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_126 = "_-Wp"
 * @identifier _SafeStr_138 = "_-lS"
 * @identifier _SafeStr_144 = "_-Z"
 * @identifier _SafeStr_145 = "_-rZ"
 * @identifier _SafeStr_201 = "_-x"
 * @identifier _SafeStr_294 = "_-2P"
 * @identifier _SafeStr_298 = "_-j2"
 * @identifier _SafeStr_303 = "_-rS"
 * @identifier _SafeStr_307 = "_-mp"
 * @identifier _SafeStr_454 = "_-tU"
 * @identifier _SafeStr_490 = "_-WE"
 * @identifier _SafeStr_527 = "_-2S"
 * @identifier _SafeStr_530 = "_-BR"
 * @identifier _SafeStr_553 = "_-Oa"
 * @identifier _SafeStr_556 = "_-iC"
 * @identifier _SafeStr_566 = "_-qq"
 * @identifier _SafeStr_596 = "_-nU"
 * @identifier _SafeStr_624 = "_-so"
 * @identifier _SafeStr_718 = "_-Zc"
 * @identifier _SafeStr_736 = "_-Vj"
 * @identifier _SafeStr_854 = "_-CG"
 * @identifier _SafeStr_874 = "_-4P"
 * @identifier _SafeStr_910 = "_-id"
 * @identifier _SafeStr_987 = "_-Gi"
 * @identifier _SafeStr_990 = "_-lk"
 * @identifier _SafeStr_1006 = "_-j9"
 * @identifier _SafeStr_1026 = "_-QM"
 * @identifier _SafeStr_1142 = "_-QW"
 * @identifier _SafeStr_1294 = "_-sC"
 * @identifier _SafeStr_1316 = "_-HK"
 * @identifier _SafeStr_1337 = "_-T3"
 * @identifier _SafeStr_1351 = "_-Y-"
 * @identifier _SafeStr_1432 = "_-Sv"
 * @identifier _SafeStr_1446 = "_-M3"
 * @identifier _SafeStr_1488 = "_-ja"
 * @identifier _SafeStr_1493 = "_-2C"
 * @identifier _SafeStr_1543 = "_-ty"
 * @identifier _SafeStr_1629 = "_-aQ"
 * @identifier _SafeStr_1656 = "_-NO"
 * @identifier _SafeStr_1662 = "_-jJ"
 * @identifier _SafeStr_1957 = "_-jq"
 * @identifier _SafeStr_2122 = "package"
 * @identifier _SafeStr_2231 = "use"
 * @identifier _SafeStr_2333 = "_-GR"
 * @identifier _SafeStr_2647 = "_-tf"
 * @identifier _SafeStr_2782 = "_-gr"
 * @identifier _SafeStr_2886 = "_-Ob"
 * @identifier _SafeStr_3098 = "_-St"
 * @identifier _SafeStr_3100 = "_-ur"
 * @identifier _SafeStr_3121 = "_-Qz"
 * @identifier _SafeStr_3250 = "_-J3"
 * @identifier _SafeStr_3531 = "_-3l"
 */
