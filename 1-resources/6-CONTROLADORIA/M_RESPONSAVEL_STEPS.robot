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
    Click no Item                             ${BtnOk}
Informar CPF ou CNPJ |${CPF/CNPJ}| nos campos apresentados
    ${CPF/CNPJ}    Run Keyword If
    ...    '${CPF/CNPJ}' == 'CPF'
    ...    Clicar no Campo e Preencher Informacao    ${CampoCPF}      ${CampoCPF}    79054456078
    ...    ELSE IF
    ...    '${CPF/CNPJ}' == 'CNPJ'
    ...    Clicar no Campo e Preencher Informacao    ${CampoCNPJ}     ${CampoCNPJ}   34456378000116
    Send Keys    tab
    Click no Item                                    ${BtnOkPopUp}

Preencher Inscricao Municipal e Estadual
    Clicar no Campo e Preencher Informacao    ${CampoInscMunicipal}    ${CampoInscMunicipal}    123456
    Clicar no Campo e Preencher Informacao    ${CampoInscEstadual}     ${CampoInscEstadual}     654321


Pesquisa CEP
    Click no Item                              ${BtnCEP}
    Clicar no Campo e Preencher Informacao     ${BtnUF}              ${CampoFiltro}        %SAO PAULO
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOk}
    Clicar no Campo e Preencher Informacao     ${BtnLocalidade}      ${CampoFiltro}        ADAMANTINA
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${SelectCidade}                
    Click no Item                              ${BtnOk}
    Clicar no Campo e Preencher Informacao     ${BtnBairro}          ${CampoFiltro}        CENTRO
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOk}
    Clicar no Campo e Preencher Informacao     ${BtnLogradouro}      ${CampoProcurar}        SALLES FILHO
    Click no Item                              ${BtnProcurar}
    Click no Item                              ${BtnConfirmaLogradouro}
    Click no Item                              ${BtnConfirmar}
    Preencher campo                            ${CampoNumero}                              1000
    Preencher campo                            ${CampoTelefone}                            912345678

Informar os dados bancarios do responsavel
    Clicar no Campo e Preencher Informacao     ${BtnBanco}           ${CampoFiltro}        ITAU
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOk}
    Preencher campo                            ${CampoAgencia}                              0001
    Preencher campo                            ${CampoAgenciaDigito}                        2
    Preencher campo                            ${CampoContaCorrente}                        12345
    Preencher campo                            ${CampoContaCorDigito}                       6

Clicar no botao <Cadastro de Nacionalidade> 
    Click no Item                              ${BtnCadastroNac}
    Click no Item                              ${CampoCodPaisInat}
    Clicar no Campo e Preencher Informacao     ${BtnCodPais}               ${CampoFiltro}               BRASIL
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOk}
    Preencher Input inativo                    ${CampoDescriNacInat}       ${CampoDescriNacAtivo}       TESTE AUTOMACAO
    Click no Item                              ${BtnSalvar}
    Validar Item                               ${ValidNacinalidade}
    Send Keys    tab        
    Click no Item                              ${FecharAba}    

Clicar no botao<Salvar>
    Click no Item                              ${BtnSalvar}
    
    


