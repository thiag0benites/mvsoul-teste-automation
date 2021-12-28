##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cadastro do Fornecedor/Cliente
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_FORNEC_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados do Fornecedor |${Fornecedor}| |${NomeFantasia}| |${Constituicao}| |${CNPJ}| |${InsEstadual}| |${InsMunicipal}| |${CEP}| |${Numero}| |${TpPagamento}| |${SimplesNacional}|
    Preencher Campo    ${CampoNmFornecedor}    ${Fornecedor}
    Preencher Campo    ${CampoNmFantasia}    ${NomeFantasia}
    Selecionar Item Na Lista    ${BotaoLovConstituicao}    ${Constituicao}    ${Constituicao}
    Preencher Campo    ${CampoCNPJ}    ${CNPJ}
    Preencher Campo    ${CampoInsEstadual}    ${InsEstadual}
    Preencher Campo    ${CampoInsmunicipal}    ${InsMunicipal}
    Preencher Campo    ${CampoCEP}    ${CEP}
    Preencher Campo    ${CampoNumero}    ${Numero}
    Preencher Campo    ${CampoTpPagamento}    ${TpPagamento}
    Preencher Campo    ${CampoSimplesNacional}    ${SimplesNacional}

Preencher Dados Aba Conta Contabil |${CdReduzido}| |${TpConta}|
    Click no Item    ${AbaContaContabil}
    Clicar Item e Selecionar da Lista    ${CampoCdReduzido}    ${BotaoLovEdit}    ${CdReduzido}    ${CdReduzido}
    Clicar no Campo e Preencher Informacao    ${CampoTpConta}    ${CampoComboBoxEdit}    ${TpConta}

Preencher Dados Aba Conta Corrente |${Banco}| |${Agencia}| |${DvAgencia}| |${DescAgencia}| |${NrConta}| |${DvConta}|
    Click no Item    ${AbaContaCorrete}
    Clicar Item e Selecionar da Lista    ${CampoBanco}    ${BotaoLovEdit}    ${Banco}    ${Banco}
    Clicar no Campo e Preencher Informacao    ${CampoAgencia}    ${CampoEdit}    ${Agencia}
    Clicar no Campo e Preencher Informacao    ${CampoDvAgencia}    ${CampoEdit}    ${DvAgencia}
    Clicar no Campo e Preencher Informacao    ${CampoDescAgencia}    ${CampoEdit}    ${DescAgencia}
    Clicar no Campo e Preencher Informacao    ${CampoNrConta}    ${CampoEdit}    ${NrConta}
    Clicar no Campo e Preencher Informacao    ${CampoDvConta}    ${CampoEdit}    ${DvConta}

Preencher Dados Aba Ramo de Atividade |${RamoAtividade}|
    Click no Item    ${AbaRamoAtividade}
    Clicar Item e Selecionar da Lista    ${CampoRamoAtividade}    ${BotaoLovEdit}    ${RamoAtividade}    ${RamoAtividade}
### Retornar massa de dados para status inicial do teste ###

Excluir Fornecedor Cadastrado |${MsgExcluir}| |${MensagemSucesso}|
    Click no Item    ${CampoNmFornecedor}
    Click Elemento por titulo    Apagar
    Valida Mensagem    ${MensagemToast}    ${MsgExcluir}
    Click no Item    ${BotaoSim}
    Valida Mensagem    ${MensagemToast}    ${MensagemSucesso}
