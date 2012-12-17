package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 
	 */
	public class Feature3D extends ClassBase
	{
		public var CLASSNAME:String="Feature3D";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.Feature3D";
		public function Feature3D(object:Object=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(object==null)
			{
				key=0;
				isNew=true;
				array={
					className:this.REALSPACE_CLASSNAME
				};
			}
			else
			{
				key=object["key"] as Number;
				isNew=object["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		/**
		 * 获取三维要素对象的名称。
		 */
		public function get_name():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_name",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 设置三维要素对象的名称。
		 */
		public function set_name(value:String):void
		{
		}
		/**
		 * 获取标识三维要素对象在三维要素对象集合 Feature3Ds中的位置（索引）。 
		 */
		public function get_id():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_id",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取三维地理要素的风格。 
		 */
		public function get_style3D():Style3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_style3D",
					isReturn:true
			};
			return this.flexToJsCall(array) as Style3D;
		}
		/**
		 * 设置三维地理要素的风格。
		 */
		public function set_style3D(value:Style3D):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_style3D",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维地理要素的几何类型，不仅可以为三维的点、线、面、文本等，也可以是二维的几何对象。
		 */
		public function get_geometry():Geometry
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_geometry",
					isReturn:true
			};
			return this.flexToJsCall(array) as Geometry;
		}
		/**
		 * 设置三维地理要素的几何类型，不仅可以为三维的点、线、面、文本等，也可以是二维的几何对象。
		 */
		public function set_geometry(value:Geometry):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_geometry",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}