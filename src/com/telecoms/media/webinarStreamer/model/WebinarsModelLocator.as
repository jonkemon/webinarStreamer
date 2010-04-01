package com.telecoms.media.webinarStreamer.model
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class WebinarsModelLocator
	{
		static public var __instance:WebinarsModelLocator=null;
		public var webinarAdresses:XML = new XML;
		
		static public function getInstance():WebinarsModelLocator
		{
			if(__instance == null)
			{
				__instance = new WebinarsModelLocator();
			}
			return __instance;
		}
	}	
}