package
{
   import flash.ui.GameInputControl;
   import flash.ui.GameInputDevice;
   import flash.utils.Dictionary;
   
   public class ControllerInput
   {
      
      internal static var _SafeStr_1907:uint;
      
      public static const _SafeStr_2771:Vector.<String> = Vector.<String>(["a_MouseToken_P1","a_MouseToken_P2","a_MouseToken_P3","a_MouseToken_P4"]);
      
      internal var _SafeStr_132:_SafeCls_24;
      
      internal var _SafeStr_973:GameInputDevice;
      
      internal var mControls:Dictionary;
      
      internal var _SafeStr_148:_SafeCls_25;
      
      internal var _SafeStr_118:Game;
      
      internal var _SafeStr_976:Boolean;
      
      internal var _SafeStr_1603:Boolean;
      
      internal var _SafeStr_1187:Boolean;
      
      internal var _SafeStr_1125:Boolean;
      
      internal var _SafeStr_1481:Boolean;
      
      internal var _SafeStr_1396:Boolean;
      
      internal var _SafeStr_1727:Boolean;
      
      internal var _SafeStr_1384:Boolean;
      
      internal var _SafeStr_962:Boolean;
      
      internal var _SafeStr_2718:Boolean;
      
      internal var _SafeStr_1919:Boolean;
      
      internal var _SafeStr_2053:Boolean;
      
      internal var _SafeStr_2070:Boolean;
      
      internal var _SafeStr_2089:Boolean;
      
      internal var _SafeStr_2218:Boolean;
      
      internal var _SafeStr_2217:Boolean;
      
      internal var _SafeStr_2436:Boolean;
      
      internal var _SafeStr_2583:Boolean;
      
      internal var _SafeStr_2552:Boolean;
      
      internal var _SafeStr_1040:GameInputControl;
      
      internal var _SafeStr_186:Controller;
      
      internal var mID:uint;
      
      internal var _SafeStr_3147:uint;
      
      public function ControllerInput(param1:Game, param2:GameInputDevice, param3:Class)
      {
         var _loc4_:GameInputControl = null;
         super();
         this._SafeStr_973 = param2;
         param2.enabled = true;
         this._SafeStr_118 = param1;
         this.mControls = new Dictionary();
         var _loc5_:int = 0;
         while(_loc5_ < param2.numControls)
         {
            _loc4_ = param2.getControlAt(_loc5_);
            this.mControls[_loc4_.id] = _loc4_;
            _loc5_++;
         }
         this._SafeStr_186 = new param3(this.mControls);
         this.mID = ++_SafeStr_1907;
      }
      
      public static function _SafeStr_3560(param1:Game, param2:GameInputDevice) : ControllerInput
      {
         var _loc4_:ControllerInput = null;
         var _loc5_:Class = null;
         var _loc3_:String = param2 ? param2.name.toUpperCase().split(" ").join("") : "UNKNOWN";
         switch(_loc3_)
         {
            case "XBOX360CONTROLLER(XINPUTSTANDARDGAMEPAD)":
               _loc5_ = XboxController;
               break;
            case "CONTROLLER":
               _loc5_ = XboxControllerMac;
               break;
            case "4AXIS12BUTTONJOYSTICKWITHHATSWITCH":
               _loc5_ = LogitechController;
               break;
            case "LOGITECHDUALACTION":
               _loc5_ = LogitechControllerMac;
               break;
            case "USBVIBRATIONJOYSTICK":
               _loc5_ = RetroLinkController;
               break;
            case "GENERICUSBJOYSTICK":
               _loc5_ = RetroLinkControllerMac;
         }
         if(_loc5_)
         {
            _loc4_ = new ControllerInput(param1,param2,_loc5_);
         }
         return _loc4_;
      }
      
      public function _SafeStr_3073() : void
      {
         var _loc1_:Object = null;
         this._SafeStr_2607();
         this._SafeStr_973 = null;
         this._SafeStr_1040 = null;
         if(this.mControls)
         {
            for(_loc1_ in this.mControls)
            {
               delete this.mControls[_loc1_];
            }
         }
         this.mControls = null;
         this._SafeStr_118 = null;
         if(this._SafeStr_186)
         {
            this._SafeStr_186.DestroyController();
         }
         this._SafeStr_186 = null;
      }
      
      public function AssignPlayer(param1:_SafeCls_25) : void
      {
         this._SafeStr_148 = param1;
         this._SafeStr_132 = param1._SafeStr_132;
         param1._SafeStr_2251 = this;
      }
      
      public function _SafeStr_2607() : void
      {
         if(this._SafeStr_148)
         {
            this._SafeStr_148._SafeStr_2251 = null;
         }
         this._SafeStr_148 = null;
         this._SafeStr_132 = null;
      }
      
      public function _SafeStr_2728(param1:uint) : Boolean
      {
         if(!this._SafeStr_973 || this._SafeStr_973.numControls == 0)
         {
            return false;
         }
         if(!this._SafeStr_186 || !this._SafeStr_186.mLSX || !this._SafeStr_186.mLSY)
         {
            return true;
         }
         this._SafeStr_3147 = param1;
         var _loc2_:Boolean = this._SafeStr_186.bSelectAction();
         var _loc3_:Boolean = this._SafeStr_186.bAltAction();
         var _loc4_:Boolean = this._SafeStr_186.bOptionAction();
         var _loc5_:Boolean = this._SafeStr_186.bBackAction();
         var _loc6_:Boolean = this._SafeStr_186.bEscAction();
         var _loc7_:* = this._SafeStr_186.MoveLeft(true) != 0;
         var _loc8_:* = this._SafeStr_186.MoveRight(true) != 0;
         var _loc9_:* = this._SafeStr_186.MoveUp(true) != 0;
         var _loc10_:* = this._SafeStr_186.MoveDown(true) != 0;
         var _loc11_:* = this._SafeStr_186.CheckControls(Controller.PAUSE) != null;
         if(_loc2_ && !this._SafeStr_1919)
         {
            this._SafeStr_118._SafeStr_440(Game._SafeStr_216,param1);
         }
         this._SafeStr_1919 = _loc2_;
         if(_loc3_ && !this._SafeStr_2089)
         {
            this._SafeStr_118._SafeStr_440(Game._SafeStr_1519,param1);
         }
         this._SafeStr_2089 = _loc3_;
         if(_loc4_ && !this._SafeStr_2218)
         {
            this._SafeStr_118._SafeStr_440(Game._SafeStr_316,param1);
         }
         this._SafeStr_2218 = _loc4_;
         if(_loc5_ && !this._SafeStr_2053)
         {
            this._SafeStr_118._SafeStr_440(Game._SafeStr_247,param1);
         }
         this._SafeStr_2053 = _loc5_;
         if(_loc6_ && !this._SafeStr_2070)
         {
            this._SafeStr_118._SafeStr_440(Game._SafeStr_288,param1);
         }
         this._SafeStr_2070 = _loc6_;
         if(_loc7_ && !this._SafeStr_2217)
         {
            this._SafeStr_118._SafeStr_440(Game._SafeStr_214,param1);
         }
         this._SafeStr_2217 = _loc7_;
         if(_loc8_ && !this._SafeStr_2436)
         {
            this._SafeStr_118._SafeStr_440(Game._SafeStr_213,param1);
         }
         this._SafeStr_2436 = _loc8_;
         if(_loc9_ && !this._SafeStr_2583)
         {
            this._SafeStr_118._SafeStr_440(Game._SafeStr_208,param1);
         }
         this._SafeStr_2583 = _loc9_;
         if(_loc10_ && !this._SafeStr_2552)
         {
            this._SafeStr_118._SafeStr_440(Game._SafeStr_207,param1);
         }
         this._SafeStr_2552 = _loc10_;
         if(_loc11_ && !this._SafeStr_962)
         {
            this._SafeStr_118._SafeStr_440(Game._SafeStr_242,param1);
            this._SafeStr_962 = true;
         }
         else if(!_loc11_)
         {
            this._SafeStr_962 = false;
         }
         this._SafeStr_1603 = true;
         this._SafeStr_1187 = true;
         this._SafeStr_1125 = true;
         this._SafeStr_1481 = true;
         this._SafeStr_1396 = true;
         this._SafeStr_1727 = true;
         this._SafeStr_1384 = true;
         return true;
      }
      
      public function _SafeStr_3141() : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc9_:* = false;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc12_:* = false;
         var _loc13_:* = false;
         var _loc14_:_SafeCls_26 = null;
         var _loc15_:* = false;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:uint = 0;
         var _loc19_:Boolean = false;
         if(!this._SafeStr_973 || this._SafeStr_973.numControls == 0)
         {
            return false;
         }
         var _loc1_:* = this._SafeStr_186.CheckControls(Controller.PAUSE) != null;
         if(!(this._SafeStr_118.mMatchMakerData && this._SafeStr_118.mMatchMakerData.mbStartMatch))
         {
            if(_loc1_ && !this._SafeStr_962)
            {
               this._SafeStr_118.screenPause._SafeStr_2787();
               this._SafeStr_962 = true;
            }
            else if(!_loc1_)
            {
               this._SafeStr_962 = false;
            }
         }
         this._SafeStr_1919 = true;
         this._SafeStr_2089 = true;
         this._SafeStr_2218 = true;
         this._SafeStr_2053 = true;
         this._SafeStr_2070 = true;
         this._SafeStr_2217 = true;
         if(this._SafeStr_132)
         {
            _loc2_ = this._SafeStr_186.MoveLeft();
            _loc3_ = this._SafeStr_186.MoveRight();
            _loc4_ = this._SafeStr_186.MoveUp();
            _loc5_ = this._SafeStr_186.MoveDown();
            this._SafeStr_132._SafeStr_2841 = _loc2_ != 0;
            this._SafeStr_132._SafeStr_2621 = _loc3_ != 0;
            this._SafeStr_132._SafeStr_2570 = _loc4_ != 0;
            if(Boolean(_loc5_) && !this._SafeStr_132._SafeStr_2140)
            {
               this._SafeStr_132._SafeStr_1310 = this._SafeStr_118.mTimeThisTick;
            }
            this._SafeStr_132._SafeStr_2140 = _loc5_ != 0;
            _loc6_ = this._SafeStr_186.CheckControls(Controller.HEAVY_ATTACK) != null;
            _loc7_ = this._SafeStr_186.CheckControls(Controller.LIGHT_ATTACK) != null;
            _loc8_ = this._SafeStr_186.CheckControls(Controller.DODGE) != null;
            _loc9_ = this._SafeStr_186.CheckControls(Controller.THROW) != null;
            _loc10_ = this._SafeStr_186.CheckControls(Controller.JUMP) != null;
            _loc11_ = this._SafeStr_186.CheckControls(Controller.JUMP_UP) != null;
            _loc12_ = this._SafeStr_186.CheckControls(Controller.SCOREBOARD) != null;
            _loc13_ = this._SafeStr_186.CheckControls(Controller.TAUNT) != null;
            if(_loc2_ || _loc5_ || _loc3_ || _loc4_ || _loc12_ || _loc8_ || _loc6_ || _loc7_ || _loc10_ || _loc9_ || _loc1_)
            {
               this._SafeStr_132._SafeStr_297 = this._SafeStr_186.mScheme;
            }
            if(this._SafeStr_132._SafeStr_297 != this._SafeStr_186.mScheme)
            {
               return true;
            }
            if(this._SafeStr_148._SafeStr_137 & _SafeCls_25.BOT)
            {
               return true;
            }
            if(this._SafeStr_1603)
            {
               if(_loc10_)
               {
                  _loc10_ = false;
               }
               else
               {
                  this._SafeStr_1603 = false;
               }
            }
            if(this._SafeStr_1187)
            {
               if(_loc11_)
               {
                  _loc11_ = false;
               }
               else
               {
                  this._SafeStr_1187 = false;
               }
            }
            if(this._SafeStr_1125)
            {
               if(_loc6_)
               {
                  _loc6_ = false;
               }
               else
               {
                  this._SafeStr_1125 = false;
               }
            }
            if(this._SafeStr_1481)
            {
               if(_loc7_)
               {
                  _loc7_ = false;
               }
               else
               {
                  this._SafeStr_1481 = false;
               }
            }
            if(this._SafeStr_1396)
            {
               if(_loc8_)
               {
                  _loc8_ = false;
               }
               else
               {
                  this._SafeStr_1396 = false;
               }
            }
            if(this._SafeStr_1727)
            {
               if(_loc9_)
               {
                  _loc9_ = false;
               }
               else
               {
                  this._SafeStr_1727 = false;
               }
            }
            if(this._SafeStr_2718)
            {
               if(_loc13_)
               {
                  _loc13_ = false;
               }
               else
               {
                  this._SafeStr_2718 = false;
               }
            }
            if(this._SafeStr_1384 && !_loc12_)
            {
               this._SafeStr_118._SafeStr_557 = this._SafeStr_1384 = false;
            }
            else if(_loc12_)
            {
               this._SafeStr_118._SafeStr_557 = this._SafeStr_1384 = true;
            }
            _loc14_ = this._SafeStr_148.mCombatState;
            _loc15_ = _loc14_.mEquippedItem != null;
            _loc16_ = (_loc15_) && _loc14_.mEquippedItem._SafeStr_151._SafeStr_1123;
            _loc18_ = uint(_loc4_ | _loc5_ | _loc2_ | _loc3_);
            _loc19_ = this._SafeStr_148.mbAirborne && this._SafeStr_148._SafeStr_2831();
            if(_loc14_._SafeStr_438 && this._SafeStr_1040 && this._SafeStr_1040.value < Controller.BUTTON_THRESH)
            {
               _loc14_._SafeStr_1596(null,this._SafeStr_118.mTimeThisTick - _loc14_._SafeStr_438,_loc18_);
               this._SafeStr_1040 = null;
               if(_loc18_ & _SafeCls_24._SafeStr_268)
               {
                  this._SafeStr_1187 = true;
               }
            }
            else if(!this._SafeStr_148.IsMoveLocked())
            {
               if(_loc9_)
               {
                  if(_loc15_)
                  {
                     if(this._SafeStr_118.mTimeThisTick - _loc14_._SafeStr_1178 > _SafeCls_24._SafeStr_1124)
                     {
                        _loc14_._SafeStr_1401();
                        this._SafeStr_1040 = this._SafeStr_186.CheckControls(Controller.THROW);
                     }
                  }
                  else
                  {
                     _loc14_.QueuePickup();
                  }
                  this._SafeStr_1727 = true;
               }
               else if(_loc7_)
               {
                  _loc17_ = _loc15_ ? false : _loc14_.QueuePickup();
                  if(_loc17_)
                  {
                     if(_loc5_)
                     {
                        this._SafeStr_132._SafeStr_640 = true;
                     }
                  }
                  else if(_loc15_ && !_loc16_)
                  {
                     if(this._SafeStr_118.mTimeThisTick - _loc14_._SafeStr_1178 > _SafeCls_24._SafeStr_1124)
                     {
                        _loc14_._SafeStr_1134(_loc18_);
                     }
                  }
                  else if(this._SafeStr_148.mWallSliding)
                  {
                     this._SafeStr_148.InputCmdJump(false);
                     _loc14_.QueuePower(_SafeCls_26._SafeStr_419);
                     _loc14_._SafeStr_1242();
                  }
                  else if(_loc4_)
                  {
                     _loc14_.QueuePower(_loc19_ ? _SafeCls_26._SafeStr_460 : _SafeCls_26.ACTION_ATTACK_COMBO1);
                  }
                  else if(_loc5_)
                  {
                     _loc14_.QueuePower(_loc19_ ? _SafeCls_26._SafeStr_537 : _SafeCls_26._SafeStr_475);
                     this._SafeStr_132._SafeStr_640 = true;
                  }
                  else if(Boolean(_loc3_) || Boolean(_loc2_))
                  {
                     if(!this._SafeStr_148._SafeStr_550)
                     {
                        this._SafeStr_148.mbLeft = this._SafeStr_148._SafeStr_182 = Boolean(_loc2_);
                     }
                     _loc14_.QueuePower(_loc19_ ? _SafeCls_26._SafeStr_419 : _SafeCls_26._SafeStr_478);
                  }
                  else
                  {
                     _loc14_.QueuePower(_loc19_ ? _SafeCls_26._SafeStr_460 : _SafeCls_26.ACTION_ATTACK_COMBO1);
                  }
                  this._SafeStr_1481 = true;
               }
               else if(_loc6_)
               {
                  if(_loc15_ && !_loc16_)
                  {
                     _loc14_._SafeStr_1401();
                     this._SafeStr_1040 = this._SafeStr_186.CheckControls(Controller.HEAVY_ATTACK);
                  }
                  else if(this._SafeStr_148.mWallSliding)
                  {
                     this._SafeStr_148.InputCmdJump(false);
                     _loc14_.QueuePower(_SafeCls_26._SafeStr_1195);
                     _loc14_._SafeStr_1242();
                  }
                  else
                  {
                     if(_loc4_)
                     {
                        _loc14_.QueuePower(_loc19_ ? _SafeCls_26._SafeStr_415 : _SafeCls_26._SafeStr_439);
                     }
                     else if(_loc5_)
                     {
                        _loc14_.QueuePower(_loc19_ ? _SafeCls_26._SafeStr_1199 : _SafeCls_26._SafeStr_439);
                        this._SafeStr_132._SafeStr_640 = true;
                     }
                     else if(Boolean(_loc3_) || Boolean(_loc2_))
                     {
                        if(!this._SafeStr_148._SafeStr_550)
                        {
                           this._SafeStr_148.mbLeft = this._SafeStr_148._SafeStr_182 = Boolean(_loc2_);
                        }
                        _loc14_.QueuePower(_loc19_ ? _SafeCls_26._SafeStr_415 : _SafeCls_26._SafeStr_461);
                     }
                     else
                     {
                        _loc14_.QueuePower(_loc19_ ? _SafeCls_26._SafeStr_415 : _SafeCls_26._SafeStr_483);
                     }
                     this._SafeStr_976 = true;
                  }
                  this._SafeStr_1125 = true;
               }
               else if(_loc8_ && !this._SafeStr_148._SafeStr_2144())
               {
                  if(!(_loc5_ | _loc2_ | _loc3_) && this._SafeStr_186.mbHasLeftAndRightDodge)
                  {
                     this._SafeStr_132._SafeStr_192 = this._SafeStr_186.bIsUsingLeftDodge() ? _SafeCls_24._SafeStr_220 : _SafeCls_24._SafeStr_221;
                  }
                  this._SafeStr_148._SafeStr_2224();
                  this._SafeStr_1396 = true;
               }
               else if(_loc10_)
               {
                  if(this._SafeStr_132._SafeStr_2321())
                  {
                     this._SafeStr_148.InputCmdJump();
                  }
                  this._SafeStr_1603 = true;
               }
               else if(_loc11_)
               {
                  if(this._SafeStr_132._SafeStr_2321())
                  {
                     this._SafeStr_148.InputCmdJump();
                  }
                  this._SafeStr_1187 = true;
               }
               else if(_loc5_)
               {
                  this._SafeStr_148._SafeStr_2835();
               }
               else if(this._SafeStr_148.mWallSliding == _SafeCls_25._SafeStr_843 && _loc2_ || this._SafeStr_148.mWallSliding == _SafeCls_25._SafeStr_730 && _loc3_)
               {
                  this._SafeStr_148._SafeStr_2593();
               }
               else if(_loc13_ && !this._SafeStr_148.mbAirborne)
               {
                  _loc14_.QueuePower(_SafeCls_26._SafeStr_1149);
               }
            }
            if(this._SafeStr_976 && !this._SafeStr_1125)
            {
               _loc14_._SafeStr_1242();
               this._SafeStr_976 = false;
            }
            _loc14_._SafeStr_2685(~_loc18_);
         }
         return true;
      }
   }
}

