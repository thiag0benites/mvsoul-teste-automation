##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Digitação dos Produtos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${TituloPrincipal}              xpath=//div[@id="dspTitulo01"]
${CampoCodigo}                  xpath=//input[@name="cdContagem"]
${BotaoExecConsulta}            xpath=//a[@title="Executar Consulta"]
${BotaoAdicionar}               xpath=//a[@title="Adicionar"]
${BotaoLovProduto}              xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]
${CampoFiltro}                  xpath=//input[@name="filterLov"]
${BotaoFiltrar}                 xpath=//button[@id="btfilter"]    
${BotaoOk}                      xpath=//button[@id="btok"]
${BotaoLovMarca}                xpath=//input[@id="inp:itcontagemUsuario_dsMarca"]/../button
${CampoLote}                    xpath=//input[@id="inp:itcontagemUsuario_cdLote"]
${CampoValidade}                xpath=//input[@id="inp:itcontagemUsuario_dtValidade"]
${CampoQtEstoque}               xpath=//input[@id="inp:itcontagemUsuario_qtEstoque"]
${BotaoFecharMov}               xpath=//button[@id="ITEM_USUARIO_btnEnviaItcontagem"]
${MensagemFecharMov}            xpath=//p[text()="Fechamento da leitura realizado com sucesso!"]
${BotaoOkMensagem}              xpath=//li[@class="notification-buttons"]/button