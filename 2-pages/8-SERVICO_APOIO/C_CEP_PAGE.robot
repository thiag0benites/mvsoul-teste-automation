##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina C_CEP
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina M_LOCALIDADE
${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenCep}                 xpath=//section[@id='workspace-menubar']//a[@title='CEP']//span
${cpUf}             xpath=//input[@name="cdUf"]
${cpLocalidade}     xpath=//input[@name="dspNmLocalidade"]
${cpBairro}         xpath=//input[@name="dspDsBairro"]
${cpLogradpouro}        xpath=//input[@name="dspDsLogradouro"]
${codCep}       xpath=(//*[@class="ui-widget-content ui-corner-all"])[3]