##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina saida de produtos do paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de baixa de produtos
${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenBaixaProdutos}                 xpath=//section[@id='workspace-menubar']//a[@title='Baixa de Produtos do Estoque']//span
${cpEstoque}            xpath=//*[@id="inp:cdEstoque"]
${cpSetor}              xpath=//*[@id="inp:cdSetor"]
${cpMotBaixa}           xpath=//*[@id="inp:cdMotBai"]
${cpObservacao}         xpath=//*[@id="inp:dsObsEmprestimo"]
${btnDigCodBarras}      xpath=//*[@id="btnCdProduto"]
${CodProduto}           xpath=//input[@id="#frames11"]
${elemUnidade}            xpath=(//*[@id="grdItmvtoEstoque"])//*[@title="FA C/300MG"]
${cpUnidade}                xpath=//input[@id="#frames14"]
${QtdDisponivel}        xpath=(//*[@id="grdItmvtoEstoque"])//*[@class="slick-cell b6 f6 selected"]
${inpQtdDisp}           xpath=//*[@id="#frames15"]
${checkDoacao}          xpath=//button[@title="Doação"]
${btnSalvar}            xpath=//*[@id="tb-record-save"]
