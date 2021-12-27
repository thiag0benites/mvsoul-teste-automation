##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Internação Home Care
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovPaciente}                            xpath=//div[@id="INTERNACAO_cdPaciente"]/button
${BotaoLovOrigem}                              xpath=//div[@id="INTERNACAO_cdOriAte"]/button
${CampoData}                                   xpath=//input[@id="inp:dtAtendimento"]
${CampoHora}                                   xpath=//input[@id="inp:hrAtendimento"]
${BotaoLovMedico}                              xpath=//div[@id="INTERNACAO_cdPrestador"]/button
${CampoDataOpe}                                xpath=//input[@id="inp:dtInicioOperacao"]
${CampoHoraOpe}                                xpath=//input[@id="inp:hrInicioOperacao"]
${BotaoLovConvenio}                            xpath=//div[@id="INTERNACAO_cdConvenio"]/button
${BotaoLovPlano}                               xpath=//div[@id="INTERNACAO_cdConPla"]/button
${BotaoLovProcedimento}                        xpath=//div[@id="INTERNACAO_dspCdProInt"]/button
${BotaoLovCID}                                 xpath=//div[@id="INTERNACAO_cdCid"]/button
${BotaoLovTpInternacao}                        xpath=//div[@id="INTERNACAO_cdTipoInternacao"]/button
${BotaoLovTpAcomodacao}                        xpath=//div[@id="INTERNACAO_cdTipAcom"]/button
${BotaoLovServico}                             xpath=//div[@id="INTERNACAO_cdServico"]/button

${AbaConclusao}                                xpath=//a[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab7"]
${AbaEndereco}                                 xpath=//a[@id="CNV_PRINCIPAL_CNV_PRINCIPAL_tab6"]
${CampoCdEndereco}                             xpath=//div[@data-member="CD_ENDERECO"]
${CampoEndereco}                               xpath=//input[@id="inp:cdEndereco"]
${BotaoLovArea}                                xpath=//div[@id="INF_HOME_CARE_cdArea"]/button
${BotaoLovMedicoIndicacao}                     xpath=//div[@id="INF_HOME_CARE_cdPrestadorAco"]/button
${BotaoLovEnfermeira}                          xpath=//div[@id="INF_HOME_CARE_cdEnferSuper"]/button
${BotaoLovRespFinanceiro}                      xpath=//div[@id="INF_HOME_CARE_cdRespFinanc"]/button
${BotaoOK}                                     xpath=//button[@class="btn btn-primary"]               
