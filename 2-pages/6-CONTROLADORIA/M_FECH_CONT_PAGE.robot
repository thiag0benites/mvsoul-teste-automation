##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_FECH_CONT
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de Fechamento de Lote
${HomeXpathBtnPesquisaInput}    id=menu-filter-1
${HomeXpathBtnPesquisa}    xpath=//li[@class="menu-search"]
${ScreenCadastroFechamento}    xpath=//section[@id='workspace-menubar']//a[@title='Fechamento']//span
${campoAno}       id=inp:dtAno
${mesFech}        xpath=(//span[@class="ui-button-icon ui-icon mv-basico-detalhes"])[2]
${empresa}        xpath=//*[@id="page_CNV_FECHAMENTO_grdEmpresas"]/div[4]/div[3]/div/div[3]/div[1]/div
${btnFechar}      xpath=//*[@id="page_CNV_FECHAMENTO_btnFechar"]
${btnAbrir}       xpath=//*[@id="page_CNV_FECHAMENTO_btnAbrir"]
${btnOk}          xpath=//*[@class="notification-buttons"]/button
${mensagemEsperada}    class=notifications-item-text
