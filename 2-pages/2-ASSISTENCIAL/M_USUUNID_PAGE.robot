##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Usuário por Unidade de Internação
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoBuscaTela}                               xpath=//*[@class='mv-basico-menu dp32']
${CampoBuscaTela}                               xpath=//input[@placeholder="Search"]
${CampoEditavel}                                xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"]
${CampoUnidInter}                               xpath=//div[@data-member="CD_UNID_INT"]/..
${CbProdutoSetor}                               xpath=//button[@id="inp:snSolicitacaoProdutoSetor_btn"]
${CbProdutoGasto}                               xpath=//button[@id="inp:snSolicitacaoProdutoGasSal_btn"]
${CbProdutoPaciente}                            xpath=//button[@id="inp:snSolicitacaoProdutoPacient_btn"]
${CbProdutoEstoque}                             xpath=//button[@id="inp:snSolicitacaoProdutoEstoq_btn"]
${CbProdutoEmpresa}                             xpath=//button[@id="inp:snSolicitacaoProdutoEmp_btn"]
${CbMovSetor}                                   xpath=//button[@id="inp:snMovimentacaoSetor_btn"]
${CbMovGasto}                                   xpath=//button[@id="inp:snMovimentacaoGastoSala_btn"]
${CbMovPaciente}                                xpath=//button[@id="inp:snMovimentacaoPaciente_btn"]
${CbMovEstoque}                                 xpath=//button[@id="inp:snMovimentacaoEstoque_btn"]
${CbMovEmpresa}                                 xpath=//button[@id="inp:snMovimentacaoEmpresa_btn"]

