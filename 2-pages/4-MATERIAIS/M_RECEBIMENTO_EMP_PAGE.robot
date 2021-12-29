##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página   Recebimento de transferência entre empresas
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***


${CheckReceb}                 xpath=//button[@class="ui-button ui-widget ui-state-default ui-button-icon-only ui-label-position-default mode-edit"][@data-row="0"]
${DivEst}                     xpath=//div[@class="slick-cell b12 f12 selected"]
${CampoEst}                   xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"]
${DivDt}                      xpath=//div[@class="slick-cell b11 f11 selected"]
${CampoDt}                    xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"]
${CampoDtP}                   xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@row="0"]
${DivMov}                     xpath=//div[@class="slick-cell b14 f14 slick-last-cell selected"]
${CampoMov}                   xpath=//input[@class="ui-autocomplete-input ui-widget-content ui-buttoninput ui-corner-left"]
${CampoEstDest}               xpath=//input[@id="inp:cdEstoqueDestino"]


${CampoEstDest}                xpath=//input[@id="inp:cdEstoqueDestino"]
${BotaoConfirma}               xpath=//button[@id="btnConfirmarAplic"]

${BotaoNao}                    xpath=//li[@class='notification-buttons']//button[2]