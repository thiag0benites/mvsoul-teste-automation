##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página Confirmação de Coleta nos Setores e Postos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoProcurar}                               xpath=///input[@id="inp:cdColetaMaterial"]
${CampoCod}                                    xpath=//input[@name="cdColetaMaterial"]
${BotaoConfirmar}                              xpath=//i[@class="mv-basico-confirmar"]


