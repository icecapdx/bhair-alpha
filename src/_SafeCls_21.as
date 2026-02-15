package
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.filesystem.FileStream;
   import flash.net.URLLoader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class _SafeCls_21
   {
      
      public static const _SafeStr_1455:String = "XML";
      
      public static const _SafeStr_758:String = "SWF";
      
      public static const _SafeStr_1091:String = "SWZ";
      
      public static const _SafeStr_1238:String = "PBJ";
      
      public static const _SafeStr_1709:String = "MISC";
      
      internal var fileName:String;
      
      internal var _SafeStr_394:String;
      
      internal var _SafeStr_1188:String;
      
      internal var _SafeStr_2512:String;
      
      internal var _SafeStr_982:uint;
      
      internal var _SafeStr_3060:uint;
      
      internal var _SafeStr_930:uint;
      
      internal var _SafeStr_1278:uint;
      
      internal var _SafeStr_3496:uint;
      
      internal var _SafeStr_1197:uint;
      
      internal var _SafeStr_3012:uint;
      
      internal var _SafeStr_285:Loader;
      
      internal var _SafeStr_520:URLLoader;
      
      internal var _SafeStr_1033:ByteArray;
      
      internal var _SafeStr_1970:uint;
      
      internal var _SafeStr_627:uint = 1;
      
      public function _SafeCls_21(param1:String, param2:uint, param3:String)
      {
         super();
         this.fileName = param1;
         this._SafeStr_3060 = param2;
         this._SafeStr_982 = param2;
         this._SafeStr_1188 = param3;
         if(param2 >= 524288)
         {
            this._SafeStr_930 = 3;
         }
         else if(param2 >= 262144)
         {
            this._SafeStr_930 = 2;
         }
         else
         {
            this._SafeStr_930 = 1;
         }
         var _loc4_:String = this.fileName.substr(-3,3).toUpperCase();
         if(_loc4_ == _SafeStr_758)
         {
            this._SafeStr_394 = _SafeStr_758;
         }
         else if(_loc4_ == _SafeStr_1091)
         {
            this._SafeStr_394 = _SafeStr_1091;
         }
         else if(_loc4_ == _SafeStr_1455)
         {
            this._SafeStr_394 = _SafeStr_1455;
         }
         else if(_loc4_ == _SafeStr_1238)
         {
            this._SafeStr_394 = _SafeStr_1238;
         }
         else
         {
            this._SafeStr_394 = _SafeStr_1709;
         }
         var _loc5_:Array = this.fileName.split("/");
         var _loc6_:String = _loc5_[_loc5_.length - 1];
         var _loc7_:Array = _loc6_ ? _loc6_.split(".") : ["Unknown"];
         this._SafeStr_2512 = _loc7_[0];
      }
      
      public function _SafeStr_1521() : void
      {
         if(this._SafeStr_520)
         {
            try
            {
               this._SafeStr_520.close();
            }
            catch(e:Error)
            {
            }
            this._SafeStr_520.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this._SafeStr_1916);
            this._SafeStr_520.removeEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_1034);
            this._SafeStr_520.removeEventListener(ProgressEvent.PROGRESS,this._SafeStr_2120);
            this._SafeStr_520.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._SafeStr_1034);
            this._SafeStr_520.removeEventListener(Event.COMPLETE,this._SafeStr_2121);
            this._SafeStr_520 = null;
         }
         else if(this._SafeStr_285)
         {
            try
            {
               this._SafeStr_285.close();
            }
            catch(e:Error)
            {
            }
            this._SafeStr_285.contentLoaderInfo.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this._SafeStr_1916);
            this._SafeStr_285.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_1034);
            this._SafeStr_285.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this._SafeStr_2120);
            this._SafeStr_285.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._SafeStr_1034);
            this._SafeStr_285.contentLoaderInfo.removeEventListener(Event.COMPLETE,this._SafeStr_2121);
            this._SafeStr_285 = null;
         }
         ++this._SafeStr_1970;
         this._SafeStr_627 = _SafeCls_9._SafeStr_1721;
         this._SafeStr_1033 = null;
      }
      
      public function _SafeStr_1509() : void
      {
         this._SafeStr_1197 = this._SafeStr_3496 = getTimer();
         this._SafeStr_627 = _SafeCls_9._SafeStr_1684;
         if(this._SafeStr_394 == _SafeStr_758)
         {
            this._SafeStr_285 = new Loader();
            this._SafeStr_285.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,this._SafeStr_1916);
            this._SafeStr_285.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_1034);
            this._SafeStr_285.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this._SafeStr_2120);
            this._SafeStr_285.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._SafeStr_1034);
            this._SafeStr_285.contentLoaderInfo.addEventListener(Event.COMPLETE,this._SafeStr_2121);
            if(this._SafeStr_1188 == "Lib" || this._SafeStr_1188 == "Core" || this._SafeStr_1188 == _SafeCls_9._SafeStr_661)
            {
               var _loc1_:ApplicationDomain = ApplicationDomain.currentDomain;
            }
            else
            {
               _loc1_ = new ApplicationDomain(ApplicationDomain.currentDomain);
            }
            var _loc2_:LoaderContext = new LoaderContext(false,null);
            this._SafeStr_1033 = this._SafeStr_2610();
            _loc2_.allowCodeImport = true;
            this._SafeStr_285.loadBytes(this._SafeStr_1033,null);
         }
         else
         {
            this._SafeStr_1033 = this._SafeStr_2610();
            this._SafeStr_627 = _SafeCls_9._SafeStr_989;
         }
      }
      
      private function _SafeStr_2610() : ByteArray
      {
         var _loc1_:File = null;
         if(_SafeCls_9._SafeStr_933)
         {
            _loc1_ = new File(File.applicationDirectory.nativePath + "/" + _SafeCls_9._SafeStr_933 + this.fileName);
         }
         else
         {
            _loc1_ = File.applicationDirectory.resolvePath(this.fileName);
         }
         var _loc2_:FileStream = new FileStream();
         var _loc3_:ByteArray = new ByteArray();
         _loc2_.open(_loc1_,FileMode.READ);
         _loc2_.readBytes(_loc3_);
         _loc2_.close();
         return _loc3_;
      }
      
      public function _SafeStr_3413() : ByteArray
      {
         return this._SafeStr_1033;
      }
      
      public function _SafeStr_2997() : XML
      {
         return new XML(this._SafeStr_1033);
      }
      
      private function _SafeStr_2121(param1:Event) : void
      {
         this._SafeStr_627 = _SafeCls_9._SafeStr_989;
      }
      
      private function _SafeStr_1916(param1:HTTPStatusEvent) : void
      {
         this._SafeStr_3012 = param1.status;
      }
      
      private function _SafeStr_2120(param1:ProgressEvent) : void
      {
         _SafeCls_9._SafeStr_1350 -= this._SafeStr_1278;
         _SafeCls_9._SafeStr_869 -= this._SafeStr_982;
         this._SafeStr_982 = param1.bytesTotal;
         this._SafeStr_1278 = param1.bytesLoaded;
         _SafeCls_9._SafeStr_1350 += this._SafeStr_1278;
         _SafeCls_9._SafeStr_869 += this._SafeStr_982;
         this._SafeStr_1197 = getTimer();
      }
      
      private function _SafeStr_1034(param1:Event) : void
      {
         this._SafeStr_1197 = getTimer();
         this._SafeStr_627 = _SafeCls_9._SafeStr_1607;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_9 = "_-cU"
 * @identifier _SafeCls_21 = "_-0r"
 * @identifier _SafeStr_285 = "_-N-"
 * @identifier _SafeStr_394 = "_-Ej"
 * @identifier _SafeStr_520 = "_-ks"
 * @identifier _SafeStr_627 = "_-Xa"
 * @identifier _SafeStr_661 = "_-Tb"
 * @identifier _SafeStr_758 = "in"
 * @identifier _SafeStr_869 = "_-UM"
 * @identifier _SafeStr_930 = "_-11"
 * @identifier _SafeStr_933 = "_-Vt"
 * @identifier _SafeStr_982 = "_-UZ"
 * @identifier _SafeStr_989 = "_-Tm"
 * @identifier _SafeStr_1033 = "_-KO"
 * @identifier _SafeStr_1034 = "_-k3"
 * @identifier _SafeStr_1091 = "_-T9"
 * @identifier _SafeStr_1188 = "_-qz"
 * @identifier _SafeStr_1197 = "_-2U"
 * @identifier _SafeStr_1238 = "_-Yy"
 * @identifier _SafeStr_1278 = "_-h2"
 * @identifier _SafeStr_1350 = "_-wS"
 * @identifier _SafeStr_1455 = "_-42"
 * @identifier _SafeStr_1509 = "_-H6"
 * @identifier _SafeStr_1521 = "_-U8"
 * @identifier _SafeStr_1607 = "_-U1"
 * @identifier _SafeStr_1684 = "_-77"
 * @identifier _SafeStr_1709 = "_-6S"
 * @identifier _SafeStr_1721 = "_-NT"
 * @identifier _SafeStr_1916 = "_-na"
 * @identifier _SafeStr_1970 = "_-SV"
 * @identifier _SafeStr_2120 = "_-ro"
 * @identifier _SafeStr_2121 = "_-LH"
 * @identifier _SafeStr_2512 = "_-8m"
 * @identifier _SafeStr_2610 = "_-Vu"
 * @identifier _SafeStr_2997 = "_-Gr"
 * @identifier _SafeStr_3012 = "_-V6"
 * @identifier _SafeStr_3060 = "_-pZ"
 * @identifier _SafeStr_3413 = "_-37"
 * @identifier _SafeStr_3496 = "_-tG"
 */
