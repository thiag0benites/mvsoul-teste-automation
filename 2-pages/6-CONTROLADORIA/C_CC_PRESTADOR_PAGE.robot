##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoPrestador}                      xpath=//div[@id="cdPrestador"]/input
${CampoDataInicial}                    xpath=//input[@id="inp:dtInicial"]
${CampoDataFinal}                      xpath=//input[@id="inp:dtFinal"]


### Botoes ###

${BtnConsultar}                        xpath=//button[@data-member="BTN_CONSULTA"]


### Diversos ###


${Saldo}                               xpath=//div[@data-member="SUM_VL_SALDO"]/input

