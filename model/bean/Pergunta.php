<?php
class Pergunta
{
	private $id;
	private $idRodada;
	private $nomePergunata;
	private $pergunta;
	private $metaPergunta;
	private $tipo;

	public function setId($id)
	{
		$this->id = $id;
	}
	public function setIdRodade($idRodada)
	{
		$this->idRodada = $idRodada;
	}
	public function setComandoPergunta($comandoPergunta)
	{
		$this->comandoPergunta = $comandoPergunta;
	}
	
	public function getId()
	{
		return $this->id;
	}
	public function getIdAssunto()
	{
		return $this->idAssunto;
	}
	public function getComandoPergunta()
	{
		return $this->comandoPergunta;
	}
}