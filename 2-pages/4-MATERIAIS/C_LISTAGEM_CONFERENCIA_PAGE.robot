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
${BtnCodigo}                    xpath=//button[@tabindex='-1']
${BtnFiltrar}                   xpath=//*[@id="btfilter"]
${BtOk}                         xpath=//*[@id="btok"]
${BtnConsultar}                 xpath=//*[@id="tb-execute"]/a
${BtnCheckBoxCt34421}           xpath=//button[@title='Selec']
${BtnConfirmar}                 xpath=//*[@id="butConfirmar"]
${BtnAlerta}                    xpath=//*[@id="frames32"]


### Diversos ###
${Alerta}                       Conta(s) a receber gerada(s) com sucesso !             









