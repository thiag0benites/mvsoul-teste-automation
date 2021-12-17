##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Ficha Nutricional de Pacientes
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_FICHA_NUTRICAO_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Atendimento |${Atendimento}|
    Preencher Campo              ${CampoAtendimento}        ${Atendimento}
    Click Elemento por titulo    Executar Consulta

Validar Consulta Realizada |${Paciente}| |${UnidInternacao}| |${TpDieta}|
    Validar Elemento Pelo Titulo    ${Paciente}
    Validar Elemento Pelo Titulo    ${UnidInternacao}
    Validar Elemento Pelo Titulo    ${TpDieta}

Adicionar Observacoes |${TpRefeicao}| |${Observacao}|
    Clicar Item e Selecionar da Lista         ${CampoTpRefeicao}    ${BotaoLovEdit}       ${TpRefeicao}       ${TpRefeicao}
    Clicar no Campo e Preencher Informacao    ${CampoObservacao}    ${CampoEdit}          ${Observacao}
    
### Keyword para retornar massa de dados para status inicial do teste ###
Excluir Observacao
    Click no Item                ${CampoTpRefeicao} 
    Click Elemento por titulo    Apagar


