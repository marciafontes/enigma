<?php

class Assunto
{
	private $id;
	private $nome;
	private $conteudo;
	
	public function setId($id)
	{
		$this->id = $id;
	}
	
	public function setNome($nome)
	{
		$this->nome = $nome;
	}
	
	public function setConteudo($conteudo)
	{
		$this->conteudo = $conteudo;
	}
	
	public function getId()
	{
		return $this->id;
	}
	
	public function getNome()
	{
		return $this->nome;
		
	}
	
	public function getConteudo()
	{
		return $this->conteudo;
	}
}
?>