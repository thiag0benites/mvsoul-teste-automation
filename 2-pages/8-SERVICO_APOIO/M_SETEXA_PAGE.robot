##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Solicitações de Produtos ao Estoque
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoNome}                        xpath=//input[@id="inp:nmSetExa"]
${BotaoLovTpStExame}                xpath=//div[@id="tpSetor"]/button
${CampoNrAtual}                     xpath=//input[@id="inp:nmAtualControle"]
${BotaoLovCentroCusto}              xpath=//div[@id="cdSetor"]/button
${BotaoLovPrestador}                xpath=//div[@id="cdPrestador"]/button  