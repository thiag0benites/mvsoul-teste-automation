##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de G_CIH_A

${cpDtCons}         xpath=//input[@name="competencia"]
${btnGerarArquivo}      xpath=(//span)[32]
${btnSim}                   id=frames8
${btnSim2}                  id=frames11
${btnImprimir}      xpath=//button[@id="frames14"]
${btnSair}                  xpath=//button[@id="frames15"]
${abaConvenio}      xpath=//a[@id="CV_TAB_CANVAS_PAI_CV_TAB_CANVAS_PAI_tab1"]
${cpCodConv}        xpath=//*[@id="#frames10"]
${abaUnidade}       xpath=//a[@id="CV_TAB_CANVAS_PAI_CV_TAB_CANVAS_PAI_tab2"]
${cpUnidade}        xpath=//input[@id="#frames15"]
${abaOrigemAmb}     xpath=//a[@id="CV_TAB_CANVAS_PAI_CV_TAB_CANVAS_PAI_tab3"]
${cpCodAmb}         xpath=//input[@id="#frames20"]
${abaOrigemInt}     xpath=//a[@id="CV_TAB_CANVAS_PAI_CV_TAB_CANVAS_PAI_tab4"]
${cpCodInt}         xpath=//input[@id="#frames25"]
${abaParemtro}      xpath=//a[@id="CV_TAB_CANVAS_PAI_CV_TAB_CANVAS_PAI_tab0"]
${btnImprimirIncons}        xpath=//button[@id="CV_TAB_PADRAO_btnImprimirInconsistencia"]
${btnImprimir2}     xpath=//*[@id="frames28"]
