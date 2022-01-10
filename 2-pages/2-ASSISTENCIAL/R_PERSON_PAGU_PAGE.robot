##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoUnidadeDeInternacao}                   xpath=//input[@id="inp:cdUnidInt"]
${CampoConvenio}                              xpath=//input[@id="inp:cdConvenio"]

### Botoes ###

${BtnImprimir}                                xpath=//button[@data-member="BTN_GERAR_RELATORIO"]

### Diversos ###







