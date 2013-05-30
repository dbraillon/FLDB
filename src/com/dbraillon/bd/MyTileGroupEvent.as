package com.dbraillon.bd
{
	import flash.events.Event;
	
	import mx.core.UIComponent;
	
	public class MyTileGroupEvent extends Event
	{
		public static const DROP:String = "childDragDrop";
		
		private var _initiator:UIComponent;
		private var _destination:UIComponent;
		
		public function MyTileGroupEvent(type:String, initiator:UIComponent, destination:UIComponent, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_initiator = initiator;
			_destination = destination;
		}

		public function get destination():UIComponent
		{
			return _destination;
		}

		public function set destination(value:UIComponent):void
		{
			_destination = value;
		}

		public function get initiator():UIComponent
		{
			return _initiator;
		}

		public function set initiator(value:UIComponent):void
		{
			_initiator = value;
		}
	}
}