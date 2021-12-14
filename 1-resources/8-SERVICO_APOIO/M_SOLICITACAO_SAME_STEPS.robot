##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Passos da tela de Solicitação de Documentos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_SOLICITACAO_SAME_PAGE.robot
Resource    ../6-CONTROLADORIA/M_PREST_CONTAS_STEPS.robot

*** Variable ***

*** Keywords ***
Escolha o motivo da solicitacao |${Configuracao}| |${Motivo}|
    Preencher Campo                  ${CampoMenu}                      ${Configuracao}
    Click no Item                    ${BtnAcessar} 
    Click no Item                    ${BtnMotivo}    
    Preencher Campo                  ${CampoMotivo}                    ${Motivo}
    Click no Item                    ${BtnFiltro} 
    Click no Item                    ${BtnOk}  

Escolha o destino da solicitacao |${Solicitacao}|
    Preencher Campo                  ${CampoSolicitacao}                ${Solicitacao}

Escolha a origem da solicitacao |${Origem}|
    Preencher Campo                  ${CampoOrigem}                     ${Origem}

Preencha o atendimento |${Paciente}| |${Atendimento}|
    Preencher Campo                  ${CampoPaciente}                   ${Paciente}  
    Preencher Campo                  ${CampoAtendimento}                ${Atendimento}
    Send Keys                           enter
    Click no Item                    ${BtnSim} 

Clicar em Salvar |${MsgVerificada}|
    Click Elemento por titulo        Salvar
    Validar Informacao Item          ${MsgLida}                        ${MsgVerificada}   
