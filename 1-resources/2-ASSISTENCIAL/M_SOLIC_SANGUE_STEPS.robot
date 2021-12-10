##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Solicitações de banco de sangue
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_SOLIC_SANGUE_PAGE.robot

*** Variable ***

*** Keywords ***
Prencher Campos de Solicitacao para Banco de Sangue |${CdAtendimento}| |${SetorSolicitacao}| |${SetorExecutante}|
    Preencher Campo                    ${CampoCdAtendimento}                ${CdAtendimento}
    Send Keys                          tab
    Selecionar Item Na Lista           ${BotaoLovSetorSolic}                ${SetorSolicitacao}         ${SetorSolicitacao}
    Selecionar Item Na Lista           ${BotaoLovSetorExecutante}           ${SetorExecutante}          ${SetorExecutante}

Validar Preenchimento dos Campos |${Paciente}| |${Origem}| |${Prestador}|
    Validar Elemento Pelo Titulo       ${Paciente}
    Validar Elemento Pelo Titulo       ${Origem}
    Validar Elemento Pelo Titulo       ${Prestador}

Selecionar Exame |${Exame}|
    Clicar Item e Selecionar da Lista            ${CampoExame}             ${BotaoLovExame}            ${Exame}              ${Exame}        



