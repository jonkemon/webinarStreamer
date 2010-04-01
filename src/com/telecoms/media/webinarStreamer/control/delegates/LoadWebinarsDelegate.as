package com.telecoms.media.webinarStreamer.control.delegates
{
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	public class LoadWebinarsDelegate
	{
		private var __locator:ServiceLocator = ServiceLocator.getInstance();
		private var __service:HTTPService;
		private var __responder:IResponder;
		
		public function LoadWebinarsDelegate(responder:IResponder)
		{
			__service = __locator.getHTTPService("webinarRetrieve");
			__responder = responder;
		}
		
		public function loadPhotos():void
		{
			var token:AsyncToken = __service.send();
			token.addResponder(__responder);
		}
	}
}