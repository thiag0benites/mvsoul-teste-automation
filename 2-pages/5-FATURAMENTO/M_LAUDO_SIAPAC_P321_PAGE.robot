_##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_LAUDO_SIAPAC_P321

${cpCompetencia}        xpath=//input[@name="dtCompetencia"]
${elemProntuario}       xpath=//*[@id="inp:idPaciente"]
${cpProntuario}         xpath=//input[@name="idPaciente"]
${btnSimPaciente}       xpath=//*[@id="frames23"]
${cpTpTratamento}         xpath=//input[@name="cdTipAte"]
${cpDtSolicitacao}      xpath=//input[@name="dtLaudo"]
${cpPrestador}          xpath=//input[@name="idPrestador"]
${cpEstabelecimento}        xpath=//input[@name="cdEstabelecimento"]
${cpDtAutorizacao}      xpath=//input[@name="dtAutorizacao"]
${cpOrigem}             xpath=//input[@name="laudoSiaApac_cdOriAte"]
${cpProcedimento}       xpath=//input[@name="cdProcedimento"]
${cpSus}                xpath=//input[@name="cdServicoSus"]
${cpCidPrincipal}         xpath=//input[@name="cdCidPrincipal"]
${cpCidSec}             xpath=//input[@name="cdCidSecundario"]
${cpObservacao}         xpath=//textarea[@name="dsObservacao"]
${btnSalvar}            xpath=//i[@class="mv-basico-salvar"]
${btnSim}               xpath=//*[@id="frames29"]
#${elemNrAIH}              xpath=//button[@id="frames29"]
${cpNrAIH}              xpath=//input[@name="nrAihBarPosPos"]
${cpImc}                xpath=//input[@name="nrImcPacientePos"]
${cpPercPeso}           xpath=//input[@name="vlPercExcPesoPerdidoPos"]
${elemDtCirurgia}       xpath=//div[@id="dtCirurgiaBarPosPos"]
${cpDtCirurgia}         xpath=//input[@name="dtCirurgiaBarPosPos"]
${cpKlPerdidoPos}       xpath=//input[@name="vlQuilosPerdidosPos"]
${checkComorbidades}        xpath=//button[@id="inp:snComorbidadesPos_btn"]
${cpDiabetes}           xpath=//button[@id="inp:snDiabetesMellitusPos_btn"]
${cpApneia}             xpath=//button[@id="inp:snApneiaPos_btn"]
${cpProcCirurgia}       xpath=//button[@id="inp:snGastroplastiaDerivInPos_btn"]
${btnSalvar2}           xpath=//*[@id="btnRetornarBariatricaPos"]
${cpCodigo}             xpath=//*[@id="inp:cdLaudo"]