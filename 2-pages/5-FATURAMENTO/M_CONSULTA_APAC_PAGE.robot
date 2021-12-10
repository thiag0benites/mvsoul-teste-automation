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

### Botoes ###
${btnTipo}                         xpath=//input[@id='undefined_ac']
${BtnValidar}                      xpath=
${BtnAlerta}                       xpath=
${BtnExecutarConsulta}             xpath=
${BtnOk}                           xpath=

### Diversos ###
${Alerta}                          xpath=//p[@class='notifications-item-text']







