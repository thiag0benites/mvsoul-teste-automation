##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Saída para setor
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_SAI_SETOR_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Campos de Saida para Setor |${Estoque}| |${UndInter}|
    Selecionar Item Na Lista                  ${BotaoLovEstoque}        ${Estoque}                      ${Estoque}
    Selecionar Item Na Lista                  ${BotaoLovUndInter}       ${UndInter}                     ${UndInter}

Validar Preenchimento dos Dados |${UndInter}| |${CdUndInter}|
    Validar Elemento Pelo Titulo              ${UndInter}
    Validar Elemento Pelo Titulo              ${CdUndInter}

Preencher Informacoes do Item |${Peca}| |${Quantidade}|
    Clicar Item e Selecionar da Lista         ${CampoPeca}              ${BotaoLovPeca}                 ${Peca}       ${Peca}
    Clicar no Campo e Preencher Informacao    ${CampoQuantidade}        ${CampoQuantidadeEditavel}      ${Quantidade}

Validar Mensagem de Sucesso |${MensagemEsperada}|
    Valida Mensagem                           ${MensagemSucesso}        ${MensagemEsperada}