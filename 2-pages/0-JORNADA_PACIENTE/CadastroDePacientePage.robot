##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da página de Cadastro do Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
Resource          ../../1-resources/auxiliar/Genericos.robot

*** Variable ***
### Elementos da Pagina de Cadastro de Paciente

#Inputs
${inputNomePaciente}            id=inp:nmPaciente
${inputNomeDaMae}               id=inp:nmMae
${inputIdade}                   id=inp:dspNrIdade
${inputCpf}                     id=inp:nrCpf
${inputDataNascimento}          id=inp:dtNascimento
${notificacaoGravarRegistro}    xpath=//div[@class='notifications-item']
${inputCodPaciente}             xpath=//input[@id='inp:cdPaciente']
${msgWarning}                   class=notification-warning
${msgWargingBtnSim}             xpath=//ul[@class='dropdown-menu workspace-notifications-menu']/li[@class='notification-buttons']/button[contains(text(),'Sim')]
${numeroEndereco}               id=inp:nrEndereco

#Buttons
${btnSalvar}                    xpath=//li[@id='toolbar']//*[@id='tb-record-save']
${btnSim}                       xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li[@class='notification-buttons']//button[1]
${btnSair}                      xpath=//li[@id='tb-exit']//a
${btnRetornar}                  xpath=//button[@data-member='BTN_RETORNAR']
${btnPesquisarNome}             id=btnPesquisar
${btnConfirmaNome}              id=pacientes_btnOk
${btnInternar}                  xpath=(//button[@data-member='EXIT'])[2]

#Selectors
${selectSexo}                   xpath=//*[@id="tpSexo_ac"]
${selectCor}                    id=tpCor_ac