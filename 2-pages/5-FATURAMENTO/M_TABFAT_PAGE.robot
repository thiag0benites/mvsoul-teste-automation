##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Tabela de Faturamento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${MensagemToast}    xpath=//p[@class="notifications-item-text"]
${CampoTip}       xpath=//input[@id="undefined_ac"]
${CampoDescricao}    xpath=//input[@class="editor-text mode-edit"]
