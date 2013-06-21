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
								<label>Ultimo Nome:</label>
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
								<label>Nome de Usuario:</label>
								<input type="text"/>
								<span class="error">Contem um erro</span>
							</div>
							<div>
								<label>Email:</label>
								<input type="text" />
								<span class="error">Contem um erro</span>
							</div>
							<div>
								<label>Senha:</label>
								<input type="password" />
								<span class="error">Contem um erro</span>
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
					<form class="login active" action="index.php?page=validaUsuario<?php //valida_usuario.php?>" method="post">
						<h3>Acesso ao Usuario</h3>
						<div>
							<label>Usuario:</label>	
							<input type="text" name="usuario"/>
							<span class="error">Contem um erro</span>
						</div>
						<div>
							<label>Senha: <a href="forgot_password.html" rel="forgot_password" class="forgot linkform">Esqueceu sua senha?</a></label>
							<input type="password" name="senha" />
							<span class="error">Contem um erro</span>
						</div>
						<div class="bottom">
							<div class="remember"><input type="checkbox" /><span>Continuar conectado</span></div>
							<input type="submit" value="Login"></input>
							<a href="register.html" rel="register" class="linkform">Você não tem uma conta ainda? Registre-se aqui!</a>
							<div class="clear"></div>
						</div>
					</form>
					<form class="forgot_password">
						<h3>Esqueceu sua Senha</h3>
						<div>
							<label>Usuário ou Email</label>
							<input type="text" />
							<span class="error">Contem um erro</span>
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
		

		<!-- The JavaScript -->
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script type="text/javascript">
			$(function() {
					//the form wrapper (includes all forms)
				var $form_wrapper	= $('#form_wrapper'),
					//the current form is the one with class active
					$currentForm	= $form_wrapper.children('form.active'),
					//the change form links
					$linkform		= $form_wrapper.find('.linkform');
						
				//get width and height of each form and store them for later						
				$form_wrapper.children('form').each(function(i){
					var $theForm	= $(this);
					//solve the inline display none problem when using fadeIn fadeOut
					if(!$theForm.hasClass('active'))
						$theForm.hide();
					$theForm.data({
						width	: $theForm.width(),
						height	: $theForm.height()
					});
				});
				
				//set width and height of wrapper (same of current form)
				setWrapperWidth();
				
				/*
				clicking a link (change form event) in the form
				makes the current form hide.
				The wrapper animates its width and height to the 
				width and height of the new current form.
				After the animation, the new form is shown
				*/
				$linkform.bind('click',function(e){
					var $link	= $(this);
					var target	= $link.attr('rel');
					$currentForm.fadeOut(400,function(){
						//remove class active from current form
						$currentForm.removeClass('active');
						//new current form
						$currentForm= $form_wrapper.children('form.'+target);
						//animate the wrapper
						$form_wrapper.stop()
									 .animate({
										width	: $currentForm.data('width') + 'px',
										height	: $currentForm.data('height') + 'px'
									 },500,function(){
										//new form gets class active
										$currentForm.addClass('active');
										//show the new form
										$currentForm.fadeIn(400);
									 });
					});
					e.preventDefault();
				});
				
				function setWrapperWidth(){
					$form_wrapper.css({
						width	: $currentForm.data('width') + 'px',
						height	: $currentForm.data('height') + 'px'
					});
				}
				
				/*
				for the demo we disabled the submit buttons
				if you submit the form, you need to check the 
				which form was submited, and give the class active 
				to the form you want to show
				
				$form_wrapper.find('input[type="submit"]')
							 .click(function(e){
								e.preventDefault();
							 });	*/
			});
        </script>