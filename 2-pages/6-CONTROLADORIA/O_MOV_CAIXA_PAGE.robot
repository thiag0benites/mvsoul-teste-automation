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