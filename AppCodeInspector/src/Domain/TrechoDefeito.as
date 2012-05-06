package Domain
{
	import valueObjects.TrechoDefeitoEntity;
	import mx.collections.ArrayCollection;

	public class TrechoDefeito extends TrechoDefeitoEntity
	{
		public function TrechoDefeito(trechoDefeito:TrechoDefeitoEntity )
		{
			this.Conteudo=trechoDefeito.Conteudo;
			this.D_ID=trechoDefeito.D_ID;
			this.IT_ID=trechoDefeito.IT_ID;
			this.Explicacao=trechoDefeito.Explicacao;
		}
		
		override public function toString():String
		{
			return Conteudo;
		}
		public static function toTrechoDefeitoCollection(entityList:ArrayCollection):ArrayCollection
		{
			var trechoDefeitoArrayCol:ArrayCollection=new ArrayCollection();
			
			if(entityList.length!=0)
			{
				for each(var trecho:TrechoDefeitoEntity in entityList)
				{
					trechoDefeitoArrayCol.addItem(new TrechoDefeito(trecho));
				}
			}
			
			return trechoDefeitoArrayCol;
		}
	}
}