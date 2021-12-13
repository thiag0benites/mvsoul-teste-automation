##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###


${CampoEspecialidade}                    xpath=//div[@data-member="CD_ESPECIALID"]/input
${CampoData}                             xpath=//div[@data-member="VDATA_AGENDA"]/input[@id="inp:vdataAgenda"]
${CampoPrestador}                        xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoEmEdicao}                         xpath=//input[@class="editor-text mode-edit"]


${DivPrestador}                          xpath=//div[@data-member="CD_PRESTADOR"][@data-row="0"]/..





### Botoes ###
${btnGerarSped}                       xpath=//button[@data-member="BTN_CONFIRMA"]
${btnOK}                              xpath=//li[@class="notification-buttons"]/button




### Diversos ###


${Alerta}                             xpath=//p[@class="notifications-item-text"]
${BuscaLinha}                         xpath=//div[contains(@class,"ItemVermelho")]/div




