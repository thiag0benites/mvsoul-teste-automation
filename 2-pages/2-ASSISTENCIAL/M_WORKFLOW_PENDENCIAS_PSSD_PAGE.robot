##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Elementos e metodos da página M_WORKFLOW_PENDENCIAS_PSSD
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${abaColetaSetor}                           xpath=//div[@id='nrConfirmaColeta']
${abaAmostras}                              xpath=//div[2]/div/div[2]/div/div/form/div[1]/div/div[2]/div/div[3]/div
${abaResultados}                            xpath=//div[2]/div/div[2]/div/div/form/div[1]/div/div[2]/div/div[4]/div
