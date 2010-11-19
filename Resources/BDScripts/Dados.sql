
insert into usuario values ('Vinicius','viramires@gmail.com','123','Vinicius')
insert into questao values (1,'<span class=''questao_facil''>
Pergunta Nº 1<br/><br/>
Aluno aluno = getAluno(''20100582711'');
<br/><br/>
if (<span class=''erro''><a href=''event:erro''>aluno.getCurso().equals(''Informatica'')</a></span>)<br/>
{<br/>
&nbsp;&nbsp;rematricularAlunoInformatica(aluno.getMatricula());<br/>
}<br/>
else<br/>
{<br/>
&nbsp;&nbsp;rematricularAluno(aluno.getMatricula());<br/>
}<br/>
<br/>
.<br/>
.<br/>
.<br/>
public Aluno getAluno(String Maricula)<br/>
{<br/>
&nbsp;&nbsp;Aluno aluno = null;<br/>
&nbsp;&nbsp;ArrayList resultado = buscaNoBanco(Maricula);<br/>
&nbsp;&nbsp;if (resultado != null)<br/>
&nbsp;&nbsp;{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;aluno.setNome((String)resultado.get(0));<br/>
&nbsp;&nbsp;&nbsp;&nbsp;aluno.setMatricula((String)resultado.get(1));<br/>
&nbsp;&nbsp;&nbsp;&nbsp;aluno.setCurso((String)resultado.get(2));<br/>
&nbsp;&nbsp;}<br/>
&nbsp;&nbsp;return aluno;<br/>
}		</span>',30)

insert into questao values (1,'<span class=''questao_facil''>
Pergunta Nº 2<br/><br/>
String Sql = null;
<br/><br/>
<span class=''erro''><a href=''event:erro''>Sql+="SELECT * FROM ";</a></span><br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TABELA_1 T1,";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TABELA_2 T2";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;WHERE ";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T1.ID_T2 = T2.ID";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND T1.DATA_INICIO = TRUNC(SYSDATE)";<br/>
</span>',30)			
	
		
insert into questao values (1,'<span class=''questao_facil''>
Pergunta Nº 3<br/><br/>
Aluno[] turma = new Aluno[10];<br/>
Aluno aluno;<br/>
for (int i = 1; i &lt;= 10; i++)<br/>
{<br/>
&nbsp;&nbsp;aluno = getProximoAluno();<br/>
&nbsp;&nbsp;if(aluno != null)<br/>
&nbsp;&nbsp;{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<span class=''erro''><a href=''event:erro''>turma[i] = aluno;</a></span><br/>
&nbsp;&nbsp;&nbsp;&nbsp;aluno.setMatriculado(true);<br/>
&nbsp;&nbsp;}<br/>
&nbsp;&nbsp;else<br/>
&nbsp;&nbsp;{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;break;<br/>
&nbsp;&nbsp;}<br/>
}
</span>',30)	

insert into questao values (2,'<span class=''questao_facil''>
Pergunta Nº 1<br/><br/>
Aluno aluno = getAluno(''20100582711'');
<br/><br/>
if (aluno.getCurso().equals(''Informatica'')<br/>
{<br/>
&nbsp;&nbsp;rematricularAlunoInformatica(aluno.getMatricula());<br/>
}<br/>
else<br/>
{<br/>
&nbsp;&nbsp;rematricularAluno(aluno.getMatricula());<br/>
}<br/>
<br/>
.<br/>
.<br/>
.<br/>
public Aluno getAluno(String Maricula)<br/>
{<br/>
&nbsp;&nbsp;Aluno aluno = null;<br/>
&nbsp;&nbsp;ArrayList resultado = buscaNoBanco(Maricula);<br/>
&nbsp;&nbsp;if (resultado != null)<br/>
&nbsp;&nbsp;{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;aluno.setNome((String)resultado.get(0));<br/>
&nbsp;&nbsp;&nbsp;&nbsp;aluno.setMatricula((String)resultado.get(1));<br/>
&nbsp;&nbsp;&nbsp;&nbsp;aluno.setCurso((String)resultado.get(2));<br/>
&nbsp;&nbsp;}<br/>
&nbsp;&nbsp;return aluno;<br/>
}		</span>',30)

insert into questao values (2,'<span class=''questao_facil''>
Pergunta Nº 2<br/><br/>
String Sql = null;
<br/><br/>
Sql+="SELECT * FROM ";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TABELA_1 T1,";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TABELA_2 T2";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;WHERE ";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T1.ID_T2 = T2.ID";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND T1.DATA_INICIO = TRUNC(SYSDATE)";<br/>
</span>',30)			
	
		
insert into questao values (2,'<span class=''questao_facil''>
Pergunta Nº 3<br/><br/>
Aluno[] turma = new Aluno[10];<br/>
Aluno aluno;<br/>
for (int i = 1; i &lt;= 10; i++)<br/>
{<br/>
&nbsp;&nbsp;aluno = getProximoAluno();<br/>
&nbsp;&nbsp;if(aluno != null)<br/>
&nbsp;&nbsp;{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;turma[i] = aluno;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;aluno.setMatriculado(true);<br/>
&nbsp;&nbsp;}<br/>
&nbsp;&nbsp;else<br/>
&nbsp;&nbsp;{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;break;<br/>
&nbsp;&nbsp;}<br/>
}
</span>',30)	


insert into questao values (3,'<span class=''questao_facil''>
Pergunta Nº 1<br/><br/>
Aluno aluno = getAluno(''20100582711'');
<br/><br/>
if (aluno.getCurso().equals(''Informatica'')<br/>
{<br/>
&nbsp;&nbsp;rematricularAlunoInformatica(aluno.getMatricula());<br/>
}<br/>
else<br/>
{<br/>
&nbsp;&nbsp;rematricularAluno(aluno.getMatricula());<br/>
}<br/>
<br/>
.<br/>
.<br/>
.<br/>
public Aluno getAluno(String Maricula)<br/>
{<br/>
&nbsp;&nbsp;Aluno aluno = null;<br/>
&nbsp;&nbsp;ArrayList resultado = buscaNoBanco(Maricula);<br/>
&nbsp;&nbsp;if (resultado != null)<br/>
&nbsp;&nbsp;{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;aluno.setNome((String)resultado.get(0));<br/>
&nbsp;&nbsp;&nbsp;&nbsp;aluno.setMatricula((String)resultado.get(1));<br/>
&nbsp;&nbsp;&nbsp;&nbsp;aluno.setCurso((String)resultado.get(2));<br/>
&nbsp;&nbsp;}<br/>
&nbsp;&nbsp;return aluno;<br/>
}		</span>',30)

insert into questao values (3,'<span class=''questao_facil''>
Pergunta Nº 2<br/><br/>
String Sql = null;
<br/><br/>
Sql+="SELECT * FROM ";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TABELA_1 T1,";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TABELA_2 T2";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;WHERE ";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T1.ID_T2 = T2.ID";<br/>
Sql+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND T1.DATA_INICIO = TRUNC(SYSDATE)";<br/>
</span>',30)			
	
		
insert into questao values (3,'<span class=''questao_facil''>
Pergunta Nº 3<br/><br/>
Aluno[] turma = new Aluno[10];<br/>
Aluno aluno;<br/>
for (int i = 1; i &lt;= 10; i++)<br/>
{<br/>
&nbsp;&nbsp;aluno = getProximoAluno();<br/>
&nbsp;&nbsp;if(aluno != null)<br/>
&nbsp;&nbsp;{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;turma[i] = aluno;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;aluno.setMatriculado(true);<br/>
&nbsp;&nbsp;}<br/>
&nbsp;&nbsp;else<br/>
&nbsp;&nbsp;{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;break;<br/>
&nbsp;&nbsp;}<br/>
}
</span>',30)	