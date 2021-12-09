##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoData}      xpath=//input[@id="inp:dtPedido"]
${DivAtendimento}    xpath=//div[@data-member="CD_ATENDIMENTO"]
${DivExame}       xpath=//div[@data-member="CD_EXA_RX"]
### Botoes ###
### Diversos ###
