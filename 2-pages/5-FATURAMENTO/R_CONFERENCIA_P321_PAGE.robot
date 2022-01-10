##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Relatório de Controle de Conferencia por Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
# Saída do Relatorio
${CpSaidaReA}        xpath=//div[@class='ui-widget ui-combobox ui-label-align-center ui-buttoninput ui-required ui-label-position-left mode-edit ui-widget-active']
${CpSaidaReB}        xpath=
# Fatura
${CpFaturaA}         xpath=//*[@id="CV_TAB_PADRAO_cdFatSia"]/button/span[1]
${CpFaturaB}         xpath=//*[@id="#filterLov"]
${CpFaturaC}         xpath=//*[@id="btfilter"]
${CpFaturaD}         xpath=//*[@id="btok"]
# Paciente
${CpPacieteA}        xpath=//*[@id="CV_TAB_PADRAO_cdPaciente"]/button/span[1]
${CpPacieteB}        xpath=//*[@id="#filterLov"]
${CpPacieteC}        xpath=//*[@id="btfilter"]
${CpPacieteD}        xpath=//*[@id="btok"]
# Atendimento
${CpAtendimento}     xpath=//*[@id="inp:cdAtendimento"]
# Imprimir
${BtImprimir}        xpath=//button[@data-member='BTN_GERAR_RELATORIO']

