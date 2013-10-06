<?php

class PerguntaJogo
{
	private $id;
	private $idAssunto;
	private $pergunta;
	private $op1;
	private $op2;
	private $op3;
	private $op4;
	private $op5;
	private $cop;
	
	public function setId($id)
	{
		$this->id = $id;
	}
	
	public function setIdAssunto($idAssunto)
	{
		$this->idAssunto = $idAssunto;
	}
	
	public function setPergunta($pergunta)
	{
		$this->pergunta = $pergunta;
	}
	
	public function setOp1($op1)
	{
		$this->op1 = $op1;
	}
	
	public function setOp2($op2)
	{
		$this->op2 = $op2;
	}
	
	public function setOp3($op3)
	{
		$this->op3 = $op3;
	}
	
	public function setOp4($op4)
	{
		$this->op4 = $op4;
	}
	
	public function setOp5($op5)
	{
		$this->op5 = $op5;
	}
	
	public function setCop($cop)
	{
		$this->cop = $cop;
	}
	
	public function getId()
	{
		return $this->id;
	}
	
	public function getIdAssunto()
	{
		return $this->idAssunto;
	}
	
	public function getPergunta()
	{
		return $this->pergunta;
	}
	
	public function getOp1()
	{
		return $this->op1;
	}
	
	public function getOp2()
	{
		return $this->op2;
	}
	
	public function getOp3()
	{
		return $this->op3;
	}
	
	public function getOp4()
	{
		return $this->op4;
	}
	
	public function getOp5()
	{
		return $this->op5;
	}
	
	public function getCop()
	{
		return $this->cop;
	}
	
	
}
?>