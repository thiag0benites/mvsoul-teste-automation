##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Elementos e metodos da tela de M_VAL_PROCED
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${ElementoMsgRecebida}                            xpath=//p[@class='notifications-item-text']
${ProcedimetosDivLinha}                           xpath=//div[@class='ui-widget-content slick-row even active']
${ProcedimentosXpathIframe}                       xpath=//iframe[@class="iframe-visibility-hidden"]
${ProcedimentosXpathCellCodProced}                xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${ProcedimentosXpathCellCodProcedInput}           xpath=//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
${ProcedimentosXpathCellProcedimento}             xpath=//div[@class='slick-cell b1 f1 selected']
${ProcedimentosXpathCellTable}                    xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${ProcedimentosXpathCellTableInput}               xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
${ProcedimentosXpathCellVigencia}                 xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width']
${ProcedimentosXpathCellVigenciaInput}            xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width active editable']//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
${ProcedimentosXpathCellVlHonorario}              xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${ProcedimentosXpathCellAtivo}                    xpath=//div[@class='slick-cell b7 f7 slick-last-cell selected ui-fixed-width']
${ProcedimentosXpathCellVlHonorarioInput}         xpath=//input[@class='editor-text mode-edit']
${ProcedimentosXpathCellVlOperacional}            xpath=//div[@class='slick-cell b5 f5 selected ui-fixed-width']
${ProcedimentosXpathCellVlOperacionalInput}       xpath=//input[@class='editor-text mode-edit']
${ProcedimentosXpathCellVlTotal}                  xpath=//div[@class='slick-cell b6 f6 selected ui-fixed-width']
${ProcedimentosXpathBtnSalvar}                    xpath=//li[@id='tb-record-save']/a[@title='Salvar']
${ProcedimentosXpathDivMsg}                       xpath=//div[@class='notifications-item']//p
${ProcedimentosXpathDivMsgBtnOk}                  xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//button[text()='OK']
${ProcedimetosXpathIMsgAlerta}                    xpath=//i[@class='mv-basico-alerta']
${ProcedimetosXpathPMsgTextAlert}                 xpath=//p[@class='notifications-item-text']
${ProcedimentosIdBtnApagar}                       xpath=//*[@id="tb-record-remove"]/a
${ProcedimentosCssDivLinhasResultadoBusca}        css=div[class^='ui-widget-content slick-row']
${ProcedimentosxPathSpanRegistros}                xpath=//div[@class='row ui-statusbar']/span[@class='rec col-md-2']
${btnSalvar}                                      xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
