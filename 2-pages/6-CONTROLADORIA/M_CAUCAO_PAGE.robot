##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Registrar a entrada de um depósito de pagamento antecipado
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

# Botões 
${BtAtend}             xpath=//input[@id='inp:cdAtendimento']
${BtExec}              xpath=//*[@id="tb-execute"]/a/i
${BtFilter}            xpath=//*[@id="btfilter"]
${BtOkMoeda}           xpath=//*[@id="btok"]


# Campos
${DtDepAnt}            xpath=//div[@class='slick-cell b0 f0 selected']
${CpIntData}           xpath=//input[@class='ui-widget-content ui-buttoninput ui-corner-left'][@aria-labelledby]
${CpMoedaSelec}        xpath=//div[@class='slick-cell b2 f2 selected']
${BtLovMoeda}          xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${CpFilterMoeda}       xpath=//input[@id='#filterLov']
${BtFilterMoeda}       xpath=//button[@id='btfilter']
${BtOkMoeda}           xpath=//button[@id='btok']
${BtValDep}            xpath=//div[@class='slick-cell b5 f5 slick-last-cell selected']
${BtInpValor}          xpath=//input[@class='editor-text mode-edit']

# Forma de Pagamento
${BtSelecFp}           xpath=//button[@class='ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon']
${BtInputFp}           xpath=//input[@id='tpPagamento_ac']

# Motivo Deposito
${BtSelecMd}           xpath=//input[@id='inp:cdMotCaucao']
${BtIntLove}           xpath=//*[@id="cdMotCaucao"]/button
${BtInputMd}           xpath=//input[@id='#filterLov']
${BtFilterMd}          xpath=//button[@class='ui-widget ui-button btn btn-default ui-state-default ui-button-text-only']
${BtOkMotD}            xpath=//button[@id='btok']

# Responsavel pelo Recebimento da Caução
${BtSelecResp}        xpath=//button[@id='btnResponsavel']

${BtintResp}          xpath=//input[@id='inp:cdResposavel']
${BtGrList}           xpath=//*[@id="cdResposavel"]/button/span
${BtInsResp}          xpath=//input[@id='#filterLov']
${BtFilterRes}        xpath=//button[@id='btfilter']
${BtOkResp}           xpath=//*[@id="btok"] 
${BtConfirResp}       xpath=//*[@id="btnOk"]/span

# Caixa do Deposito Antecipado
${BtSelecCaixa}       xpath=//input[@id='inp:cdCaixa']
${BtGdCaixa}          xpath=//*[@id="cdCaixa"]/button/span[1]
${BtIntCaixa}         xpath=//*[@id="#filterLov"]
${BtFilterCaixa}      xpath=//*[@id="btfilter"]
${BtOkCaixa}          xpath=//*[@id="btok"]

# Salvar Deposito Antecipado
${BtSalvaDp}          xpath=//i[@class='mv-basico-salvar']

# Msg de Notificação do Registro Salvo
${MsgVerifi}      xpath=//p[@class="notifications-item-text"]

