##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_COLPRE
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página M_COLPRE
${cpSolicitacao}        xpath=//input[@name="cdSolCom"]
${cpFornecedor}         xpath=//input[@name="cdFornecedor"]
${cpDtValidade}         xpath=//input[@name="dtValidade"]
${cpCondPagamento}      xpath=//input[@name="cdCondicaoPagamento"]
${cpVlrTotal}           xpath=//input[@name="dspVlTotalColeta"]
${cpVlrFrete}           xpath=//input[@name="vlFrete"]
${cpVlrDesconto}        xpath=//input[@name="vlDesconto"]
${btnProdutos}          xpath=//button[@id="btnItem"]
${cpProduto}            xpath=//input[@id="#frames11"]
${elemQtdCotada}        xpath=//div[@class="slick-cell b4 f4 selected ui-fixed-width"]
${cpQtdCotada}          xpath=//input[@id="#frames14"]
${elemVlUnitario}       xpath=//div[@class="slick-cell b5 f5 selected ui-fixed-width"]
${cpVlUnitario}         xpath=//*[@id="#frames15"]
${btnConfPreco}         xpath=//*[@id="frames17"]
${mensagemPop}          xpath=//*[@id="notifications"]/ul/li[1]/div
${btnSalvar}            xpath=//i[@class="mv-basico-salvar"]
#${mensagemPop}          xpath=//*[@class="notifications-item"]
${btnSim3}               xpath=//*[@id="frames22"]
${cpCodigo}             xpath=//*[@id="inp:cdColeta"]