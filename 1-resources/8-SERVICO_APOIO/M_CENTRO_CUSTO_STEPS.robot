##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cadastro de Centro de Custo
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_CENTRO_CUSTO_PAGE.robot

*** Variable ***

*** Keywords ***
Adicionar Novo Centro
    Click Elemento por titulo            Adicionar     

Preencher Campos do Centro de Custo |${Setor}| |${CentroCusto}| |${DescricaoCentroCusto}| |${CdGrupoCusto}|
    Preencher Campo                      ${CampoEditavel}            ${Setor}
    Send Keys                            Enter
    Preencher Campo                      ${CampoEditavel}            ${CentroCusto}
    Send Keys                            Enter
    Preencher Campo                      ${CampoEditavel}            ${DescricaoCentroCusto}
    Send Keys                            Enter
    Preencher Campo                      ${CampoGrupoSetor}          ${CdGrupoCusto}
    Send Keys                            Enter

Validar Preenchimento dos Campos |${Setor}| |${CentroCusto}| |${DescricaoCentroCusto}| |${GrupoCusto}|
    Validar Elemento Pelo Titulo         ${Setor}
    Validar Elemento Pelo Titulo         ${CentroCusto}
    Validar Elemento Pelo Titulo         ${DescricaoCentroCusto}
    Validar Elemento Pelo Titulo         ${GrupoCusto}

### Keyword para retornar massa de dados para status inicial do teste ###
Excluir Centro de Custo Criado |${Setor}| |${CentroCusto}| |${DescricaoCentroCusto}| |${GrupoCusto}|
    Click Elemento por titulo            Procurar
    Preencher Campo                      ${CampoModoPesquisa}         ${Setor}
    Click Elemento por titulo            Executar Consulta
    Validar Preenchimento dos Campos |${Setor}| |${CentroCusto}| |${DescricaoCentroCusto}| |${GrupoCusto}|
    Click Elemento por titulo            Apagar
    Clicar Botao Salvar