##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página Consulta de Exames Realizados
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BtnAviso}       xpath=//button[@class="btn btn-primary/button"]
${Pedido}         xpath=//input[@name="cdColetaMaterial"]
${BtnConsulta}    xpath=//i[@class="mv-basico-confirmar"]
${MarcarCaixa}    xpath=(//button[@title="Confirmada"])[5]
${BtnSalvar}      xpath=//i[@class="mv-basico-salvar"]
${CampoData}      xpath=//input[@id="inp:dtColeta1"]
${BtnSelecionar}    xpath=//button[@data-action="snColetaSetor_change"]
${BtnErroOp}      xpath=//li[@class="notification-buttons"]/button[text()="Erro Operacional"]
${Msg}            xpath=//div[@class="notifications-item"]
