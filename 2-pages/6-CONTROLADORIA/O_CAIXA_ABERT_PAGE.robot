##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de abertura de caixa
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BROWSER}    chrome
${SLEEP}      3



        

${checkboxCaixa}                        xpath=//button[@data-member='SN_ABERTURA']
${btnOk}                                //button[contains(text(),"OK")]
${btnConfirmar}                         id=btnConfirma

${mensagemAberturaCaixa}                xpath=//div[@class="notifications-item"]

