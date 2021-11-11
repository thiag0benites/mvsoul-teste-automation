##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de  Produtos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovDescricao}                          xpath=//div[@id="dspCaseDsProduto"]/button
${CampoDescResumida}                          xpath=//input[@id="inp:dsProdutoResumido"]
${CampoTipoProduto}                           xpath=//input[@id="snConsignado_ac"]
${BotaoLovUnidade}                            xpath=//div[@id="dspCdUnidade"]/button
${BotaoLovEspecie}                            xpath=//div[@id="cdEspecie"]/button
${BotaoLovClasse}                             xpath=//div[@id="cdClasse"]/button
${BotaoLovSubclasse}                          xpath=//div[@id="cdSubCla"]/button
${CampoLote}                                  xpath=//input[@id="snLote_ac"]
${CampoRegistroAnvisa}                        xpath=//input[@id="snRegistroAnvisa_ac"]
${BotaoLovAtividade}                          xpath=//div[@id="cdTipAtiv"]/button
${MensagemToast}                              xpath=//p[@class="notifications-item-text"]
${BotaoNao}                                   xpath=//li[@class="notification-buttons"]/button[text()="Não"]         
${BotaoSim}                                   xpath=//li[@class="notification-buttons"]/button[text()="Sim"]          