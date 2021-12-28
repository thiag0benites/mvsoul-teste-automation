##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da previsao de despesas
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
${CampoDescricao}    xpath=//input[@id="inp:nmPrevisao"]
${DiaPrevisto}    xpath=//input[@id="inp:vlDiaVencimento"]
${CampoPeriocidade}    xpath=//input[@id="tpPeriodicidade_ac"]
${CampoVencimento}    xpath=//input[@id="tpVenctoNaoUtil_ac"]
${CampoValor}     xpath=//input[@id="inp:vlMoeda"]
${MesAnoInicio}    xpath=//input[@id="inp:dtInicialPrevisao"]
${MesAnoFim}      xpath=//input[@id="inp:dtFinalPrevisao"]
${BtnDoc}         xpath=//div[@id="tpDocPrev"]//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${CampoFiltroDoc}    xpath=//input[@id="#filterLov"]
${BtnFiltro}      xpath=//button[@id="btfilter"]
${BtnOk}          xpath=//button[@id="btok"]
${BtnFornecedor}    xpath=//div[@id="cdFornecedorPrev"]//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${ComboboxTipo}    xpath=//input[@id="tpProgramacao_ac"]
${ItemContabilizar}    xpath=//input[@id="snPrevisaoContabilizavel_ac"]
${PrevisaoContab}    xpath=//input[@id="tpPrevisaoContabilizavel_ac"]
${ItemVencimento}    xpath=//input[@id="tpVencimento1_ac"]
${BtnHistorico}    xpath=//div[@id="cdHistoricoPadrao"]//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${BtnPrevisao}    xpath=//button[@id="butSair"]
${LinhaSetor}     xpath=//div[@id="grdInfRateio"]/div[4]/div[3]/div/div/div[1]
${BtnOk2}         xpath=//button[@class="btn btn-primary"]
${BtnSetor}       xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${LinhaSetor2}    xpath=//div[@title="AMBULANCIA"]
${LinhaCusto}     xpath=//div[@id="grdInfRateio"]/div[4]/div[3]/div/div/div[5]
${BtnCusto}       xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]
${LinhaCompartilha}    xpath=//div[@id="grdInfRateio"]/div[4]/div[3]/div/div/div[9]
${CampoCompartilha}    xpath=//input[@class="editor-text mode-edit"]
${BtnGerar}       xpath=//button[@id="butGerar"]
${MsgUsuario}     xpath=(//p[@class="notifications-item-text"])[2]
