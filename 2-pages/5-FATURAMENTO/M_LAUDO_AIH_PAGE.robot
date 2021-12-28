##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Laudo médico para emissão de AIH
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoCdPaciente}    xpath=//input[@id="inp:cdAtendimento"]
${CampoDtEmissao}    xpath=//input[@id="inp:dtEmissao"]
${BotaoLovEstSolicitante}    xpath=//div[@id="cdEstabelecimento"]/button
${BotaoLovCaraterAtend}    xpath=//div[@id="cdCaraterAtendimento"]/button
${BotaoLovEspecialidade}    xpath=//div[@id="cdEspecSus"]/button
${BotaoLovPrestador}    xpath=//div[@id="cdPrestador"]/button
${BotaoLovCIDSecundario}    xpath=//div[@id="cdCidSecundario"]/button
${BotaoLovCIDAssociado}    xpath=//div[@id="cdCidCausasAssociadas"]/button
${CampoPrincipaisSinais}    xpath=//textarea[@id="inp:dsSinaisSintClinicos"]
${CampoJustInternacao}    xpath=//textarea[@id="inp:dsCondJustInternacao"]
${CampoResultProvaDiag}    xpath=//textarea[@id="inp:dsResultProvDiag"]
${CampoDiagInicial}    xpath=//textarea[@id="inp:dsDiagnostico"]
${BotaoImprimirLaudo}    xpath=//button[@id="butImprime"]
${BotaoImprimir}    xpath=//button[@data-action="btnImprimir_click"]
${BotaoSim}       xpath=//li[@class="notification-buttons"]/button[text()="Sim"]
${Notificacao}    xpath=//li[@id="notifications"]/a
