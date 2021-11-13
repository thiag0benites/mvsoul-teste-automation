##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela lote de pagamento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${CampoDescricao}                   xpath=//*[@id="inp:dsLotePgto"]
${BtnSalvar}                        xpath=//*[@id="tb-record-save"]/a
${BtnPesquisarContasPagar}          xpath=//*[@id="PAGE_CTAPAG_btnPesquisarItconPag"]/span[2]
${CampoData}                        xpath=//*[@id="dtVencimentoPrevisao"]/button
${BtnDataInicial}                   xpath=//*[@id="inp:dtInicial"]
${BtnDataFinal}                     xpath=//*[@id="inp:dtFinal"]
${BtnPesquisarDatas}                xpath=//*[@id="btnExecutarPesquisa"]/span
${BtnAssociar}                      xpath=//*[@id="PAGE_CTAPAG_btnMoverTodos1"]
${CheckBox}                         xpath=//*[@id="PAGE_CTAPAG_grdVPag"]/div[4]/div[3]/div/div[1]/div[1]/div/button
${BtnAlterarNivel}                  xpath=//*[@id="PAGE_CTAPAG_btnAlterarNivel"]
${BtnAutorizacao}                   xpath=//*[@id="nrNivelAutorizacao"]/button
${BtnOkNivel}                       xpath=//*[@id="btnOkAlterarNivel"]