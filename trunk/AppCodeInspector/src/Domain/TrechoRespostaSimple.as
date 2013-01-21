package Domain
{
	import mx.collections.ArrayCollection;
	
	import valueObjects.TrechoDefeitoEntity;
	import valueObjects.TrechoRespostaEntity;

	public class TrechoRespostaSimple 
	{
		public var TR_ID : int;
		public var UP_ID : int;
		public var Q_ID : int;
		public var IT_ID : int;
		public var TRECHO_RESPOSTA : String;
		public var classificao : String;
		public var pontos : int;
		public var questaoDuracao : int;
		public var trModeradorAval : int;
	}
}