##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Confirmação de Entrega de Amostra
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoCdAmostra}                                xpath=//div[@data-member="CD_AMOSTRA"]/..
${StatusNaoEntregue}                             xpath=//div[@data-member="STATUS"][@title="Não Entregue"]
${BotaoNovaEntrega}                              xpath=//button[@id="btnNovaEntrega"]
${CampoEntregaAmostra}                           xpath=//input[@id="inp:cdAmostra"] 
