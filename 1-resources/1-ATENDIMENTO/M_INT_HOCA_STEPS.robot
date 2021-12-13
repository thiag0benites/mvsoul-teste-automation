##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Internação Home Care
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_INT_HOCA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Informacoes do Atendimento do Paciente |${Paciente}| |${Origem}| |${Hora}| |${Medico}| |${HoraOpe}| |${Convenio}| |${Plano}| |${Procedimento}| |${CID}| |${TpInternacao}| |${TpAcomodacao}| |${Servico}|
    Wait Until Element Is Visible           ${BotaoLovPaciente}              180
    Selecionar Item Na Lista                ${BotaoLovPaciente}              ${Paciente}                      ${Paciente}
    Selecionar Item Na Lista                ${BotaoLovOrigem}                ${Origem}                        ${Origem}
    Preencher Data Atual e Preencher Gerenciador        ${CampoData}         Data
    Preencher Campo                         ${CampoHora}                     ${Hora}
    Selecionar Item Na Lista                ${BotaoLovMedico}                ${Medico}                        ${Medico}
    Preencher Data Atual e Preencher Gerenciador        ${CampoDataOpe}      DataOpe
    Preencher Campo                         ${CampoHoraOpe}                  ${HoraOpe}
    Selecionar Item Na Lista                ${BotaoLovConvenio}              ${Convenio}                      ${Convenio}
    Selecionar Item Na Lista                ${BotaoLovPlano}                 ${Plano}                         ${Plano}
    Selecionar Item Na Lista                ${BotaoLovProcedimento}          ${Procedimento}                  ${Procedimento}
    Selecionar Item Na Lista                ${BotaoLovCID}                   ${CID}                           ${CID}      
    Selecionar Item Na Lista                ${BotaoLovTpInternacao}          ${TpInternacao}                  ${TpInternacao}               
    Selecionar Item Na Lista                ${BotaoLovTpAcomodacao}          ${TpAcomodacao}                  ${TpAcomodacao}
    Selecionar Item Na Lista                ${BotaoLovServico}               ${Servico}                       ${Servico}
      
Preencher Dados Aba Conclusao |${Area}| |${MedicoIndicacao}| |${Enfermeira}| |${RespFinanceiro}|
    Click no Item                           ${AbaEndereco}
    Wait Until Element Is Visible           ${CampoCdEndereco}                  20
    ${RecebeEndereco}            Get Element Attribute    ${CampoCdEndereco}    title
    Altera massa de dados da "m_int_hoca", linha "1", coluna "Endereco", valor "${RecebeEndereco}"
    Click no Item                           ${AbaConclusao}   
    Preencher Campo                         ${CampoEndereco}                 ${RecebeEndereco}
    Selecionar Item Na Lista                ${BotaoLovArea}                  ${Area}                         ${Area}
    Selecionar Item Na Lista                ${BotaoLovMedicoIndicacao}       ${MedicoIndicacao}              ${MedicoIndicacao}
    Selecionar Item Na Lista                ${BotaoLovEnfermeira}            ${Enfermeira}                   ${Enfermeira}
    Selecionar Item Na Lista                ${BotaoLovRespFinanceiro}        ${RespFinanceiro}               ${RespFinanceiro}

Preencher Data Atual e Preencher Gerenciador
    [Arguments]                             ${CampoDataAtual}                ${ColunaGerenciador}
    Preencher campo com data e hora         ${CampoDataAtual}                %d/%m/%y                         00:00:00
    #Send Keys                               tab
    ${RecebeData}              Get Element Attribute    ${CampoDataAtual}    title
    Altera massa de dados da "m_int_hoca", linha "1", coluna "${ColunaGerenciador}", valor "${RecebeData}"

Salvar Internacao |${MensagemSucesso}|
    Clicar Botao Salvar |${MensagemSucesso}|
    Click no Item                            ${BotaoOK}

