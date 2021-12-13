##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_AVALIACAO
${campoFornecedor}                                  xpath=//input[@id='inp:cdFornecedor']
${campoQuestionario}                                xpath=//input[@id='inp:cdFormula']
${campoResposta}                                    xpath=//div[2]/div/div[2]/div/div/form/div[2]/div/div[1]/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[3]
${campoRespostaInput}                               xpath=//div[2]/div/div[2]/div/div/form/div[2]/div/div[1]/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[3]/div/input
${MensagemToast}                                    xpath=//p[@class="notifications-item-text"]   
${btnSalvar}                                        xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${campoSegundaResposta}                             xpath=//div[2]/div/div[2]/div/div/form/div[2]/div/div[1]/div/fieldset/div/div/div[4]/div[3]/div/div[3]/div[3]
${campoSegundaRespostaInput}                        xpath=//div[2]/div/div[2]/div/div/form/div[2]/div/div[1]/div/fieldset/div/div/div[4]/div[3]/div/div[3]/div[3]/div/input