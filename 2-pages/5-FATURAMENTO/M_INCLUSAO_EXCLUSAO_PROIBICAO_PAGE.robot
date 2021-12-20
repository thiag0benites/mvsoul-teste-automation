##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de  Inclusao e Exclusao de Proibição
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoProced}                            xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@maxlength="8"]
${BotaoConvenios}                        xpath=//button[@id="inp:cbTodosConvenios_btn"]
${DivConvenio}                            xpath=//div[@data-member="CD_CONVENIO"][@class="ui-text"]
${CampoConvenio}                         xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${BotaoPlanos}                            xpath=//button[@id="inp:cbTodosPlanos_btn"]
${BotaoSetores}                           xpath=//button[@id="inp:cbTodosSetores_btn"]
${CampoDtIni}                             xpath=//input[@id="inp:dtInicialProibicao"]
${CampoDtFim}                             xpath=//input[@id="inp:dtFimProibicao"]
${CampoJustificativa}                     xpath=//input[@id="inp:justificativa"]

${BotaoIncluir}                           xpath=//button[@id="btnIncluirProibicao"]






