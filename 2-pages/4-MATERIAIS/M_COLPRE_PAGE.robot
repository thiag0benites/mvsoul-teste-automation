##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_COLPRE
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de baixa de produtos
${cpSolicitacao}        xpath=//input[@name="cdSolCom"]
${cpFornecedor}         xpath=//input[@name="cdFornecedor"]
${cpDtValidade}         xpath=//input[@name="dtValidade"]
${cpCondPagamento}      xpath=//input[@name="cdCondicaoPagamento"]
${cpVlrTotal}           xpath=//input[@name="dspVlTotalColeta"]
${cpVlrFrete}           xpath=//input[@name="vlFrete"]
${cpVlrDesconto}        xpath=//input[@name="vlDesconto"]
${btnBuscaDados}        xpath=//*[@id="btnBusca"]
${mensagemPop}          xpath=//*[@id="notifications"]/ul/li[1]/div/div[2]
${btnSim}               xpath=//*[@id="frames20"]
${mensagemPop2}         xpath=//*[@class="notifications-item"]
${btnSim2}              xpath=//*[@id="frames23"]
${btnSalvar}            xpath=//i[@class="mv-basico-salvar"]
${mensagemPop}          xpath=//*[@class="notifications-item"]
${btnSim}               xpath=//button[@id="frames14"]
