##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Abertura de Chamado
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/C_SOLICITACAO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados do Solicitante |${Origem}| |${Setor}| |${Nome}| |${Identidade}|
    Selecionar Item Na Lista    ${BotaoLovOrigem}    ${Origem}    ${Origem}
    Selecionar Item Na Lista    ${BotaoLovSetor}    ${Setor}    ${Setor}
    Preencher Campo    ${CampoNome}    ${Nome}
    Preencher Campo    ${CampoIdentidade}    ${Identidade}

Preencher Descricao do Chamado |${TpChamado}| |${DescNvChamado}| |${MeioDoChamado}| |${HrContato}| |${Observacao}| |${TelaConsultaAtend}| |${Descricao}|
    Selecionar Item Na Lista    ${BotaoLovTpChamado}    ${TpChamado}    ${TpChamado}
    Selecionar Item Na Lista    ${BotaoLovDescNvChamado}    ${DescNvChamado}    ${DescNvChamado}
    Selecionar Item Na Lista    ${BotaoLovMeioDoChamado}    ${MeioDoChamado}    ${MeioDoChamado}
    Preencher Campo    ${CampoHrContato}    ${HrContato}
    Preencher Campo    ${CampoObservacao}    ${Observacao}
    Selecionar Atendimento |${TelaConsultaAtend}|
    Preencher Campo    ${CampoDescricao}    ${Descricao}

Selecionar Atendimento |${TelaConsultaAtend}|
    Click no Item    ${BotaoConsultaAtend}
    Validar Acesso a Tela |${TelaConsultaAtend}|
    Marcar Checkbox |${CbPacInternacao}|
    Click Elemento por titulo    Executar Consulta
    Sleep    5
    Click no Item    ${BotaoConfirmar}
