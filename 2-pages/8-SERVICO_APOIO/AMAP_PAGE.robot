##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página AMAP (Escolha de Same Obrigatoria)
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoSame}                        xpath=//input[@id="inp:cdSame"]
${BotaoAcessar}                     xpath=//button[@id="ok"]