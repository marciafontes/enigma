<?php 
include_once '../../helpers/Import.php';
Import::controller('ControllerUsuario');

$controllerUsuario = new ControllerUsuario();
$controllerUsuario->acessoUsuario();
?>
<div class="wrapper">
		<div class="content">
				<div id="form_wrapper" class="form_wrapper">
					<form class="register">
						<h3>Cadastro</h3>
						<div class="column">
							<div>
								<label>Primeiro Nome:</label>
								<input type="text" />
								<span class="error">Contem um erro</span>
							</div>
							<div>
								<label>Último Nome:</label>
								<input type="text" />
								<span class="error">Contem um erro</span>
							</div>
							<div>
								<label>Website:</label>
								<input type="text" value="http://"/>
								<span class="error">Contem um erro</span>
							</div>
						</div>
						<div class="column">
							<div>
								<label>Nome de Usuário:</label>
								<input type="text"/>
								<span class="error">Contém um erro</span>
							</div>
							<div>
								<label>E-mail:</label>
								<input type="text" />
								<span class="error">Contém um erro</span>
							</div>
							<div>
								<label>Senha:</label>
								<input type="password" />
								<span class="error">Contém um erro</span>
							</div>
						</div>
						<div class="bottom">
							<!--<div class="remember">
								<input type="checkbox" />
								<span>Send me updates</span>
							</div>-->
							<input type="submit" value="Register" />
							<a href="index.html" rel="login" class="linkform">Você já possui uma conta? Acesse aqui!</a>
							<div class="clear"></div>
						</div>
					</form>
					<form class="login active" action="index.php?page=loginUsuario" method="post">
						<h3>Acesso ao Usuario</h3>
						<div>
							<label>Usuario:</label>	
							<input tabindex="1" type="text" name="usuario"/>
							<span class="error">Contem um erro</span>
						</div>
						<div>
							<label>Senha: <a href="forgot_password.html" rel="forgot_password" class="forgot linkform">Esqueceu sua senha?</a></label>
							<input tabindex="2" type="password" name="senha" />
							<span class="error">Contem um erro</span>
						</div>
						<div class="bottom">
							<div class="remember"><input type="checkbox" /><span>Continuar conectado</span></div>
							<input type="submit" name="logarUsuario" value="Logar"></input>
							<a href="register.html" rel="register" class="linkform">Você não tem uma conta ainda? Registre-se aqui!</a>
							<div class="clear"></div>
						</div>
					</form>
					<form class="forgot_password">
						<h3>Esqueceu sua Senha</h3>
						<div>
							<label>Usuário ou Email</label>
							<input type="text" />
							<span class="error">Contém um erro</span>
						</div>
						<div class="bottom">
							<input type="submit" value="Lembrar-me"></input>
							<a href="index.html" rel="login" class="linkform">Conseguiu lembrar? Logue aqui!</a>
							<a href="register.html" rel="register" class="linkform">Não tem uma conta ainda? Registre-se aqui!</a>
							<div class="clear"></div>
						</div>
					</form>
				</div>
				<div class="clear"></div>
			</div>
		</div>