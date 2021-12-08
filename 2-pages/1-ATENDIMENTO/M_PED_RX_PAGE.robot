##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${campoExame}               xpath=//div[2]/div/div[2]/div/div/form/div[2]/div/div[1]/div/div/fieldset/div/div/div[4]/div[3]/div/div/div[1]/div
${campoExameInput}          xpath=//div[2]/div/div[2]/div/div/form/div[2]/div/div[1]/div/div/fieldset/div/div/div[4]/div[3]/div/div/div[1]/div/input
${campoAtendimento}         xpath=//input[@id='inp:cdAtendimento']
${campoSetorExecutante}     xpath=//div[2]/div/div[2]/div/div/form/div[1]/fieldset/div/fieldset/div/div[28]/input
${campoSetorSolic}          xpath=//div[2]/div/div[2]/div/div/form/div[1]/fieldset/div/fieldset/div/div[23]/input
${campoTecnico}             xpath=//div[2]/div/div[2]/div/div/form/div[1]/fieldset/div/fieldset/div/div[30]/input
${campoData}                xpath=//div[2]/div/div[2]/div/div/form/div[1]/fieldset/div/fieldset/div/div[10]/input[2]
${campoMedico}              xpath=//div[2]/div/div[2]/div/div/form/div[1]/fieldset/div/fieldset/div/div[20]/input
${btnSalvar}                xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${MensagemSalvar}           xpath=//p[@class="notifications-item-text"]
