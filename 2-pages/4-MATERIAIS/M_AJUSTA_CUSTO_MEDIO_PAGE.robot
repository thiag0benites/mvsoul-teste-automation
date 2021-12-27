##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Ajusta Valor do Custo Médio do Produto
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovEstoque}                xpath=//div[@id="cdEstoque"]/button
${CampoTpAjuste}                  xpath=//input[@id="tpAjuste_ac"]
${CampoProduto}                   xpath=//div[@data-member="CD_PRODUTO"]/..
${BotaoLovProduto}                xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoJustificativa}             xpath=//textarea[@id="inp:dsMotivoAjuste"]
${BotaoGerarValorAjuste}          xpath=//button[@id="btnGerarValorAjuste"]     
${BotaoSim}                       xpath=//li[@class="notification-buttons"]/button[text()="Sim"] 
${CampoNovoCustoMedio}            xpath=//input[@id="inp:vlCustoMedioNovo"]
${BotaoConfirmar}                 xpath=//button[@id="btnGerar"]    

