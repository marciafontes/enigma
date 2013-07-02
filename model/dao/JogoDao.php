<?php
include_once '../../helpers/Import.php';

Import::dao('AbstractDao');
Import::bean('Jogo');

class JogoDao extends AbstractDao
{
	public function selctAllJogo()
	{
		$this->sql = 'SELECT j.id_jogo id, j.jogo, j.descricao, j.nrodada numeroRodadas, 
								j.metajogo metaJogo, j.premiofinal premioFinal
						FROM ngm_jogo j';
		
		$this->prepare();
		
		return $this->fetchAllStmtObject('Jogo');
	}
}
?>