##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Objetos de Prontuário
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${ObjetoPaiAferic}    xpath=//div[text()='AFERIC']
${BotaoEdicao}    xpath=//button[@data-member="BTN_EDITAR_EXIBICAO"][@data-row="0"]
${BotaoCid}       xpath=//button[@id="btnDsCidatendime"]
${BotaoSalvar}    xpath=//button[@id="btnSalvar"]
