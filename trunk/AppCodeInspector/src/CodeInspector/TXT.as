package CodeInspector
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class TXT extends EventDispatcher
	{
		private var loader:URLLoader;
		public var Texto:String;
		
		public function TXT()
		{
			loader = new URLLoader;
		}
		
		public function Load(_req:String):void {
			loader.load(new URLRequest(_req));
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, secError);
			loader.addEventListener(IOErrorEvent.IO_ERROR, ioError);
			loader.addEventListener(Event.COMPLETE,Loaded);
		}
		
		private function ioError(e:IOErrorEvent):void {
			dispatchEvent(new Event("TXT_IOError"));
		}
		private function secError(e:SecurityErrorEvent):void {
			dispatchEvent(new Event("TXT_SecurityError"));
		}
		private function Loaded(e:Event):void {
			try {
				Texto = loader.data;
				//trace(loader.data);
				dispatchEvent(new Event("TXT_Loaded"));
			} catch (e:Error) {
				dispatchEvent(new Event("TXT_ParseError"));
			}
		}
	}
}