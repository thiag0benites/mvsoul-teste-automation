##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
 


### Botoes ###
${btnConfirmar}                    xpath=//button[@data-member="BTN_CONFIRMAR"]
${btnNao}                          xpath=//button[@class="btn btn-primary"][contains(text(),"Não")]


### Diversos ###
${Alerta}                          xpath=//div[@class="notifications-item-body"]/p






