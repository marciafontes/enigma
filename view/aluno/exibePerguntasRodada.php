<?php
include_once '../../helpers/Import.php';
Import::controller('ControllerRodada');
Import::controller('ControllerPergunta');
Import::controller('ControllerResposta');

$controllerRodada = new ControllerRodada();
$controllerPergunta = new ControllerPergunta();
$controllerResposta = new ControllerResposta();

$request = new Request();

$controllerPergunta->securiryPerguntaRespondida($request);

$controllerPergunta->showFeedbackPergunta($request);
?>
<div class="avatar">
	<?php $controllerPergunta->showPerguntaByRodadaAssunto($request); ?>
	<div class = "balaodialogo">
		<?php //echo($quiz->rows[$qNum]["nome"])?> </br></br>
		<?php //echo($quiz->rows[$qNum]["conteudo"])?>  </br></br>
	</div>
	<div class = "balaodialogo">
		<?php //echo($quiz->rows[$qNum]["pergunta"])?>
	</div>

	<table align="center" style="boder:0; width:400px; height:100px">
		<tr>
		<td style="background:lightgreen; color:#000"> a) <?php //echo '<a href="index.php?page=exibeJogo&id=',$id,'&a=1">',$quiz->rows[$qNum]["op1"],'</a>'; ?></td>
		</tr><tr>
		<td style="background:lightblue; color:#000"> b) <?php //echo("<a href=\"index.php?page=exibeJogo&id=$id&a=2\">".$quiz->rows[$qNum]["op2"]."</a>")?></td>
		</tr><tr> 
		<td style="background:lightgray; color:#000"> c) <?php //echo("<a href=\"index.php?page=exibeJogo&id=$id&a=3\">".$quiz->rows[$qNum]["op3"]."</a>")?></td>
		</tr><tr>
		<td style="background:yellow; color:#000"> d) <?php //echo("<a href=\"index.php?page=exibeJogo&id=$id&a=4\">".$quiz->rows[$qNum]["op4"]."</a>")?></td>
		</tr><tr>
		 <td style="background:red; color:#000"> e) <?php //echo("<a href=\"index.php?page=exibeJogo&id=$id&a=5\">".$quiz->rows[$qNum]["op5"]."</a>")?></td>
		</tr>
	</table> 
</div>