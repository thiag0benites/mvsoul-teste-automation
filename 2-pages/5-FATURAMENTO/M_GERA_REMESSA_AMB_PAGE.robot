##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela Criar Remessas Ambulatoriais
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BtnConvenio}                    xpath=//div[@id="CV_TAB_PADRAO_cdConvenio"]//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${FiltroCo}                       xpath=//input[@id="#filterLov"]
${BtnFiltro}                      xpath=//button[@id="btfilter"]
${BtnOk}                          xpath=//button[@id="btok"]
${BtnPlano}                       xpath=//div[@id="CV_TAB_PADRAO_cdConPla"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${LinhaPlano}                     xpath=//div[@title="CONTINENTS"]
${BtnOrigem}                      xpath=//div[@id="CV_TAB_PADRAO_cdOriAte"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${DataInicial}                    xpath=//input[@id="inp:dtInicial"]
${DataFinal}                      xpath=//input[@id="inp:dtFinal"]
${Combobox}                       xpath=//input[@id="CV_TAB_PADRAO_tpAtendimento_ac"]
${BtnPesquisar}                   xpath=//button[@id="CV_TAB_PADRAO_btnPesquisa"]
${MsgLida}                        xpath=//p[@class="notifications-item-text"]
${Notificacao}                    xpath=//a[@class="notification-toggle"]
${BtnCriaRemessa}                 xpath=//button[@id="btnCriaRemessa"]
${CampoCompetencia}               xpath=//input[@id="inp:dtCompetencia"]
${DataRemessa}                    xpath=//input[@id="inp:dtInicio"]      
${DataTermino}                    xpath=//input[@id="inp:dtTermino"] 
${BtnRetorna}                     xpath=//button[@id="btnRetorna"]            