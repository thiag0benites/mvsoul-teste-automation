##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Alteracao de Tipo de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAgenda}    xpath=//input[@id="inp:cdAgenda"]
${CampoInicio}    xpath=//input[@id="inp:hrInicio"]
${CampoFim}       xpath=//input[@id="inp:hrFim"]
${CampoMotivo}    xpath=//textarea[@id="inp:parametro_dsMotivo"]
${BotaoPesquisar}    xpath=//button[@id="parametro_btnPesquisar"]
${BotaoConfirma}    xpath=//button[@data-member="BTN_CONFIRMA"]
${MensagemToast2}    xpath=//div[@class="notifications-item-body"]
${BotaoOk}        xpath=//button[@class="btn btn-primary"]
${Desbloqueio}    xpath=//input[@id="tp0pera_ac"]
