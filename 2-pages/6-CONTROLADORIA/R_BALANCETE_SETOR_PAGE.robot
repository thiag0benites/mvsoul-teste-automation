##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos da tela de Plano de conta Contábil.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${campoAno}                                     xpath=//input[@id='inp:ano']
${campoGrau}                                    xpath=//input[@id='inp:cdGrauDaConta']
${botaoImprimir}                                xpath=//button[@data-member='BTN_GERAR_RELATORIO']