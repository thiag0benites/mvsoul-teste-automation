##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do Cadastro de Paciente para a Jornada do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/CadastroDePacientePage.robot

*** Variable ***

*** Keywords ***
Informar os campos que foram configurados como obrigatorios na tela${print}
    ${pessoaFisica}    Criar pessoa fisica    feminino
    Sleep    0.5
    Wait Until Element Is Visible    ${inputNomePaciente}    120
    Preencher campo    ${inputNomePaciente}    ${pessoaFisica.nome}
    Preencher campo    ${inputNomeDaMae}    ${pessoaFisica.nomeMae}
    Preencher campo    ${inputDataNascimento}    ${pessoaFisica.dataNascimento}
    Seleciona Item Combobox    ${selectSexo}    Feminino
    Sleep    2
    Seleciona Item Combobox    ${selectCor}    Sem informação
    Sleep    3
    ${cpf}    Replace String    ${pessoaFisica.cpf}    .    ${EMPTY}
    ${cpf}    Replace String    ${cpf}    -    ${EMPTY}
    Preencher campo    ${inputCpf}    ${cpf}
    # Tempo necessário para o preenchimento do campo numero corretamente
    # Sleep    1
    Preencher campo    ${numeroEndereco}    100

Verificar mensagem de aviso
    Wait Until Element Is Visible    ${msgWarning}    5
    Click Button    ${msgWargingBtnSim}
    # Sleep    1
    # ${ExisteMsgAviso}    Get Text    ${msgWarning}
    # ${ExisteMsgAviso}    Should Be String    ${msgWarning}    Atenção! Alterações podem ser perdidas.
    # ${ExisteMsgAviso}    Element Should Contain    ${msgWarning}    Atenção! Alterações podem ser perdidas.
    # IF    ${ExisteMsgAviso} <> ""
    #    Click Button    ${msgWargingBtnSim}
    # END

Clicar no botao [${nomeBtn}]|${cadPacMsgEsperada}|
    
    IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    60
        Sleep    0.5
        Click Element    ${btnSalvar}
        Wait Until Element Is Visible    ${notificacaoGravarRegistro}    5
        Sleep    1
        ${msgObtida}    Get Text    ${notificacaoGravarRegistro}
        IF    "${msgObtida}" != ""
            Should Be Equal As Strings    ${cadPacMsgEsperada}    ${msgObtida}
        ELSE
            Log To Console    *** Mensagem de alerta não foi apresentada!
        END

    ELSE IF    '${nomeBtn}' == 'Retornar'
        Wait Until Element Is Visible    ${btnRetornar}    30
        Sleep    1
        Click Element    ${btnRetornar}
        Sleep    1

    ELSE IF    '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible    ${btnSim}    30
        Sleep    1
        Click Element    ${btnSim}
        Sleep    1

     ELSE IF    '${nomeBtn}' == 'Não'
        Wait Until Element Is Visible    ${btnNao}    30
        Sleep    1
        Click Element    ${btnNao}
        Sleep    1    

    ELSE IF    '${nomeBtn}' == '1-Pesquisar'
        Wait Until Element Is Visible    ${btnPesquisarNome}    30
        Sleep    1
        Click Element    ${btnPesquisarNome}
        Sleep    1    
    
    ELSE IF    '${nomeBtn}' == '3-Confirmar'
        Wait Until Element Is Visible    ${btnConfirmaNome}    30
        Sleep    1
        Click Element    ${btnConfirmaNome}
        Sleep    1 

    ELSE IF    '${nomeBtn}' == 'Internar'
        Wait Until Element Is Visible    ${btnInternar}    30
        Sleep    1
        Click Element    ${btnInternar}
        Sleep    1

    ELSE IF    '${nomeBtn}' == '1-Agendar'
        Wait Until Element Is Visible    ${btnAgendar}    30
        Sleep    1
        Click Element    ${btnAgendar}    
        Sleep    1

    ELSE IF    '${nomeBtn}' == '8-Confirmar'
        Wait Until Element Is Visible    ${btnConfirmar}    30
        Sleep    1
        Click Element    ${btnConfirmar}    
        Sleep    1 

    ELSE IF    '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOkMed}    30
        Sleep    1
        Click Element    ${btnOkMed}   
        Sleep    1.5

    ELSE IF    '${nomeBtn}' == '5-Imprimir'
        Wait Until Element Is Visible    ${btnPrintInt}    30
        Sleep    1
        Click Element    ${btnPrintInt}   
        Sleep    1
    ELSE IF    '${nomeBtn}' == 'Clicar no botao [Pesquisa]||'
        Wait Until Element Is Visible    ${btnPrintInt}    30
        Sleep    1
        Click Element    ${btnPrintInt}   
        Sleep    1
    END

Captura codigo do Paciente Cadastrado|${suite}|${id}|
    Sleep    1
    Should Not Be Empty    ${inputCodPaciente}
    #${xpathCodPaciente}
    ${codPaciente}    Get Element Attribute    ${inputCodPaciente}    title
    #${xpathCodPaciente}    title
    Should Not Be Empty    ${codPaciente}
    ${nome}    Get Element Attribute    ${inputNomePaciente}    title
    Should Not Be Empty    ${nome}
    ${idade}    Get Element Attribute    ${inputIdade}    title
    Should Not Be Empty    ${idade}
    ${cpf}    Get Element Attribute    ${inputCpf}    title
    Should Not Be Empty    ${cpf}
    # Altera massa de dados da "${suite}", linha "${id}", coluna "cadPacCodPaciente", valor ""
    Altera massa de dados da "${suite}", linha "${id}", coluna "cadPacOutputCodPaciente", valor "${codPaciente}"
    Altera massa de dados da "${suite}", linha "${id}", coluna "cadPacOutputNomePaciente", valor "${nome}"
    Altera massa de dados da "${suite}", linha "${id}", coluna "cadPacOutputIdade", valor "${idade}"
    Altera massa de dados da "${suite}", linha "${id}", coluna "cadPacOutputCpf", valor "${cpf}"
    Click Element    ${btnSair}
    Sleep    3
    # Unselect Frame