##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da página Gerenciamentos de Exames
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoPedido}    xpath=//input[@id="inp:pedido"]
${Exame}          xpath=//a[@id="CV_TAB_PARAMS_CV_TAB_PARAMS_tab2"]
${BtnExame}       xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[6]
${FiltroExame}    xpath=//input[@id="#filterLov"]
${BtnFiltro}      xpath=//button[@id="btfilter"]
${BtnOk}          xpath=//button[@id="btok"]
${BtnResultado}    xpath=//button[@id="btnResultado"]
${Botao2}         xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[12]
${Linha1}         xpath=//div[@id="grdItCultura"]/div[4]/div[3]/div/div[1]/div[3]/div
${Campo1}         xpath=//input[@id="undefined_ac"]
${Linha2}         xpath=//DIV[@id="grdItCultura"]/div[4]/div[3]/div/div[2]/div[3]/div
${Linha3}         xpath=//div[@id="grdItCultura"]/div[4]/div[3]/div/div[3]/div[3]/div
${BtnGravar}      xpath=(//button[@id="btnGravarLaudo"])[2]
${MsgLida}        xpath=//p[@class="notifications-item-text"]
${LinhaCodigo}    xpath=//div[@id="grdGermesCultura"]/div[4]/div[3]/div/div/div[1]
${BtnCodigo}      xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[12]
${AreaObs}        xpath=//textarea[@id="inp:dsObservacaoGerme"]
${LinhaPaciente}    xpath=(//div[@title="309082"])[2]
${Notificacao}    xpath=//a[@class="notification-toggle"]
