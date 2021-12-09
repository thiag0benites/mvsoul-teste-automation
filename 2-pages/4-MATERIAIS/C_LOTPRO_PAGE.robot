##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Produtos do Estoque
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoProduto}                            xpath=//input[@id="inp:cdProduto"]
${MensagemToast}                           xpath=//p[@class="notifications-item-text"] 
${BotaoNao}                                xpath=//li[@class="notification-buttons"]/button[text()="Não"]
