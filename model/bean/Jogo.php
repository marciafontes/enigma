<?php
class Jogo
{
	private $id;
	private $jogo;
	private $descricao;
	private $numeroRodadas;
	private $metaJogo;
	private $premioFinal;
	
	public function getId()
	{
		return $this->id;
	}
	public function getJogo()
	{
		return $this->jogo;
	}
	public function getDescricao()
	{
		return $this->descricao;
	}
	public function getNumeroRodadas()
	{
		return $this->numeroRodadas;
	}
	public function getMetaJogo()
	{
		return $this->metaJogo;
	}
	public function getPermioFinal()
	{
		return $this->premioFinal;
	}
	
	public function setId($id)
	{
		$this->id = $id;
	}
	public function setJogo($jogo)
	{
		$this->jogo = $jogo;
	}
	public function setDescricao($descricao)
	{
		$this->descricao = $descricao;
	}
	public function setNumeroRodadas($numeroRodadas)
	{
		$this->numeroRodadas = $numeroRodadas;
	}
	public function setMetaJogo($metaJogo)
	{
		$this->metaJogo = $metaJogo;
	}
	public function setPermioFinal($premioFinal)
	{
		$this->premioFinal = $premioFinal;
	}
}
?>