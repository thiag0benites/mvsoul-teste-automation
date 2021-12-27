##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Anexo de Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDesc}      xpath=//input[@id="inp:dsTipPresc"]
${CampoEsq}       xpath=//input[@id="inp:cdTipEsq"]
${CampoEst}       xpath=//input[@id="inp:cdEstoque"]
${CampoProd}      xpath=//input[@id="inp:cdProduto"]
${CampoMensagem}    xpath=//p[@class="notifications-item-text"][text()="Registros gravados com sucesso (1 registros gravados)."]
