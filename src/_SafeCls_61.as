package
{
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class _SafeCls_61 extends _SafeCls_35
   {
      
      private static const _SafeStr_2954:Array = ["Say","Party","Guild","Officer"];
      
      private static const _SafeStr_2703:Array = ["/s","/p","/g","/o"];
      
      private static const _SafeStr_866:Dictionary = new Dictionary();
      
      public static var _SafeStr_1090:String = "</font>";
      
      private static var _SafeStr_321:Dictionary = new Dictionary();
      
      private static const _SafeStr_2911:uint = 0;
      
      private static const _SafeStr_2683:uint = 1;
      
      private static const _SafeStr_2531:uint = 2;
      
      private static const _SafeStr_2858:uint = 18;
      
      private static const _SafeStr_2634:String = "<font color=\'#7FFFFF\'>";
      
      private static const _SafeStr_2190:uint = 0;
      
      private static const _SafeStr_1664:uint = 1;
      
      private static const _SafeStr_1761:uint = 2;
      
      private static var _SafeStr_2216:Array = ["bitch","fuck","nlgger","nigger","penis","vagina"];
      
      private static const _SafeStr_2200:Array = [/a/gi,/b/gi,/c/gi,/d/gi,/e/gi,/f/gi,/g/gi,/h/gi,/i/gi,/j/gi,/k/gi,/l/gi,/m/gi,/n/gi,/o/gi,/p/gi,/q/gi,/r/gi,/s/gi,/t/gi,/u/gi,/v/gi,/w/gi,/x/gi,/y/gi,/z/gi];
      
      internal static var _SafeStr_2058:Array = new Array("arsehole","ass","ballsuck","bastard","basterd","basturd","beastial","beastil","beastility","beaver","bellywhacker","bestiality","bitch","bltch","blowjob","boner","boob","browneye","browntown","bukake","bukakke","bukkake","bunghole","butt","chinck","chlnk","chink","circlejerk","clit","cobia","cock","cooter","crap","cum","cunilingus","cunillingus","cunnilingus","cunt","cyberfuc","damn","dick","dickhead","dike","dildo","dong","douchebag","dyke","ejaculat","fag","fart","felatio","fellatio","fingering","fisting","fuck","fuk","furburger","gangbang","gazongers","goddam","gonads","gook","guinne","hardon","hentai","homo","hooker","horniest","horny","hussy","jackingoff","jackoff","jackulate","jaculate","jerkoff","jism","jiz","jizm","jizz","kike","kock","kondum","kraut","kumilingus","kummer","kummilingus","kumming","kums","kunilingus","kunnilingus","lesbo","lezbian","lezbo","merde","milf","mothafuc","mothafuk","motherfuc","motherfuk","muff","niger"
      ,"nigger","nigga","nlgger","nlgga","orgasim","orgasims","orgasm","orgy","pecker","penis","phag","phelatio","phuck","phuk","phuq","pimp","piss","prick","pussi","pussies","pussy","queer","retard","returd","schlong","semen","sex","shlt","shit","sleaze","slut","snatch","spunk","tard","tasticle","tastikle","testicle","testikle","twat","vagina","wetback","whore");
      
      _SafeStr_866["Say"] = "/say";
      _SafeStr_866["Party"] = "/party";
      _SafeStr_866["Guild"] = "/guild";
      _SafeStr_866["Officer"] = "/officer";
      _SafeStr_321["Guild"] = "3FFF3F";
      _SafeStr_321["Officer"] = "3FAF3F";
      _SafeStr_321["Say"] = "EEE2BC";
      _SafeStr_321["Emote"] = "FF7F3F";
      _SafeStr_321["Party"] = "AFAFFF";
      _SafeStr_321["Tell"] = "FF7FFF";
      _SafeStr_321["Game"] = "AAAABB";
      _SafeStr_321["Admin"] = "FFFF00";
      _SafeStr_321["Status"] = "AAAABB";
      _SafeStr_321["Channel"] = "44E2BC";
      
      internal var _SafeStr_807:Boolean = false;
      
      internal var _SafeStr_1971:String = "Say";
      
      internal var _SafeStr_924:Vector.<String> = new Vector.<String>();
      
      internal var _SafeStr_751:uint = 0;
      
      internal var _SafeStr_2797:Boolean = false;
      
      internal var _SafeStr_3601:Boolean = false;
      
      internal var _SafeStr_3681:Boolean = false;
      
      internal var _SafeStr_3709:Boolean = false;
      
      internal var _SafeStr_1993:_SafeCls_34;
      
      internal var _SafeStr_3755:_SafeCls_34;
      
      internal var _SafeStr_2517:_SafeCls_34;
      
      internal var _SafeStr_2785:_SafeCls_34;
      
      internal var _SafeStr_2455:_SafeCls_34;
      
      internal var _SafeStr_1138:uint = 0;
      
      public function _SafeCls_61(param1:Game)
      {
         super(param1,"a_ScreenChat",null);
         _SafeStr_158 = true;
      }
      
      public static function _SafeStr_2827(param1:String) : Boolean
      {
         var _loc2_:String = null;
         var _loc3_:RegExp = null;
         var _loc4_:String = null;
         param1 = param1.toLowerCase();
         for each(_loc3_ in _SafeStr_2200)
         {
            _loc2_ = param1.replace(_loc3_,"");
            for each(_loc4_ in _SafeStr_2216)
            {
               if(_loc2_.indexOf(_loc4_) != -1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public static function _SafeStr_1982(param1:String) : Boolean
      {
         var _loc2_:String = null;
         param1 = param1.toLowerCase();
         for each(_loc2_ in _SafeStr_2058)
         {
            if(param1.indexOf(_loc2_) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function _SafeStr_2063(param1:String) : String
      {
         return "<font color=\'#" + _SafeStr_321[param1] + "\'>";
      }
      
      override public function OnCreateScreen() : void
      {
         _SafeStr_177(_SafeStr_123.am_ScrollUp,this._SafeStr_3390);
         _SafeStr_177(_SafeStr_123.am_ScrollDown,this._SafeStr_3076);
         _SafeStr_177(_SafeStr_123.am_ScrollBottom,this._SafeStr_3122);
         _SafeStr_177(_SafeStr_123.am_Expand,this._SafeStr_3355);
         _SafeStr_177(_SafeStr_123.am_ChangeChannel,this._SafeStr_3517);
         this._SafeStr_1993 = _SafeStr_124(_SafeStr_123.am_PartyList);
         _SafeStr_123.am_ChatEntry.addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_3483);
         _SafeStr_123.am_ChatEntry.addEventListener(FocusEvent.FOCUS_OUT,this._SafeStr_3428);
         this._SafeStr_2517 = _SafeStr_177(_SafeStr_123.am_PartyTab,this._SafeStr_3276);
         this._SafeStr_2785 = _SafeStr_177(_SafeStr_123.am_GuildTab,this._SafeStr_3318);
         this._SafeStr_2455 = _SafeStr_177(_SafeStr_123.am_FriendTab,this._SafeStr_3135);
      }
      
      override public function OnDestroyScreen() : void
      {
         this._SafeStr_1993 = null;
         this._SafeStr_2517 = null;
         this._SafeStr_2785 = null;
         this._SafeStr_2455 = null;
      }
      
      override public function OnRefreshScreen() : void
      {
         if(this._SafeStr_1138 == _SafeStr_1761)
         {
            this._SafeStr_2682(_SafeStr_118.mFriendList,"Friend");
         }
         if(this._SafeStr_1138 == _SafeStr_1664)
         {
            this._SafeStr_2682(_SafeStr_118.mGuildList,"Guild");
         }
      }
      
      public function _SafeStr_1148(param1:String) : void
      {
         _SafeStr_118.mKeybindManager.SetContext(_SafeStr_118.CONTEXT_CHAT);
         this._SafeStr_807 = true;
         if(param1)
         {
            _SafeStr_123.am_ChatEntry.text = param1;
            _SafeStr_123.am_ChatEntry.setSelection(param1.length,param1.length);
            this._SafeStr_3014();
         }
      }
      
      public function _SafeStr_2025() : void
      {
         if(!_SafeStr_123)
         {
            return;
         }
         this._SafeStr_807 = false;
         _SafeStr_118.mKeybindManager.SetContext(_SafeStr_118.CONTEXT_NORMAL);
         if(_SafeStr_123.am_ChatEntry.stage)
         {
            _SafeStr_123.am_ChatEntry.stage.focus = _SafeStr_118.main;
            _SafeStr_123.am_ChatEntry.stage.focus = null;
         }
         else
         {
            _SafeStr_118.main.stage.focus = _SafeStr_118.main;
            _SafeStr_118.main.stage.focus = null;
         }
      }
      
      public function _SafeStr_3375() : void
      {
         if(!_SafeStr_123)
         {
            return;
         }
         var _loc1_:String = _SafeStr_123.am_ChatEntry.text;
         _SafeStr_123.am_ChatEntry.text = "";
         var _loc2_:String = _loc1_;
         if(_loc1_)
         {
            this._SafeStr_3068(_loc1_);
            this._SafeStr_924.push(_loc2_);
            this._SafeStr_751 = this._SafeStr_924.length;
         }
         this._SafeStr_2025();
      }
      
      public function _SafeStr_3068(param1:String) : void
      {
         if(param1)
         {
            if(param1.charAt(0) != "\\" && param1.charAt(0) != "/")
            {
               param1 = _SafeStr_866[this._SafeStr_1971] + " " + param1;
            }
            this._SafeStr_2781(_SafeStr_118.clientEntID,param1);
         }
      }
      
      public function _SafeStr_2781(param1:uint, param2:String, param3:Boolean = false) : void
      {
         if(param3 || !this._SafeStr_3334(param2))
         {
            this._SafeStr_2467(param2);
         }
      }
      
      public function _SafeStr_3334(param1:String) : Boolean
      {
         var _loc4_:uint = 0;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:Boolean = false;
         var _loc3_:uint = uint(param1.length);
         if(_loc3_ >= 1 && (param1.charAt(0) == "\\" || param1.charAt(0) == "/"))
         {
            _loc4_ = 1;
            if(_loc3_ >= 2 && (param1.charAt(1) == "\\" || param1.charAt(1) == "/"))
            {
               _loc4_ = 2;
            }
            _loc5_ = param1.split(" ");
            _loc6_ = _loc5_[0].substr(_loc4_);
            if(_loc6_.length)
            {
               _loc7_ = _loc6_.toUpperCase();
               _loc2_ = this._SafeStr_3221(_loc7_,_loc5_);
               if(!_loc2_)
               {
                  _loc2_ = true;
                  this._SafeStr_1825("Unknown Command: " + _loc6_);
               }
            }
            else
            {
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      private function _SafeStr_3221(param1:String, param2:Array) : Boolean
      {
         var _loc3_:String = null;
         var _loc6_:String = null;
         var _loc8_:_SafeCls_77 = null;
         var _loc9_:_SafeCls_77 = null;
         var _loc10_:_SafeCls_77 = null;
         var _loc11_:_SafeCls_77 = null;
         var _loc12_:_SafeCls_77 = null;
         var _loc13_:_SafeCls_77 = null;
         var _loc14_:_SafeCls_77 = null;
         var _loc15_:_SafeCls_77 = null;
         var _loc16_:uint = 0;
         var _loc17_:_SafeCls_77 = null;
         var _loc7_:Boolean = false;
         if(!_SafeStr_118.serverConn)
         {
            return _loc7_;
         }
         if((param1 == "SAY" || param1 == "S" || param1 == "LOCAL") && param2.length > 1)
         {
            _loc6_ = param2.slice(1).join(" ");
            if(_loc6_)
            {
               this._SafeStr_2781(_SafeStr_118.clientEntID,_loc6_,true);
            }
            this._SafeStr_3279("Say");
            _loc7_ = true;
         }
         else if(param1 == "INVITE" && param2.length > 1)
         {
            _loc3_ = param2[1];
            _SafeStr_118.CmdInvite(_loc3_);
            _loc7_ = true;
         }
         else if(param1 == "LEAVE" || param1 == "QUIT")
         {
            _loc8_ = new _SafeCls_77(_SafeCls_73._SafeStr_1922);
            _loc8_._SafeStr_279(_SafeStr_118.mCharacterName);
            _SafeStr_118.serverConn.SendPacket(_loc8_);
            _loc7_ = true;
         }
         else if(param1 == "KICK" && param2.length > 1)
         {
            _loc3_ = param2[1];
            _loc9_ = new _SafeCls_77(_SafeCls_73._SafeStr_2168);
            _loc9_._SafeStr_279(_loc3_);
            _SafeStr_118.serverConn.SendPacket(_loc9_);
            _loc7_ = true;
         }
         else if(param1 == "FRIEND" && param2.length > 1)
         {
            _loc3_ = param2[1];
            _loc10_ = new _SafeCls_77(_SafeCls_73._SafeStr_2182);
            _loc10_._SafeStr_279(_loc3_);
            _SafeStr_118.serverConn.SendPacket(_loc10_);
            _loc7_ = true;
         }
         else if(param1 == "UNFRIEND" && param2.length > 1)
         {
            _loc3_ = param2[1];
            _loc11_ = new _SafeCls_77(_SafeCls_73._SafeStr_2352);
            _loc11_._SafeStr_279(_loc3_);
            _SafeStr_118.serverConn.SendPacket(_loc11_);
            _loc7_ = true;
         }
         else if(param1 == "CANCELPLAY")
         {
            _SafeStr_118.mMatchMakerData.LeaveQueue();
            this._SafeStr_863("Leaving Matchmaking Queue");
            _loc7_ = true;
         }
         else if(param1 == "CCREATE")
         {
            _loc12_ = new _SafeCls_77(_SafeCls_73._SafeStr_1679);
            _SafeStr_118.serverConn.SendPacket(_loc12_);
            _loc7_ = true;
         }
         else if(param1 == "CINVITE" && param2.length > 1)
         {
            _loc3_ = param2[1];
            _loc13_ = new _SafeCls_77(_SafeCls_73._SafeStr_2233);
            _loc13_._SafeStr_279(_loc3_);
            _SafeStr_118.serverConn.SendPacket(_loc13_);
            _loc7_ = true;
         }
         else if(param1 == "CLEAVE")
         {
            _loc14_ = new _SafeCls_77(_SafeCls_73._SafeStr_1700);
            _SafeStr_118.serverConn.SendPacket(_loc14_);
            _loc7_ = true;
         }
         else if(param1 == "CSTART")
         {
            _loc7_ = true;
            if(!_SafeStr_118.mCustomGameData.CanStart())
            {
               return _loc7_;
            }
            _loc15_ = new _SafeCls_77(_SafeCls_73._SafeStr_1426);
            _SafeStr_118.serverConn.SendPacket(_loc15_);
         }
         else if(param1 == "CJOIN" && param2.length >= 1)
         {
            _loc7_ = true;
            if(!param2[1])
            {
               this._SafeStr_863("Missing game name");
            }
            else
            {
               _loc16_ = uint(param2[1]);
               _loc17_ = new _SafeCls_77(_SafeCls_73._SafeStr_1425);
               _loc17_._SafeStr_146(_loc16_);
               _SafeStr_118.serverConn.SendPacket(_loc17_);
            }
         }
         return _loc7_;
      }
      
      public function _SafeStr_2467(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:String = _SafeCls_19._SafeStr_2675(param1);
         var _loc4_:String = this._SafeStr_2063("Say");
         var _loc5_:* = "";
         if(!param2)
         {
            _loc5_ = this._SafeStr_3343(_SafeStr_118.mCharacterName) + ": ";
         }
         this._SafeStr_1972(_loc4_ + _loc5_ + _loc3_ + _SafeStr_1090);
      }
      
      public function _SafeStr_3343(param1:String) : String
      {
         if(_SafeStr_118.mCharacterName == param1 && !(_SafeCls_1.flags & _SafeCls_1._SafeStr_740))
         {
            return param1;
         }
         var _loc2_:* = "<a href=\'event:" + param1 + "\'>";
         return _loc2_ + param1 + "</a>";
      }
      
      public function _SafeStr_1825(param1:String, param2:String = "Status") : void
      {
         var _loc3_:String = _SafeCls_19._SafeStr_2675(param1);
         var _loc4_:String = this._SafeStr_2063(param2);
         this._SafeStr_1972(_loc4_ + _loc3_ + _SafeStr_1090);
      }
      
      public function _SafeStr_863(param1:String, param2:String = "Status") : void
      {
         var _loc3_:String = this._SafeStr_2063(param2);
         this._SafeStr_1972(_loc3_ + param1 + _SafeStr_1090);
      }
      
      private function _SafeStr_3483(param1:MouseEvent) : void
      {
         this._SafeStr_1148(null);
         param1.stopPropagation();
      }
      
      private function _SafeStr_3428(param1:FocusEvent) : void
      {
         this._SafeStr_807 = false;
         _SafeStr_118.mKeybindManager.SetContext(_SafeStr_118.CONTEXT_NORMAL);
      }
      
      public function _SafeStr_3014() : void
      {
         var _loc1_:TextField = _SafeStr_123.am_ChatEntry;
         var _loc2_:Number = this._SafeStr_3270(this._SafeStr_1971);
         _loc1_.textColor = _loc2_;
      }
      
      public function _SafeStr_3270(param1:String) : Number
      {
         return 15655612;
      }
      
      private function _SafeStr_3494() : void
      {
         if(!_SafeStr_123)
         {
            return;
         }
         if(this._SafeStr_807 && _SafeStr_123.am_ChatEntry.stage && _SafeStr_123.am_ChatEntry.stage.focus != _SafeStr_123.am_ChatEntry)
         {
            _SafeStr_123.am_ChatEntry.stage.focus = _SafeStr_123.am_ChatEntry;
         }
      }
      
      public function _SafeStr_3279(param1:String) : void
      {
         this._SafeStr_1971 = param1;
      }
      
      public function _SafeStr_1972(param1:String) : void
      {
         if(!_SafeStr_123)
         {
            return;
         }
         var _loc2_:TextField = _SafeStr_123.am_ChatHistory;
         var _loc3_:* = _loc2_.scrollV == _loc2_.maxScrollV;
         param1 = param1.replace(/\^t\s*/i,"");
         _loc2_.htmlText += param1 + "<br/>";
         if(_loc3_)
         {
            _loc2_.scrollV = _loc2_.maxScrollV;
         }
      }
      
      private function _SafeStr_3390(param1:MouseEvent) : void
      {
      }
      
      private function _SafeStr_3076(param1:MouseEvent) : void
      {
      }
      
      private function _SafeStr_3122(param1:MouseEvent) : void
      {
      }
      
      private function _SafeStr_3355(param1:MouseEvent) : void
      {
      }
      
      private function _SafeStr_3517(param1:MouseEvent) : void
      {
      }
      
      public function _SafeStr_191(param1:int) : Boolean
      {
         this._SafeStr_3494();
         if(this._SafeStr_807)
         {
            _SafeStr_118.mKeybindManager.SetContext(_SafeStr_118.CONTEXT_CHAT);
            switch(param1)
            {
               case Game.COMMAND2_SCROLLUP:
                  if(this._SafeStr_751 > 0)
                  {
                     this._SafeStr_1148(this._SafeStr_924[--this._SafeStr_751]);
                  }
                  return true;
               case Game.COMMAND2_SCROLLDOWN:
                  if(this._SafeStr_751 < this._SafeStr_924.length - 1)
                  {
                     this._SafeStr_1148(this._SafeStr_924[++this._SafeStr_751]);
                  }
                  return true;
               case Game.COMMAND2_ESCAPE:
                  this._SafeStr_2025();
                  return true;
               case Game.COMMAND2_ENTER:
                  this._SafeStr_3375();
                  return true;
               case Game.COMMAND2_CONSOLE:
                  this.Hide();
                  this._SafeStr_2025();
                  return true;
            }
         }
         else
         {
            _SafeStr_118.mKeybindManager.SetContext(_SafeStr_118.CONTEXT_NORMAL);
            switch(param1)
            {
               case Game.COMMAND3_CONSOLE:
                  if(_SafeStr_118.screenChat.mbVisible)
                  {
                     _SafeStr_118.screenChat.Hide();
                     break;
                  }
                  _SafeStr_118.screenChat.Display();
                  this._SafeStr_1148("/");
                  break;
               case Game.COMMAND3_ENTER:
                  this._SafeStr_1148(null);
            }
         }
         return this._SafeStr_807;
      }
      
      override public function Hide() : void
      {
         this._SafeStr_807 = false;
         super.Hide();
      }
      
      private function _SafeStr_3716(param1:String, param2:String) : void
      {
         this._SafeStr_1825("Incorrect Format: /" + param1.toLowerCase() + " " + param2);
      }
      
      private function _SafeStr_3276(param1:MouseEvent) : void
      {
         this._SafeStr_1138 = _SafeStr_2190;
         _SafeStr_141();
      }
      
      private function _SafeStr_3318(param1:MouseEvent) : void
      {
         this._SafeStr_1138 = _SafeStr_1664;
         _SafeStr_141();
      }
      
      private function _SafeStr_3135(param1:MouseEvent) : void
      {
         this._SafeStr_1138 = _SafeStr_1761;
         _SafeStr_141();
      }
      
      public function _SafeStr_2682(param1:Vector.<Friend>, param2:String) : void
      {
         var _loc3_:String = null;
         var _loc7_:Friend = null;
         if(param2 == "Friend")
         {
            _loc3_ = _SafeStr_321["Guild"];
         }
         if(param2 == "Guild")
         {
            _loc3_ = _SafeStr_321["Channel"];
         }
         var _loc4_:String = "\n";
         var _loc5_:uint = 0;
         while(_loc5_ < param1.length)
         {
            _loc7_ = param1[_loc5_];
            _loc4_ += "<font color=\"" + _loc3_ + "\">" + _loc7_._SafeStr_881 + "</font>\n";
            _loc5_++;
         }
         var _loc6_:String = param2 + _loc4_;
         _SafeCls_19._SafeStr_374(this._SafeStr_1993.mMovieClip.am_PartyListText,_loc6_,true);
      }
      
      public function _SafeStr_3643() : void
      {
         if(!this._SafeStr_2797)
         {
            return;
         }
      }
      
      public function _SafeStr_3744() : void
      {
         this._SafeStr_2797 = true;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_1 = "set "
 * @identifier _SafeCls_19 = "_-Bl"
 * @identifier _SafeCls_34 = "_-0P"
 * @identifier _SafeCls_35 = "_-sW"
 * @identifier _SafeCls_61 = "_-Cc"
 * @identifier _SafeCls_73 = "_-nz"
 * @identifier _SafeCls_77 = "_-5E"
 * @identifier _SafeStr_118 = "_-IN"
 * @identifier _SafeStr_123 = "_-Kt"
 * @identifier _SafeStr_124 = "_-a5"
 * @identifier _SafeStr_141 = "_-Ay"
 * @identifier _SafeStr_146 = "_-jy"
 * @identifier _SafeStr_158 = "_-R6"
 * @identifier _SafeStr_177 = "_-eJ"
 * @identifier _SafeStr_191 = "_-lh"
 * @identifier _SafeStr_279 = "_-CT"
 * @identifier _SafeStr_321 = "_-ae"
 * @identifier _SafeStr_374 = "_-ws"
 * @identifier _SafeStr_740 = "_-NB"
 * @identifier _SafeStr_751 = "_-Y5"
 * @identifier _SafeStr_807 = "_-OT"
 * @identifier _SafeStr_863 = "_-dZ"
 * @identifier _SafeStr_866 = "_-cO"
 * @identifier _SafeStr_881 = "_-o"
 * @identifier _SafeStr_924 = "_-93"
 * @identifier _SafeStr_1090 = "_-LA"
 * @identifier _SafeStr_1138 = "_-56"
 * @identifier _SafeStr_1148 = "_-go"
 * @identifier _SafeStr_1425 = "_-TP"
 * @identifier _SafeStr_1426 = "_-ms"
 * @identifier _SafeStr_1664 = "_-Bi"
 * @identifier _SafeStr_1679 = "_-I1"
 * @identifier _SafeStr_1700 = "_-E9"
 * @identifier _SafeStr_1761 = "_-5k"
 * @identifier _SafeStr_1825 = "_-9g"
 * @identifier _SafeStr_1922 = "_-4F"
 * @identifier _SafeStr_1971 = "_-vT"
 * @identifier _SafeStr_1972 = "_-G0"
 * @identifier _SafeStr_1982 = "_-Vk"
 * @identifier _SafeStr_1993 = "_-kr"
 * @identifier _SafeStr_2025 = "_-T4"
 * @identifier _SafeStr_2058 = "_-kL"
 * @identifier _SafeStr_2063 = "_-1D"
 * @identifier _SafeStr_2168 = "_-eY"
 * @identifier _SafeStr_2182 = "_-Is"
 * @identifier _SafeStr_2190 = "_-sc"
 * @identifier _SafeStr_2200 = "_-5e"
 * @identifier _SafeStr_2216 = "_-sq"
 * @identifier _SafeStr_2233 = "_-m"
 * @identifier _SafeStr_2352 = "_-c9"
 * @identifier _SafeStr_2455 = "_-m4"
 * @identifier _SafeStr_2467 = "_-MS"
 * @identifier _SafeStr_2517 = "_-tC"
 * @identifier _SafeStr_2531 = "_-3r"
 * @identifier _SafeStr_2634 = "_-TD"
 * @identifier _SafeStr_2675 = "_-1f"
 * @identifier _SafeStr_2682 = "_-hM"
 * @identifier _SafeStr_2683 = "_-ce"
 * @identifier _SafeStr_2703 = "_-U"
 * @identifier _SafeStr_2781 = "_-wl"
 * @identifier _SafeStr_2785 = "_-4r"
 * @identifier _SafeStr_2797 = "_-h-"
 * @identifier _SafeStr_2827 = "_-pl"
 * @identifier _SafeStr_2858 = "_-dp"
 * @identifier _SafeStr_2911 = "_-dt"
 * @identifier _SafeStr_2954 = "_-OS"
 * @identifier _SafeStr_3014 = "_-lN"
 * @identifier _SafeStr_3068 = "_-7u"
 * @identifier _SafeStr_3076 = "_-4q"
 * @identifier _SafeStr_3122 = "_-OA"
 * @identifier _SafeStr_3135 = "_-n7"
 * @identifier _SafeStr_3221 = "_-iA"
 * @identifier _SafeStr_3270 = "_-dX"
 * @identifier _SafeStr_3276 = "_-mS"
 * @identifier _SafeStr_3279 = "_-3I"
 * @identifier _SafeStr_3318 = "_-kw"
 * @identifier _SafeStr_3334 = "_-t"
 * @identifier _SafeStr_3343 = "_-tk"
 * @identifier _SafeStr_3355 = "_-BS"
 * @identifier _SafeStr_3375 = "_-Ai"
 * @identifier _SafeStr_3390 = "_-NK"
 * @identifier _SafeStr_3428 = "_-SU"
 * @identifier _SafeStr_3483 = "_-Wu"
 * @identifier _SafeStr_3494 = "_-p0"
 * @identifier _SafeStr_3517 = "_-sw"
 * @identifier _SafeStr_3601 = "_-m-"
 * @identifier _SafeStr_3643 = "_-Cz"
 * @identifier _SafeStr_3681 = "_-HT"
 * @identifier _SafeStr_3709 = "_-iK"
 * @identifier _SafeStr_3716 = "_-bp"
 * @identifier _SafeStr_3744 = "_-cX"
 * @identifier _SafeStr_3755 = "_-ob"
 */
