##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_USU_MULTI_EMPRESA
${campoUsuario}             xpath=//div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset/div/div/div[4]/div[3]/div/div/div[3]
${campoUsuarioInput}        xpath=//div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset/div/div/div[4]/div[3]/div/div/div[3]/div/input
${campoEmpresa}             xpath=//div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset/div/div/div[4]/div[3]/div/div/div[1]/div/input
${notificacao}              xpath=//p[@class="notifications-item-text"]
${buttonAdicionar}          xpath=//li[@id='tb-record-add']//a