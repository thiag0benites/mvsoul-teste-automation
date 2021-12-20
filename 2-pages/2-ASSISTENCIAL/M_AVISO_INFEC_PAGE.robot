##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Pacientes Internados e Susceptíveis a Processos Infecciosos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovAtendimento}                    xpath=//div[@id="cdAtendimento"]/button
${CbProcInvasivo}                         xpath=//button[@id="inp:paramConfigPsih_procedInvasivo_btn"]
${CbCulturas}                             xpath=//button[@id="inp:paramConfigPsih_culturaPositiva_btn"]
${CbAltaUltrapassada}                     xpath=//button[@id="inp:paramConfigPsih_dtAltaPrevUltrapassada_btn"]
${CbAvisoCirurgia}                        xpath=//button[@id="inp:paramConfigPsih_avisoCirurgia_btn"]
${CbAntimicrobiano}                       xpath=//button[@id="inp:paramConfigPsih_usoAntimicrobiano_btn"]
${CbExaLab}                               xpath=//button[@id="inp:snNotificacaoCcih_btn"]
${RbAmbos}                                xpath=//button[@id="rb_RegInfeccao_Ambos_btn"]
${BotaoPesquisar}                         xpath=//button[@id="btnPesquisar"]
${AbaAntimicrobiano}                      xpath=//a[@id="CV_DETALHAMENTO_CV_DETALHAMENTO_tab1"]  
${AbaProcInvasivo}                        xpath=//a[@id="CV_DETALHAMENTO_CV_DETALHAMENTO_tab2"]  
${AbaCirurgias}                           xpath=//a[@id="CV_DETALHAMENTO_CV_DETALHAMENTO_tab3"]  
