package Domain
{
	import valueObjects.UserRankEntity;
	import mx.collections.ArrayCollection;

	public class UserRank extends UserRankEntity
	{
		public function UserRank(userRank:UserRankEntity ) 
		{
			this.Email=userRank.Email;
			this.Nome=userRank.Nome;
			this.Pontos=userRank.Pontos;
		}
		
		override public function toString():String
		{
			return Nome+" "+Pontos;
		}
		
		public static function toUserRankCollection(entityList:ArrayCollection):ArrayCollection
		{
			var userRankArrayCol:ArrayCollection=new ArrayCollection();
			
			if(entityList.length!=0)
			{
				for each(var userRank:UserRankEntity in entityList)
				{
					userRankArrayCol.addItem(new UserRank(userRank));
				}
			}
			
			return userRankArrayCol;
		}
	}
}