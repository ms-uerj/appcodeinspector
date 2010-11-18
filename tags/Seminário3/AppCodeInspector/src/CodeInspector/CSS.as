package CodeInspector
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.text.StyleSheet;

	public class CSS extends EventDispatcher
	{
		private var loader:URLLoader;
		public var sheet:StyleSheet;
		
		public function CSS()
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
			dispatchEvent(new Event("CSS_IOError"));
		}
		private function secError(e:SecurityErrorEvent):void {
			dispatchEvent(new Event("CSS_SecurityError"));
		}
		private function Loaded(e:Event):void {
			try {
				sheet = new StyleSheet();
				sheet.parseCSS(loader.data);
				dispatchEvent(new Event("CSS_Loaded"));
			} catch (e:Error) {
				dispatchEvent(new Event("CSS_ParseError"));
			}
		}
	}
}