<?php
class Usuario
{
	private $id = null;
	private $ngmFormacaoIdFormacao = null;
	private $ngmAvatarIdAvatar = null;
	private $ngmPapeluserIdPapeluser = null;
	private $usuario = null;
	private $senha = null;
	private $nome = null;
	private $sobrenome = null;
	private $email = null;
	private $sexo = null;
	private $datanasc = null;
	private $celular = null;
	private $fone = null;
	private $cidade = null;
	private $estado = null;
	private $pais = null;
	private $endereço = null;
	private $bairro = null;
	private $cep = null;
	private $rg = null;
	private $cpf = null;
	private $facebook = null;
	private $google = null;
	private $outros = null;
	private $skype = null;
	private $blog = null;
	private $twitter = null;
	private $site = null;
	
	public function getId(){
		return $this->id;
	}
	
	public function setId($id){
		$this->id = $id;
	}
	
	public function getNgmFormacaoIdFormacao(){
		return $this->ngmFormacaoIdFormacao;
	}
	
	public function setNgmFormacaoIdFormacao($ngmFormacaoIdFormacao){
		$this->ngmFormacaoIdFormacao = $ngmFormacaoIdFormacao;
	}
	
	public function getNgmAvatarIdAvatar(){
		return $this->ngmAvatarIdAvatar;
	}
	
	public function setNgmAvatarIdAvatar($ngmAvatarIdAvatar){
		$this->ngmAvatarIdAvatar = $ngmAvatarIdAvatar;
	}
	
	public function getNgmPapeluserIdPapeluser(){
		return $this->ngmPapeluserIdPapeluser;
	}
	
	public function setNgmPapeluserIdPapeluser($ngmPapeluserIdPapeluser){
		$this->ngmPapeluserIdPapeluser = $ngmPapeluserIdPapeluser;
	}
	
	public function getUsuario(){
		return $this->usuario;
	}
	
	public function setUsuario($usuario){
		$this->usuario = $usuario;
	}
	
	public function getSenha(){
		return $this->senha;
	}
	
	public function setSenha($senha){
		$this->senha = $senha;
	}
	
	public function getNome(){
		return $this->nome;
	}
	
	public function setNome($nome){
		$this->nome = $nome;
	}
	
	public function getSobrenome(){
		return $this->sobrenome;
	}
	
	public function setSobrenome($sobrenome){
		$this->sobrenome = $sobrenome;
	}
	
	public function getEmail(){
		return $this->email;
	}
	
	public function setEmail($email){
		$this->email = $email;
	}
	
	public function getSexo(){
		return $this->sexo;
	}
	
	public function setSexo($sexo){
		$this->sexo = $sexo;
	}
	
	public function getDatanasc(){
		return $this->datanasc;
	}
	
	public function setDatanasc($datanasc){
		$this->datanasc = $datanasc;
	}
}
?>