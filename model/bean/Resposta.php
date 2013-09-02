<?php
class Resposta
{
	private $idResposta;
	private $idPergunta;
	private $resposta;
	private $feedback;
	private $respostaCorreta;
	private $pontuacao;
	
	public function setIdResposta($idResposta)
	{
		$this->idResposta = $idResposta;
	}
	
	public function setIdPergunta($idPergunta)
	{
		$this->idPergunta = $idPergunta;
	}
	
	public function setResposta($resposta)
	{
		$this->resposta = $resposta;
	}
	
	public function setRespostaCorreta()
	{
		
	}
	
	public function setPontuacao($pontuacao)
	{
		$this->pontuacao = $pontuacao;
	}
	
	public function getIdResposta()
	{
		return $this->idResposta;
	}
	
	public function getIdPergunta()
	{
		return $this->idPergunta;
	}
	
	public function getResposta()
	{
		return $this->resposta;
	}
	
	public function getFeedback()
	{
		return $this->feedback;
	}
	
	public function getRespostaCorreta()
	{
		return $this->respostaCorreta;
	}
	public function getPontuaaco()
	{
		return $this->pontuacao;
	}
	
	
	
}
?>