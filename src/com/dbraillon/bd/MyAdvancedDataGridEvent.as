package com.dbraillon.bd
{
	import flash.events.Event;
	
	public class MyAdvancedDataGridEvent extends Event
	{
		public static const MYCHANGE : String = "myChange";
		
		private var _data:Object;
		
		public function MyAdvancedDataGridEvent(type:String, data:Object, bubbles:Boolean=false, cancelable:Boolean=false)
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