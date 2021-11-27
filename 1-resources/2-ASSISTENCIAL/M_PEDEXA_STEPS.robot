##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Pedidos de Exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_PEDEXA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Campo Atendimento |${Atendimento}| |${MensagemValidacao}| 
    Preencher Campo                        ${CampoAtendimento}                ${Atendimento}
    Send Keys                              Enter
    Valida Mensagem                        ${MensagemToast}                   ${MensagemValidacao}
    Click no Item                          ${BotaoOK}

Validar Campos de Preenchimento Automatico |${NomePaciente}| |${Convenio}| |${Plano}| |${CID}|
    Validar Elemento Pelo Titulo           ${NomePaciente}
    Validar Elemento Pelo Titulo           ${Convenio}
    Validar Elemento Pelo Titulo           ${Plano}
    Validar Elemento Pelo Titulo           ${CID}

Preencher Dados Faltantes do Paciente |${TpSolicitacao}| |${Medico}|
    Preencher Campo                        ${CampoTpSolicitacao}                ${TpSolicitacao}
    Selecionar Item Na Lista               ${BotaoLovMedicoSolic}               ${Medico}                  ${Medico}

Preencher Campos da Aba Exames |${Exame}| |${Laboratorio}| |${Material}|
    Clicar Item e Selecionar da Lista      ${CampoExame}            ${BotaoLov}         ${Exame}           ${Exame}
    Clicar Item e Selecionar da Lista      ${CampoLaboratorio}      ${BotaoLov}         ${Laboratorio}     ${Laboratorio}
    Clicar Item e Selecionar da Lista      ${CampoMaterial}         ${BotaoLov}         ${Material}        ${Material}     

Salvar Solicitacao de Exame |${Suite}| |${LinhaGerenciador}| 
    Click Elemento por titulo              Salvar
    Click no Item                          ${BotaoOK}
    ${RecebeCodSolic}         Get Element Attribute       ${CampoCdSolicExame}    title
    Altera massa de dados da "${Suite}", linha "${LinhaGerenciador}", coluna "CdSolicExame", valor "${RecebeCodSolic}"
    Sleep  10


