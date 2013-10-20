<?php
?>
<div id="content">
	<div class="hi-icon-wrap hi-icon-effect-6">
		<?php 
			Import::controller('ControllerJogo');
			$controllerJogo = new ControllerJogo();
			$controllerJogo->showAllJogo();
		?>
	</div>
</div>