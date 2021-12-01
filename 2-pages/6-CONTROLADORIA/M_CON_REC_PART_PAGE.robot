##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoFiltro}                  xpath=//*[@id="#filterLov"]   


### Botoes ###
${BtnCodigo}                    xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtnFiltrar}                   xpath=//*[@id="btfilter"]
${BtOk}                         xpath=//*[@id="btok"]
${BtnConsultar}                 xpath=//*[@id="tb-execute"]/a
${BtnCheckBox}                  xpath=//button[@title='Selec']
${BtnConfirmar}                 xpath=//*[@id="butConfirmar"]
${BtnAlerta}                    xpath=//button[@class='btn btn-primary']


### Diversos ###
${Alerta}                       //p[@class='notifications-item-text'][contains(text(),"Conta(s) a receber gerada(s) com sucesso !")]             









