##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/M_RESPONSAVEL_PAGE.robot
Library    Process

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
    Click no Item                             ${BtnOk}
Informar CPF|${NroCPF}| ou CNPJ|${NroCNPJ}|>|${CPF/CNPJ}| nos campos apresentados
    Run Keyword If
    ...    '${CPF/CNPJ}' == 'CPF'
    ...    Clicar no Campo e Preencher Informacao    ${CampoCPF}      ${CampoCPF}    ${NroCPF}
    ...    ELSE IF
    ...    '${CPF/CNPJ}' == 'CNPJ'
    ...    Clicar no Campo e Preencher Informacao    ${CampoCNPJ}     ${CampoCNPJ}   ${NroCNPJ}
    # Send Keys    tab
    # Click no Item                                    ${BtnOkPopUp}

Preencher Inscricao Municipal |${IncMunic}| e Estadual |${InsEstad}|
    Clicar no Campo e Preencher Informacao    ${CampoInscMunicipal}    ${CampoInscMunicipal}    ${IncMunic}
    Clicar no Campo e Preencher Informacao    ${CampoInscEstadual}     ${CampoInscEstadual}     ${InsEstad}


Pesquisa CEP |${DadosCep}|
    ${PesquisaCep}    Split String             ${DadosCep}
    Click no Item                              ${BtnCEP}
    Clicar no Campo e Preencher Informacao     ${BtnUF}              ${CampoFiltro}        ${DadosCep}[0]
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOk}
    Clicar no Campo e Preencher Informacao     ${BtnLocalidade}      ${CampoFiltro}        ${DadosCep}[1]
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${SelectCidade}                
    Click no Item                              ${BtnOk}
    Clicar no Campo e Preencher Informacao     ${BtnBairro}          ${CampoFiltro}        ${DadosCep}[2]
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOk}
    Clicar no Campo e Preencher Informacao     ${BtnLogradouro}      ${CampoProcurar}      ${DadosCep}[3]
    Click no Item                              ${BtnProcurar}
    Click no Item                              ${BtnConfirmaLogradouro}
    Click no Item                              ${BtnConfirmar}
    Preencher campo                            ${CampoNumero}                              ${DadosCep}[4]
    Preencher campo                            ${CampoTelefone}                            ${DadosCep}[5]

Informar os dados bancarios do responsavel
    Clicar no Campo e Preencher Informacao     ${BtnBanco}           ${CampoFiltro}        ITAU
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOk}
    Preencher campo                            ${CampoAgencia}                              0001
    Preencher campo                            ${CampoAgenciaDigito}                        2
    Preencher campo                            ${CampoContaCorrente}                        12345
    Preencher campo                            ${CampoContaCorDigito}                       6

Clicar no botao <Cadastro de Nacionalidade> Cod Pais|${CodPais}|> Descricao Nacional|${DescNac}|
    Click no Item                              ${BtnCadastroNac}
    Click no Item                              ${CampoCodPaisInat}
    Clicar no Campo e Preencher Informacao     ${BtnCodPais}               ${CampoFiltro}               ${CodPais}
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOk}
    Preencher Input inativo                    ${CampoDescriNacInat}       ${CampoDescriNacAtivo}       ${DescNac}
    Click no Item                              ${BtnSalvar}
    Validar Item                               ${ValidNacinalidade}
    Send Keys    tab        
    Click no Item                              ${FecharAba}    

Clicar no botao<Salvar>
    Click no Item                              ${BtnSalvar}
    Validar Item                               ${ValidNacinalidade}
    
    


