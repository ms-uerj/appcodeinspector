package Domain
{
	
	import mx.collections.ArrayCollection;
	
	import valueObjects.*;
	
	public class Usuario extends UsuarioEntity 
	{
		public function Usuario(user:UsuarioEntity ) 
		{
			this.U_EMAIL=user.U_EMAIL;
			this.U_ID=user.U_ID;
			this.U_LOGIN=user.U_LOGIN;
			this.U_NOME=user.U_NOME;
			this.U_SENHA=user.U_SENHA;
			this.U_TIPO=user.U_TIPO;
		}
		
		override public function toString():String
		{
			return U_LOGIN;
		}
		
		public static function toUsuarioCollection(entityList:ArrayCollection):ArrayCollection
		{
			var userArrayCol:ArrayCollection=new ArrayCollection();
			
			if(entityList.length!=0)
			{
				for each(var user:UsuarioEntity in entityList)
				{
					userArrayCol.addItem(new Usuario(user));
				}
			}
			
			return userArrayCol;
		}
	}
}