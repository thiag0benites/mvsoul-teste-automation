##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina C_COTA
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina C_COTA
${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenCep}                 xpath=//section[@id='workspace-menubar']//a[@title='Competência']//span
${cpCompetencia}            xpath=//input[@name="dtCompetencia"]
${cpCodCota}                xpath=//*[@class="editor-text ui-state-readonly mode-read"]