import flash.ui.GameInputControl;
import flash.utils.Dictionary;

class Controller
{
   
   public static const STICK_THRESH:Number = 0.4;
   
   public static const BUTTON_THRESH:Number = 0.2;
   
   public static const JUMP_UP_THRESH:Number = 0.9;
   
   private static var mInputCounter:uint = 0;
   
   public static const JUMP:uint = mInputCounter++;
   
   public static const JUMP_UP:uint = mInputCounter++;
   
   public static const LIGHT_ATTACK:uint = mInputCounter++;
   
   public static const HEAVY_ATTACK:uint = mInputCounter++;
   
   public static const DODGE:uint = mInputCounter++;
   
   public static const THROW:uint = mInputCounter++;
   
   public static const SCOREBOARD:uint = mInputCounter++;
   
   public static const PAUSE:uint = mInputCounter++;
   
   public static const TAUNT:uint = mInputCounter++;
   
   internal var mLSX:GameInputControl;
   
   internal var mLSY:GameInputControl;
   
   protected var mDPadLeft:GameInputControl;
   
   protected var mDPadRight:GameInputControl;
   
   protected var mDPadUp:GameInputControl;
   
   protected var mDPadDown:GameInputControl;
   
   protected var mSelectAction:GameInputControl;
   
   protected var mAltAction:GameInputControl;
   
