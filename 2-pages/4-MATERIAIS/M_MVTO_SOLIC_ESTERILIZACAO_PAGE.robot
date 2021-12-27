##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoSetorResponsavelEntrega}    xpath=//input[@id="inp:cdSetorResponsavelEntrada"]
${CampoSetorDaEntrega}    xpath=//div[@data-member="CD_SETOR_ENTREGA"][@data-block="SOLICITACAO_CME"]/input
${CampoColaboradorDaEntrega}    xpath=//input[@id="inp:cdUsuarioEntrega"]
${CampoAvisoDeCirurgia}    xpath=//div[@data-member="CD_AVISO_CIRURGIA"][@data-block="SOLICITACAO_CME"]/input
${CampoComposicao}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${DivComposicao}    xpath=//div[@class="ui-text"][@data-member="CD_KIT"][@data-row="0"]/..
### Botoes ###
${btnNovo}        xpath=//button[@data-member="BTN_NOVO"]
### Diversos ###
${Alerta}         xpath=//div[@class="notifications-item-body notification-item-no-title"]/p
