##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAtendimento}                         xpath=//input[@id="inp:cdAtendimento"]
${BotaoLovServico}                          xpath=//div[@data-member="CD_SERVICO"]/button