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

//$controllerPergunta->securiryPerguntaRespondida($request);

//$controllerPergunta->showFeedbackPergunta($request);
?>

<html>
<body>
	<div class="avatar">
	<?php
	
	$idPergunta = $controllerPergunta->showPerguntaByRodadaAssunto ( $request );
	$request->add ( 'idPergunta', $idPergunta );
	?>
	</div>
 		<form method="post" action="index.php?page=exibePerguntasRodada" name="formRespostas">
			<fieldset>
				<legend>
					<strong>Alternativas :</strong>
				</legend>
				<?php $controllerResposta->showRespostaByIdPergunta($request);?><br>
				<input type="submit" value="Responder" name="SubmissaoResposta" />
				<input type="hidden" name="serialize" value="<?php $request;?>">
			</fieldset>
		</form>

</body>
</html>

<?php 
	//$requestResposta = new Request();

	 $controllerSubmissao->cadastrarSubmissao($request);
?>