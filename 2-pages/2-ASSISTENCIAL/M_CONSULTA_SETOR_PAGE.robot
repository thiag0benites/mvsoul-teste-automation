##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Consulta de Setores
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${BotaoFiltro}                              xpath=//button[@id="btnFiltro"][@title="Filtro das Pendências"]
${BotaoSetor}                               xpath=//div[@id="cdSetExa"]/button

${LovSetores}                               xpath=//div[@data-member="CD_CODIGO"]/button
${BotaoAdd}                                 xpath=//button[@id="btnAdicionar"]
${BotaoRemove}                              xpath=//button[@id="btnRemover"]
${BotaoOk}                                  xpath=//button[@id="btnOk"]



