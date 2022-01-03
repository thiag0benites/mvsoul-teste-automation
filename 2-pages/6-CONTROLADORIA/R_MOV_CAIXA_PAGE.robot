##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página    de Acompanhamento de Solicitacoes de Compras
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoEmpresa}        xpath=//input[@id="inp:cdMultiEmpresa"]
${CampoCaixa}          xpath=//input[@id="inp:cdCaixa"]
${BotaoImprimir}       xpath=//button[@data-member="BTN_GERAR_RELATORIO"]

