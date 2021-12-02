##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de O_GERIVE - Geração do Inventário
${codigoContagem}               xpath=//div[@data-name='cdContagem']//input
${buttonConfirmar}              xpath=//button[@data-name='butCdEstoque']
${buttonSim}                    xpath=//li[@class='notification-buttons']//button[2]
${notificacao}                  xpath=//p[@class="notifications-item-text"]