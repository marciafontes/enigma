<?php
include_once '../../helpers/Import.php';
Import::dao ( 'AbstractDao' );

class SubmissaoDao extends AbstractDao
{
	public function insertSubmissaoPergunta(Submissao $submissao)
	{
		$this->sql = 'INSERT INTO ngm_submissao
							(ngm_usuario_id_usuario, ngm_resposta_id_resposta, ngm_pergunta_id_pergunta, datahora) 
						VALUES
							(?,?,?,NOW());';
		
		$this->prepare();
		
		$this->setValue($submissao->getIdUsuario());
		$this->setValue($submissao->getIdResposta());
		$this->setValue($submissao->getIdPergunta());
		
		return $this->execute();
	}
}
?>