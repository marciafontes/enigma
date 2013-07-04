<?php
include_once '../../helpers/Import.php';
Import::action('AbstractAction');
Import::dao('RodadaDao');
Import::bean('Rodada');

class ActionRodada extends AbstractAction
{
	public function getDao()
	{
		if (!isset($this->dao))
			$this->dao = new RodadaDao();
		
		return $this->dao;
	}
	
	public function getAllRodadaByIdJogo(IRequest $request)
	{
		$rodada = new Rodada();
		
		$rodada->setIdJogo($request->get('idJogo'));
		
		return $this->getDao()->selectRodadaByIdJogo($rodada);
	}
}
?>