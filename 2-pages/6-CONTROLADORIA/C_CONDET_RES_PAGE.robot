##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoCodigo}                        xpath=//div[@data-member="CD_CON_PAG"]/input



### Botoes ###
${BtnOK}                              xpath=//button[@class="btn btn-primary"]



### Diversos ###


${Alerta}                             xpath=//p[@class="notifications-item-text"]

