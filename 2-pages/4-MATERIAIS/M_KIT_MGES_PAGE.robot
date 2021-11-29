##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da página cadasto de kit
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BtnProduto}                    xpath=//div[@id="cdProduto"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${BtnFiltro}                     xpath=//button[@id="btfilter"]
${LinhaProduto}                  xpath=//div[@title="2016101401 EDMAR"]
${BtnOk}                         xpath=//button[@id="btok"]
${BtnOk2}                        xpath=//button[@class="btn btn-primary"]
${BtnSimilar}                    xpath=//input[@id="snPermiteSimilar_ac"]
${BtnProduzir}                   xpath=//input[@id="snProducao_ac"]
${ComboboxAtivo}                 xpath=//input[@id="snAtivo_ac"]
${BtnCirurgia}                   xpath=//div[@id="cdCirurgia"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${LinhaCirurgia}                 xpath=//div[@title="ABAIXAMENTO MIO TENDINOSO NO ANTEBRAÇO"]
${BtnPrestador}                  xpath=//div[@id="cdPrestador"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${LinhaPrestador}                xpath=//div[@title="ABDIAS AIRES QUEIROZ JUNIOR"]
${BtnKit}                        xpath=//div[@id="cdPadrao"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${LinhaKit}                      xpath=//div[@title="BOTA GESSADA"]
${BtnMaterial}                   xpath=//div[@id="ESTOQUE_grdItformula"]/div[4]/div[3]/div/div/div[1]//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]
${LinhaProdutos}                 xpath=//div[@title="20 bi"]
${QtdMat}                        xpath=//div[@id="ESTOQUE_grdItformula"]/div[4]/div[3]/div/div/div[3]
${QtdMat2}                       xpath=//input[@class="editor-text mode-edit"]
${BtnUnidMat2}                   xpath=//div[@id="ESTOQUE_grdItformula"]/div[4]/div[3]/div/div/div[4]
${BtnUnidMat}                    xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]
${LinhaUnidMat}                  xpath=//div[@title="MILIGRAMAS"]
${LinhaProdConsig}               xpath=//div[@id="ESTOQUE_grdItformulaConsig"]/div[4]/div[3]/div/div/div[1]
${BtnProdConsig}                 xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]
${LinhaProdConsig2}              xpath=//div[@title="ACICLOVIR CONSIGNADO"]
${LinhaProdConsig3}              xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"] 
${LinhaQtdProdConsig}            xpath=//div[@id="ESTOQUE_grdItformulaConsig"]/div[4]/div[3]/div/div/div[3]/div/.
${QtdProdutoConsig}              xpath=//input[@class="editor-text mode-edit"]