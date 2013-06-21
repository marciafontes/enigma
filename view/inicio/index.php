<!DOCTYPE html>
<html> 
<head> 
<?php 
include_once '../../helpers/Import.php';
Import::template('head');
?>
</head> 
<body> 
	<?php
		if (isset($_GET['page']))
			Import::view('inicio/' . $_GET['page']);
		else
			echo 'erro';
	?>
</body>
</html>