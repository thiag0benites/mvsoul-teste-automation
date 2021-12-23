##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina C_MOV_CARDAPIO
${btnPesquisar}    xpath=//i[@class="mv-basico-pesquisar"]
${cpSolicitacao}    xpath=//input[@id="#frames26"]
${btnExecutar}    xpath=//i[@class="mv-basico-confirmar"]
${btnReimprimir}    xpath=//*[@id="btnReimprimirMov"]
${btnImprimir}    xpath=//button[@id="frames29"]
${cpAtendimento}    xpath=//*[@id="grdMovCardapio"]/div[4]/div[3]/div/div/div[2]/div
${cpPaciente}     xpath=//*[@id="#frames10"]
