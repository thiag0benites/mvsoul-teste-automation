##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Geração de Repasse
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
 
*** Variable ***
${BotaoLovModoPesquisa}                        xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-search"]/button
${BotaoLovRepPrestador}                        xpath=//div[@id="DADOS_REPASSE_cdRegRepasse"]/button
${BotaoLovRepSIA}                              xpath=//div[@id="DADOS_REPASSE_cdRegRepasseSia"]/button
${BotaoLovRepSIH}                              xpath=//div[@id="DADOS_REPASSE_cdRegRepasseSih"]/button
${BotaoLovFornecedor}                          xpath=//div[@id="DADOS_REPASSE_cdFornecedor"]/button
${BotaoLovQuantCH}                             xpath=//div[@id="DADOS_REPASSE_cdIndice"]/button