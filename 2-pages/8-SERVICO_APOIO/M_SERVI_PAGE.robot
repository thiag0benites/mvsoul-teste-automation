##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Cadastro de Serviços
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoEditavel}                         xpath=//input[@class="editor-text mode-edit"]
${CampoPeso}                             xpath=//div[@data-member="PESO"]/..
${CampoDocServReinf}                     xpath=//div[@data-member="CD_EFD"]/..
${BotaoLov}                              xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoDMS}                              xpath=//div[@data-member="CD_SERV_DMS"]/..         
${CampoContaContabil}                    xpath=//div[@data-member="CD_REDUZIDO"]/..
${CampoContaCusto}                       xpath=//div[@data-member="CD_ITEM_RES"]/..
${CampoSPEDFISCAL}                       xpath=//div[@data-member="CD_SERVICO_SPED_FISCAL"]/..  
${CampoHrMax}                            xpath=//div[@data-member="QTD_HORA_MAX"]/..
${CampoMinMax}                           xpath=//div[@data-member="QT_MINUTO_MAX"]/..
${CampoHrMin}                            xpath=//div[@data-member="QTD_HORA_MIN"]/..
${CampoMinMin}                           xpath=//div[@data-member="QT_MINUTO_MIN"]/..
${CampoCatServ}                          xpath=//input[@id="undefined_ac"]
${CampoEspecie}                          xpath=//div[@data-member="CD_ESPECIE"]/..
${CampoClasse}                           xpath=//div[@data-member="CD_CLASSE"]/..
${CampoSubClasse}                        xpath=//div[@data-member="CD_SUB_CLA"]/..
${CampoVlServ}                           xpath=//div[@data-member="VL_SERVICO"]/..
${CampoContaSIGFE}                       xpath=//div[@data-member="CD_CONTA_SIGFE"]/..



