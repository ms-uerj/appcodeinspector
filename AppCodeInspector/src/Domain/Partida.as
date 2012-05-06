package Domain
{
	import valueObjects.PartidaEntity;
	import mx.collections.ArrayCollection;

	public class Partida extends PartidaEntity
	{
		public function Partida(partida:PartidaEntity )
		{
			this.P_DATA=partida.P_DATA;
			this.P_ID=partida.P_ID;
			this.P_JOGO_MODO=partida.P_JOGO_MODO;
			this.P_NIVEL_DIFICULDADE=partida.P_NIVEL_DIFICULDADE;
			this.P_PONTUACAO_TOTAL=partida.P_PONTUACAO_TOTAL;
		}
		override public function toString():String
		{
			return "Partida "+P_DATA.toString();
		}
		
		public static function toPartidaCollection(entityList:ArrayCollection):ArrayCollection
		{
			var partidaArrayCol:ArrayCollection=new ArrayCollection();
			
			if(entityList.length!=0)
			{
				for each(var partida:PartidaEntity in entityList)
				{
					partidaArrayCol.addItem(new Partida(partida));
				}
			}
			return partidaArrayCol;
		}
	}
}