##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Prescrição Padrão
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoEdit}            xpath=//input[@class="editor-text mode-edit"]
${CampoMedico}          xpath=//div[@data-member="CD_PRESTADOR"]/..
${BotaoLovEdit}         xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${BotaoLovTpObjeto}     xpath=//div[@id="cdObjeto"]/button   
${CampoEsquema}         xpath=//div[@data-member="CD_TIP_ESQ"]/..
${CampoItem}            xpath=//div[@data-member="CD_TIP_PRESC"]/..
${CampoQuant}           xpath=//div[@data-member="QT_ITPRE_PAD"]/..
${CampoFrequencia}      xpath=//div[@data-member="CD_TIP_FRE"]/..