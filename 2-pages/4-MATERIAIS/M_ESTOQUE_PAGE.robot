##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoDescricao}                   xpath=//input[@class='editor-text mode-edit']
${CampoTipo}                        xpath=//div[@data-member='TP_ESTOQUE']/..
${ItemListaDescricao}               xpath=//div[@title='5 - HOSPITAL MV - MATRIZ  - TESTES WATI '] 
${CampoRouparia}                    xpath=//input[@id='snControlarRouparia_ac']


### Botoes ###

${BtnTipo}                         xpath=//input[@id='undefined_ac']
${BtnMultiEmpresa}                 xpath=//div[@id='cdMultiEmpresa']//button
${BtnSetor}                        xpath=//div[@data-member='CD_SETOR'][@id='cdSetor']//button
${BtnAlerta}                       xpath=//li[@class='notification-buttons']//button[contains(text(),"Sim")]
${BtnOK}                           xpath=//button[@id="btok"]

### Diversos ###
${Alerta}                          xpath=//p[@class='notifications-item-text']
   






