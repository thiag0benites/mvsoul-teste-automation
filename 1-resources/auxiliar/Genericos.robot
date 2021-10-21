##################################################################################################################################
# Autor: Thiago Benites
# Data: 17/11/2020
# Decrição: Keywords genericas para utilização em qualquer sisteme WEB
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${FILE}           ${CURDIR}\\6-files\\upload.txt
${cssOriginal}
${i}

*** Keywords ***
### Autor: Thiago Benites
### Data: 17/11/2020
### Descrição: Utiliza o sikuli para efetuar em uma imagem visível
##############################################################################################################################################################################
#    Métodos sem retorno (Procedimentos)
##############################################################################################################################################################################
### Método sikuli (erro: não funciona em linux)
Nova aba browser
    Switch Window    NEW

Muda elemento Javascript
    Sleep    1
    ${elemento2}    Get WebElement    ${ContaAtendimentoContadorNotificação}
    Execute Javascript    arguments[0].class() = 'notification-item';    ARGUMENTS    ${elemento2}
    Capture Page Screenshot

Valida Mensagem
    [Arguments]    ${MensagemRecebida}    ${MensagemEsperada}
    Wait Until Element Is Visible    ${MensagemRecebida}    120
    Sleep    3
    Element Should Contain    ${MensagemRecebida}    ${MensagemEsperada}

Click Javascript
    [Arguments]    ${elemento}
    # Sleep    3
    ${elemento2}    Get WebElement    ${elemento}
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${elemento2}
    # Capture Page Screenshot

Click na imagem sikuli
    [Arguments]    ${imagem}    ${timeout}=${60}
    Add Image Path    ${imagens}
    ${exist}    Exists    ${imagem}    ${timeout}
    Run Keyword If    ${exist}==True    SikuliLibrary.Click    ${imagem}
    Log To Console    *** Efetuado o click em ${imagem}

Click na imagem
    [Arguments]    ${imagem}    ${timeout}=${60}
    Log    *** Imagem Procurada: ${imagem}
    Log To Console    *** Imagem Procurada: ${imagem}
    ImageHorizonLibrary.Wait For    ${imagem}    ${timeout}
    Sleep    2
    ImageHorizonLibrary.Click Image    ${imagem}
    Log To Console    *** Efetuado o click em ${imagem}

Seleciona frame
    [Arguments]    ${elementoFrame}    ${timeout}=${60}
    Wait Until Element Is Visible    ${elementoFrame}    ${timeout}    O elemento Frame ${elementoFrame} não foi carregado
    Wait Until Element Is Enabled    ${elementoFrame}    ${timeout}    O elemento Frame ${elementoFrame} não esta habilitado
    Select Frame    ${elementoFrame}
    Sleep    1

Click Elemento por titulo
    [Arguments]    ${titulo}    ${timeout}=${60}
    ${elemento}    Set Variable    xpath=//a[@title='${titulo}']
    Wait Until Element Is Visible    ${elemento}    ${timeout}    O elemento ${elemento} não foi carregado
    Sleep    2
    Click Element    ${elemento}

Realcar Elemento
    [Arguments]    ${element}
    ${i}    Set Variable    1
    ${cssOriginal}    Set Variable    element['style']
    FOR    ${i}    IN RANGE    3
        Execute Javascript    "arguments[0].setAttribute(arguments[1],arguments[2],arguments[3]);",element,'style','border: 5px solid #00FF00;','border-style: dashed;'
        Sleep    0.150
        Execute Javascript    "arguments[0].setAttribute(arguments[1],arguments[2]);",element,'style',${cssOriginal}
        Sleep    0.150
    END

##############################################################################################################################################################################
#    Métodos com retorno (Funções)
##############################################################################################################################################################################

Converte string em lista
    [Arguments]    ${valor}    ${caracter}
    @{lista}    Split String    ${valor}    ${caracter}
    [Return]    @{lista}

Pega elemento filho por texto
    [Arguments]    ${locatorElementos}    ${textoItem}
    @{elementos}    Get WebElements    ${locatorElementos}
    Log List    ${elementos}
    FOR    ${elemento}    IN    @{elementos}
        ${textoItemAtual}    SeleniumLibrary.Get Text    ${elemento}
        ${localizouTexto}    Run Keyword And Ignore Error    Should Contain    ${textoItemAtual}    ${textoItem}
        Log To Console    *** Texto Procurado: ${textoItem}
        Log    *** Texto Procurado: ${textoItem}
        Log To Console    *** Linha Atual: ${localizouTexto}
        Log    *** Linha Atual: ${localizouTexto}
        ${elementoLinha}    Set Variable    ${elemento}
        Exit For Loop If    ${localizouTexto} == ('PASS', None)
    END
    [Return]    ${elementoLinha}

