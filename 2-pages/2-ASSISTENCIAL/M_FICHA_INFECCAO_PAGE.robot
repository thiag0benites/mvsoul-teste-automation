##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoAtendimento}          xpath=//input[@id="inp:cdAtendimento"]
${CampoCID}                  xpath=//input[@id="inp:regInf_cdCid"]
${CampoDataReg}              xpath=//input[@id="inp:dtRegInf"]
${CampoSitioPrincipal}       xpath=//input[@id="inp:tpCategoria"]
${CampoTopografia}           xpath=//input[@id="inp:cdTopografia"]
${CampoProcedInvasivo}       xpath=//input[@id="inp:cdProInvasivo"]
${ComboBoxLocalização}       xpath=//input[@id="CV_TAB_CONS_REG_INF_tpLocalizacao_ac"]
${CampoLeito}                xpath=//input[@id="inp:cdLeito"]
${TextArea}                  xpath=//textarea[@id="inp:regInf_dsObservacao"]
${DivData}                   xpath=//div[@data-member="DT_ATENDIMENTO"][@data-row="0"]



### Botoes ###

${BtnOk}                      xpath=//li[@class='notification-buttons']/button
${MensagemRecebida}           xpath=//div[@class="notifications-item-body notification-item-no-title"]/p
${BtnAdd}                     xpath=//li[@id="tb-record-add"]
${CheckBoxInfec}              xpath=//button[@id="inp:snInfeccao_btn"]
${btnSalvar}                  xpath=//li[@id="tb-record-save"]/a




${BtnPesquisar}               xpath=//button[@id="CV_TAB_ATENDIME_paciente_btnPesquisar"]
${AbaInfecCol}                xpath=//a[text()="Infecções/Colonizações"]





