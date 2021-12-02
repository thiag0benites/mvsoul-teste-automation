##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de M_TIP_DET
${campoDescricao}                           xpath=//div[@class='slick-cell b1 f1 selected active editable']//input
${campoDias}                                xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${campoDiasInput}                           xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width active editable']//input
${campoValorMin}                            xpath=//div[@class='slick-cell b10 f10 selected ui-fixed-width']
${campoValorMinInput}                       xpath=//div[@class='slick-cell b10 f10 selected ui-fixed-width active editable']//input
${campoValorMax}                            xpath=//div[@class='slick-cell b11 f11 slick-last-cell selected ui-fixed-width']
${campoValorMaxInput}                       xpath=//div[@class='slick-cell b11 f11 slick-last-cell selected ui-fixed-width active editable']//input
${inputFornecedor}                          xpath=//input[@id='inp:cdFornecedor']
${inputcontaContabil}                       xpath=//input[@id='inp:cdReduzido']
${inputcontaCusto}                          xpath=//input[@id='inp:cdItemRes']
${campoContaContabilDespesa}                xpath=//div[@id="cdReduzidoDespesa"]//input
${campoTipoDocumento}                       xpath=//input[@id='inp:cdTipDoc']
${mensagemNotification}                     xpath=//p[@class="notifications-item-text"]
${campoVlFaixa}                             xpath=//div[@class='slick-cell b0 f0 selected']
${campoVlFaixaInput}                        xpath=//div[@class='slick-cell b0 f0 selected active editable']//input
${campoVlPercentual}                        xpath=//div[@id="TAB_FAIXAS_grdFaixaDetalhe"]//div[@class='slick-cell b1 f1 selected']
${campoVlPercentualInput}                   xpath=//div[@id="TAB_FAIXAS_grdFaixaDetalhe"]//div[@class='slick-cell b1 f1 selected active editable']//input
${campoVlDeducao}                           xpath=//div[@class='slick-cell b2 f2 selected']
${vlDeducaoInput}                           xpath=//div[@class='slick-cell b2 f2 selected active editable']//input
