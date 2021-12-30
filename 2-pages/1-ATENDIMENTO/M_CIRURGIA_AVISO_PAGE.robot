##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Cadastro de Cirurgia (Aviso Cirurgia)
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoCdAviso}                    xpath=//input[@id="inp:cdAvisoCirurgia"]
${BotaoNovaCirurgia}               xpath=//button[@data-action="btnNovaCirurgia_click"] 
${BotaoLovSubGrupo}                xpath=//div[@id="cdSubGrupoCirurgia"]/button
${BotaoLovGrupo}                   xpath=//div[@id="cdGrupoCirurgia"]/button
${BotaoLovCirurgia}                xpath=//div[@id="cdCirurgia"]/button
${BotaoLovPotContaminacao}         xpath=//div[@id="cdNaturezaCirurgia"]/button
${CampoLateralidade}               xpath=//input[@id="dsLateralidade_ac"]
${BotaoRetornar}                   xpath=//button[@id="btnRetornar"]
${BotaoSim}                        xpath=//li[@class="notification-buttons"]/button[text()="Sim"]
${CampoValidCirurgia}              xpath=//div[@data-member="CD_CIRURGIA"][@title="3657"]/..