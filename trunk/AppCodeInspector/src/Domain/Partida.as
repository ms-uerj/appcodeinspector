package Domain
{
	import mx.collections.ArrayCollection;
	
	import spark.formatters.DateTimeFormatter;
	
	import valueObjects.PartidaEntity;

	public class Partida extends PartidaEntity
	{
		private var dateFormarter:DateTimeFormatter = new DateTimeFormatter();
		
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
			var nivel:String ="";
			
			switch(P_NIVEL_DIFICULDADE)
			{
				case 1:
					nivel="Fácil";
					break;
				case 2:
					nivel="Intermediário";
					break;
				case 3:
					nivel="Difícil";
					break;
				case 4:
					nivel="Misto";
					break;
			}
			
			dateFormarter.dateTimePattern = "dd/MM/yy HH:mm";
			return "Partida "+dateFormarter.format(P_DATA)+" Nível "+nivel;
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