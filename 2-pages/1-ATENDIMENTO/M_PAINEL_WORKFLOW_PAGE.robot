##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###

### Botoes ###
${BtnDtPrevista}               xpath=//button[@id="rbDtPrevista_btn"]
${BtnPreAg}                    xpath=//div[@id="counterCOUNT_PA"]
${BtnRevisao}                  xpath=//div[@id="counterCOUNT_RE"]
${BtnCotacao}                  xpath=//div[@id="counterCOUNT_CO"]
${BtnAguardCotacao}            xpath=//div[@id="counterCOUNT_AC"]
${BtnSolicGuia}                xpath=//div[@id="counterCOUNT_SG"]
${BtnAguardGuia}               xpath=//div[@id="counterCOUNT_RA"]
${BtnConfirmacao}              xpath=//div[@id="counterCOUNT_CP"]
${BtnAguardRealizacao}         xpath=//div[@id="counterCOUNT_AR"]
${BtnTodos}                    xpath=//div[@id="counterCOUNT_TOTAL"]
### Diversos ###
