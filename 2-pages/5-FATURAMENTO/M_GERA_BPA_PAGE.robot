##################################################################################################################################
# Autor: Marcos Costa
# Descrição: Realizar a Exportação Aba Remessa BPA
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${Checkbox1}     xpath=//button[@id='inp:snUtilizaNfe_btn']

# Salvar e Valida Msg de Registro Salvo
${BtSalvar}    xpath=//*[@id="tb-record-save"]/a/i
${MgsVerif}    xpath=//p[@class='notifications-item-text']