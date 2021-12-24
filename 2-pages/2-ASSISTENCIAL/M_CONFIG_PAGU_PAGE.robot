##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da página
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${abaGeral}       xpath=//li//a[@id='CNV_CONFIG_CNV_CONFIG_tab0']
${abaSetor}       xpath=//li//a[@id='CNV_CONFIG_CNV_CONFIG_tab1']
${abaPrescEnfer}    xpath=//li//a[@id='CNV_CONF_SETOR_CNV_CONF_SETOR_tab0']
${abaAvaliacao}    xpath=//li//a[@id='CNV_CONF_SETOR_CNV_CONF_SETOR_tab2']
${abaBalancoHidrico}    xpath=//li//a[@id='CNV_CONF_SETOR_CNV_CONF_SETOR_tab3']
${abaPrescMed}    xpath=//li//a[@id='CNV_CONFIG_CNV_CONFIG_tab2']
${abaDiagnostico}    xpath=//li//a[@id='CNV_CONFIG_CNV_CONFIG_tab3']
${abaParecer}     xpath=//li//a[@id='CNV_CONFIG_CNV_CONFIG_tab4']
${abaAprazamentChec}    xpath=//li//a[@id='CNV_CONFIG_CNV_CONFIG_tab5']
${abaPortal}      xpath=//li//a[@id='CNV_CONFIG_CNV_CONFIG_tab6']
${abaEmpresasExt}    xpath=//li//a[@id='CNV_CONFIG_CNV_CONFIG_tab7']
