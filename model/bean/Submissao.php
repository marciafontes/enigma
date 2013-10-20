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
	
	public function setId($id)
	{
		$this->id = $id;
	}
	public function setIdUsuario($idUsuario)
	{
		$this->idUsuario = $idUsuario;
	}
	public function setIdResposta($idResposta)
	{
		$this->idResposta = $idResposta;
	}
	public function setIdPergunta($idPergunta)
	{
		$this->idPergunta = $idPergunta;
	}
	public function setIdEquipe($idEquipe)
	{
		$this->idEquipe = $idEquipe;
	}
	public function setDataHora($dataHora)
	{
		$this->dataHora = $dataHora;
	}
	public function setSolucaoSubmetida($solucaoSubmetida)
	{
		$this->solucaoSubmetida = $solucaoSubmetida;
	}

	public function getId()
	{
		return $this->id;
	}
	public function getIdUsuario()
	{
		return $this->idUsuario;
	}
	public function getIdResposta()
	{
		return $this->idResposta;
	}
	public function getIdPergunta()
	{
		return $this->idPergunta;
	}
	public function getIdEquipe()
	{
		return $this->idEquipe;
	}
	public function getDataHora()
	{
		return $this->dataHora;
	}
	public function getSolucaoSubmetida()
	{
		return $this->solucaoSubmetida;
	}
}
?>