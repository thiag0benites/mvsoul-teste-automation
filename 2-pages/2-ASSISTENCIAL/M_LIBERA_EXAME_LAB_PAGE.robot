##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDtInicial}            xpath=//input[@id="inp:dtIni"]
${CampoDtFinal}              xpath=//input[@id="inp:dtFim"]
${StatusRealizado}           xpath=//div[@data-member="STATUS"][@title="R"]/..
${BotaoRevisar}              xpath=//button[@id="btnRevisar"]   
${BotaoRevisarTodos}         xpath=//button[@id="btnRevisar"]/span[text()="Revisar Todos"]/..
${BotaoProximoPedido}        xpath=//button[@id="btnProximoPedido"]
${BotaoAnteriorPedido}       xpath=//button[@id="btnAnteriorPedido"]
${StatusRevisado}            xpath=//div[@data-member="STATUS"][@title="V"]/..
${BotaoSair}                 xpath=//button[@data-block="APOIO"]/span[text()="Sair"]/..