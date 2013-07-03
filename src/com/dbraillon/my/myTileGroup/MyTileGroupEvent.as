package com.dbraillon.my.myTileGroup
{
	import flash.events.Event;
	
	public class MyTileGroupEvent extends Event
	{
		public static const DRAG_DROP    : String = "myTileGroupDragDrop";
		public static const DOUBLE_CLICK : String = "myTileGroupDoubleClick";
		
		
		private var _data:Object;
		
		public function MyTileGroupEvent(type:String, data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
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