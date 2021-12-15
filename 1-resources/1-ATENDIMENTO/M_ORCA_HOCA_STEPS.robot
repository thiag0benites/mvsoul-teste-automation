##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Orçamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_ORCA_HOCA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados do Orcamento |${Paciente}| |${DtInicial}| |${DtFinal}|
    Selecionar Item Na Lista    ${BotaoLovAtendimento}    ${Paciente}    ${Paciente}
    Preencher Campo    ${CampoDtInicial}    ${DtInicial}
    Preencher Campo    ${CampoDtFinal}    ${DtFinal}

Preencher Campos Aba Procedimento |${Procedimento}|
    Click no Item    ${AbaProcedimento}
    Selecionar Item Na Lista    ${BotaoLovEdit}    ${Procedimento}    ${Procedimento}
    Send Keys    tab
    Validar Elemento Pelo Titulo    ${Procedimento}

Preencher Campos Aba Custos |${Custo}| |${Unidade}| |${ValorUnitario}| |${Quantidade}|
    Click no Item    ${AbaCusto}
    Selecionar Item Na Lista    ${BotaoLovEdit}    ${Custo}    ${Custo}
    Clicar no Campo e Preencher Informacao    ${CampoUnidade}    ${CampoEdit}    ${Unidade}
    Clicar no Campo e Preencher Informacao    ${CampoValorUnitario}    ${CampoEdit}    ${ValorUnitario}
    Clicar no Campo e Preencher Informacao    ${CampoQuantidade}    ${CampoEdit}    ${Quantidade}
    Send Keys    tab

Validar Informacao Aba Impostos |${Imposto}|
    Click no Item    ${AbaImposto}
    Selecionar Item Na Lista    ${BotaoLovEdit}    ${Imposto}    ${Imposto}

Salvar Orcamento
    Click Elemento por titulo    Salvar
    Wait Until Element Is Visible    ${CampoCdOrcamento}    20
    ${RecebeOrcamento}    Get Element Attribute    ${CampoCdOrcamento}    title
    Altera massa de dados da "m_orca_hoca", linha "1", coluna "CdOrcamento", valor "${RecebeOrcamento}"
