##################################################################################################################################
# Autor: Marcos Costa
# Descrição:      O Caso de Teste tem Como Objetivo Cadastrar Protocolos.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
# Descrição
${CpDesc}         xpath=//input[@class='editor-text mode-edit']
# Dias
${CpDiasA}        xpath=//*[@id="grdProtocolo"]/div[4]/div[3]/div/div/div[3]
${CpDiasB}        xpath=//input[@class='editor-text mode-edit']
# Ciclo
${CpCicleA}       xpath=//input[@class='editor-text mode-edit']
# Data Inicio
${CpDtIniA}       xpath=//*[@id="grdProtocolo"]/div[4]/div[3]/div/div/div[6]
${CpDtIniB}       xpath=//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
# Data Validade
${CpDtValA}       xpath=//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
# Ativo
${CpAtivoA}       xpath=//div[@data-member='SN_ATIVO'][@class='ui-text']
${CpAtivoB}       xpath=//input[@class='ui-autocomplete-input ui-widget-content ui-buttoninput ui-corner-left']
# Filtro
${CpFiltro}       xpath=//button[@data-action='btnFiltro_click']
# Faixa Etaria: 30 a 40
${CpFaiEtA}       xpath=//input[@id='inp:vlIdadeInicial']
${CpFaiEtB}       xpath=//input[@id='inp:vlIdadeFinal']
# Confirma
${CpConfir}       xpath=//button[@class='ui-widget ui-button ui-center-horizontal btn btn-default ui-state-default ui-button-text-only mode-edit']
# Documento Padrão
${BtNotifiA}      xpath=//*[@id="notifications"]
${CpDocPad}       xpath=//*[@id="CNV_PROTOCOLO_CNV_PROTOCOLO_tab0"]
${CpDocPaA}       xpath=//*[@id="DOCUMENTO_PADRAO_grdDocumentoPadrao"]/div[4]/div[3]/div/div/div[1]/div/button/span[1]
${CpDocPaB}       xpath=//*[@id="#filterLov"]
${CpDocPaC}       xpath=//*[@id="btfilter"]
${CpDocPaD1}      xpath=//*[@id="btok"]
# QtDia
${CpQtDias}       xpath=//input[@class='editor-text mode-edit']
# Salvar e Valida Msg de Registro Salvo
${BtSalvar}       xpath=//*[@id="tb-record-save"]/a/i
${MgsVerif}       xpath=//p[@class='notifications-item-text']
