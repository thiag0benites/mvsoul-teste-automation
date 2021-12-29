##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_LACTO_AIH_P321
${botaoOk}                              xpath=//nav[5]/div/div[2]/ul/li[1]/ul/li[2]/button
${campoProntuario}                      xpath=//input[@id='inp:atendime_idPaciente']
${ElementoMsgRecebida}                  xpath=//p[@class='notifications-item-text']
${btnPesquisaCodAtend}                  xpath=//nav[5]/div/div[1]/ul/li/ul/li[1]
${campoCodAtend}                        xpath=//div[2]/div/div[3]/div/div/form/div/div/div[2]/div/fieldset[1]/div/div[1]/input
${btnExecutar}                          xpath=//nav[5]/div/div[1]/ul/li/ul/li[2]
${campoPaciente}                        xpath=//div[2]/div/div[3]/div/div/form/div/div/div[2]/div/fieldset[1]/div/div[6]/span
${abaContas}                            xpath=//li//a[@id='LANCTO_AIH_LANCTO_AIH_tab2']
${abaItens}                             xpath=//li//a[@id='LANCTO_AIH_LANCTO_AIH_tab3']
${abaCriticas}                          xpath=//li//a[@id='LANCTO_AIH_LANCTO_AIH_tab4']
${btnSalvar}                            xpath=//li[@id='toolbar']//li[@id='tb-record-save']
${campoNrAIH}                           xpath=//div[@class='slick-cell b1 f1 selected active editable']//input
${campoRemessa}                         xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${campoRemessaInput}                    xpath=//div[2]/div/div[2]/div/div/form/div/div/div[3]/div/fieldset[3]/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[5]/div/input
${campoInternacao}                      xpath=//div[@class='slick-cell b6 f6 selected ui-fixed-width']
${campoInternacaoInput}                 xpath=//div[2]/div/div[2]/div/div/form/div/div/div[3]/div/fieldset[3]/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[7]/div/input[2]
${campoAlta}                            xpath=//div[@class='slick-cell b7 f7 selected ui-fixed-width']
${campoAltaInput}                       xpath=//div[2]/div/div[2]/div/div/form/div/div/div[3]/div/fieldset[3]/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[8]/div/input[2]
${campoProced}                          xpath=//div[@class='slick-cell b8 f8 selected ui-fixed-width']
${campoProcedInput}                     xpath=//div[2]/div/div[2]/div/div/form/div/div/div[3]/div/fieldset[3]/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[9]/div
${campoEspecialidade}                   xpath=//div[@class='slick-cell b9 f9 selected ui-fixed-width']
${campoEspecialidadeInput}              xpath=//div[2]/div/div[2]/div/div/form/div/div/div[3]/div/fieldset[3]/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[10]/div/input
${campoMotivo}                          xpath=//div[@class='slick-cell b10 f10 selected ui-fixed-width']
${campoMotivoInput}                     xpath=//div[2]/div/div[2]/div/div/form/div/div/div[3]/div/fieldset[3]/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[11]/div/input
${campoCA}                              xpath=//div[@class='slick-cell b11 f11 selected ui-fixed-width']
${campoCAInput}                         xpath=//div[2]/div/div[2]/div/div/form/div/div/div[3]/div/fieldset[3]/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[12]/div/input
${campoDataLaudo}                       xpath=//div[@class='slick-cell b12 f12 selected ui-fixed-width']
${campoDataLaudoInput}                  xpath=//div[2]/div/div[2]/div/div/form/div/div/div[3]/div/fieldset[3]/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[13]/div/input[2]