   protected var mOptionAction:GameInputControl;
   
   protected var mBackAction:GameInputControl;
   
   protected var mEscAction:GameInputControl;
   
   protected var mJumpControls:Vector.<GameInputControl>;
   
   protected var mJumpUpControls:Vector.<GameInputControl>;
   
   protected var mLightAttackControls:Vector.<GameInputControl>;
   
   protected var mHeavyAttackControls:Vector.<GameInputControl>;
   
   protected var mDodgeControls:Vector.<GameInputControl>;
   
   protected var mThrowControls:Vector.<GameInputControl>;
   
   protected var mScoreboardControls:Vector.<GameInputControl>;
   
   protected var mPauseControls:Vector.<GameInputControl>;
   
   protected var mTauntControls:Vector.<GameInputControl>;
   
   protected var mControls:Dictionary;
   
   internal var mbLSYUpIsPositive:Boolean = true;
   
   public var mbHasLeftAndRightDodge:Boolean;
   
   internal var mbCanMoveWithDPad:Boolean;
   
   internal var mScheme:uint;
   
   public function Controller(param1:Dictionary)
   {
      super();
      this.mControls = param1;
   }
   
   public function MoveLeft(param1:Boolean = false) : uint
   {
      return this.mLSX.value <= -STICK_THRESH || (Boolean(this.mbCanMoveWithDPad) || param1) && this.mDPadLeft.value == 1 ? _SafeCls_24._SafeStr_220 : 0;
   }
   
