##################################################################################################################################
# Autor: Marcio Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Variable ***
${InputDataInicial}                      xpath=/html/body/div[2]/div/div[3]/div/div/form/div/div/fieldset[1]/div/div/div[3]//div[@data-member='DT_INICIO']
${InputDataFinal}                        xpath=/html/body/div[2]/div/div[3]/div/div/form/div/div/fieldset[1]/div/div/div[3]//div[@data-member='DT_FIM']
${Btn_Pagamento}                         xpath=//div[@class='ui-widget ui-radiogroup ui-label-position-left ui-label-align-start ui-box-horizontal ui-layout-horizontal ui-nolabel ui-box-fixed-size mode-edit ui-widget-active']//button[@id='rb_TpData_RdPagamento_btn']
# ${Btn_Baixa}                             xpath=
${Btn_Liberar}                           xpath=/html/body/div[2]/div/div[3]/div/div/form/div/div/fieldset[1]/div/div/div[3]/button

${MensagemAlert}                         xpath=//ul//li[@class='notification-warning']
${Btn_OK}                                xpath=//ul//li//button[@class='btn btn-primary']
${Campo_QntdeRegistros}                  xpath=/html/body/div[2]/div/div[3]/div/div/form/div/div/fieldset[3]/div/div/div[1]
${Campo_MensagemProcesso}                xpath=/html/body/div[2]/div/div[3]/div/div/form/div/div/fieldset[3]/div/div/div[3]
