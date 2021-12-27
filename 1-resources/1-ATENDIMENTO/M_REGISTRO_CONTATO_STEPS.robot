##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Solicitação de Transferencia de Leito
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_REGISTRO_CONTATO_PAGE.robot

*** Variable ***

*** Keywords ***
Incluir Novo Registro Apontando a Tela do Teste |${Turma}|
    Wait Until Element Is Visible    ${CampoTurma}    250
    Preencher Campo    ${CampoTurma}    ${Turma}
    Click no Item    ${BotaoBuscar}
    Sleep    2
    Click no Item    ${CheckSeleciona}
    Click no Item    ${BotaoRegCont}
    Sleep    5

Adicionar Novo Contato |${Assunto}| |${Detalhamento}|
    Click Elemento por titulo    Adicionar
    Preencher Campo    ${CampoAssunto}    ${Assunto}
    Preencher Campo    ${CampoDetalhamento}    ${Detalhamento}

Salvar e Validar |${MsgSalva}|
    Click Elemento por titulo    Salvar
    Valida Mensagem    ${MensagemToast}    ${MsgSalva}
    Sleep    2