   public function MoveRight(param1:Boolean = false) : uint
   {
      return this.mLSX.value >= STICK_THRESH || (Boolean(this.mbCanMoveWithDPad) || param1) && this.mDPadRight.value == 1 ? _SafeCls_24._SafeStr_221 : 0;
   }
   
   public function MoveUp(param1:Boolean = false) : uint
   {
      return (this.mbLSYUpIsPositive ? this.mLSY.value >= STICK_THRESH : this.mLSY.value <= -STICK_THRESH) || (Boolean(this.mbCanMoveWithDPad) || param1) && this.mDPadUp.value == 1 ? _SafeCls_24._SafeStr_268 : 0;
   }
   
   public function MoveDown(param1:Boolean = false) : uint
   {
      return (!this.mbLSYUpIsPositive ? this.mLSY.value >= STICK_THRESH : this.mLSY.value <= -STICK_THRESH) || (Boolean(this.mbCanMoveWithDPad) || param1) && this.mDPadDown.value == 1 ? _SafeCls_24._SafeStr_236 : 0;
   }
   
   public function bSelectAction() : Boolean
   {
      return this.mSelectAction.value == 1;
   }
   
   public function bAltAction() : Boolean
   {
      return this.mAltAction.value == 1;
   }
   
   public function bOptionAction() : Boolean
   {
      return this.mOptionAction.value == 1;
   }
   
