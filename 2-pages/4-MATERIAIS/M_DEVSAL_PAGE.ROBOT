##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${campoDescricao}                   xpath=//input[@class='editor-text mode-edit']
                    

### Botoes ###


${btnSalvar}                        xpath=//li[@id='tb-record-save']




### Diversos ###
${Alerta}                           xpath=//div[@class='notifications-item-body notification-item-no-title']/p