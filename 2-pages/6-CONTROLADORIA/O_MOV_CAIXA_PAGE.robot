##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela lacamento fechamento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BtnCaixa}                    xpath=//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${DescricaoCaixa}              xpath=//div[@title="CAIXA CVDS"]
${BtnOk}                       xpath=//button[@id="btok"]
${MenuDocumentos}              xpath=//a[@id="CV_TAB_CANVAS_MOVIMENTACAO_CV_TAB_CANVAS_MOVIMENTACAO_tab1"]
${BtnCheck}                    xpath=//div[@id="CV_DOCUMENTOS_grdDocCaixa"]/div[4]/div[3]/div/div[1]/div[1]
${BtnContaCorrente}            xpath=//div[@id="CV_DOCUMENTOS_cdConCorDoc"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${DescricaoBanco}              xpath=//div[@title="BANCO SANTANDER"]   
${BtnDeposito}                 xpath=//button[@id="CV_DOCUMENTOS_btnTransfDocCc"]    
${MsgValidacao}                xpath=//div[@class="notifications-item"]
${MenuAplicacaoDireta}         xpath=//a[@id="CV_TAB_CANVAS_MOVIMENTACAO_CV_TAB_CANVAS_MOVIMENTACAO_tab3"]
${BtnLancamento}               xpath=//div[@id="CV_APLICACAO_DIRETA_cdLanConcorDesp"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${DescricaoConta}              xpath=//div[@class="slick-cell b0 f0 slick-last-cell selected"]//div[@title="RECEBIMENTO DE CONVENIOS"]
${Valor}                       xpath=//input[@id="inp:vlDespesa"]
${Data}                        xpath=//div[@data-member="DT_DESPESA_DIRETA"]
${BtnSetor}                    xpath=//div[@id="CV_APLICACAO_DIRETA_cdSetorDespesa"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${SetorFiltro}                 xpath=//div[@title="AMBULANCIA"]
${BtnMotivo}                   xpath=//div[@id="CV_APLICACAO_DIRETA_cdMotivoLctoDespesa"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${FiltroMotivo}                xpath=//div[@title="OUTRAS PEQUENAS DESPESAS"]
${BtnEfetuarPgto}              xpath=//button[@id="CV_APLICACAO_DIRETA_btnEfetuaPagamento"]
${BtnSim}                      xpath=//li[@class="notification-buttons"]//button[@class="btn btn-primary"][1]     
${MsgMostrada}                 xpath=//p[@class="notifications-item-text"]   
${BtnOk2}                      xpath=//button[@class="btn btn-primary"]
${BtnLimpar}                   xpath=//a[@title="Limpar"]