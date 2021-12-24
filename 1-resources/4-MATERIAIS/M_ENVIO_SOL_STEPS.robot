##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Consulta de    Solicitações de Produtos ao Estoque
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_ENVIO_SOL_PAGE.robot

*** Variable ***

*** Keywords ***
Consultar Solicitacao |${Solicitacao}| |${Estoque}|
    Click Elemento por titulo    Procurar
    Preencher Campo    ${CampoCdSolicitacao}    ${Solicitacao}
    Click Elemento por titulo    Executar Consulta
    Validar Elemento Pelo Titulo    ${Estoque}

Acessar Tela M_ENVIO_SOL |${NomeTelaEnvio}|
    Click no Item    ${BotaoAbrirCotacao}
    Validar Acesso a Tela |${NomeTelaEnvio}|

Realizar Envio de Cotacao |${Fornecedor}| |${TpComunicacao}| |${MensagemSucesso}| |${MsgConfFornecSolic}| |${MsgConfirma}|
    Clicar Item e Selecionar da Lista    ${CampoFornecedor}    ${BotaoLovEdit}    ${Fornecedor}    ${Fornecedor}
    Clicar no Campo e Preencher Informacao    ${CampoTpComunicacao}    ${CampoEdit}    ${TpComunicacao}
    Clicar Botao Salvar |${MensagemSucesso}|
    Click no Item    ${BotaoNotificao}
    Click no Item    ${BotaoConfFornecSolic}
    Valida Mensagem    ${MensagemToast}    ${MsgConfFornecSolic}
    Click no Item    ${BotaoTodosOsProdutos}
    Valida Mensagem    ${MensagemToast}    ${MsgConfirma}
    Click no Item    ${BotaoOK}
    Click no Item    ${BotaoSair}
    Wait Until Element Is Visible    xpath=//div[@data-member="DSP_NM_FANTASIA"][@title="${Fornecedor}"]/..    20
    
### Keyword para retornar massa de dados para status inicial do teste ###
Excluir Envio |${MsgValidaExcluir}| |${MensagemSucesso}|
    Excluir Fornecedor |${MsgValidaExcluir}| |${MensagemSucesso}|
    Click no Item    ${AbaNovos}
    Excluir Fornecedor |${MsgValidaExcluir}| |${MensagemSucesso}|

Excluir Fornecedor |${MsgValidaExcluir}| |${MensagemSucesso}|
    Click Elemento por titulo    Apagar
    Valida Mensagem    ${MensagemToast}    ${MsgValidaExcluir}
    Click no Item    ${BotaoSim}
    Clicar Botao Salvar |${MensagemSucesso}|