   public function bBackAction() : Boolean
   {
      return this.mBackAction.value == 1;
   }
   
   public function bEscAction() : Boolean
   {
      return this.mEscAction.value == 1;
   }
   
   public function CheckControls(param1:uint) : GameInputControl
   {
      var _loc2_:Vector.<GameInputControl> = null;
      var _loc5_:GameInputControl = null;
      var _loc3_:Number = Number(BUTTON_THRESH);
      var _loc4_:* = false;
      switch(param1)
      {
         case JUMP:
            _loc2_ = this.mJumpControls;
            break;
         case JUMP_UP:
            _loc2_ = this.mJumpUpControls;
            _loc3_ = Number(JUMP_UP_THRESH);
            _loc4_ = !this.mbLSYUpIsPositive;
            break;
         case LIGHT_ATTACK:
            _loc2_ = this.mLightAttackControls;
            break;
         case HEAVY_ATTACK:
            _loc2_ = this.mHeavyAttackControls;
            break;
         case DODGE:
            _loc2_ = this.mDodgeControls;
            break;
         case THROW:
            _loc2_ = this.mThrowControls;
            break;
         case SCOREBOARD:
            _loc2_ = this.mScoreboardControls;
            break;
         case PAUSE:
            _loc2_ = this.mPauseControls;
            break;
         case TAUNT:
            _loc2_ = this.mTauntControls;
            break;
         default:
            _SafeCls_22._SafeStr_135("[ControllerInput.as] There is no control option for " + param1);
            return null;
      }
      for each(_loc5_ in _loc2_)
      {
         if(!_loc4_ && _loc5_.value >= _loc3_ || _loc4_ && _loc5_.value <= -_loc3_)
         {
            return _loc5_;
         }
      }
      return null;
   }
   
   public function bIsUsingLeftDodge() : Boolean
   {
      return false;
   }
   
   public function DestroyController() : void
   {
      var _loc1_:Object = null;
      this.mLSX = null;
      this.mLSY = null;
      this.mDPadLeft = null;
      this.mDPadRight = null;
      this.mDPadUp = null;
      this.mDPadDown = null;
      this.mSelectAction = null;
      this.mBackAction = null;
      this.mAltAction = null;
      if(this.mJumpControls)
      {
         this.mJumpControls.length = 0;
      }
      this.mJumpControls = null;
      if(this.mJumpUpControls)
      {
         this.mJumpUpControls.length = 0;
      }
      this.mJumpUpControls = null;
      if(this.mLightAttackControls)
      {
         this.mLightAttackControls.length = 0;
      }
      this.mLightAttackControls = null;
      if(this.mHeavyAttackControls)
      {
         this.mHeavyAttackControls.length = 0;
      }
      this.mHeavyAttackControls = null;
      if(this.mDodgeControls)
      {
         this.mDodgeControls.length = 0;
      }
      this.mDodgeControls = null;
      if(this.mThrowControls)
      {
         this.mThrowControls.length = 0;
      }
      this.mThrowControls = null;
      if(this.mScoreboardControls)
      {
         this.mScoreboardControls.length = 0;
      }
      this.mScoreboardControls = null;
      if(this.mPauseControls)
      {
         this.mPauseControls.length = 0;
      }
      this.mPauseControls = null;
      if(this.mTauntControls)
      {
         this.mTauntControls.length = 0;
      }
      this.mTauntControls = null;
      if(this.mControls)
      {
         for(_loc1_ in this.mControls)
         {
            delete this.mControls[_loc1_];
         }
      }
      this.mControls = null;
   }
}

class XboxController extends Controller
{
   
   public static const A:String = "BUTTON_4";
   
   public static const B:String = "BUTTON_5";
   
   public static const X:String = "BUTTON_6";
   
   public static const Y:String = "BUTTON_7";
   
   public static const LB:String = "BUTTON_8";
   
   public static const RB:String = "BUTTON_9";
   
   public static const LT:String = "BUTTON_10";
   
   public static const RT:String = "BUTTON_11";
   
   public static const BACK:String = "BUTTON_12";
   
   public static const START:String = "BUTTON_13";
   
   public static const LS:String = "BUTTON_14";
   
   public static const RS:String = "BUTTON_15";
   
   public static const UP:String = "BUTTON_16";
   
   public static const DOWN:String = "BUTTON_17";
   
   public static const LEFT:String = "BUTTON_18";
   
   public static const RIGHT:String = "BUTTON_19";
   
   public static const LSX:String = "AXIS_0";
   
   public static const LSY:String = "AXIS_1";
   
   public static const RSX:String = "AXIS_2";
   
   public static const RSY:String = "AXIS_3";
   
   public function XboxController(param1:Dictionary)
   {
      mLSX = param1[LSX];
      mLSY = param1[LSY];
      mDPadLeft = param1[LEFT];
      mDPadRight = param1[RIGHT];
      mDPadUp = param1[UP];
      mDPadDown = param1[DOWN];
      mJumpControls = new <GameInputControl>[param1[A]];
      mJumpUpControls = new <GameInputControl>[param1[LSY]];
      mLightAttackControls = new <GameInputControl>[param1[X]];
      mHeavyAttackControls = new <GameInputControl>[param1[Y],param1[B]];
      mDodgeControls = new <GameInputControl>[param1[LT],param1[RT]];
      mThrowControls = new <GameInputControl>[param1[LB],param1[RB]];
      mScoreboardControls = new <GameInputControl>[param1[BACK]];
      mPauseControls = new <GameInputControl>[param1[START]];
      mTauntControls = new <GameInputControl>[param1[UP]];
      mSelectAction = param1[A];
      mAltAction = param1[X];
      mOptionAction = param1[Y];
      mBackAction = param1[B];
      mEscAction = param1[BACK];
      super(param1);
      mbHasLeftAndRightDodge = true;
      mScheme = _SafeCls_24._SafeStr_847;
   }
   
