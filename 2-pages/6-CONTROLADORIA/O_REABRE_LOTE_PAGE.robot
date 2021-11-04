##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
### Campos ###
${CampoCodigo}                        xpath=//input[@id='inp:cdCaixa']
${CampoPesquisa}                      xpath=//input[@id='#filterLov']
### Botoes ###
${BtnListaCampoCodigo}                xpath=//*[@id="cdCaixa"]/butto
${BtnExecutarConsulta}                xpath=//*[@id="tb-execute"]/a
${CheckBoxReabrir}                    xpath=//button[@class='ui-button ui-widget ui-state-default ui-button-icon-only ui-label-position-default mode-edit']
### Diversos ###
${Codigo}                             xpath=//div[@class='ui-text'][@title='${Item}']