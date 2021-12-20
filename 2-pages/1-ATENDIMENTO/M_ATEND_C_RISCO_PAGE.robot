##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${campoDtPreAtend}                          xpath=//input[@id="inp:dtPreAtendimento"]

### Botoes ###
${btnSenhaAtend}                            xpath=//button[@id="atendidos_btn"]
${btnExecConsulta}                          xpath=//button[@id="btnExecutar"]
### Diversos ###

