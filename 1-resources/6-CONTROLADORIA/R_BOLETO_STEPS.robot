##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/R_BOLETO_PAGE.robot

*** Keywords ***
Validacao do Relatorio
    Wait Until Element Is Visible    ${BtnImprimir}    120
    Click no item                    ${BtnImprimir}
    Sleep    7
    Switch Window     NEW
    Sleep    5
    Capture Page Screenshot