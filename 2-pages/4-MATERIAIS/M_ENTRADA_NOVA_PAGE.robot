##################################################################################################################################
# Autor: Rodrigo Torquato
# Decrição: Elementos e metodos da página de Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource            ../../Config.robot

*** Variable ***


${IconOrdCompra}                                 xpath=//div[@id='entPro_cdOrdCom']//span[@class='ui-button-icon ui-icon mv-basico-reticencias']
# ${IconOrdCompra}                                 xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[7]
#Pop-Up Lista das Ordens de Compra
${PopUpLista}                                    xpath=//span[@class='ui-dialog-title ui-dialog-title-overflow']
${IconEvolucao}                                  xpath=//span[@class='mv-hosp-evolucao']
${IconUltimaPg}                                  xpath=//span[@class="last-grid-page fa fa-step-forward"]
${PrimeiraLinha}                                 xpath=//body/div/div/div[@role='tabpanel']/div[@role='dialog']/div/div/fieldset/div[@role='grid']/div[@role='rowgroup']/div[3]/div[1]/div[1]
${btnOK}                                         xpath=//button[@id="btok"]
#------------------------------------------------------

#Pop-Up Tipos de Documento
${IconTipodeDoc}                                 xpath=//div[@id='entPro_cdTipDoc']//span[@class='ui-button-icon ui-icon mv-basico-reticencias']
${PopUpTiposdeDoc}                               xpath=//span[@class='ui-dialog-title ui-dialog-title-overflow']
${CampoFiltro}                                   xpath=//input[@id='#filterLov']
${btnFiltrar}                                     xpath=//button[@id='btfilter']
# ${btnOK}                                         xpath=//button[@id="btok"]
#------------------------------------------------------

${CampoNrDoc}                                    xpath=//input[@name="entPro_nrDocumento"]
${CampoSerie}                                    xpath=//input[@name="entPro_nrSerie"]  
${CampoDataEmissao}                              xpath=//input[@id='inp:dtEmissao']
${IconDataEmissao}                               xpath=(//span[@class="ui-button-icon ui-icon mv-basico-calendario"])[5]
${DropdownMes}                                   xpath=//select[@class='ui-datepicker-month']
${DropdownAno}                                   xpath=//select[@class='ui-datepicker-year']
${IconCfop}                                      xpath=//div[@id='nrCfop']//span[@class='ui-button-icon ui-icon mv-basico-reticencias']

#Pop-Up Código Fiscal de Operação e Prestação
${PopUpCod}                                      xpath=//div[@class='ui-dialog-titlebar ui-corner-all ui-widget-header ui-helper-clearfix ui-draggable-handle']
# ${btnOK}                                         xpath=//button[@id="btok"]
#------------------------------------------------------

${btnProdutos}                                   xpath=//button[@id='btnProdutos']
${brnCadastrarLote}                              xpath=//button[@id='btnCadastraLote']
${CampoLote}                                     xpath=//input[@id="#frames839"]
${CampoValidade}                                 xpath=//input[@id="frames8401634340233245"]
${CampoQtdeEntrada}                              xpath=//input[@id="#frames842"] 
${btnDigitacaoProd}                              xpath=//button[@id='btnSair']
${btnSair}                                       xpath=//button[@id='btnSairItentPro']
${btnDuplicata}                                  xpath=//button[@id='btnDocumentoDeEntrada']
${btnSim}                                        xpath=//button[normalize-space()='Sim']
${btnConfirmarDuplicata}                         xpath=//button[@id='btnBaixa']
${btnConcluir}                                   xpath=//button[@id='btnConcluir']
${btnNao}                                        xpath=//button[normalize-space()='Não']

