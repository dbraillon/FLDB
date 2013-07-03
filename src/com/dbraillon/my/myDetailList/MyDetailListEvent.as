package com.dbraillon.my.myDetailList
{
	import flash.events.Event;
	
	public class MyDetailListEvent extends Event
	{
		public static const INNER_DRAG_ENTER : String = "myInnerDetailListDragEnter";
		public static const INNER_DRAG_DROP  : String = "myInnerDetailListDragDrop";
		
		public static const DRAG_DROP : String = "myDetailListDragDrop";
		public static const DOUBLE_CLICK : String = "myDetailListDoubleClick";
		
		
		private var _data:Object;
		
		public function MyDetailListEvent(type:String, data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
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