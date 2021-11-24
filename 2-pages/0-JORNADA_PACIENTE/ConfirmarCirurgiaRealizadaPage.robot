##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Elementos e metodos da página de Cadastro do Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de Cadastro de Paciente

#Inputs
${inputDtHrEntradaSala}    xpath=//input[@id='inp:dtEntradaSala']
${inputDtHrIniCirurgia}    xpath=//input[@id='inp:dtInicioCirurgia']
${inputDtHrSaidaSala}      Xpath=//input[@id='inp:dtSaidaSala']
