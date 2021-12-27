##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
<<<<<<< HEAD
${CampoDataEntrega}           xpath=//input[@id="inp:dtEntrega"]
${CampoAtendimento}           xpath=//div[@data-member="CD_ATENDIMENTO"][@data-row="0"]
${CampoExame}                 xpath=//div[@data-member="PCE"][@data-row="1"]
=======
${CampoDataEntrega}    xpath=//input[@id="inp:dtEntrega"]
${CampoAtendimento}    xpath=//div[@data-member="CD_ATENDIMENTO"][@data-row="0"]
>>>>>>> 5011564a9779db7c83da7168c39c44cd1a4ec136
### Botoes ###
${BtnExecConsulta}    xpath=//button[@id="btnExecutaConsulta"]
${BtnSelecionar}    xpath=//button[@id="btnSelecionar"]
### Diversos ###
