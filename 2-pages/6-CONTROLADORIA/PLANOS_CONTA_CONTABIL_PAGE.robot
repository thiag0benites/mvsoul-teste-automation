##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos da tela de Plano de conta Contábil.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
${tituloFieldset}    xpath=//div[2]/div/div[2]/div/div/form/div/div/div[2]/fieldset[2]/legend[contains(text(), "Planos")]
${tableContas}    xpath=//div[@id='grdPlanoContas']
${tablePlanos}    xpath=//div[@id='grdPlanoEstr']
${abaLog}         xpath=//li//a[@id='CANVA_DETALHES_CANVA_DETALHES_tab1']
${abaTransacao}    xpath=//li//a[@id='CANVA_DETALHES_CANVA_DETALHES_tab2']
${abaSped}        xpath=//li//a[@id='CANVA_DETALHES_CANVA_DETALHES_tab3']
${abaContaReferencial}    xpath=//li//a[@id='CANVA_DETALHES_CANVA_DETALHES_tab4']
