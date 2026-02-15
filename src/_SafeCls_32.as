package
{
   import flash.geom.Matrix;
   
   public class _SafeCls_32
   {
      
      internal var _SafeStr_891:String;
      
      internal var frame:int;
      
      internal var _SafeStr_1263:Matrix;
      
      internal var _SafeStr_2286:Number;
      
      internal var _SafeStr_1073:Vector.<_SafeCls_32>;
      
      internal var _SafeStr_1962:String;
      
      internal var _SafeStr_1513:Boolean;
      
      internal var _SafeStr_2946:Boolean;
      
      public function _SafeCls_32(param1:String, param2:String, param3:Matrix, param4:Number)
      {
         super();
         this._SafeStr_891 = param1;
         this._SafeStr_1263 = param3;
         this._SafeStr_2286 = param4;
         this.frame = 1;
         if(!param1.indexOf("Whole"))
         {
            this._SafeStr_2946 = true;
         }
         else if(!param1.indexOf("a_Head"))
         {
            this._SafeStr_1513 = true;
         }
         var _loc5_:Array = param1.split("_");
         this._SafeStr_1962 = _loc5_[1];
      }
      
      public function _SafeStr_2492() : void
      {
         var _loc1_:_SafeCls_32 = null;
         this._SafeStr_1263 = null;
         if(this._SafeStr_1073)
         {
            for each(_loc1_ in this._SafeStr_1073)
            {
               _loc1_._SafeStr_2492();
            }
            this._SafeStr_1073 = null;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_32 = "_-if"
 * @identifier _SafeStr_891 = "_-Ge"
 * @identifier _SafeStr_1073 = "_-lD"
 * @identifier _SafeStr_1263 = "_-qB"
 * @identifier _SafeStr_1513 = "_-db"
 * @identifier _SafeStr_1962 = "_-TL"
 * @identifier _SafeStr_2286 = "_-rY"
 * @identifier _SafeStr_2492 = "_-NX"
 * @identifier _SafeStr_2946 = "_-rj"
 */
