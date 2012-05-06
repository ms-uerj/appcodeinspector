package Util
{
	import mx.collections.ArrayCollection;

	public final class InspectorXUserEnum
	{
		public var type:String;

		public static const DefectCrawler:InspectorXUserEnum = new InspectorXUserEnum("DefectCrawler");
		public static const FullInspection:InspectorXUserEnum = new InspectorXUserEnum("FullInspectionProcess");
		
		public static const Inspetor:String = "Inspetor";
		public static const Moderador:String = "Moderador";
		
		public static function InspectorXEnumList():ArrayCollection {
			var inspetorXEnumUserList:ArrayCollection = new ArrayCollection();
			inspetorXEnumUserList.addItem(Inspetor);
			inspetorXEnumUserList.addItem(Moderador);
			
			return inspetorXEnumUserList;
		}
		
		public function InspectorXUserEnum(partidaTipo:String):void {
			this.type = partidaTipo;
		}
		
		public function toString():String
		{
			return type;
		}

	}
}