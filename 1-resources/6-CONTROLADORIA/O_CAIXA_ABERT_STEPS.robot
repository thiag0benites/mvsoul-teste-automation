##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para abrir caixa com sucesso.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/6-CONTROLADORIA/O_CAIXA_ABERT_PAGE.robot

*** Variable ***

*** Keywords ***

Selecionar através do checkbox o caixa que será aberto
    Sleep          1
    Click no Item  ${checkboxCaixa}          

Clicar no Botao |${nomeBtn}|
    IF    '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    120
        Sleep    1
        Click Element    ${btnOk}
        Sleep    1
    ELSE IF    '${nomeBtn}' == 'Confirmar'
        Wait Until Element Is Visible    ${btnConfirmar}    30
        Sleep    1
        Click Element    ${btnConfirmar}
        Sleep    1
    END
