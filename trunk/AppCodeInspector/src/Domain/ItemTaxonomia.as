package Domain
{
	import valueObjects.ItemTaxonomiaEntity;
	import mx.collections.ArrayCollection;

	public class ItemTaxonomia extends ItemTaxonomiaEntity
	{
		public function ItemTaxonomia(itemTax:ItemTaxonomiaEntity )
		{
			this.Descricao=itemTax.Descricao;
			this.ID=itemTax.ID;
			this.Nome=itemTax.Nome;
			this.T_ID=itemTax.T_ID;
		}
		override public function toString():String
		{
			return Nome;
		}
		
		public static function toItemTaxonomiaCollection(entityList:ArrayCollection):ArrayCollection
		{
			var itemTaxArrayCol:ArrayCollection=new ArrayCollection();
			
			if(entityList.length!=0)
			{
				for each(var itemTax:ItemTaxonomiaEntity in entityList)
				{
					itemTaxArrayCol.addItem(new ItemTaxonomia(itemTax));
				}
			}
			
			return itemTaxArrayCol;
		}
	}
}