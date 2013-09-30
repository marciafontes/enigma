<?php
class Pergunta
{
	private $id;
	private $idRodada;
	private $nomePergunta;
	private $pergunta;
	private $metaPergunta;
	private $tipo;

	public function setId($id)
	{
		$this->id = $id;
	}
	public function setIdRodada($idRodada)
	{
		$this->idRodada = $idRodada;
	}
	public function setNomePergunta($nomePergunta)
	{
		$this->nomePergunta = $nomePergunta;
	}

	public function setPergunta($pergunta)
	{
		$this->pergunta = $pergunta;
	}

	public function setMetaPergunta($metaPergunta)
	{
		$this->metaPergunta = $metaPergunta;
	}

	public function setTipo($tipo)
	{
		$this->tipo = $tipo;
	}

	public function getId()
	{
		return $this->id;
	}

	public function getIdRodada()
	{
		return $this->idRodada;
	}

	public function getNomePergunta()
	{
		return $this->nomePergunta;
	}

	public function getPergunta()
	{
		return $this->pergunta;
	}

	public function getmetaPergunta()
	{
		return $this->metaPergunta;
	}
	public function getTipo()
	{
		return $this->tipo;
	}
}