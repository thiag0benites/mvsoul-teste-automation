##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de O_ARQUIVO_REMESSA
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${campoCodigo}              xpath=//input[@id="inp:cdConPag"]
${btnProrrogar}             xpath=//button[@id="CGM_TAB_1_PAGE_1_butProrrogar"]

${campoNovaDtVencimento}    xpath=//input[@id="inp:dtVencimentoNova"]
${campoMotivo}              xpath=//input[@id="inp:cdMotivoProrrogacao"] 
${campoNomeFornecedor}      xpath=//div[@class="slick-cell b0 f0 selected"]//div[@data-member="DS_FORNECEDOR"]
${btnProrrogar2}            xpath=//button[@id="btnProrrogar"]


${MensagemToast}      xpath=/html/body/nav[5]/div/div[2]/ul/li[1]/ul/li[2]/div/div[2]/p
${btnOk}              xpath=//li[@class="notification-buttons"]/button[text()="OK"]
