##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Tela de consulta de CEPs e Endereços
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/1-ATENDIMENTO/C_CONSULTA_CEP_ECT_PAGE.robot

*** Variable ***
${Vazio}

*** Keywords ***
Acessar a tela C_CONSULTA_CEP_ECT |${NomeTela}|
    Wait Until Element Is Visible    ${BotaoCEP}    180
    Click no Item    ${BotaoCEP}
    Validar Acesso a Tela |${NomeTela}|

Realizar Pesquisa por |${OpcaoPesquisa}| |${Logradouro}| |${Cidade}| |${CEP}|
    IF    '${OpcaoPesquisa}' == 'Logradouro'
        Preencher Campo    ${CampoLogradouro}    ${Logradouro}
        Click no Item    ${BotaoPesquisar}
        Validar Resultado Pesquisa |${Logradouro}| |${Cidade}| |${CEP}|
    ELSE IF    '${OpcaoPesquisa}' == 'Cidade'
        Preencher Campo    ${CampoCidade}    ${Cidade}
        Click no Item    ${BotaoPesquisar}
        Validar Resultado Pesquisa |${Logradouro}| |${Cidade}| |${CEP}|
    ELSE IF    '${OpcaoPesquisa}' == 'CEP'
        Preencher Campo    ${CampoCEP}    ${CEP}
        Click no Item    ${BotaoPesquisar}
        Validar Resultado Pesquisa |${Logradouro}| |${Cidade}| |${CEP}|
    END

Validar Resultado Pesquisa |${Logradouro}| |${Cidade}| |${CEP}|
    Validar Elemento Pelo Titulo    ${CEP}
    Validar Elemento Pelo Titulo    ${Logradouro}
    Validar Elemento Pelo Titulo    ${Cidade}
