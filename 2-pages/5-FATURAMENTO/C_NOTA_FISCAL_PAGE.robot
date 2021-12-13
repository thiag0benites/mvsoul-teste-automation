##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página Nota Fiscal
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${MensagemToast}    xpath=//p[@class="notifications-item-text"]
${CampoNota}      xpath=//input[@id="inp:nrIdNotaFiscal"]
${CampoDescricao}    xpath=//input[@class="editor-text mode-edit"]
