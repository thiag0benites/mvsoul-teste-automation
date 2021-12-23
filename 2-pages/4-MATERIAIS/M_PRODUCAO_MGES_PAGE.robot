##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoEstoque}                            xpath=//input[@id="inp:cdEstoque"]

${CampoEmEdicao}                           xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoQuantidade}                         xpath=//input[@class="editor-text mode-edit"]
${CampoSerie}                              xpath=//input[@class="editor-text mode-edit"]
${CampoDataValidade}                       xpath=//div[@class="ui-datefield ui-buttoninput ui-widget mode-edit"]/input[@class="ui-widget-content ui-buttoninput ui-corner-left"]



${DivProduto}                              xpath=//div[@data-member="CD_PRODUTO"][@data-row="0"]/..
${DivSerie}                                xpath=//div[@data-member="CD_SERIE"][@data-row="0"]/..
${DivDataValidade}                         xpath=//div[@data-member="DT_VALIDADE"][@data-row="0"]/..



### Botoes ###
${BtnItensDeComposicao}                    xpath=//a[@id="ITENS_PRODUCAO_ITENS_PRODUCAO_tab1"]
${BtnLotePrincipal}                        xpath=//a[@id="ITENS_PRODUCAO_ITENS_PRODUCAO_tab0"]
${BtnConcluir}                             xpath=//button[@id="btnConcluir"]
${BtnSim}                                  xpath=//button[@class="btn btn-primary"][contains(text(),"Sim")]
${BtnOK}                                   xpath=//button[@class="btn btn-primary"][contains(text(),"OK")]



### Diversos ###
${Alerta}                                  xpath=//p[@class='notifications-item-text']
   






