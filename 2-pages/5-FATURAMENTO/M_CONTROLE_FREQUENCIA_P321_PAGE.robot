##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoNomePaciente}              xpath=//div[@data-member="DSP_NM_PACIENTE"]
#Preencher campo Mês/Ano :122021
${CampoMesAno}                    xpath=//input[@id="inp:dtReferencia"]
#Preencher campo prontuario 173
${CampoProntuario}                xpath=//input[@id="inp:idPaciente"]
#Preencher tipo de procedimento: 28
${CampoAtendimento}               xpath=//input[@id="inp:cdTipAte"]
#Preencher Campo prestador: 750
${CampoPrestador}                 xpath=//input[@id="inp:cdPrestador"]
#PReencher Data incial do tratamento
${DataInicial}                    xpath=//input[@id="inp:dtInicioTratamento"]
#Preencher Data final do tratamento
${DataFinal}                      xpath=//input[@id="inp:dtFinalTratamento"]
#Preencher Campo Procedimento principal: 0304010367
${CodPRocedimentoPrincipal}       xpath=//div[@data-member="CD_PROCEDIMENTO_RT"]/input
#Clicar no Botao Salvar
${btnSalvar}                      xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
#CLicar no botão Imprimir ficha de controle
${BtnImprimirFichaControle}       xpath=//button[@data-member="BTN_IMPRIMIR"]
#Clicar no botão imprimir
${BtnImprimir}                    xpath=//div[@id="CV_PADRAO_PARAMETER"]/fieldset/div/button[@data-member="BTN_IMPRIMIR"]
${BtnSair}                        xpath=//button[@data-action="btnSair_click"]

${DivJan}                         xpath=//div[@class="ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable"]/div

#Fechar aba com PDF
#CLicar no botão sair
#Validação