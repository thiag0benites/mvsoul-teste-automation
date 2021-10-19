##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da página de Agendamento cirurgico
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de Agendamento cirurgico
${btnAgendar}     xpath=//button[@data-member='BTN_AGENDAR']
${inputCentroCirurgico}    xpath=//div[2]/div/div[4]/div/div/form/div/fieldset/div/div[11]/div[1]/input
${inputSalaCirurgica}    xpath=//input[@name='cdSalCir']
${inputCirurgia}    xpath=//input[@name='cdCirurgia']
${inputConvenio}    xpath=//div[2]/div/div[4]/div/div/form/div/fieldset/div/div[10]/div[3]/input
${inputPlano}     xpath=//div[2]/div/div[4]/div/div/form/div/fieldset/div/div[10]/div[5]/input
${inputPrestadorCirurgiao}    xpath=//input[@name='cdPrestadorCirurgiao']
${inputMedicoAssociado}    xpath=//div[2]/div/div[4]/div/div/form/div/fieldset/div/div[21]/div[1]/input
