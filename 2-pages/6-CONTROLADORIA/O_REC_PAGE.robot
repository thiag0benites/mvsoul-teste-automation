##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${campoDataIni}    xpath=//input[@id="inp:dataIni"]
${campoDataFinal}    xpath=//input[@id="inp:dataFim"]
${campoProcesso}    xpath=//input[@id="inp:cdProcesso"]
${campoContaCorrente}    xpath=//input[@id="inp:cdConCor"]
${campoCodResponsavel}    xpath=//input[@id="inp:cdResponsavel"]
### Botoes ###
${RadioButtonVencimento}    xpath=//button[@id="rb_TpPeriodo_DtVencimento_btn"]
${BtnResponsavel}    xpath=//button[@id="btnResponsavel"]
${BtnOkResponsavel}    xpath=//button[@id="bOkResponsavel"]
${CheckBox}       xpath=//div[@data-member="CHECK_MARCAR"]/button
${btnConfirmar}    xpath=//button[@id="btnConfirmar"]
${btnOk}          xpath=//li[@class='notification-buttons']/button
${btnCodPRocesso}    xpath=//div[@id="cdProcesso"]/button
${divCreditoC/C}    xpath=//div[@data-member="DS_PROCESSO"][@data-row="6"]
${BtnOkProcesso}    xpath=//button[@id="btok"]
### Diversos ###
${Alerta}         xpath=//div[@class='notifications-item']//p[@class='notifications-item-text']
${MsgEsperada}=    Recebimento(s) efetuado(s) com sucesso !
