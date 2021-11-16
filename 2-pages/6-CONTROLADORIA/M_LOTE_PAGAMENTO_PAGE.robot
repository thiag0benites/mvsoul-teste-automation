##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela lote de pagamento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${CampoDescricao}                   xpath=//input[@id="inp:dsLotePgto"]
${BtnSalvar}                        xpath=//li[@id="tb-record-save"]/a/i
${BtnPesquisarContasPagar}          xpath=//*[@id="PAGE_CTAPAG_btnPesquisarItconPag"]/span[2]
${BtnData}                          xpath=//div[@id="dtVencimentoPrevisao"]
${BtnDataInicial}                   xpath=//input[@id="inp:dtInicial"]
${BtnDataFinal}                     xpath=//input[@id="inp:dtFinal"]
${BtnPesquisarDatas}                xpath=//button[@id="btnExecutarPesquisa"]
${BtnAssociar}                      xpath=//*[@data-action="btnMoverTodos1_click"]
${CheckBox}                         xpath=//*[@id="PAGE_CTAPAG_grdVPag"]/div[4]/div[3]/div/div[1]/div[1]/div/button
${BtnAlterarNivel}                  xpath=//button[@id="PAGE_CTAPAG_btnAlterarNivel"]
${BtnAutorizacao}                   xpath=//input[@id="nrNivelAutorizacao_ac"]
${BtnOkNivel}                       xpath=//button[@id="btnOkAlterarNivel"]