Criar pessoa fisica
    [Arguments]    ${sexo}
    ${sexo}    Convert To Lower Case    ${sexo}
    IF    "${sexo}" == "masculino"
        ${nome}    First Name Male
    ELSE IF    "${sexo}" == "feminino"
        ${nome}    First Name Female
    END
    ${nome}    Tira Acentos    ${nome}
    ${sobreNome}    Last Name Nonbinary
    ${sobreNome}    Tira Acentos    ${sobreNome}
    ${sobreNome}    Catenate    ${sobreNome}    Automacao
    ${nomeMae}    First Name Female
    ${nomeMae}    Tira Acentos    ${nomeMae}
    ${sobreNomeMae}    Last Name Nonbinary
    ${sobreNomeMae}    Tira Acentos    ${sobreNomeMae}
    ${sobreNomeMae}    Catenate    ${sobreNomeMae}    Automacao
    ${dataNascimento}    Date Of Birth    minimum_age=18    maximum_age=90
    ${dataNascimento}    Convert To String    ${dataNascimento}
    ${dataNascimento}    Convert Date    ${dataNascimento}    result_format=%d/%m/%Y
    ${cpf}    Gerar Cpf
    ${ddd}    Set Variable    81
    ${telefone}    Random Number    digits=8    fix_len=True
    ${celular}    Random Number    digits=8    fix_len=True
    ${celular}    Set Variable    9${celular}
    ${email}    Email
    Log To Console    ***
    Log To Console    ****************************************************************
    Log To Console    *** CRIADA NOVA PESSOA FISICA ***
    Log To Console    ****************************************************************
    Log To Console    *** Nome: ${nome} ${sobreNome}
    Log To Console    *** Sexo: ${sexo}
    Log To Console    *** Data de Nascimento: ${dataNascimento}
    Log To Console    *** Nome da Mae: ${nomeMae} ${sobreNomeMae}
    Log To Console    *** CPF: ${cpf}
    Log To Console    *** DDD: ${ddd}
    Log To Console    *** Telefone: ${telefone}
    Log To Console    *** Celular: ${celular}
    Log To Console    *** E-mail: ${email}
    ${cnpj}    Replace String    ${cpf}    .    ${EMPTY}
    ${cnpj}    Replace String    ${cpf}    -    ${EMPTY}
    ${pessoa}    Create Dictionary    nome=${nome} ${sobreNome}    sexo=${sexo}    nomeMae=${nomeMae} ${sobreNomeMae}    dataNascimento=${dataNascimento}    cpf=${cpf}    ddd=${ddd}    telefone=${telefone}    celular=${celular}    email=${email}
    [Return]    ${pessoa}

Criar pessoa juridica
    ${nomeEmpresa}    Company
    ${sufixEmpresa}    Company Suffix
    ${email}    Company Email
    ${ddd}    Set Variable    81
    ${telefone}    Random Number    digits=8    fix_len=True
    # ${celular}    Random Number    digits=8    fix_len=True
    # ${celular}    Set Variable    9${celular}
    ${cnpj}    Gerar Cnpj
    Log To Console    ***
    Log To Console    ****************************************************************
    Log To Console    *** CRIADA NOVA PESSOA JURIDICA ***
    Log To Console    ****************************************************************
    Log To Console    *** CNPJ: ${cnpj}
    Log To Console    *** Nome Empresa: ${nomeEmpresa} ${sufixEmpresa}
    Log To Console    *** E-mail: ${email}
    Log To Console    *** DDD: ${ddd}
    Log To Console    *** Telefone: ${telefone}
    ${cnpj}    Replace String    ${cnpj}    .    ${EMPTY}
    ${cnpj}    Replace String    ${cnpj}    /    ${EMPTY}
    ${cnpj}    Replace String    ${cnpj}    -    ${EMPTY}
    ${empresa}    Create Dictionary    cnpj=${cnpj}    empresa=${nomeEmpresa} ${sufixEmpresa}    email=${email}    ddd=${ddd}    telefone=${telefone}
    [Return]    ${empresa}

Cria endereco
    ${estado}    State
    ${cidade}    City
    ${logradouro}    Street Address
    ${cep}    Postcode
    Log To Console    ***
    Log To Console    ****************************************************************
    Log To Console    *** CRIADO NOVO ENDEREÇO ***
    Log To Console    ****************************************************************
    Log To Console    *** Estado: ${estado}
    Log To Console    *** Cidade: ${cidade}
    Log To Console    *** Logradouro: ${logradouro}
    Log To Console    *** CEP: ${cep}
    ${cep}    Replace String    ${cep}    -    ${EMPTY}
    ${endereco}    Create Dictionary    estado=${estado}    cidade=${cidade}    logradouro=${logradouro}    cep=${cep}
    [Return]    ${endereco}

Click elemento filho por texto
    [Arguments]    ${locatorElementos}    ${textoItem}
    @{elementos}    Get WebElements    ${locatorElementos}
    FOR    ${elemento}    IN    @{elementos}
        ${textoItemAtual}    SeleniumLibrary.Get Text    ${elemento}
        # ${localizouTexto}    Run Keyword And Ignore Error    Should Contain    ${textoItemAtual}    ${textoItem}
        Run Keyword If    ${localizouTexto} == ('PASS', None)    Click Element    ${elemento}
        Exit For Loop If    ${localizouTexto} == ('PASS', None)
    END
    Run Keyword If    ${localizouTexto} == ('PASS', None)    Log To Console    *** Texto Procurado: ${textoItem}

Conta Linhas Tabela
    [Arguments]    ${LocatorTabela}
    @{Linhas}    Get WebElements    ${LocatorTabela}//tbody//tr
    ${TotalLinhas}    Get Length    ${Linhas}
    [Return]    ${TotalLinhas}