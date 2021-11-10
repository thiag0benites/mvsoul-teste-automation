##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para consultar ordens de compra.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/O_CANSOL_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher o Código |${codigo}|
    Sleep            1
    Preencher campo  ${inputCodigo}  ${codigo}            

Clicar no botão de Autorização 
    Sleep            1
    Click Element    ${btnAprovacao}


Clicar no botão de Não Autorizar 
    Sleep            1
    Click Element    ${btnNaoAutorizar}

Clicar no Botao |${nomeBtn}|
    IF    '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    120
        Sleep    1
        Click Element    ${btnOk}
        Sleep    1
    END    


    
          

