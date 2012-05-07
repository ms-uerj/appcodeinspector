package Domain
{
	import mx.collections.ArrayCollection;
	
	import valueObjects.QuestaoEntity;

	public class Questao extends QuestaoEntity
	{
		public function Questao(questao:QuestaoEntity )
		{
			this.Q_ID=questao.Q_ID;
			this.Q_Nivel_Dificuldade=questao.Q_Nivel_Dificuldade;
			this.Q_nome=questao.Q_nome;
			this.Q_TEMPO=questao.Q_TEMPO;
			this.Q_XML=questao.Q_XML;
		}
		override public function toString():String
		{
			return "Questao "+Q_ID;
		}
		
		public static function toQuestaoCollection(entityList:ArrayCollection):ArrayCollection
		{
			var questaoArrayCol:ArrayCollection=new ArrayCollection();
			
			if(entityList.length!=0)
			{
				for each(var q:QuestaoEntity in entityList)
				{
					questaoArrayCol.addItem(new Questao(q));
				}
			}
			
			return questaoArrayCol;
		}
		
		public static function toIdCollection(entityList:ArrayCollection):ArrayCollection
		{
			var questaoArrayCol:ArrayCollection=new ArrayCollection();
			
			if(entityList.length!=0)
			{
				for each(var q:QuestaoEntity in entityList)
				{
					var qId:int = q.Q_ID;
					questaoArrayCol.addItem(qId);
				}
			}
			
			return questaoArrayCol;
		}
	}
}