##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela M_CONFCONS - Confirmação do Consumo do OPME
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_CONFCONS_PAGE.robot

*** Variable ***

*** Keywords ***
Gerar a lista para confirmacao de consumo
    Wait Until Element Is Visible    ${btnCancelConf}    180
    Click Element    ${btnCancelConf}
    Sleep    2
    Clicar no botao [Executar]
    Sleep    1
Realizar o cancelamento do consumo
    Wait Until Element Is Visible   ${btnCheckBox}    120
    Click no Item    ${btnCheckBox}
    Sleep    3
    Click no Item    ${btnCancelConsumo}
