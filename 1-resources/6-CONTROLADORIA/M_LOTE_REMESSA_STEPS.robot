##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Lotes de Remessa
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_LOTE_REMESSA_PAGE.robot
Resource          ../2-ASSISTENCIAL/M_USUUNID_STEPS.robot

*** Variable ***

*** Keywords ***
Criar Lote de Remessa |${Descricao}| |${Processo}| |${Bordero}| |${MsgDtPagamento}|
    Preencher Campo    ${CampoDescricao}    ${Descricao}
    Selecionar Item Na Lista    ${BotaoLovProcesso}    ${Processo}    ${Processo}
    Sleep    2
    Preencher Campo    ${CampoTpBordero}    ${Bordero}
    Preencher campo com data e hora    ${CampoDtPagamento}    %d/%m/%y    00:00:00
    Click no Item    ${CampoDescricao}
    Valida Mensagem    ${MensagemToast}    ${MsgDtPagamento}
    Click no Item    ${BotaoOK}
    ${RecebeData}    Get Element Attribute    ${CampoDtPagamento}    tittle
    Altera massa de dados da "m_lote_remessa", linha "1", coluna "DtPagamento", valor "${RecebeData}"

Salvar Lote Remessa |${MsgDtPagamento}| |${MensagemSucesso}|
    Click Elemento por titulo    Salvar
    Valida Mensagem    ${MensagemToast}    ${MensagemSucesso}

Preencher Bloco Selecionar Contas a Pagar |${MsgConsulta}| |${Fornecedor}| |${CNPJ}|
    Click no Item    ${BotaoNotificacao}
    Click no Item    ${CampoFornecedor}
    Click Elemento por titulo    Procurar
    Valida Mensagem    ${MensagemToast}    ${MsgConsulta}
    Clicar Item e Selecionar da Lista    ${CampoFornecedor}    ${BotaoLovFornecedor}    ${Fornecedor}    ${Fornecedor}
    Click Elemento por titulo    Executar Consulta
    Validar Elemento Pelo Titulo    ${CNPJ}

Associar Contas a Pagar |${MsgValidaDtPagamento}| |${CtPagar}|
    Marcar Checkbox |${CbSelContaPagar}|
    Click no Item    ${BotaoAssociar}
    Valida Mensagem    ${MensagemToast}    ${MsgValidaDtPagamento}
    Click no Item    ${BotaoSim}
    Wait Until Element Is Visible    xpath=//div[contains(@aria-labelledby, "grdLoteRemItconPag_col1_lbl")]/div[@title="${CtPagar}"]    20
### Keyword para retornar massa de dados para status inicial do teste ###

Excluir Lote Remessa |${CtPagar}|
    Marcar Checkbox |${CbContaPagarLote}|
    Click no Item    ${BotaoRemover}
    Wait Until Element Is Visible    xpath=//input[contains(@aria-labelledby, "grdItconPag_col1_lbl")][@title="${CtPagar}"]    20
