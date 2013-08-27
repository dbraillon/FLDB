package com.fldb.myTreeGroup
{
	import flash.events.Event;
	
	public class MyTreeGroupEvent extends Event
	{
		public static const INNER_DRAG_ENTER : String = "myInnerTreeGroupDragEnter";
		public static const INNER_DRAG_DROP  : String = "myInnerTreeGroupDragDrop";
		
		public static const DRAG_DROP  : String = "myTreeGroupDragDrop";
		
		
		private var _data:Object;
		
		public function MyTreeGroupEvent(type:String, data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = data;
		}
		
		
		public function get data():Object
		{
			if(!_data)
			{
				_data = new Object();
			}
			
			return _data;
		}
		
		public function set data(value:Object):void
		{
			_data = value;
		}
	}
}