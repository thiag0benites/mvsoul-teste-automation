##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Validar a pesquisa por atendimento de pedido de exame de imagem para confirmação de exames realizados.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
# Consultar o Atendimento
${CpNotifi}     xpath=//*[@id="notifications"]/a/span
${CpAtendA1}    xpath=//*[@id="inp:cdAtendimento"]
${CpAtendB2}    xpath=//*[@id="cdAtendimento"]/button/span[1]
${CpInpA}       xpath=//input[@class='editor-text mode-search']
${CpNomeA}      xpath=//div[@class='slick-cell b2 f2 selected']
${CpNomeB}      xpath=//input[@class='editor-text mode-search']
${BtExec}       xpath=//*[@id="tb-execute"]/a
${CpConfi}      xpath=//*[@id="btnConfirmar"]
# Prestador
${CpPresA}     xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${CpPresB}     xpath=//*[@id="grdItpedRx"]/div[4]/div[3]/div/div/div[3]/div/button/span[1]
${CpPresC}     xpath=//*[@id="#filterLov"]
${CpPresD}     xpath=//*[@id="btfilter"]
${CpPresE}     xpath=//*[@id="btok"]
# Salvar
${ChReali}     xpath=//button[@class='ui-button ui-widget ui-state-default ui-button-icon-only ui-label-position-default ui-fixed-width mode-edit']
# Verificar Msg
${MgsVerif}       xpath=//p[@class='notifications-item-text']
