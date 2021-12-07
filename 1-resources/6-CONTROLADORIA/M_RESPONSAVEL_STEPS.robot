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

Informar o Nome |${Nome}| e a Nacionalidade |${Nacionalidade}| da Pessoa - Suite|${Suite}| Linha Gerenciador|${LinhaGerenc}|
    Preencher campo                           ${CampoNome}           ${Nome}
    Clicar no Campo e Preencher Informacao    ${BtnNacionalidade}    ${CampoFiltro}        %${Nacionalidade}
    Click no Item                             ${BtnFiltrar}
    Click no Item                             ${BtnOk}
    ${PessoaFisica}      Criar pessoa fisica    masculino
    ${PessoaJuridica}    Criar pessoa juridica
    Altera massa de dados da "${Suite}", linha "${LinhaGerenc}", coluna "NumeroCPF", valor "${PessoaFisica.cpf}"
    Altera massa de dados da "${Suite}", linha "${LinhaGerenc}", coluna "NumeroCNPJ", valor "${PessoaJuridica.cnpj}"


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


Pesquisa CEP "Estado|${UF}|" "Cidade|${Cidade}|" "Bairro|${Bairro}|" "Logradouro|${Rua}|" "Numero|${NumeroCasa}|" "Telefone|${Telefone}|"
    Click no Item                              ${BtnCEP}
    Clicar no Campo e Preencher Informacao     ${BtnUF}                ${CampoFiltro}        ${UF}      
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOk}
    Clicar no Campo e Preencher Informacao     ${BtnLocalidade}        ${CampoFiltro}        ${Cidade}       
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${SelectCidade}                
    Click no Item                              ${BtnOk}
    Clicar no Campo e Preencher Informacao     ${BtnBairro}            ${CampoFiltro}        ${Bairro}       
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOk}
    Clicar no Campo e Preencher Informacao     ${BtnLogradouro}        ${CampoProcurar}      ${Rua} 
    Click no Item                              ${BtnProcurar}
    Click no Item                              ${BtnConfirmaLogradouro}
    Click no Item                              ${BtnConfirmar}
    Preencher campo                            ${CampoNumero}          ${NumeroCasa}         
    Preencher campo                            ${CampoTelefone}        ${Telefone}           

Informar os dados bancarios do responsavel "Banco|${Banco}|" "Agencia|${Agencia}|e Digito|${DigitoAg}|" "Conta Corrente|${ContaCorr}| e Digito|${DgtCC}|"
    Clicar no Campo e Preencher Informacao     ${BtnBanco}             ${CampoFiltro}        ${Banco}        
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOk}
    Preencher campo                            ${CampoAgencia}                              ${Agencia} 
    Preencher campo                            ${CampoAgenciaDigito}                        ${DigitoAg} 
    Preencher campo                            ${CampoContaCorrente}                        ${ContaCorr} 
    Preencher campo                            ${CampoContaCorDigito}                       ${DgtCC} 

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

Clicar no botao<Salvar> "Nacionalidade |${ValidNac}|"
    Click no Item                              ${BtnSalvar}
    Validar Informacao Item                    ${ValidNacinalidade}        ${ValidNac}
    
    


