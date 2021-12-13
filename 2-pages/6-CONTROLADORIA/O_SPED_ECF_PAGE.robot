##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoDataInicial}                   xpath=//input[@id="inp:dtInicial"]
${CampoDataFinal}                     xpath=//input[@id="inp:dtFinal"]



### Botoes ###
${btnGerarSped}                       xpath=//button[@data-member="BTN_CONFIRMA"]
${btnOK}                              xpath=//li[@class="notification-buttons"]/button




### Diversos ###


${Alerta}                             xpath=//p[@class="notifications-item-text"]




