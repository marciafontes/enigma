<?php
include_once '../../helpers/Import.php';
Import::dao ( 'AbstractDao' );

class SubmissaoDao extends AbstractDao
{
	public function saveSubmissao()
	{
		$this->sql = 'INSERT INTO ngm_submissao (id_subimissao, ngm_usuario_id_usuario, ngm_resposta_id_resposta, ngm_pergunta_id_pergunta,ngm_equipe_id_equipe, datahora, solucaosubmetida) VALUES (?,?,?, ?,?,NOW, ?)';
	}
}
?>