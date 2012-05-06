package Domain
{
	import valueObjects.TaxonomiaEntity;
	import mx.collections.ArrayCollection;

	public class Taxonomia extends TaxonomiaEntity
	{
		public function Taxonomia(tax:TaxonomiaEntity )
		{
			this.ID=tax.ID;
			this.Nome=tax.Nome;
		}
		
		override public function toString():String
		{
			return Nome;
		}
		
		public static function toTaxonomiaCollection(entityList:ArrayCollection):ArrayCollection
		{
			var taxonomiaArrayCol:ArrayCollection=new ArrayCollection();
			
			if(entityList.length!=0)
			{
				for each(var tax:TaxonomiaEntity in entityList)
				{
					taxonomiaArrayCol.addItem(new Taxonomia(tax));
				}
			}
			
			return taxonomiaArrayCol;
		}
	}
}