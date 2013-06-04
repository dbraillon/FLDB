package com.dbraillon.my.myExplorer.components
{
	import flash.events.Event;
	
	import mx.core.UIComponent;
	
	public class MyTileGroupEvent extends Event
	{
		
		/* All possible events */
		public static const CHILD_DRAG_DROP:String = "childDragDrop";
		public static const CHILD_DOUBLE_CLICK:String = "childDoubleClick";
		public static const GROUP_RIGHT_MOUSE_DOWN:String = "groupRightMouseDown";
		public static const CHILD_RIGHT_MOUSE_DOWN:String = "childRightMouseDown";
		public static const GROUP_SELECTED_CHANGE:String = "groupSelectedChange";
		
		
		private var _from:UIComponent;
		private var _to:UIComponent;
		
		public function MyTileGroupEvent(type:String, initiator:UIComponent=null, destination:UIComponent=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_from = initiator;
			_to = destination;
		}

		public function get to():UIComponent
		{
			return _to;
		}

		public function set to(value:UIComponent):void
		{
			_to = value;
		}

		public function get from():UIComponent
		{
			return _from;
		}

		public function set from(value:UIComponent):void
		{
			_from = value;
		}
	}
}