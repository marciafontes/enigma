<?php
class Pergunta
{
	private $id;
	private $idAssunto;
	private $comandoPergunta;

	public function setId($id)
	{
		$this->id = $id;
	}
	public function setIdAssunto($idAssunto)
	{
		$this->idAssunto = $idAssunto;
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