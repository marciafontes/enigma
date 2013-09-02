<?php
class Rodada
{
	private $id;
	private $idJogo;
	private $nomeRodada;
	private $numeroPerguntas;
	private $metaRodada;
	private $jogoId;
	private $introducao;
	private $premioRodada;
	private $feedback;
	private $assunto;
	private $conteudoAssunto;
	
	public function setId($id)
	{
		$this->id = $id;
	}
	public function setIdJogo($idJogo)
	{
		$this->idJogo = $idJogo;
	}
	public function setNomeRodada($nomeRodada)
	{
		$this->nomeRodada = $nomeRodada;
	}
	public function setNumeroPerguntas($numeroPerguntas)
	{
		$this->numeroPerguntas = $numeroPerguntas;
	}
	public function setMetaRodada($metaRodada)
	{
		$this->metaRodada = $metaRodada;
	}
	public function setJogoId($jogoId)
	{
		$this->jogoId = $jogoId;
	}
	public function setIntroducao($introducao)
	{
		$this->introducao = $introducao;
	}
	public function setPremioRodada($premioRodada)
	{
		$this->premioRodada = $premioRodada;
	}
	
	public function setFeedback($feedback)
	{
		$this->feedback = $feedback;
	}
	
	public function setAssunto($assunto)
	{
		$this->assunto = $assunto;
	}
	
	public function setConteudoAssunto($conteudoAssunto)
	{
		$this->conteudoAssunto = $conteudoAssunto;
	}
	public function getId()
	{
		return $this->id;
	}
	public function getIdJogo()
	{
		return $this->idJogo;
	}
	public function getNomeRodada()
	{
		return $this->nomeRodada;
	}
	public function getNumeroPerguntas()
	{
		return $this->numeroPerguntas;
	}
	public function getMetaRodada()
	{
		return $this->metaRodada;
	}
	public function getJogoId()
	{
		return $this->jogoId;
	}
	public function getIntroducao()
	{
		return $this->introducao;
	}
	public function getPremioRodada()
	{
		return $this->premioRodada;
	}
	
	public function getFeedback()
	{
		return $this->feedback;
	}
	
	public function getAssunto()
	{
		return $this->assunto;
	}
	
	public function getConteudoAssunto()
	{
		return $this->conteudoAssunto;
	}
	
}
?>