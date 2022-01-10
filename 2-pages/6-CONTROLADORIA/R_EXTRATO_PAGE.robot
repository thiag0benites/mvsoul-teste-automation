##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###

### Botoes ###
${btnImprimir}                            xpath=//button[@data-member="BTN_GERAR_RELATORIO"]/span[text()="Imprimir"]

### Diversos ###
