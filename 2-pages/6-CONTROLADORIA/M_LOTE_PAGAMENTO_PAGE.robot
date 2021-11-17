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
${BtnPesquisarContasPagar}          xpath=//button[@id="PAGE_CTAPAG_btnPesquisarItconPag"]
${BtnData}                          xpath=//div[@id="dtVencimentoPrevisao"]/button
${CampoSelecionado}                 xpath=//a[@class="ui-menu-item-wrapper"][text()="Previsão de Pagamento"]
${BtnDataInicial}                   xpath=//input[@id="inp:dtInicial"]
${BtnDataFinal}                     xpath=//input[@id="inp:dtFinal"]
${BtnPesquisarDatas}                xpath=//button[@id="btnExecutarPesquisa"]
${BtnAssociar}                      xpath=//button[@id="PAGE_CTAPAG_btnMoverTodos1"]
${CheckBox}                         xpath=//div[@class="slick-cell b0 f0 selected active"]
${BtnAlterarNivel}                  xpath=//button[@id="PAGE_CTAPAG_btnAlterarNivel"]
${BtnAutorizacao}                   xpath=//input[@id="nrNivelAutorizacao_ac"]
${BtnOkNivel}                       xpath=//button[@id="btnOkAlterarNivel"]
${MsgConfirmacao}                   xpath=//p[@class="notifications-item-text"] 