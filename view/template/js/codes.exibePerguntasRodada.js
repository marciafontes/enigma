$(document).ready(function(){
	
	$('input[name=submissaoResposta]').click(function(){
		
		var $resposta = $('input[name=idResposta]:checked').val();
		
		if ($resposta)
		{
			$('#messageFeedback').empty();
			
			var $pergunta = $('input[name=idPergunta]').val();
			
			$.ajax({
				type: "post",
				url: "../aluno/_feedbackResposta.php",
				data: {idResposta: $resposta, idPergunta: $pergunta},
				success: function(feedback){
					$('#messageFeedback').html(feedback);
					
					$('input[name=idResposta]').attr('disabled','disabled');
					
				},
				error: function(feedback){
					$('#messageFeedback').html('Erro n sei | ' + feedback);
				}
			});
			return false;
		}
		else
			$('#messageFeedback').html('Escolha uma Opção!');
		
		return false;
	});
});