##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Regra de Substituição de Procedimento de Cobrança
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_REGRA_SUBSTITUICAO_PROCED_PAGE.robot

*** Variable ***

*** Keywords ***
Listar Regras de Substituicao de Procedimento |${ValidProcedimento}|
    Click Elemento por titulo    Executar Consulta
    Validar Elemento Pelo Titulo    ${ValidProcedimento}

Adicionar Regra de Substituicao de Procedimento |${Empresa}| |${Procedimento}| |${ProcedimentoSubst}| |${DtVigencia}| |${Convenio}| |${Plano}| |${Regra}| |${Setor}| |${FtQuantidade}| |${FtValor}|
    Click Elemento por titulo    Adicionar
    Preencher Campo    ${CampoEmpresa}    ${Empresa}
    Clicar Item e Selecionar da Lista    ${CampoProcedimento}    ${BotaoLovEdit}    ${Procedimento}    ${Procedimento}
    Clicar Item e Selecionar da Lista    ${CampoProcedimentoSubst}    ${BotaoLovEdit}    ${ProcedimentoSubst}    ${ProcedimentoSubst}
    Clicar no Campo e Preencher Informacao    ${CampoDtVigencia}    ${CampoDtVigenciaEdit}    ${DtVigencia}
    Clicar Item e Selecionar da Lista    ${CampoConvenio}    ${BotaoLovEdit}    ${Convenio}    ${Convenio}
    Clicar Item e Selecionar da Lista    ${CampoPlano}    ${BotaoLovEdit}    ${Plano}    ${Plano}
    Clicar Item e Selecionar da Lista    ${CampoRegra}    ${BotaoLovEdit}    ${Regra}    ${Regra}
    Clicar Item e Selecionar da Lista    ${CampoSetor}    ${BotaoLovEdit}    ${Setor}    ${Setor}
    Clicar no Campo e Preencher Informacao    ${CampoFtQuantidade}    ${CampoEditavel}    ${FtQuantidade}
    Clicar no Campo e Preencher Informacao    ${CampoFtValor}    ${CampoEditavel}    ${FtValor}
### Keyword para retornar dados para status inicial do teste ###

Excluir Regra de Substituicao
    Click Elemento por titulo    Apagar
