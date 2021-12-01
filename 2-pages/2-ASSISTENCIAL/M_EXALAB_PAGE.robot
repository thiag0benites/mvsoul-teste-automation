##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página Exames
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoNome}      xpath=//input[@id="inp:nmExaLab"]
${BtSegunda}      xpath=//button[@id="inp:exaLab_snRealizaSegunda_btn"]
${BtTerca}        xpath=//button[@id="inp:exaLab_snRealizaTerca_btn"]
${BtQuarta}       xpath=//button[@id="inp:exaLab_snRealizaQuarta_btn"]
${BtQuinta}       xpath=//button[@id="inp:exaLab_snRealizaQuinta_btn"]
${BtSexta}        xpath=//button[@id="inp:exaLab_snRealizaSexta_btn"]
${BtSabado}       xpath=//button[@id="inp:exaLab_snRealizaSabado_btn"]
${BtDomingo}      xpath=//button[@id="inp:exaLab_snRealizaDomingo_btn"]
${BotaoTipoRes}    xpath=//input[@id="CV_TAB_DETALHES_tpResultado_ac"]
${BotaoSalvar}    xpath=//li[@id="tb-record-save"]
${ValidaMsg}      xpath=//p[@class="notifications-item-text"]
