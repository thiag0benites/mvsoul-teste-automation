##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Pendencias de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAtendimento}    xpath=//input[@id="inp:cdAtendimento"]
${CampoTipo}      xpath=//input[@id="inp:cdTipoPendencia"]
${CampoObs}       xpath=//textarea[@id="inp:dsObs"]
${MensagemToast}    xpath=//p[@class="notifications-item-text"]
