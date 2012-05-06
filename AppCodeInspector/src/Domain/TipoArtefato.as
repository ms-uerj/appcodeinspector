package Domain
{
	import valueObjects.TipoArtefatoEntity;
	import mx.collections.ArrayCollection;

	public class TipoArtefato extends TipoArtefatoEntity
	{
		public function TipoArtefato(tipoArtefato:TipoArtefatoEntity )
		{
			this.TA_DESCRICAO=tipoArtefato.TA_DESCRICAO;
			this.TA_ID=tipoArtefato.TA_ID;
			this.TA_NOME=tipoArtefato.TA_NOME;
		}
		
		override public function toString():String
		{
			return TA_NOME;
		}
		
		public static function toTipoArtefatoCollection(entityList:ArrayCollection):ArrayCollection
		{
			var tipoArtefatoArrayCol:ArrayCollection=new ArrayCollection();
			
			if(entityList.length!=0)
			{
				for each(var tArtefato:TipoArtefatoEntity in entityList)
				{
					tipoArtefatoArrayCol.addItem(new TipoArtefato(tArtefato));
				}
			}
			
			return tipoArtefatoArrayCol;
		}
	}
}