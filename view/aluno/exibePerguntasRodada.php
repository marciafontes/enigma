<?php
include_once '../../helpers/Import.php';

Import::controller('ControllerPergunta');
Import::controller('ControllerResposta');
Import::controller('ControllerSubmissao');

Security::restrictByPerfil();

$controllerPergunta = new ControllerPergunta();
$controllerResposta = new ControllerResposta();
$controllerSubmissao = new ControllerSubmissao();


$request = new Request();

$controllerSubmissao->cadastrarSubmissaoResposta($request);

//$controllerPergunta->securiryPerguntaRespondida($request);

$controllerPergunta->showFeedbackPergunta($request);

?>
<div id="messageFeedback">
</div>

<div class="avatar">
<?php
	$idPergunta = $controllerPergunta->showPerguntaByRodadaAssunto($request);
	$request->add('idPergunta', $idPergunta);
?>
</div>

<form method="post" action="index.php?page=exibePerguntasRodada" name="formRespostas">
	<fieldset>
		<legend>
			<strong>Alternativas:</strong>
		</legend>
		<?php $controllerResposta->showRespostaByIdPergunta($request);?><br>
		<input type="submit" value="Responder" name="submissaoResposta" />
		<input type="hidden" name="idPergunta" value="<?php echo $request->get('idPergunta'); ?>">
		<input type="hidden" name="idJogo" value="<?php echo $request->get('idJogo'); ?>">
		<input type="hidden" name="idRodada" value="<?php echo $request->get('idRodada'); ?>">
	</fieldset>
</form>

<script type="text/javascript" src="../template/js/codes.exibePerguntasRodada.js"></script>