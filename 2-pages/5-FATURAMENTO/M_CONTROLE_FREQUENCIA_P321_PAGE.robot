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
${CampoMesAno}                    xpath=//input[@id="inp:dtReferencia"]
${CampoProntuario}                xpath=//input[@id="inp:idPaciente"]
${CampoAtendimento}               xpath=//input[@id="inp:cdTipAte"]
${CampoPrestador}                 xpath=//input[@id="inp:cdPrestador"]
${CampoDataInicial}               xpath=//input[@id="inp:dtInicioTratamento"]
${CampoDataFinal}                 xpath=//input[@id="inp:dtFinalTratamento"]
${CampoCodProcedimentoPrincipal}  xpath=//div[@data-member="CD_PROCEDIMENTO_RT"]/input
${btnSalvar}                      xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${BtnImprimirFichaControle}       xpath=//button[@data-member="BTN_IMPRIMIR"]
${BtnImprimir}                    xpath=//div[@id="CV_PADRAO_PARAMETER"]/fieldset/div/button[@data-member="BTN_IMPRIMIR"]
${BtnSair}                        xpath=//button[@data-member="BTN_SAIR"]
