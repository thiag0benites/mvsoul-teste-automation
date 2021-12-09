##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para consultar ordens de compra.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/O_CANSOL_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher o Codigo |${codigo}|
    Sleep            1
    Preencher campo  ${inputCodigo}  ${codigo}            

Clicar no botao de Autorizacao 
    Sleep            1
    Click Element    ${btnAprovacao}


Clicar no botao de Nao Autorizar 
    Sleep            1
    Click Element    ${btnNaoAutorizar}

Clicar no Botao |${nomeBtn}|
    IF    '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    120
        Sleep    1
        Click Element    ${btnOk}
        Sleep    1
    END    


Validar Codigo |${validacaoCodigo}|
    Validar Informacao Item  ${campoDescricaoSetor}    ${validacaoCodigo} 


Validar Mensagem |${mensagemNaoAprovacao}|
    Validar Informacao Item  ${campoDescricaoSetor}    ${mensagemNaoAprovacao}



    
          

