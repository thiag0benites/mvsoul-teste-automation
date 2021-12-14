##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Catalogo dos Fornecedores
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
 
*** Variable ***


${LovFor}                            xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${DivProd}                           xpath=//div[@class="slick-cell b2 f2 selected ui-fixed-width"]
${CampoProd}                         xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"]
${DivUnid}                           xpath=//div[@class="slick-cell b4 f4 selected ui-fixed-width"]
${CampoUnid}                         xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"]
${DivValor}                          xpath=//div[@class="slick-cell b5 f5 selected ui-fixed-width"]
${DivValidade}                       xpath=//div[@class="slick-cell b6 f6 slick-last-cell selected ui-fixed-width"]
${CampoValor}                        xpath=//input[@class="editor-text mode-edit"]
${CampoValidade}                     xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"]

