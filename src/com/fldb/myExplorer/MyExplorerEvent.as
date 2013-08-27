package com.fldb.myExplorer
{
	import flash.events.Event;

	public class MyExplorerEvent extends Event
	{
		public static const UPLOAD_FILE:String = "sendFile";
		public static const CREATE_FOLDER:String = "createFolder";
		public static const RENAME:String = "rename";
		public static const DELETE:String = "delete";
		public static const MOVE:String = "moveItem";
		
		
		private var _data:Object;
		private var _callBack:Function;
		
		public function MyExplorerEvent(type:String, data:Object=null, callBack:Function=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = data;
			this.callBack = callBack;
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

		public function get callBack():Function
		{
			return _callBack;
		}

		public function set callBack(value:Function):void
		{
			_callBack = value;
		}


	}
}