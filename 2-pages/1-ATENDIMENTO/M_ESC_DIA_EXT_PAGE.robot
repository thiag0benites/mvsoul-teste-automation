##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoConvenio}                      xpath=//input[@id="inp:cdConvenio"]




${DivEspecialidade}                    xpath=//div[@data-member="CD_ESPECIALID"]/input


### Botoes ###
${btnGerarSped}                       xpath=//button[@data-member="BTN_CONFIRMA"]
${btnOK}                              xpath=//li[@class="notification-buttons"]/button




### Diversos ###


${Alerta}                             xpath=//p[@class="notifications-item-text"]
${BuscaLinha}                         xpath=//div[contains(@class,"ItemVermelho")]/div




