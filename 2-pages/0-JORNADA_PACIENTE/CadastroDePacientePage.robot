##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da página de Cadastro do Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

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
${btnSim}                       xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li[@class='notification-buttons']/button[contains(text(),'Sim')]
${btnNao}                       xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li[@class='notification-buttons']/button[contains(text(),'Não')]
${btnMsgOK}                     xpath=//ul[@class='dropdown-menu workspace-notifications-menu']/li[@class='notification-buttons']/button[contains(text(),'OK')]
${btnOKTela}                    xpath=//button[@id='btok']
${btnSair}                      xpath=//li[@id='tb-exit']//a
${btnRetornar}                  xpath=//button[@data-member='BTN_RETORNAR']
${btnPesquisarNome}             id=btnPesquisar
${btnConfirmaNome}              id=pacientes_btnOk
${btnInternar}                  xpath=//*[@*='Botão de acesso à Tela de Atendimento do Paciente']
${btnAgendar}                   xpath=//button[@data-member='BTN_AGENDAR']
${btnConfirmar}                 xpath=//button[@id='aSimples_btnConfirmar']
${btnPrintInt}                  xpath=//button[@data-member='BTN_5']
${btnAdicionarCirurgia}         xpath=//button[@data-member='BTN_NOVA_CIRURGIA']
${btnPesquisarPaciente}         xpath=//button[@data-member='BTN_PACIENTE']
${btnExecutar}                  xpath=//a[@title="Executar Consulta"]
${btnConfAlta}                  xpath=//button[@data-member='BTN_CONFIRMAR']
${btnSairTela}                  xpath=//button[@data-member='BTN_SAIR'] 
${btnReservaSala}               xpath=//button[@data-member='BTN_RESERVA_SALA']
${btnAvisoCirurgia}             xpath=//button[@data-member='BTN_AVI_CIR']
${btnReticencias}               xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']//span[@class='ui-button-icon ui-icon mv-basico-reticencias']

#Selectors
${selectSexo}                   xpath=//*[@id="tpSexo_ac"]
${selectCor}                    id=tpCor_ac