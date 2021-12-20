##################################################################################################################################
# Autor: Marcos Costa
# Descrição: O Caso de Teste tem como Objetivo Configurar Lista de Paciente do Tipo Internação.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
# Pesquisar
${CpAtend}         xpath=//input[@name="cdAtendimento"]
${CpPacie}         xpath=//input[@name="cdPaciente"]
${CpPesq}          xpath=//i[@class='mv-basico-confirmar']
${CpObser}          xpath=//textarea[@name="dsObsBaixa"]

# Salvar e Valida Msg de Registro Salvo
${BtSalvar}    xpath=//*[@id="tb-record-save"]/a/i
${MgsVerif}    xpath=//p[@class='notifications-item-text']

