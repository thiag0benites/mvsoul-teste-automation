##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/M_RESPONSAVEL_PAGE.robot

*** Keywords ***
Seleciona Pessoa Fisica ou Pessoa Juridica |${Item}|
    ${Item}    Run Keyword If
    ...    '${Item}' == 'PJ'
    ...    Click no Item    ${BtnPJ}
    ...    ELSE IF
    ...    '${Item}' == 'PF'
    ...    Click no Item    ${BtnPF}

Seleciona Cadastro Estrangeiro ou Resp Ativo |${Item}|
    ${Item}    Run Keyword If
    ...    '${Item}' == 'Estrangeiro'
    ...    Click no Item    ${BtnEstrangeiro}
    ...    ELSE IF
    ...    '${Item}' == 'Responsavel Ativo'
    ...    Click no Item    ${BtnRespAtivo}

Informar o Nome |${Nome}| e a Nacionalidade |${Nacionalidade}| da Pessoa
    Preencher campo                           ${CampoNome}           ${Nome}
    Clicar no Campo e Preencher Informacao    ${BtnNacionalidade}    ${CampoFiltro}        %${Nacionalidade}
    Click no Item                             ${BtnFiltrar}
Informar CPF ou CNPJ |${CPF/CNPJ}| nos campos apresentados
    ${CPF/CNPJ}    Run Keyword If
    ...    '${CPF/CNPJ}' == 'CPF'
    ...    Preencher campo    ${CampoCPF}    790.544.560-78
    ...    ELSE IF
    ...    '${CPF/CNPJ}' == 'CNPJ'
    ...    Preencher campo    ${CampoCNPJ}    34.456.378/0001-16

Pesquisa CEP
    Click no Item                              ${BtnCEP}
    Clicar no Campo e Preencher Informacao     ${BtnUF}              ${CampoFiltro}        %SAO PAULO
    