   override public function bIsUsingLeftDodge() : Boolean
   {
      return CheckControls(DODGE) == mControls[LT];
   }
}

class XboxControllerMac extends Controller
{
   
   public static const A:String = "BUTTON_17";
   
   public static const B:String = "BUTTON_18";
   
   public static const X:String = "BUTTON_19";
   
   public static const Y:String = "BUTTON_20";
   
   public static const LB:String = "BUTTON_14";
   
   public static const RB:String = "BUTTON_15";
   
   public static const LT:String = "AXIS_2";
   
   public static const RT:String = "AXIS_5";
   
   public static const BACK:String = "BUTTON_11";
   
   public static const START:String = "BUTTON_10";
   
   public static const LS:String = "BUTTON_12";
   
   public static const RS:String = "BUTTON_13";
   
   public static const UP:String = "BUTTON_6";
   
   public static const DOWN:String = "BUTTON_7";
   
   public static const LEFT:String = "BUTTON_8";
   
   public static const RIGHT:String = "BUTTON_9";
   
   public static const LSX:String = "AXIS_0";
   
   public static const LSY:String = "AXIS_1";
   
   public static const RSX:String = "AXIS_3";
   
   public static const RSY:String = "AXIS_4";
   
   public function XboxControllerMac(param1:Dictionary)
   {
      mLSX = param1[LSX];
      mLSY = param1[LSY];
      mDPadLeft = param1[LEFT];
      mDPadRight = param1[RIGHT];
      mDPadUp = param1[UP];
      mDPadDown = param1[DOWN];
      mJumpControls = new <GameInputControl>[param1[A]];
      mJumpUpControls = new <GameInputControl>[param1[LSY]];
      mLightAttackControls = new <GameInputControl>[param1[X]];
      mHeavyAttackControls = new <GameInputControl>[param1[Y],param1[B]];
      mDodgeControls = new <GameInputControl>[param1[LT],param1[RT]];
      mThrowControls = new <GameInputControl>[param1[LB],param1[RB]];
      mScoreboardControls = new <GameInputControl>[param1[BACK]];
      mPauseControls = new <GameInputControl>[param1[START]];
      mTauntControls = new <GameInputControl>[param1[UP]];
      mSelectAction = param1[A];
      mAltAction = param1[X];
      mOptionAction = param1[Y];
      mBackAction = param1[B];
      mEscAction = param1[BACK];
      super(param1);
      mbHasLeftAndRightDodge = true;
      mScheme = _SafeCls_24._SafeStr_847;
      mbLSYUpIsPositive = false;
   }
   
   override public function bIsUsingLeftDodge() : Boolean
   {
      return CheckControls(DODGE) == mControls[LT];
   }
}

class LogitechController extends Controller
{
   
   public static const A:String = "BUTTON_9";
   
   public static const B:String = "BUTTON_10";
   
   public static const X:String = "BUTTON_8";
   
   public static const Y:String = "BUTTON_11";
   
   public static const LB:String = "BUTTON_12";
   
   public static const RB:String = "BUTTON_13";
   
   public static const LT:String = "BUTTON_14";
   
   public static const RT:String = "BUTTON_15";
   
   public static const BACK:String = "BUTTON_16";
   
   public static const START:String = "BUTTON_17";
   
   public static const LS:String = "BUTTON_18";
   
   public static const RS:String = "BUTTON_19";
   
   public static const UP:String = "BUTTON_4";
   
   public static const DOWN:String = "BUTTON_5";
   
   public static const LEFT:String = "BUTTON_6";
   
   public static const RIGHT:String = "BUTTON_7";
   
   public static const LSX:String = "AXIS_0";
   
   public static const LSY:String = "AXIS_1";
   
   public static const RSX:String = "AXIS_2";
   
   public static const RSY:String = "AXIS_3";
   
   public function LogitechController(param1:Dictionary)
   {
      mLSX = param1[LSX];
      mLSY = param1[LSY];
      mDPadLeft = param1[LEFT];
      mDPadRight = param1[RIGHT];
      mDPadUp = param1[UP];
      mDPadDown = param1[DOWN];
      mJumpControls = new <GameInputControl>[param1[A]];
      mJumpUpControls = new <GameInputControl>[param1[LSY]];
      mLightAttackControls = new <GameInputControl>[param1[X]];
      mHeavyAttackControls = new <GameInputControl>[param1[Y],param1[B]];
      mDodgeControls = new <GameInputControl>[param1[LT],param1[RT]];
      mThrowControls = new <GameInputControl>[param1[LB],param1[RB]];
      mScoreboardControls = new <GameInputControl>[param1[BACK]];
      mPauseControls = new <GameInputControl>[param1[START]];
      mTauntControls = new <GameInputControl>[param1[LS]];
      mSelectAction = param1[A];
      mAltAction = param1[X];
      mOptionAction = param1[Y];
      mBackAction = param1[B];
      mEscAction = param1[BACK];
      super(param1);
      mbHasLeftAndRightDodge = true;
      mScheme = _SafeCls_24._SafeStr_847;
      mbCanMoveWithDPad = true;
   }
   
   override public function bIsUsingLeftDodge() : Boolean
   {
      return CheckControls(DODGE) == mControls[LT];
   }
}

class LogitechControllerMac extends Controller
{
   
   public static const A:String = "BUTTON_10";
   
   public static const B:String = "BUTTON_11";
   
   public static const X:String = "BUTTON_9";
   
   public static const Y:String = "BUTTON_12";
   
   public static const LB:String = "BUTTON_13";
   
   public static const RB:String = "BUTTON_14";
   
   public static const LT:String = "BUTTON_15";
   
   public static const RT:String = "BUTTON_16";
   
   public static const BACK:String = "BUTTON_17";
   
   public static const START:String = "BUTTON_18";
   
   public static const LS:String = "BUTTON_19";
   
   public static const RS:String = "BUTTON_20";
   
   public static const UP:String = "BUTTON_5";
   
   public static const DOWN:String = "BUTTON_6";
   
   public static const LEFT:String = "BUTTON_7";
   
   public static const RIGHT:String = "BUTTON_8";
   
