##################################################################################################################################
# Autor: Marcio Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
Resource          ../../Config.robot

*** Variable ***
${InputDataInicial}    xpath=//input[@id="inp:dtInicio"]
${InputDataFinal}    xpath=//input[@id="inp:dtFim"]
${Btn_Pagamento}    xpath=//button[@id='rb_TpData_RdPagamento_btn']
# ${Btn_Baixa}    xpath=
${Btn_Liberar}    xpath=//button[@id='butImportar']
${MensagemAlert}    xpath=//ul//li[@class='notification-warning']
${Btn_OK}         xpath=//ul//li//button[@class='btn btn-primary']
${Campo_QntdeRegistros}    xpath=//input[@id="inp:qtRegLidos"]
${Campo_MensagemProcesso}    xpath=//textarea[@id="inp:msgImportacao"]
