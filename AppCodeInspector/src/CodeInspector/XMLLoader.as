package CodeInspector
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.utils.ObjectUtil;

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
		
		public function LoadWS(_req:ArrayCollection):void
		{
			
			/*try {
				*/
			//"<?xml version='1.0' encoding='utf-8' ?><data><pergunta erro='1'><span class='questao_facil'>Pertunta Nº 1<br/><br/>-RF2: O sistema deve solicitar a informação necessária para inserir um item<br/>bibliográfico: título, autor, data, lugar, assunto, resumo, número, editor,<br/>periódico, congresso.<br/><br/>-RF3: O sistema deve dar uma mensagem de alerta quando o usuário tentar<br/>inserir um item incompleto. Essa mensagem deve questionar o usuário se ele<br/>deseja cancelar a operação, completar a informação ou concluir a inserção<br/>como está.<br/><br/><span class='erro'><a href='event:erro'>Qual informação é necessária para possibilitar uma inserção incompleta?</a></span></span></pergunta><pergunta erro='1'><span class='questao_facil'>Pertunta Nº 1<br/><br/>-RF2: O sistema deve solicitar a informação necessária para inserir um item<br/>bibliográfico: título, autor, data, lugar, assunto, resumo, número, editor,<br/>periódico, congresso.<br/><br/>-RF3: O sistema deve dar uma mensagem de alerta quando o usuário tentar<br/>inserir um item incompleto. Essa mensagem deve questionar o usuário se ele<br/>deseja cancelar a operação, completar a informação ou concluir a inserção<br/>como está.<br/><br/><span class='erro'><a href='event:erro'>Qual informação é necessária para possibilitar uma inserção incompleta?</a></span></span></pergunta></data>"
		    //"<?xml version='1.0' encoding='utf-8' ?><data><pergunta erro='1'><span class='questao_facil'>Pertunta Nº 1<br/><br/>-RF2: O sistema deve solicitar a informação necessária para inserir um item<br/>bibliográfico: título, autor, data, lugar, assunto, resumo, número, editor,<br/>periódico, congresso.<br/><br/>-RF3: O sistema deve dar uma mensagem de alerta quando o usuário tentar<br/>inserir um item incompleto. Essa mensagem deve questionar o usuário se ele<br/>deseja cancelar a operação, completar a informação ou concluir a inserção<br/>como está.<br/><br/><span class='erro'><a href='event:erro'>Qual informação é necessária para possibilitar uma inserção incompleta?</a></span></span></pergunta><pergunta erro='1'><span class='questao_facil'>Pergunta Nº 2<br/><br/>–RNF1: O sistema deve fornecer os resultados tão rápido quanto possível.<br/><span class='erro'><a href='event:erro'>Tão rápido quanto possível?</a></span></span></pergunta></data>"
				//trace(_req);
				//var xmlteste:String = "<?xml version='1.0' encoding='utf-8' ?><data><pergunta erro='1'><span class='questao_facil'>Pertunta Nº 1<br/><br/>-RF2: O sistema deve solicitar a informação necessária para inserir um item<br/>bibliográfico: título, autor, data, lugar, assunto, resumo, número, editor,<br/>periódico, congresso.<br/><br/>-RF3: O sistema deve dar uma mensagem de alerta quando o usuário tentar<br/>inserir um item incompleto. Essa mensagem deve questionar o usuário se ele<br/>deseja cancelar a operação, completar a informação ou concluir a inserção<br/>como está.<br/><br/><span class='erro'><a href='event:erro'>Qual informação é necessária para possibilitar uma inserção incompleta?</a></span></span></pergunta><pergunta erro='1'><span class='questao_facil'>Pergunta Nº 2<br/><br/>–RNF1: O sistema deve fornecer os resultados tão rápido quanto possível.<br/><span class='erro'><a href='event:erro'>Tão rápido quanto possível?</a></span></span></pergunta></data>";//_req.replace( String.fromCharCode(65279), "" ) ;
			//	data = new XML(_req);
				
				lenXML = _req.length;//data.children().length();
				
				//faz um parse do XML em arrays
				for (i=0; i < lenXML; i++) {
					perguntas.push(_req[i]);
				}
			//	dispatchEvent(new Event("XML_Loaded"));
			/*} catch (e:Error) {//caso o parse dê erro...
				dispatchEvent(new Event("XML_ParseError"));
			}*/
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