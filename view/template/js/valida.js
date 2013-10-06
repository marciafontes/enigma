function validaRadio()
{
  if (document.formRespostas.resposta.checked == false)
  {
    alert('Por favor, selecione o Tipo de Endereço.');
    return false;
  }
  return true;
}

function radio_preenchido(nome){
    var opcoes = document.getElementsByName(nome);
    for(var i=0;i<opcoes.length;i++){
        if(opcoes[i].checked){
            return true;
        }
    }
    return false;
};
function enviado(){
    if(radio_preenchido('resposta')){
        alert('OK!');
        return true;
    }else{
        alert('Selecione pelo Menos uma Opção, meu filhô!');
        window.location = 'exibePerguntasRodada.php';
        return false;
    }
};