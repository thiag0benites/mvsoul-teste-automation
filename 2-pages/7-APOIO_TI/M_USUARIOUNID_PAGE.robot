##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_USUARIOUNID
${MensagemToast}                            xpath=//p[@class="notifications-item-text"]
${CampoEditavel}                            xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"]