   public static const LSX:String = "AXIS_1";
   
   public static const LSY:String = "AXIS_2";
   
   public static const RSX:String = "AXIS_3";
   
   public static const RSY:String = "AXIS_4";
   
   public function LogitechControllerMac(param1:Dictionary)
   {
      mLSX = param1[LSX];
      mLSY = param1[LSY];
      mDPadLeft = param1[LEFT];
      mDPadRight = param1[RIGHT];
      mDPadUp = param1[UP];
      mDPadDown = param1[DOWN];
      mJumpControls = new <GameInputControl>[param1[A]];
      mJumpUpControls = new <GameInputControl>[param1[LSY]];
      mLightAttackControls = new <GameInputControl>[param1[X]];
      mHeavyAttackControls = new <GameInputControl>[param1[Y],param1[B]];
      mDodgeControls = new <GameInputControl>[param1[LT],param1[RT]];
      mThrowControls = new <GameInputControl>[param1[LB],param1[RB]];
      mScoreboardControls = new <GameInputControl>[param1[BACK]];
      mPauseControls = new <GameInputControl>[param1[START]];
      mTauntControls = new <GameInputControl>[param1[LS]];
      mSelectAction = param1[A];
      mAltAction = param1[X];
      mOptionAction = param1[Y];
      mBackAction = param1[B];
      mEscAction = param1[BACK];
      super(param1);
      mbHasLeftAndRightDodge = true;
      mScheme = _SafeCls_24._SafeStr_847;
      mbCanMoveWithDPad = true;
      mbLSYUpIsPositive = false;
   }
   
   override public function bIsUsingLeftDodge() : Boolean
   {
      return CheckControls(DODGE) == mControls[LT];
   }
}

class RetroLinkController extends Controller
{
   
   public static const UP:String = "BUTTON_5";
   
   public static const DOWN:String = "BUTTON_6";
   
   public static const LEFT:String = "BUTTON_7";
   
   public static const RIGHT:String = "BUTTON_8";
   
   public static const Y:String = "BUTTON_9";
   
   public static const X:String = "BUTTON_10";
   
   public static const A:String = "BUTTON_11";
   
   public static const B:String = "BUTTON_12";
   
   public static const L:String = "BUTTON_13";
   
   public static const R:String = "BUTTON_14";
   
   public static const Z:String = "BUTTON_15";
   
   public static const START:String = "BUTTON_18";
   
   public static const LSX:String = "AXIS_0";
   
   public static const LSY:String = "AXIS_1";
   
   public static const RSX:String = "AXIS_2";
   
   public static const RSY:String = "AXIS_3";
   
   public function RetroLinkController(param1:Dictionary)
   {
      mLSX = param1[LSX];
      mLSY = param1[LSY];
      mDPadLeft = param1[LEFT];
      mDPadRight = param1[RIGHT];
      mDPadUp = param1[UP];
      mDPadDown = param1[DOWN];
      mJumpControls = new <GameInputControl>[param1[Y],param1[X]];
      mJumpUpControls = new <GameInputControl>[param1[LSY]];
      mLightAttackControls = new <GameInputControl>[param1[A]];
      mHeavyAttackControls = new <GameInputControl>[param1[B]];
      mDodgeControls = new <GameInputControl>[param1[L],param1[R]];
      mThrowControls = new <GameInputControl>[param1[Z]];
      mScoreboardControls = new <GameInputControl>[param1[DOWN],param1[LEFT],param1[RIGHT]];
      mPauseControls = new <GameInputControl>[param1[START]];
      mTauntControls = new <GameInputControl>[param1[UP]];
      mSelectAction = param1[A];
      mBackAction = param1[B];
      mAltAction = param1[Y];
      mOptionAction = param1[X];
      mEscAction = param1[Z];
      super(param1);
      mbHasLeftAndRightDodge = true;
      mbLSYUpIsPositive = false;
      mScheme = _SafeCls_24._SafeStr_1156;
   }
   
   override public function bIsUsingLeftDodge() : Boolean
   {
      return CheckControls(DODGE) == mControls[L];
   }
}

class RetroLinkControllerMac extends Controller
{
   
   public static const UP:String = "BUTTON_6";
   
   public static const DOWN:String = "BUTTON_7";
   
   public static const LEFT:String = "BUTTON_8";
   
   public static const RIGHT:String = "BUTTON_9";
   
   public static const Y:String = "BUTTON_10";
   
   public static const X:String = "BUTTON_11";
   
   public static const A:String = "BUTTON_12";
   
   public static const B:String = "BUTTON_13";
   
   public static const L:String = "BUTTON_14";
   
   public static const R:String = "BUTTON_15";
   
   public static const Z:String = "BUTTON_16";
   
   public static const START:String = "BUTTON_19";
   
   public static const LSX:String = "AXIS_1";
   
   public static const LSY:String = "AXIS_2";
   
   public static const RSX:String = "AXIS_4";
   
   public static const RSY:String = "AXIS_5";
   
   public function RetroLinkControllerMac(param1:Dictionary)
   {
      mLSX = param1[LSX];
      mLSY = param1[LSY];
      mDPadLeft = param1[LEFT];
      mDPadRight = param1[RIGHT];
      mDPadUp = param1[UP];
      mDPadDown = param1[DOWN];
      mJumpControls = new <GameInputControl>[param1[Y],param1[X]];
      mJumpUpControls = new <GameInputControl>[param1[LSY]];
      mLightAttackControls = new <GameInputControl>[param1[A]];
      mHeavyAttackControls = new <GameInputControl>[param1[B]];
      mDodgeControls = new <GameInputControl>[param1[L],param1[R]];
      mThrowControls = new <GameInputControl>[param1[Z]];
      mScoreboardControls = new <GameInputControl>[param1[DOWN],param1[LEFT],param1[RIGHT]];
      mPauseControls = new <GameInputControl>[param1[START]];
      mTauntControls = new <GameInputControl>[param1[UP]];
      mSelectAction = param1[A];
      mBackAction = param1[B];
      mAltAction = param1[Y];
      mOptionAction = param1[X];
      mEscAction = param1[Z];
      super(param1);
      mbHasLeftAndRightDodge = true;
      mbLSYUpIsPositive = false;
      mScheme = _SafeCls_24._SafeStr_1156;
   }
   
