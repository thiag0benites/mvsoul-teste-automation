##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de O_CANORD.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/O_CANORD_PAGE.robot

*** Variable ***

*** Keywords ***

Pesquisar por uma ordem de compras |${codigo}|
    Sleep            1
    Preencher campo  ${inputCodigo}  ${codigo}            

Clicar no Botao |${nomeBtn}|
    IF    '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    120
        Sleep    1
        Click Element    ${btnOk}
        Sleep    1
    ELSE IF    '${nomeBtn}' == 'Produtos'
        Wait Until Element Is Visible    ${btnProdutos}    120
        Sleep    1
        Click Element    ${btnProdutos}
        Sleep    1
    ELSE IF    '${nomeBtn}' == 'Cancelar Qtde. Pendente'
        Wait Until Element Is Visible    ${btnCancelarQtdePendente}    120
        Sleep    1
        Click Element    ${btnCancelarQtdePendente}
        Sleep    1
    END    


    
          

