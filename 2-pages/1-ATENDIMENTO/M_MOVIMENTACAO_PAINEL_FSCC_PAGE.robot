##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página deMovimentação Painel Centro Cirúrgico
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${DtIni}          xpath=//input[@id="inp:dtInicio"]
${DtF}            xpath=//input[@id="inp:dtFim"]
${BtnPesquisar}    xpath=//button[@id="btnPesquisar"]
