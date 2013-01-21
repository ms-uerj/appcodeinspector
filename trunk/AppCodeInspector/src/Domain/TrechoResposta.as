package Domain
{
	import mx.collections.ArrayCollection;
	
	import valueObjects.TrechoDefeitoEntity;
	import valueObjects.TrechoRespostaEntity;

	public class TrechoResposta extends TrechoRespostaEntity
	{
	
		public function TrechoResposta(trechoRes:TrechoRespostaEntity )
		{
			this.TRECHO_RESPOSTA = trechoRes.TRECHO_RESPOSTA;
			this.IT_ID = trechoRes.IT_ID;
			this.Q_ID = trechoRes.Q_ID;
			this.TR_ID = trechoRes.TR_ID;
			this.UP_ID = trechoRes.UP_ID;
			this.classificao = trechoRes.classificao;
		}
		
		override public function toString():String
		{
			return TRECHO_RESPOSTA;
		}
		
		public static function toTrechoRespostaCollection(entityList:ArrayCollection):ArrayCollection
		{
			var trechoRespostaArrayCol:ArrayCollection=new ArrayCollection();
			
			if(entityList.length!=0)
			{
				for each(var trecho:TrechoRespostaEntity in entityList)
				{
					trechoRespostaArrayCol.addItem(new TrechoResposta(trecho));
				}
			}
			return trechoRespostaArrayCol;
		}
	}
}