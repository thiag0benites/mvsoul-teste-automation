##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Elementos e metodos da página
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${btnExecute}                     xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${btnImprimir}                    xpath=//button[@data-member='BTN_GERAR_RELATORIO']
${btnImprimirEtiquetas}           xpath=//button[@id='TAB_PRESTADOR_btnPrtLista']
${abaComplemento}                 xpath=//li//a[@id='TAB_CANVAS_TAB_CANVAS_tab1']
${abaContato}                     xpath=//li//a[@id='TAB_CANVAS_TAB_CANVAS_tab2']
${abaTipoDeVinculo}               xpath=//li//a[@id='TAB_CANVAS_TAB_CANVAS_tab3']
${abaEspecialidades}              xpath=//li//a[@id='TAB_CANVAS_TAB_CANVAS_tab4']
${abaCredenciamento}              xpath=//li//a[@id='TAB_CANVAS_TAB_CANVAS_tab6']
${abaGrupos}                      xpath=//li//a[@id='TAB_CANVAS_TAB_CANVAS_tab7']
${abaPrestadores}                 xpath=//li//a[@id='TAB_CANVAS_TAB_CANVAS_tab0']