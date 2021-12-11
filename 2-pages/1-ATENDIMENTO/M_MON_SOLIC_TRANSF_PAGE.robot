##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Monitoramento de Solicitações de Transferência
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoDetalhar}                        xpath=//button[@id="btnDetalhar"]
${BotaoSair}                            xpath=//span[text()="4 - Sair"]/..