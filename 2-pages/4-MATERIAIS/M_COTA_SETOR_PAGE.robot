##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_COTA_SETOR
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página 
${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenBaixaProdutos}                 xpath=//section[@id='workspace-menubar']//a[@title='Cotas (Consumo Previsto)']//span
${cpEstoque}            xpath=//input[@id="#frames10"]
${cpSetor}              xpath=//input[@id="#frames11"]
${cpCodProduto}         xpath=//input[@id="#frames12"]
${cpUnidade}            xpath=//input[@id="#frames13"]
${cpQtdCota}            xpath=//input[@id="#frames14"]
${cpQtdDias}            xpath=//input[@id="#frames15"]
${elemGabarito}         xpath=//div[@class="slick-cell b9 f9 selected"]
${cpGabarito}           xpath=//input[@id="#frames18"]
${checkBoxDesat}        xpath=//button[@title="Desat."]
${validaCampSetor}      xpath=//*[@id="dspNmSetor"]//span[@title="ALMOXARIFADO"]
${validaCampProduto}        xpath=//*[@id="dspDsProduto"]//span[@title="ACIDO TRANEXAMICO 250MG COMP "]
${validaCampGabarito}       xpath=//*[@id="dspDsGabaritoCota"]//span[@title="PADRAO"]
${bntSalvar}            xpath=//*[@id="tb-record-save"]//a
${mensagemPop}          xpath=//*[@id="notifications"]/ul/li/div