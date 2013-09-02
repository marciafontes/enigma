<?php
include_once '../../helpers/Import.php';
Import::dao('AbstractDao');

class RodadaDao extends AbstractDao
{
	public function selectRodadaByIdJogo(Rodada $rodada)
	{
		$this->sql = 'SELECT rodada.id_rodada id, rodada.ngm_jogo_id_jogo idJogo, rodada.nomerodada nomeRodada
						FROM ngm_rodada rodada
						WHERE rodada.ngm_jogo_id_jogo=?';
		
		$this->prepare();
		
		$this->setValue($rodada->getIdJogo());
		
		return $this->fetchAllStmtObject('Rodada');
	}
	
	public function selectAllRodada()
	{
		$this->sql = 'SELECT id_rodada,ngm_jogo_id_jogo,nomerodada, nperguntas,
								 metarodada, jogoid, introducao, premiorodada, 
									feedback, assunto,conteudoAssunto
										 FROM ngm_rodada';
		
	}
}
?>