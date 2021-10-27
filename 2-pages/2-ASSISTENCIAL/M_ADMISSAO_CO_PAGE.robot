##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../../Config.robot

*** Variable ***
### Elementos da Pagina de Manutenção de Remessa

### Campos ###
${CampoFiltroAtend}              xpath=//input[@class='filterinput']
${CampoDataInicial}              xpath=//input[@id='inp:admissaoCo_dtParto']
${CampoTipoParto}                xpath=//input[@id='inp:cdTipParto']
${CampoFIltoParto}               xpath=//input[@id='#filterLov']

### Botoes ###
${BtnSetaAtendimento}            xpath=//*[@id="admissaoCo_cdAtendimento"]/button
${BtnFiltrar}                    xpath=//button[@id='btfilter']
${BtnOk}                         xpath=//button[@id='btok']
${BotaoDataInicial}              xpath=//*[@id="admissaoCo_dtParto"]/button
${BtnTipoParto}                  xpath=//*[@id="cdTipParto"]/button

### Diversos ###
${SelecionaAtendimento}          xpath=//div[@class='ui-text'][contains(text(),'TESTE AUTOMACAO UM')]
${SelecionaTipoParto}            xpath=//div[@class='ui-widget-content slick-row even']