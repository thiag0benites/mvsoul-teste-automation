##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de  Produtos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDescricaoPlaq}                        xpath=//input[@id="inp:bens_dsPlaqueta"]        
${CampoCdBem}                                xpath=//input[@id="inp:bens_cdBem"]        
${CampoDescricaoBem}                         xpath=//input[@id="inp:bens_dsBem"]        
${CampoNrSerie}                              xpath=//input[@id="inp:nrSerie"]        
${CampoMarca}                                xpath=//input[@id="inp:dsMarca"]        
${CampoModelo}                               xpath=//input[@id="inp:dsModelo"]   
${BotaoLovTpAquisicao}                       xpath=//div[@id="cdTipoAquisicao"]/button     
${BotaoLovEspecie}                           xpath=//div[@id="cdEspecie"]/button     
${BotaoLovClasse}                            xpath=//div[@id="cdClasse"]/button     
${BotaoLovSubclasse}                         xpath=//div[@id="cdSubCla"]/button     
${BotaoLovClassificacao}                     xpath=//div[@id="cdCapitulo"]/button     
${BotaoLovSubclassificacao}                  xpath=//div[@id="cdSubCap"]/button     
${BotaoLovCentroCusto}                       xpath=//div[@id="cdSetor"]/button     
${BotaoLovLocalidade}                        xpath=//div[@id="cdLocalidade"]/button     
${AbaDadosCompra}                            xpath=//a[@id="CNV_INFORMACOES_CNV_INFORMACOES_tab1"]
${AbaManutencao}                             xpath=//a[@id="CNV_INFORMACOES_CNV_INFORMACOES_tab2"]
${CampoDataCompra}                           xpath=//input[@id="inp:dtCompra"]
${CampoPeriodicidade}                        xpath=//input[@id="inp:nrDiasPreventiva"]
${CampoVencGarantia}                         xpath=//input[@id="inp:dtVctoGarantia"]
${MensagemToast}                             xpath=//p[@class="notifications-item-text"]
${BotaoSim}                                  xpath=//li[@class="notification-buttons"]/button[text()="Sim"]
${CampoDescBemPreenchido}                    xpath=//input[@id="inp:bens_dsBem"][@title="BEM TESTE AUTOMACAO"]
