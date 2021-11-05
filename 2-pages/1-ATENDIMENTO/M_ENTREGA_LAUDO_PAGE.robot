##################################################################################################################################
# Autor: Rodrigo Torquato
# Decrição: Elementos e metodos da página de Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource            ../../Config.robot

*** Variable ***

${IconSetorSolicitante}                          xpath=//div[@id='cdSetor']//button[@type='button']
${PopUpLista}                                    xpath=//span[normalize-space()='Listagem de Setores']
${btnPesquisar}                                  xpath=//*[@id="btnPesquisar"]
${btnObsPedido}                                  xpath=//button[@id='btnObsPedido']
${CampoFiltro}                                   xpath=//input[@id='#filterLov']
${btnFiltrar}                                    xpath=//button[@id='btfilter']
${btnOK}                                         xpath=//button[@id="btok"]
${PopUpObsPedido}                                xpath=//span[@class='ui-dialog-title ui-dialog-title-overflow']
${CampoObs}                                      xpath=//textarea[@name='dsObservacao']
${btnVoltar}                                     xpath=//*[@id="btnVoltarObs"]
${CampoTipoEntrega}                              xpath=//input[@id='inp:cdTipoEntrega']
${btnPesquisa}                                   Xpath=//*[@id="btnPesquisar"]




