##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página Painel da Internação
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BtnPrev}        xpath=//a[@id="TAB_PAINEL_TAB_PAINEL_tab1"]
${BtnInternados}    xpath=//a[@id="TAB_PAINEL_TAB_PAINEL_tab2"]
${BtnDataIntern}    xpath=//input[@name="dtPrevAltaA"]
${BtnInsereDataIntern}    xpath=//input[@name="dtInternacaoF"]
${BtnPesquisarPrevAlta}    xpath=//button[@id="TB_PREVISAO_btnExecutarF"]
${BtnPesquisarInternados}    xpath=//button[@id="TB_INTERNADOS_btnExecutarA"]
${BtnCancelados}    xpath=//a[@id="TAB_PAINEL_TAB_PAINEL_tab3"]
