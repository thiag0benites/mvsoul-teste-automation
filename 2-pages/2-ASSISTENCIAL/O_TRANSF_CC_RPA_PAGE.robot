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
${CampoAtendimento}        xpath=//*[@id="inp:cdAtendimento"]
${IdeCodigoAviso}          xpath=//*[@id="grdMovCcRpa1"]/div[4]/div[3]/div/div/div[1]
${CampoCodigoAviso}        xpath=//*[@id="#frames36"]

### Botoes ###
${BtnExecutarConsulta}     xpath=//i[@class="mv-basico-confirmar"]  
${BtnListaCodigoAviso}     xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtnOk}                   xpath=//button[@id='btok']
### Elementos Diversos
${TabelaCodigoAviso}       xpath=//div[@class='ui-widget-content slick-row even']
