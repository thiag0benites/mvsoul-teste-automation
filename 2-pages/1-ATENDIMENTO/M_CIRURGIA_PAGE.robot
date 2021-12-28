##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página Cirurgia
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoDescricao}                                   xpath=//input[@id="inp:dsCirurgia"]
${CampoPorte}                                       xpath=//input[@id="inp:cirurgia_cdPorteCirurgia"]
${CampoSubgrupo}                                    xpath=//input[@id="inp:cirurgia_cdSubGrupoCirurgia"]
${CampoProcedimento}                                xpath=//input[@id="inp:cdProFat"]
${CampoVia}                                         xpath=//input[@id="inp:cirurgia_cdViaDeAcesso"]
${CampoProcedimentoSIH}                             xpath=//input[@id="inp:cdProcedimentoSih"]
${CampoProcedimentoSIA}                             xpath=//input[@id="inp:cdProcedimentoSia"]
${CampoOrientacao}                                  xpath=//textarea[@id="inp:cirurgia_dsOrientacao"]
${CampoPreparo}                                     xpath=//textarea[@id="inp:cirurgia_dsPreparo"]
${BotaoOk}                                          xpath=//button[@class="btn btn-primary"]
