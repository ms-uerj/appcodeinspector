package CodeInspector
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class XMLLoader extends EventDispatcher
	{
		//Variáveis para carregar e parsear o XML
		private var loader:URLLoader;
		private var data:XML;
		private var i:uint;
		private var lenXML:uint;
		
		//Variavel para guardar o XML
		public var perguntas:Array = [];
		
		public function XMLLoader()
		{
			loader = new URLLoader;
		}
		
		public function Load(_req:String):void {
			loader.load(new URLRequest(_req));
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,secError);
			loader.addEventListener(IOErrorEvent.IO_ERROR,ioError);
			loader.addEventListener(Event.COMPLETE,Loaded);
		}
		
		private function ioError(e:Event):void {
			dispatchEvent(new Event("XML_IOError"));
		}
		
		private function secError(e:Event):void {
			dispatchEvent(new Event("XML_SecurityError"));
		}
		
		private function Loaded(e:Event):void {
			try {
				data = new XML(loader.data);
				//para checar o tamanho do xml
				lenXML = data.children().length();
				
				//faz um parse do XML em arrays
				for (i=0; i < lenXML; i++) {
					perguntas.push(data.children()[i]);
				}
				dispatchEvent(new Event("XML_Loaded"));
			} catch (e:Error) {//caso o parse dê erro...
				dispatchEvent(new Event("XML_ParseError"));
			}
		}
	}
}