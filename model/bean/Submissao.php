<?php
class Submissao
{
	private $id;
	private $idUsuario;
	private $idResposta;
	private $idPergunta;
	private $idEquipe;
	private $dataHora;
	private $solucaoSubmetida;
	
	public function getId()
	{
		return $this->id;
	}
	
	public function setId($id)
	{
		$this->id = $id;
	}
	
	public function getIdUsuario()
	{
		return $this->idUsuario;
	}
	
	public function setIdUsuario($idUsuario)
	{
		$this->idUsuario = $idUsuario;
	}
	
	public function getIdResposta()
	{
		return $this->idResposta;
	}
	
	public function setIdResposta($idResposta)
	{
		$this->idResposta = $idResposta;
	}
	
	public function getIdPergunta()
	{
		return $this->idPergunta;
	}
	
	public function setIdPergunta($idPergunta)
	{
		$this->idPergunta = $idPergunta;
	}
	
	public function getIdEquipe()
	{
		return $this->idEquipe;
	}
	
	public function setIdEquipe($idEquipe)
	{
		$this->idEquipe = $idEquipe;
	}
	
	public function getDataHora()
	{
		return $this->dataHora;
	}
	
	public function setDataHora($dataHora)
	{
		$this->dataHora = $dataHora;
	}
	
	public function getSolucaoSubmetida()
	{
		return $this->solucaoSubmetida;
	}
	
	public function setSolucaoSubmetida($solucaoSubmetida)
	{
		$this->solucaoSubmetida = $solucaoSubmetida;
	}
	
}
?>