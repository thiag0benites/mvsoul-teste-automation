##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_LOTE
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Página de Fechamento de Lote

${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenCadastroFechamentoLote}                 xpath=//section[@id='workspace-menubar']//a[@title='Cadastro / Fechamento de Lote']//span
${cpDescricao}          id=#frames14
${dtFinal}              xpath=//div[@class="slick-cell b4 f4 selected ui-fixed-width"]
${inputDtFinal}         xpath=//*[@id="frames17"]/input[2]
${btnSalvar}            id=tb-record-save
${mensagemEsperada}     class=notifications-item
${cpDescricaoPs}        xpath=//*[@id="grdLote"]/div[4]/div[3]/div/div/div[2]