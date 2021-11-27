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
    Valida Mensagem                        ${MensagemToast}                   ${MensagemValidacao}PACIENTE EM VIGILÂNCIA EPIDEMIOLÓGICA "ATENDIMENTO"
    Click no Item                          ${BotaoOK}

Validar Campos de Preenchimento Automatico |${NomePaciente}| |${Convenio}| |${Plano}| |${CID}|
    Validar Elemento Pelo Titulo           ${NomePaciente}ACACIA MARIA MAIA COSTA
    Validar Elemento Pelo Titulo           ${Convenio}AMIL 2016
    Validar Elemento Pelo Titulo           ${Plano}MEDICUS NACIONAL
    Validar Elemento Pelo Titulo           ${CID}ABDOME AGUDO

Preencher Dados Faltantes do Paciente |${TpSolicitacao}| |${Medico}|
    Preencher Campo                        ${CampoTpSolicitacao}                ${TpSolicitacao}Emergência
    Selecionar Item Na Lista               ${BotaoLovMedicoSolic}               ${Medico}GEISHA ABREU SOARES DE PINA   ${Medico}

Preencher Campos da Aba Exames |${Exame}| |${Laboratorio}| |${Material}|
    Clicar Item e Selecionar da Lista      ${CampoExame}            ${BotaoLov}         ${Exame}1,25 DIHIDROXI VITAMINA D   ${Exame}
    Clicar Item e Selecionar da Lista      ${CampoLaboratorio}      ${BotaoLov}         ${Laboratorio}LABORATORIO SERGIO FRANCO ${Laboratorio}
    Clicar Item e Selecionar da Lista      ${CampoMaterial}         ${BotaoLov}         ${Material}SANGUE                      ${Material}     

Salvar Solicitacao de Exame |${Suite}| |${LinhaGerenciador}| 
    Click Elemento por titulo              Salvar
    Click no Item                          ${BotaoOK}
    ${RecebeCodSolic}         Get Element Attribute       ${CampoCdSolicExame}    title
    Altera massa de dados da "${Suite}", linha "${LinhaGerenciador}", coluna "CdSolicExame", valor "${RecebeCodSolic}"
    Sleep  10