   override public function bIsUsingLeftDodge() : Boolean
   {
      return CheckControls(DODGE) == mControls[L];
   }
}

/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_22 = "_-5L"
 * @identifier _SafeCls_24 = "_-3h"
 * @identifier _SafeCls_25 = "_-E5"
 * @identifier _SafeCls_26 = "_-LQ"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_132 = "_-wb"
 * @identifier _SafeStr_135 = "if"
 * @identifier _SafeStr_137 = "_-3"
 * @identifier _SafeStr_148 = "static"
 * @identifier _SafeStr_151 = "_-0w"
 * @identifier _SafeStr_182 = "_-af"
 * @identifier _SafeStr_186 = "_-SP"
 * @identifier _SafeStr_192 = "_-av"
 * @identifier _SafeStr_207 = "_-wd"
 * @identifier _SafeStr_208 = "_-9P"
 * @identifier _SafeStr_213 = "_-Rl"
 * @identifier _SafeStr_214 = "_-W1"
 * @identifier _SafeStr_216 = "_-kB"
 * @identifier _SafeStr_220 = "_-g7"
 * @identifier _SafeStr_221 = "_-P6"
 * @identifier _SafeStr_236 = "_-JI"
 * @identifier _SafeStr_242 = "_-66"
 * @identifier _SafeStr_247 = "_-PM"
 * @identifier _SafeStr_268 = "_-as"
 * @identifier _SafeStr_288 = "_-m2"
 * @identifier _SafeStr_297 = "_-wi"
 * @identifier _SafeStr_316 = "_-cQ"
 * @identifier _SafeStr_415 = "_-WH"
 * @identifier _SafeStr_419 = "_-Ys"
 * @identifier _SafeStr_438 = "_-2E"
 * @identifier _SafeStr_439 = "_-QR"
 * @identifier _SafeStr_440 = "_-B-"
 * @identifier _SafeStr_460 = "_-VV"
 * @identifier _SafeStr_461 = "_-UT"
 * @identifier _SafeStr_475 = "_-qb"
 * @identifier _SafeStr_478 = "_-fy"
 * @identifier _SafeStr_483 = "_-ta"
 * @identifier _SafeStr_537 = "_-Hs"
 * @identifier _SafeStr_550 = "_-Qb"
 * @identifier _SafeStr_557 = "_-61"
 * @identifier _SafeStr_640 = "_-uw"
 * @identifier _SafeStr_730 = "_-sL"
 * @identifier _SafeStr_843 = "_-WN"
 * @identifier _SafeStr_847 = "_-g5"
 * @identifier _SafeStr_962 = "_-1O"
 * @identifier _SafeStr_973 = "_-Og"
 * @identifier _SafeStr_976 = "_-t0"
 * @identifier _SafeStr_1040 = "_-7Y"
 * @identifier _SafeStr_1123 = "_-L7"
 * @identifier _SafeStr_1124 = "_-0W"
 * @identifier _SafeStr_1125 = "_-VT"
 * @identifier _SafeStr_1134 = "_-ak"
 * @identifier _SafeStr_1149 = "_-f6"
 * @identifier _SafeStr_1156 = "_-d5"
 * @identifier _SafeStr_1178 = "_-FV"
 * @identifier _SafeStr_1187 = "_-Rm"
 * @identifier _SafeStr_1195 = "_-Kg"
 * @identifier _SafeStr_1199 = "_-6L"
 * @identifier _SafeStr_1242 = "_-Zg"
 * @identifier _SafeStr_1310 = "_-3T"
 * @identifier _SafeStr_1384 = "_-Gy"
 * @identifier _SafeStr_1396 = "_-fP"
 * @identifier _SafeStr_1401 = "_-Ol"
 * @identifier _SafeStr_1481 = "_-4k"
 * @identifier _SafeStr_1519 = "_-95"
 * @identifier _SafeStr_1596 = "_-br"
 * @identifier _SafeStr_1603 = "_-2I"
 * @identifier _SafeStr_1727 = "_-9U"
 * @identifier _SafeStr_1907 = "_-DE"
 * @identifier _SafeStr_1919 = "_-DU"
 * @identifier _SafeStr_2053 = "_-wE"
 * @identifier _SafeStr_2070 = "_-Mn"
 * @identifier _SafeStr_2089 = "_-tq"
 * @identifier _SafeStr_2140 = "_-IH"
 * @identifier _SafeStr_2144 = "_-VS"
 * @identifier _SafeStr_2217 = "_-OP"
 * @identifier _SafeStr_2218 = "_-ny"
 * @identifier _SafeStr_2224 = "_-Ph"
 * @identifier _SafeStr_2251 = "_-kh"
 * @identifier _SafeStr_2321 = "_-Mi"
 * @identifier _SafeStr_2436 = "_-Zp"
 * @identifier _SafeStr_2552 = "_-Mc"
 * @identifier _SafeStr_2570 = "_-lC"
 * @identifier _SafeStr_2583 = "_-Kf"
 * @identifier _SafeStr_2593 = "_-85"
 * @identifier _SafeStr_2607 = "_-UO"
 * @identifier _SafeStr_2621 = "_-P3"
 * @identifier _SafeStr_2685 = "_-nB"
 * @identifier _SafeStr_2718 = "_-NM"
 * @identifier _SafeStr_2728 = "_-YJ"
 * @identifier _SafeStr_2771 = "_-AT"
 * @identifier _SafeStr_2787 = "_-PE"
 * @identifier _SafeStr_2831 = "_-RR"
 * @identifier _SafeStr_2835 = "_-dj"
 * @identifier _SafeStr_2841 = "_-aE"
 * @identifier _SafeStr_3073 = "_-WI"
 * @identifier _SafeStr_3141 = "_-gu"
 * @identifier _SafeStr_3147 = "with"
 * @identifier _SafeStr_3560 = "_-XN"
 */
