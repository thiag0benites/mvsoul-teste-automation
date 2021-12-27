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
${campoTipoRefeicao}    xpath=//div[@id='grdMMovCardapio']//div[@class='slick-cell b2 f2 selected']
${campoTipoRefeicaoInput}    xpath=//div[@id='grdMMovCardapio']//div[@class='slick-cell b2 f2 selected active editable']//input
${campoCopa}      xpath=//div[@id='grdMMovCardapio']//div[@class='slick-cell b4 f4 selected']
${campoCopaInput}    xpath=//div[@id='grdMMovCardapio']//div[@class='slick-cell b4 f4 selected active editable']//input
${campoSetor}     xpath=//div[@id='grdMMovCardapio']//div[@class='slick-cell b6 f6 selected']
${campoSetorInput}    xpath=//div[@id='grdMMovCardapio']//div[@class='slick-cell b6 f6 selected active editable']//input
${campoObservacao}    xpath=//textarea[@id='inp:obsNutricao']
${campoOpcao}     xpath=//div[@id='grdItmovCardapio']//div[@class='slick-cell b0 f0 selected']
${campoOpcaoInput}    xpath=//div[@id='grdItmovCardapio']//div[@class='slick-cell b0 f0 selected active editable']//input
${campoPrato}     xpath=//div[@id='grdItmovCardapio']//div[@class='slick-cell b2 f2 selected']
${campoPratoInput}    xpath=//div[@id='grdItmovCardapio']//div[@class='slick-cell b2 f2 selected active editable']//input
${campoQtdCardapio}    xpath=//div[@id='grdItmovCardapio']//div[@class='slick-cell b5 f5 selected']
${campoQtdCardapioInput}    xpath=//div[@id='grdItmovCardapio']//div[@class='slick-cell b5 f5 selected active editable']//input
