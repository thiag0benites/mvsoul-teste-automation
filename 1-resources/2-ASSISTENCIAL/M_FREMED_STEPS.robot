##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_FREMED_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados Frequencia |${Descricao}| |${Intervalo}| |${TpIntervalo}| |${Setor}|
    Preencher Campo    ${CampoDescricao}    ${Descricao}
    Preencher Campo    ${CampoIntervalo}    ${Intervalo}
    Preencher Campo    ${CampoTpIntervalo}    ${TpIntervalo}
    Clicar Item e Selecionar da Lista    ${CampoSetor}    ${BotaoLovEdit}    ${Setor}    ${Setor}

Salvar Cadastro de Frequencia
    Click Elemento por titulo    Salvar
    Sleep    2
    ${RecebeCodigo}    Get Element Attribute    ${CampoCdFrequencia}    title
    Altera massa de dados da "m_fremed", linha "1", coluna "CdFrequencia", valor "${RecebeCodigo}"
### Keyword para retornar massa de dados para status inicial do teste ###

Excluir Frequencia Cadastrada |${Descricao}| |${MensagemConsulta}|
    Click no Item    ${CampoDescricao}
    Click Elemento por titulo    Apagar
    Click Elemento por titulo    Salvar
    Click Elemento por titulo    Procurar
    Preencher Campo    ${CampoDescricao}    ${Descricao}
    Click Elemento por titulo    Executar Consulta
    Valida Mensagem    ${MensagemToast}    ${MensagemConsulta}
