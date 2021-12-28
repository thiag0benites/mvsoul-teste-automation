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
${ScreenBaixaProdutos}                 xpath=//section[@id='workspace-menubar']//a[@title='Resultado de Exames']//span
${cpAmostra}            xpath=//input[@name="cdAmostra"]
${CheckImpresso}        xpath=//*[@id="grdVwResExamesPssd"]/div[4]/div[3]/div/div/div[11]/div/button
${btnImprimir}          xpath=//*[@id="btnImprimir"]