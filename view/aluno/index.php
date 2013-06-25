<!DOCTYPE html>
<html> 
<head> 
<?php 
include_once '../../helpers/Import.php';
Import::template('head');
?>
</head> 
<body> 
	<div id="topo"></div>
	<div id="corpo">
		<?php Import::view('aluno/menu')?>
		<?php
			if (isset($_GET['page']))
				Import::view('aluno/' . $_GET['page']);
			else
				echo 'erro';
		?>
		<div id="rodape">
			<p align="center"> @2013 </p>
		</div>
	</div>
</body>
</html>