##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Confirmacao de Solicitacoes
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoSol}                 xpath=//input[@id="inp:cdSolicSangue"]

${DivQt}                    xpath=//div[@class="slick-cell b9 f9 selected"]
${CampoQt}                  xpath=//input[@class="editor-text mode-edit"]
${BotaoConfirmado}          xpath=//button[@title="Confirmado"]
${BotaoMarcado}             xpath=//button[@title="Confirmado"][@state="checked"]