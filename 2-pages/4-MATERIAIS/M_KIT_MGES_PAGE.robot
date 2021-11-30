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

${QtdMat3}                       xpath=//input[@class="editor-text mode-edit"][@dir="ltr"]

${BtnUnidMat2}                   xpath=//div[@id="ESTOQUE_grdItformula"]/div[4]/div[3]/div/div/div[4]

${BtnPadrao}                    xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]
#${BtnUnidMat}                    xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]

${LinhaUnidMat}                  xpath=//div[@title="MILIGRAMAS"]
${LinhaProdConsig}               xpath=//div[@id="ESTOQUE_grdItformulaConsig"]/div[4]/div[3]/div/div/div[1]

#${BtnProdConsig}                 xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]

${LinhaProdConsig2}              xpath=//div[@title="ACICLOVIR CONSIGNADO"]
${LinhaProdConsig3}              xpath=//div[@id="ESTOQUE_grdItformulaConsig"]/div[4]/div[3]/div/div/div[1]/div
${LinhaQtdProdConsig}            xpath=//div[@id="ESTOQUE_grdItformulaConsig"]/div[4]/div[3]/div/div/div[3]/div/.



${LinhaUnidProdutoConsig}        xpath=//div[@id="ESTOQUE_grdItformulaConsig"]/div[4]/div[3]/div/div/div[4]

#${BtnUnidProdutoConsig}          xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]

${MenuEquipamento}               xpath=//a[@id="DETALHES_DETALHES_tab1"]
${LinhaEquipamento}              xpath=//div[@id="EQUIPAMENTOS_grdKitEquip"]/div[4]/div[3]/div/div/div[1]

#${BtnEquipamento}                xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]

${LinhaFiltroEquipamento}        xpath=//div[@title="AFASTADOR COOBS"]
${LinhaQtdEquipamento}           xpath=//div[@id="EQUIPAMENTOS_grdKitEquip"]/div[4]/div[3]/div/div/div[3]


${MenuSangueDerivados}           xpath=//a[@id="DETALHES_DETALHES_tab2"]
${LinhaSangueDerivados}          xpath=//div[@id="SANGUE_grdKitSangue"]/div[4]/div[3]/div/div/div[1]

#${BtnSangueDerivados}            xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]

${LinhaFiltroSangueDer}          xpath=//div[@title="*"]
${LinhaQtdSangueDer}             xpath=//div[@id="SANGUE_grdKitSangue"]/div[4]/div[3]/div/div/div[3]


${MenuProcedimento}              xpath=//a[@id="DETALHES_DETALHES_tab3"]
${LinhaProcedimento}             xpath=//div[@id="PROCEDIMENTO_grdKitProFat"]/div[4]/div[3]/div/div/div[1]

#${BtnProcedimento}               xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]

${LinhaFiltroProc}               xpath=//div[@title=" (POR 12 HORAS), EXCETO PÓS-OPERATÓRIO IMEDIATO ATÉ 24 HORAS"]
${LinhaQtdProc}                  xpath=//div[@id="PROCEDIMENTO_grdKitProFat"]/div[4]/div[3]/div/div/div[3]
${MenuObservacao}                xpath=//a[@id="DETALHES_DETALHES_tab4"]
${CampoObservacao}               xpath=//textarea[@id="inp:observacao"]
${MenuCaixaCirurgica}            xpath=//a[@id="DETALHES_DETALHES_tab5"]
${LinhaCaixaCirurgica}           xpath=//div[@id="CX_CIRURGICA_grdItcaixaCirurgica"]/div[4]/div[3]/div/div/div[1]

#${BtnCaixaCirurgica}             xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]

${LinhaFiltroCaixa}              xpath=//div[@title="AFASTADOR CARDIACO"]  
${LinhaQtdCaixa}                 xpath=//div[@id="CX_CIRURGICA_grdItcaixaCirurgica"]/div[4]/div[3]/div/div/div[3]
${MenuRouparia}                  xpath=//a[@id="DETALHES_DETALHES_tab6"]
${CampoObsRouparia}              xpath=//textarea[@id="inp:dsRouparia"]
${MenuExame}                     xpath=//a[@id="DETALHES_DETALHES_tab7"]
${LinhaExame}                    xpath=//div[@id="EXAME_LABORATORIAL_grdFormulaExameLaboratorial"]/div[4]/div[3]/div/div/div[1]

#${BtnExame}                      xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]

${LinhaFiltroExame}              xpath=//div[@title="11 - DEOXYCORTICOSTERONA"]
${LinhaSetor}                    xpath=//div[@id="EXAME_LABORATORIAL_grdFormulaExameLaboratorial"]/div[4]/div[3]/div/div/div[3]

#${BtnSetor}                      xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"] 

${LinhaFiltroExame2}             xpath=//div[@title="LAB DE ANATOMIA E PATOLOGIA"]    
${LinhaQtdExame}                 xpath=//div[@id="EXAME_LABORATORIAL_grdFormulaExameLaboratorial"]/div[4]/div[3]/div/div/div[5]/div  
${MenuExameImagem}               xpath=//a[@id="DETALHES_DETALHES_tab8"]
${LinhaExameImagem}              xpath=//div[@id="EXAME_IMAGEM_grdFormulaExameImagem"]/div[4]/div[3]/div/div/div[1]

#${BtnExameImagem}                xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]

${LinhaFiltroExame3}             xpath=//div[@title="ANAT PAT P/ ORGAO/BIOPSIA/ASPIRATIVA/CELL BLOCK"]
${LinhaSetorExame3}              xpath=//div[@id="EXAME_IMAGEM_grdFormulaExameImagem"]/div[4]/div[3]/div/div/div[3]

#${BtnSetorExame3}                xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]

${DescricaoExame3}               xpath=//div[@title="ANATOMO PAT - CIAP - HMB"]
${LinhaQtdExame3}                xpath=//div[@id="EXAME_IMAGEM_grdFormulaExameImagem"]/div[4]/div[3]/div/div/div[5]/div
${MenuEmpresa}                   xpath=//a[@id="DETALHES_DETALHES_tab9"]
${MenuSubgrupos}                 xpath=//a[@id="DETALHES_DETALHES_tab10"]
${LinhaCodigo}                   xpath=//div[@id="SUB_GRUPO_CIR_grdSubGrupoCirFormula"]/div[4]/div[3]/div/div/div[1]

#${BtnCodigo}                     xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]

${LinhaFiltroCodigo}             xpath=//div[@title="SISTEMA MUSCULO-TENDINOSO"]
${MenuCirurgias}                 xpath=//a[@id="DETALHES_DETALHES_tab11"]
${LinhaCirurgias}                xpath=//div[@id="CIRURGIA_grdCirurgiaFormula"]/div[4]/div[3]/div/div/div[1]

#${BtnCirurgias}                  xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]

${DescricaoCirurgias}            xpath=//div[@title="ABAIXAMENTO MIO TENDINOSO NO ANTEBRAÇO"]
${MsgValidada}                   xpath=//p[@class="notifications-item-text"]
