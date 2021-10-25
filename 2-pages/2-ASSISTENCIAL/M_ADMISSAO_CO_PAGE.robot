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

### Botoes ###
${BtnSetaAtendimento}            xpath=//*[@id="admissaoCo_cdAtendimento"]/button
${BtnFiltrar}                    xpath=//button[@id='btfilter']
${BtnOk}                         xpath=//button[@id='btok']


### Diversos ###
${SelecionaAtendimento}          xpath=//div[@class='ui-text'][contains(text(),'TESTE AUTOMACAO UM')]