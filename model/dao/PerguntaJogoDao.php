<?php

include_once '../../helpers/Import.php';
Import::dao('AbstractDao');
Import::bean('PerguntaJogo');

class PerguntaJogoDao extends AbstractDao
{
	public function selectAllPerguntaJogo()
	{
		$this->sql = 'SELECT id_pergunta id, idassunto, pergunta, op1, op2, op3, op4, op5, cop
							FROM pergunta';
		
		$this->prepare();
		$this->fetchAllStmtObject('PerguntaJogo');
	}
	
	public function showPerguntaByIdRodadaAssunto()
	{
		$this->sql = 'SELECT A.nome,A.conteudo,P.pergunta,P.op1,P.op2,P.op3,P.op4,P.op5
							 FROM assunto A, pergunta P
									JOIN ON (A.idassunto=P.idassunto)
								  WHERE A.idassunto =?';
	}
}
?>