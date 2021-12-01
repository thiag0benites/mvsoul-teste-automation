##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de M_CAD_USUARIOS_SIMPLES
${dataInicial}                  xpath=//input[@id='inp:dtSolicitacaoIni']
${dataFinal}                    xpath=//input[@id='inp:dtSolicitacaoFim']
${btnExecutarFiltro}            xpath=//button[@id='TAB_GERENCIAMENTO_btnExecutar']
${abaGerenciamento}             xpath=//li//a[@id='TAB_PAGE_PRINCIPAL_TAB_PAGE_PRINCIPAL_tab1']