<?php
include_once '../../helpers/Import.php';
Import::dao('AbstractDao');
Import::bean('Assunto');

class AssuntoDao extends AbstractDao
{
	public function selectAllAssunto()
	{
		$this->sql = 'SELECT idassunto id,nome,conteudo 
						FROM assunto';
		$this->prepare();
		//$this->setValue($assuntos->getId());
		
		return $this->fetchAllStmtObject('Assunto');
		
	}
}

?>