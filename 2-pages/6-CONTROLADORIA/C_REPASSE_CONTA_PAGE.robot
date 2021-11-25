##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
### CAMPOS ###
${CampoAtendimento}                                        xpath=//input[@id='inp:cdAtendimento']



### BOTOES ###
${BtnExecutarConsulta}                                     xpath=//a[@title='Executar Consulta']

### DIVERSOS ###
${LocatorComResultado}                                     xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width']//div[@title='3427']
${LocatorSemResultado}                                     xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width']//div[@title]