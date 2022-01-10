##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/R_EXTRATO_PAGE.robot

*** Keywords ***
Validacao do Relatorio
    Click no item             ${BtnImprimir}
    Sleep    7
    Switch Window     NEW
    Sleep    5
    Capture Page Screenshot