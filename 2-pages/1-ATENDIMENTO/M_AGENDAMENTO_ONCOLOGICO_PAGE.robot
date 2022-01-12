##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoPaciente}    xpath=//input[@id="inp:cdPaciente"]
${CampoConvenio}    xpath=//input[@id="inp:cdConvenio"]
${CampoPlano}     xpath=//input[@id="inp:cdPlano"]
${CampoSubPlano}    xpath=//input[@id="inp:cdSubPlano"]
${CampoItemDeAgendamento}    xpath=//input[@id="inp:tratamentoOncologico_cdItemAgendamento"]
${CampoProtocolo}    xpath=//input[@id="inp:tratamentoOncologico_cdProtocolo"]
${CampoCicloInicial}    xpath=//input[@id="inp:cbCicloInicial"]
${CampoSessaoInicial}    xpath=//input[@id="inp:cbSessaoInicial"]
${CampoDataInicioTratamento}    xpath=//input[@id="inp:dtInicioAgendamento"]
${CampoObservacao}    xpath=//input[@id="inp:tratamentoOncologico_dsObservacao"]
${InputDataAgenda}    xpath=//input[@id="inp:dtAgenda"]
${DivDataValidacao}    xpath=//div[@data-member="DT_REFERENCIA"][@data-row="0"]
### Botoes ###
${BtnNovoTratamento}    xpath=//button[@id="btnNovo"]
${BtnProximo}     xpath=//button[@id="btnProximo"]
${BtnConcluir}    xpath=//button[@id="btnConcluir"]
${BtnSim}         xpath=//button[contains(text(),"Sim")]
${BtnSalvar}      xpath=//a[@title="Salvar"]
### Diversos ###
${Alerta}         xpath=//p[@class="notifications-item-text"]
