##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###

${CampoAlmoxarifado}               xpath=//div[@data-member="DSP_DS_ESTOQUE2"][@title="ALMOXARIFADO"]
${CampoEfedrina}                   xpath=//div[@data-member="DS_PRODUTO"]
${CampoAllegra}                    xpath=//div[@data-member="DS_PRODUTO"][@title="ALLEGRA 180MG COMP"]
${CampoLote1}                      xpath=//div[@data-member="CD_LOTE"]/..
${CampoLote2}                      xpath=//div[@data-member="CD_LOTE"][@data-row="1"]/..
${CampoQtdReservada1}              xpath=//div[@data-member="QT_MOVIMENTACAO"]/..
${CampoQtdReservada2}              xpath=//div[@data-member="QT_MOVIMENTACAO"][@data-row="1"]/..
${CampoSaidaDoRelatorio}           xpath=//div[@data-member="TP_SAIDA"]/input
${CampoFiltro}                     xpath=//input[@id="#filterLov"]
${CampoEditavel}                   xpath=//input[@class="editor-text mode-edit"]



${DivLoteM}                        xpath=//div[@title="LOTEM"]
${DivLoteP}                        xpath=//div[@title="LOTEP"]


### Botoes ###

${BtnEstoque}                      xpath=//div[@id="cdEstoque"]/button
${BtnKitASerProduzido}             xpath=//div[@id="cdKit"]/button
${BtnCodDoProduto}                 xpath=//button[@data-member="BTN_CD_PRODUTO"]
${BtnCompoEmEdicao}                xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${BtnAdicionar}                    xpath=//a[@title="Adicionar"]
${BtnImprimirComprovante}          xpath=//button[@id="btnImprimir"]
${BtnImprimir}                     xpath=//button[@data-member="BTN_IMPRIMIR"][@data-block="COMUM"]
${BtnFiltro}                       xpath=//button[@id="btfilter"]
${Btnok}                           xpath=//button[@id="btok"]





### Diversos ###
${Alerta}                          xpath=//p[@class="notifications-item-text"]

${ValidaLimparAMassa}              xpath=//div[@id="circBtnCONTROLETRATAMENTO_SLTC"]/div[2][text()="Cálculo não Selecionado"]


