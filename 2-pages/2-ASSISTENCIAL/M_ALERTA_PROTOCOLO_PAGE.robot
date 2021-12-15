##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDescricao}                        xpath=//input[@id="inp:dsAlertaProtocolo"]
${CbFinalizarAfericao}                   xpath=//button[@id="inp:snDisparaAfericao_btn"] 
${CbFinalizarDocumento}                  xpath=//button[@id="inp:snDisparaDocumento_btn"] 
${CbHistoricoEnfermagem}                 xpath=//button[@id="inp:snDisparaHistEnf_btn"] 
${CbLaudarExame}                         xpath=//button[@id="inp:snDisparaLaudo_btn"] 
${CbFinalizarDiagnostico}                xpath=//button[@id="inp:snDisparaDiagnostico_btn"] 
${CbAvaliacaoScore}                      xpath=//button[@id="inp:snDisparaAvaliaScore_btn"] 
${CbTransferirLeito}                     xpath=//button[@id="inp:snDisparaMovInt_btn"] 
${CbPrescricao}                          xpath=//button[@id="inp:snDisparaPrescricao_btn"] 
${AtivarCampoMsgAlerta}                  xpath=//div[@id="dsMensagem"] 
${CampoMensagemAlerta}                   xpath=//textarea[@id="inp:dsMensagem"]
${CampoEtapaProtocolo}                   xpath=//div[@data-member="CD_ETAPA_PROTOCOLO"]/..
${BotaoLovEdit}                          xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoOrdem}                            xpath=//div[@data-member="CD_ORDEM"]/..
${CampoOrdemEdit}                        xpath=//input[@class="editor-text mode-edit"]
${CbHabilitaVisualizacao}                xpath=//button[@id="inp:snAtivaIconeListaPaciente_btn"] 
${CampoSigla}                            xpath=//input[@id="inp:dsSiglaProtocolo"]
${BotaoCor}                              xpath=//button[@id="btnCor"]
${CorVermelho}                           xpath=//button[@id="XD03C3C"]
${BotaoLovCriticidade}                   xpath=//div[@id="cdOrdemProtocolo"]/button
${BotaoLovCriterioEvento}                xpath=//div[@id="cdGrupoCriterioEntrada"]/button
${CampoTpEntrada}                        xpath=//input[@id="tpPontoEntrada_ac"]
${BotaoLovDocumento}                     xpath=//div[@id="cdDocumento"]/button
${CampoCdProtocolo}                      xpath=//input[@id="inp:cdAlertaProtocolo"]            