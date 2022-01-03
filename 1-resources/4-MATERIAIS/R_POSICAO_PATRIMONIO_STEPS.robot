##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/R_POSICAO_PATRIMONIO_PAGE.robot

*** Keywords ***
Parametros a serem preenchidos
    Wait Until Element Is Visible    ${BtnImprimir}        180



Validacao do Relatorio
    Click no item             ${BtnImprimir}
    Sleep    7
    Switch Window     NEW
    Sleep    5
    Capture Page Screenshot
