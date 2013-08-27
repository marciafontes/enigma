<?php
?>
<div id="content">
	<div class="hi-icon-wrap hi-icon-effect-6">
		<?php 
			Import::controller('ControllerJogo');
			$controllerJogo = new ControllerJogo();
			$controllerJogo->showAllJogo();
		?>
		<a href="index.php?page=exibeRodadas" class="hi-icon hi-icon-gamepad" title="Jogar">Jogar</a>
	</div>
</div>