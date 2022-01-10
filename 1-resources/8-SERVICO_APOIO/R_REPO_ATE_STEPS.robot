##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/8-SERVICO_APOIO/R_REPO_ATE_PAGE.robot

*** Keywords ***
Parametros a serem preenchidos|${UnidadeDeInternacao}||${Convenio}|
    Preencher campo            ${CampoUnidadeDeInternacao}   ${UnidadeDeInternacao}
    Send Keys                  enter
    Preencher campo            ${CampoConvenio}               ${Convenio}
    Send Keys                  enter



Validacao do Relatorio
    Click no item             ${BtnImprimir}
    Sleep    7
    Switch Window     NEW
    Sleep    5
    Capture Page Screenshot
