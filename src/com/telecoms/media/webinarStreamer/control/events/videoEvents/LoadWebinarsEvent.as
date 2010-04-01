package com.telecoms.media.webinarStreamer.control.events.videoEvents
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class LoadWebinarsEvent extends CairngormEvent
	{
		static public var EVENT_ID:String = "LoadImages";
		public function LoadWebinarsEvent()
		{
			super(EVENT_ID);
			trace(this);
		}
		
	}
}