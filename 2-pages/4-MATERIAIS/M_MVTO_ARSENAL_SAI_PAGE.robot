##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Movimentação de Arsenal - Saída
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovSetorCME}    xpath=//div[@id="cdSetorPrincipal"]/button
${BotaoLovColabRetirante}    xpath=//div[@id="cdIdentificacaoRetirante"]/button
${BotaoLovColaborador}    xpath=//div[@id="cdIdentificacao"]/button
${BotaoLovSetor}    xpath=//div[@id="dspCdSetor"]/button
${BotaoLovLocalidade}    xpath=//div[@id="dspCdLocalidade"]/button
${CampoCdComposicao}    xpath=//div[@data-member="CD_KIT"]/..
${CampoEdit}      xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CbConfirmarSaida}    xpath=//button[contains(@data-column, "grdCompCxKit_col9")]
${CbConfirmarEntrada}    xpath=//button[contains(@data-column, "grdCompCxKit1_col7")]
