##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_CENTRAL_ATIVO
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página M_CENTRAL_ATIVO
${cpTombInicial}            xpath=//input[@name="dtTombamentoIni"]
${cpTombFinal}              xpath=//input[@name="dtTombamentoFim"]
${elemSetaBaixo}            xpath=(//span[@class="ui-button-icon ui-icon mv-basico-seta_baixo_simples"])[5]
${cpAmbos}                  xpath=//*[@id="snDespOperacional_ac"]
${btnPesquisa}              xpath=//button[@id="btnPesquisa"]
${checkProd}                xpath=(//*[@class="ui-button ui-widget ui-state-default ui-button-icon-only ui-label-position-default mode-edit"])[8]
${cpDtBaixa}                xpath=//input[@name="dtBaixa"]
${cpMotivo}                 xpath=//input[@name="cdMotivo"]
${btnBaixa}                 xpath=//*[@id="BAIXA_btBaixa"]
${btnSim}                   xpath=//*[@id="frames32"]
${btnSim2}                  xpath=//*[@id="frames34"]
${btnSim3}                  xpath=//*[@id="frames36"]
${msgRecebida}              xpath=//div[@class="notifications-item"]