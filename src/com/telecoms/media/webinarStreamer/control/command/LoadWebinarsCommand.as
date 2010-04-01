package com.telecoms.media.webinarStreamer.control.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.telecoms.media.webinarStreamer.control.delegates.LoadWebinarsDelegate;
	import com.telecoms.media.webinarStreamer.model.WebinarsModelLocator;
	import flash.external.ExternalInterface;
	
	import mx.controls.Alert;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	public class LoadWebinarsCommand implements ICommand
	{		
		private var model:WebinarsModelLocator = WebinarsModelLocator.getInstance();
		public function execute(event:CairngormEvent):void
		{
			var responder:Responder = new Responder(onResults,onFault);
			var delegate:LoadWebinarsDelegate = new LoadWebinarsDelegate(responder);
			delegate.loadPhotos();
		}
		private function onFault(event:FaultEvent):void
		{
			Alert.show('No photos were found...');
		}
		private function onResults(event:ResultEvent):void
		{
			model.webinarAdresses = event.token.result as XML;
		}
	}
}