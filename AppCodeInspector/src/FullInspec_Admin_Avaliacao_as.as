
import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.rpc.events.ResultEvent;

import valueObjects.PartidaEntity;
import valueObjects.QuestaoEntity;
import valueObjects.UsuarioEntity;



private var PartidaEmAvaliacao:PartidaEntity;
private var QuestaoEmAvaliacao:QuestaoEntity

protected function lst_ArtefatosAval_clickHandler(event:MouseEvent):void
{
	if (lst_ArtefatosAval.selectedItem!=null) 
	{
		QuestaoEmAvaliacao = lst_ArtefatosAval.selectedItem as QuestaoEntity;
		txa_ArtefatoAval.text = QuestaoEmAvaliacao.Q_XML;
		GetUsersByArtefatoResult.token = ws_InspectorX.getUsersByArtefato(QuestaoEmAvaliacao.Q_ID);
	}
}

protected function lst_InspetoresAval_clickHandler(event:MouseEvent):void
{
	if (lst_InspetoresAval.selectedItem!=null) 
	{
		var user:UsuarioEntity  = lst_InspetoresAval as UsuarioEntity;
		GetTrechoRespostasResult.token = ws_InspectorX.getTrechoRespostas(user.U_ID, PartidaEmAvaliacao.P_ID, QuestaoEmAvaliacao.Q_ID);
	}
}

public function setAvaliacaoInicializacaoPadrao(partida:PartidaEntity):void
{
	PartidaEmAvaliacao=partida;
	lbl_PartidaAvalIdVar.text = partida.P_ID.toString();
	lbl_PartidaAvalDataVar.text = partida.P_DATA.toString();
	
	GetArtefatosAvalResult.token = ws_InspectorX.getArtefatos(partida.P_ID);
}



protected function GetArtefatosAvalResult_resultHandler(e:ResultEvent):void
{
	var questoesList:ArrayCollection = ArrayCollection(e.result);
	lst_ArtefatosAval.dataProvider=questoesList;
}

protected function GetUsersByArtefatoResult_resultHandler(e:ResultEvent):void
{
	var inspetoresList:ArrayCollection = ArrayCollection(e.result);
	lst_InspetoresAval.dataProvider=inspetoresList;
}

protected function GetTrechoRespostasResult_resultHandler(e:ResultEvent):void
{
	var trechosResposta:ArrayCollection = ArrayCollection(e.result);

	dgr_TrechoSelecionadoAval.dataProvider=trechosResposta;
}