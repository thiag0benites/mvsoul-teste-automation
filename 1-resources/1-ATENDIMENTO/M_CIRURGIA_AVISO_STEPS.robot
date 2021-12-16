##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cadastro de Cirurgia (Aviso Cirurgia)
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_CIRURGIA_AVISO_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar a Tela M_CIRURGIA_AVISO |${CdAviso}|
    Click Elemento por titulo              Procurar
    Preencher Campo                        ${CampoCdAviso}                ${CdAviso}
    Click Elemento por titulo              Executar Consulta
    Click no Item                          ${BotaoNovaCirurgia}
    Wait Until Element Is Visible          ${BotaoLovSubGrupo}            20

Preencher Dados da Cirurgia |${SubGrupo}| |${Grupo}| |${Cirurgia}| |${PotContaminacao}| |${Lateralidade}|
    Selecionar Item Na Lista               ${BotaoLovSubGrupo}             ${SubGrupo}              ${SubGrupo}
    Selecionar Item Na Lista               ${BotaoLovGrupo}                ${Grupo}                 ${Grupo}
    Selecionar Item Na Lista               ${BotaoLovCirurgia}             ${Cirurgia}              ${Cirurgia}
    Selecionar Item Na Lista               ${BotaoLovPotContaminacao}      ${PotContaminacao}       ${PotContaminacao}
    Preencher Campo                        ${CampoLateralidade}            ${Lateralidade}

Salvar Dados Cirurgia |${MsgGravarAlteracoes}|
    Click no Item                          ${BotaoRetornar} 
    Valida Mensagem                        ${MensagemToast}                ${MsgGravarAlteracoes}
    Click no Item                          ${BotaoSim} 
    Wait Until Element Is Visible          ${CampoValidCirurgia}           20 

### Keyword para retornar massa de dados para status inicial do teste ###
Excluir Cirurgia Cadastrada |${MensagemSucesso}|
    Click no Item                          ${CampoValidCirurgia}
    Click Elemento por titulo              Apagar
    Clicar Botao Salvar |${MensagemSucesso}|

