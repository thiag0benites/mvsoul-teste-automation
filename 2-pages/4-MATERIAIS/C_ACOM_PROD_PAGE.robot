##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Produtos do Estoque
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovProduto}                                   xpath=//div[@id="cdProduto"]/button 
${RadioButtonBusca}                                  xpath=//button[@id="o_btn"]  
${BotaoLovEstoque}                                   xpath=//div[@id="cdEstoque"]/button 
${CampoDtInicial}                                    xpath=//input[@id="inp:dtInicial"]
${CampoDtFinal}                                      xpath=//input[@id="inp:dtFinal"]
${BotaoPesquisar}                                    xpath=//button[@id="btnPesquisar"]