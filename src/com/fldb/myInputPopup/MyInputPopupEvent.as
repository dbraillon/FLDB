package com.fldb.myInputPopup
{
	import flash.events.Event;
	
	public class MyInputPopupEvent extends Event
	{
		public static const RESULT : String = "myInputPopupResult";
		public static const CANCEL : String = "myInputPopupCancel";
		
		
		private var _data:Object;
		
		public function MyInputPopupEvent(type:String, data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
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