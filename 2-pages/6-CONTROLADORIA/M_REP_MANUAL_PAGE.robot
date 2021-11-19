##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Botoes ###
${BtnProcurar}                                    xpath=//i[@class='mv-basico-pesquisar']
${BotaoDataCompetencia}                           xpath=//button[@class='ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon ui-state-default']
${BtnExecutarConsulta}                            xpath=//a[@title='Executar Consulta']
${BtnAdicionar(+)}                                xpath=//a[@title='Adicionar']
${BtnCalendDataRepasse}                           xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon ui-state-default']


### Campos ###
${CampoDataCompet}                                xpath=//input[@id='inp:dspDtCompetencia']
${CampoDataRepasse}                               xpath=//input[@class='ui-widget-content ui-buttoninput ui-corner-left error']



### DIversos ###