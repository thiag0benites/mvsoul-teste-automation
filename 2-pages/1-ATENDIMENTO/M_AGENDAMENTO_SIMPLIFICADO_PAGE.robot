##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página de Consulta de Agendamento Ambulatorial Simplificado (Std)
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BtnPrestador}    xpath=//input[@name="pPrestador"]
${BtnPesq}        xpath=//button[@title="Pesquisar"]
