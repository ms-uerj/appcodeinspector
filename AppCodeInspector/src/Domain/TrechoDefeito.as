package Domain
{
	import mx.collections.ArrayCollection;
	
	import valueObjects.ItemTaxonomiaEntity;
	import valueObjects.TrechoDefeitoEntity;

	public class TrechoDefeito extends TrechoDefeitoEntity
	{
		public var classificacao:String;
		
		public function TrechoDefeito(trechoDefeito:TrechoDefeitoEntity )
		{
			this.Conteudo=trechoDefeito.Conteudo;
			this.D_ID=trechoDefeito.D_ID;
			this.IT_ID=trechoDefeito.IT_ID;
			this.Explicacao=trechoDefeito.Explicacao;
			if(trechoDefeito.itemTax!=null)
				this.classificacao=trechoDefeito.itemTax.Nome;

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