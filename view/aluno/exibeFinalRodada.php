<?php 
//Deve-se reponder todas as questoes antes da congratulação. Então, checa-se que realmente foi finalizado o teste
 if(isset($_SESSION["completed"])){ 
    if($_SESSION["completed"]=="1"){ 
	
?> 
<head> 
<title>Parabens!</title> 
</head> 
<body> 
<h1>Parab&eacute;ns!!!</h1> 
<h5>Voce finalizou o quiz em <?php echo($_SESSION["trys"]) ?> tentativas! 
<br/> 
<a href="sistema.php?page=rodadas">Tente de novo</a> 
</body> 
</html> 
<?php 
//Se nao foi respondida as questões então volte e responda! 
    } 
    else{ 
        header("location: sistema.php?page=rodadas"); 
    } 
} 
else{ 
    header("location: sistema.php?page=rodadas"); 
} 