##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da página de Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource            ../../Config.robot

*** Variable ***
### CAMPO ###
${CampoFiltrar}                                      xpath=//input[@id='#filterLov']
${CampoNroDoc}                                       xpath=//input[@id='inp:entPro_nrDocumento']
${CampoSerie}                                        xpath=//input[@id='inp:entPro_nrSerie']
${CampoDtEmissao}                                    xpath=//input[@id='inp:dtEmissao']
${CampoVlTotalNota}                                  xpath=//input[@id='inp:entPro_vlTotal']
${CampoQtdEntrada}                                   xpath=//*[@id="grdItentPro"]/div[4]/div[3]/div/div/div[4]
${CampoVlUnitario}                                   xpath=//*[@id="grdItentPro"]/div[4]/div[3]/div/div/div[6]
### BOTAO ###
${BtnTipoDoc}                                        xpath=//*[@id="entPro_cdTipDoc"]/button
${BtnFiltrar}                                        xpath=//button[@id='btfilter']
${BtnOkFiltrar}                                      xpath=//button[@id='btok']
${BtnEstoque}                                        xpath=//*[@id="entPro_cdEstoque"]/button
${BtnFornecedor}                                     xpath=//*[@id="entPro_cdFornecedor"]/button
${BtnDataEmissao}                                    xpath=//*[@id="dtEmissao"]/button   
${BtnCFOP}                                           xpath=//*[@id="nrCfop"]/button 
${BtnProdutos}                                       xpath=//button[@id='btnProdutos']
${BtnCodProduto}                                     xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtnSimAlerta}                                      xpath=//button[@class='btn btn-primary'][contains(text(),'Sim')]
${BtnSair}                                           xpath=//button[@id='btnSairItentPro']
### VARIADOS ###
${MsgAlerta}                                         xpath=//p[@class='notifications-item-text']


