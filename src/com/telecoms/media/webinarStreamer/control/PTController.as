package com.telecoms.media.webinarStreamer.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.telecoms.media.webinarStreamer.control.command.LoadWebinarsCommand;
	import com.telecoms.media.webinarStreamer.control.events.videoEvents.LoadWebinarsEvent;

	public class PTController extends FrontController
	{
		public function PTController()
		{
			super();
			addCommand(LoadWebinarsEvent.EVENT_ID, LoadWebinarsCommand);
		}
		
	}
}