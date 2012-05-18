import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.controls.textClasses.TextRange;
import mx.core.UIComponent;
import mx.states.*;


public var PontosTotal:int;
public var PartidaAtualId:int;


//Variáveis globais
public static var NivelDificuldade:int;
public static var TipoArtefato_Id:int;
public static var UsuarioTipoID:int = 0;
public static var QuestaoSelectedText:TextRange;
public static var RespostasSelecionadas:ArrayCollection = new ArrayCollection();

public static var PerguntaAtualIndex:int = 0;


protected function btn_VoltarCadastro_clickHandler(event:MouseEvent):void
{
	this.currentState = "Login";
	txt_Email.text="";
	txtUsuario.text="";
	txtSenha.text="";
}














