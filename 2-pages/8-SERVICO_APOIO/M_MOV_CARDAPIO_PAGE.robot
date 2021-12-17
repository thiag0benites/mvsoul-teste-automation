##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Elementos e metodos da página
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${ElementoMsgRecebida}    xpath=//p[@class='notifications-item-text']
${btnSalvar}      xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${campoCodAtendimento}    xpath=//input[@id='inp:cdAtendimento']
${campoTipoDieta}    xpath=//input[@id='inp:cdTipoDieta']
${campoCopa}      xpath=//input[@id='inp:cdCopa']
${campoSetor}     xpath=//input[@id='inp:cdSetor']
${campoObservacao}    xpath=//textarea[@id='inp:obsNutricao']
${campoOpcao}     xpath=//div[@class='slick-cell b0 f0 selected']
${campoOpcaoInput}    xpath=//div[@class='slick-cell b0 f0 selected active editable']//input
${campoPrato}     xpath=//div[@class='slick-cell b2 f2 selected']
${campoPratoInput}    xpath=//div[@class='slick-cell b2 f2 selected active editable']//input
${campoQtdCardapio}    xpath=//div[@class='slick-cell b5 f5 selected']
${campoQtdCardapioInput}    xpath=//div[@class='slick-cell b5 f5 selected active editable']//input
