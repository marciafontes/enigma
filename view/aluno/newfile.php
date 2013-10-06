<?php

include_once '../../helpers/Import.php';
Import::controller('ControllerPergunta');
Import::controller('ControllerResposta');
Import::controller('ControllerSubmissao');

Import::bean('Pergunta');

$controllerPergunta = new ControllerPergunta();
$controllerResposta = new ControllerResposta();
$controllerSubmissao = new ControllerSubmissao();


$request = new Request();
?>

<html>
<body>
	<div class="avatar">
 		<form method="post" action="index.php?page=newfile" name="formRespostas">
			<fieldset>
				<legend>
					<strong>Alternativas :</strong>
				</legend>
				Resposta:
				<input type="radio" name="resposta" value="resposta" />
		<br>
				<input type="submit" value="Responder" name="SubmissaoResposta" />
			</fieldset>
		</form>
	</div>

</body>
</html>
<?php
var_dump(new Request());
?>