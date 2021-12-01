##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina O_IMP_MGES_FNFI
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de O_IMP_MGES_FNFI
${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenImportEstoque}                 xpath=//section[@id='workspace-menubar']//a[@title='Estoque']//span
${btnLupa}          xpath=//*[@id="tb-search"]/a
${cpEmpresa}        xpath=//input[@id="#frames15"]
${elemFornecedor}       xpath=//div[@class="slick-cell b9 f9 selected"]
${cpFornecedor}         xpath=//input[@id="#frames17"]    
${btnPesquisar}         xpath=//i[@class="mv-basico-confirmar"]
${checkBoxImport}       xpath=//button[@title="Import.?"]
${btnImportarDados}     xpath=//*[@id="btnImportar"]/span
${mensagemPop}          xpath=//*[@id="notifications"]/ul/li[1]
${btnSim}               xpath=//button[@id="frames20"]
${btnSim2}              xpath=//button[@id="frames24"]
${btnImprimir}          xpath=//*[@id="frames43"]
${bodyImpressao}        xpath=/html/body/embed