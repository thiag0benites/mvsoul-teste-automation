##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_GASTO_SALA
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página M_GASTO_SALA
${btnPesquisar}         xpath=//*[@id="tb-search"]/a
${cpAviso}              xpath=//input[@id="#frames14"] 
${btnExecutar}          xpath=//*[@id="tb-execute"]/a
${nomeProduto}          xpath=//input[@id="inp:dspDsProduto"]
${btnImprimir}          xpath=//*[@id="btnImprimir"]
${btnImprimir2}         xpath=//*[@id="frames17"]