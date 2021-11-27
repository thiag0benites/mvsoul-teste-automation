##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela lancamento bancario
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BtnLimpar}                           xpath=//a[@title="Limpar"]
${BtnCodigoEmpresa}                    xpath=(//button[@tabindex="-1"]//span[@class="ui-button-icon ui-icon mv-basico-reticencias"][1])
${CampoDescricao}                      xpath=//div[@class="slick-cell b1 f1 slick-last-cell selected"]
${BtnOk}                               xpath=//button[@id="btok"]

${BtnContaCorremte}                    xpath=//*[@id="cdConCor"]/button   
${CampoContaCorrente}                  xpath=//div[@title="ITAU HOBRA"]

${CampoConciliado}                     xpath=//input[@id="chkConciliado_ac"]

${CampoDataInicial}                    xpath=//input[@id="inp:dtInicial"]
${CampoDataFinal}                      xpath=//input[@id="inp:dtFinal"]
${BtnPesquisar}                        xpath=//button[@id="btnPesquisar"]

${BtnAdicionar}                        xpath=//a[@title="Adicionar"]

${CampoDataLcto}                       xpath=//div[@class="slick-cell b1 f1 selected ui-fixed-width"]
${BtnLcto}                             xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]
${CampoLcto0}                          xpath=//div[@id="grdMovConcor"]/div[4]/div[3]/div/div[2]/div[3]
${CampoLcto}                           xpath=//div[@title="93"]
${LinhaCampoValor}                     xpath=//div[@class="slick-cell b10 f10 selected ui-fixed-width"]
${CampoValor}                          xpath=//input[@class="editor-text mode-edit"]

${BtnSalvar}                           xpath=//a[@title="Salvar"]
${MsgValidada}                         xpath=//p[@class="notifications-item-text"]