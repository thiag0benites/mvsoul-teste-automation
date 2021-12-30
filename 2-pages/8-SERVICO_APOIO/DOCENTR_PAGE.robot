##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de DOCENTR
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${HomeXpathBtnPesquisaInput}    id=menu-filter-1
${HomeXpathBtnPesquisa}         xpath=//li[@class="menu-search"]
${ScreenEntradaDeDocumentos}    xpath=//section[@id='workspace-menubar']//a[@title='Entrada de Documentos']//span


${campoSame}     xpath=//input[@id="inp:cdSame"]
${btnAcessar}    xpath=//button[@id="ok"]

${campoAtendimento}    xpath=//input[@id="inp:cdAtendimento"]
${campoObservacao}     xpath=//input[@id="inp:dspDsSameLocal"]

${campoArmario}          xpath=//input[@id="inp:cdArmarioSame"]
${campoTipoDocumento}    xpath=//input[@id="inp:dspLovTipos"]

${campoDataEntrada}      xpath=//input[@id="inp:dtEntrada"]   

${btnImprimir}           xpath=//button[@id="btnImprime"]
# ${btnExecutar}           xpath=//button[@id="chamaRelatorio"]
${btnSair}               xpath=//button[@id="sair"]
${checkbox}              xpath=/html/body/div[2]/div[2]/div[2]/div/form/div/fieldset/div/fieldset[1]/div/fieldset/div/div/div[4]/div[3]/div/div/div[3]/div/button

${mensagemApresentada}  xpath=//p[@class="notifications-item-text"]
${btnOk}                xpath=//button[text()="OK"]
