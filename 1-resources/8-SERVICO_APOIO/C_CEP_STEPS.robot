##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: C_CEP
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/C_CEP_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar |${tela}|${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}       ${tela}
    Sleep    1
    Click Element    ${ScreenCep} 

    #### LAS Send Keys #####
    IF    "${las}" == "@las"
        # Sleep    1
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    180
        Unselect Frame
        # Sleep    1
        Send Keys    tab
        Send Keys    enter
    END
    #### End LAS Send Keys #####
    Seleciona frame    ${IdIframe}    180
    Sleep    3
    Run Keyword If    '${printscreen}' == '@print'    Capture Page Screenshot
    Sleep    60

Preencher Campos UF|${UF}|, Localidade|${localidade}|, Bairro|${bairro}|, Logradouro|${logradouro}|
    Wait Until Element Is Visible       ${cpUf}         240
    Preencher Campo         ${cpUf}         ${UF}
    Press Keys          ${cpUf}         ENTER
    Sleep       3
    Preencher Campo         ${cpLocalidade}         ${localidade}
    Press Keys          ${cpLocalidade}         ENTER
    Sleep       3
    Preencher Campo         ${cpBairro}         ${bairro}
    Press Keys          ${cpBairro}         ENTER
    Sleep       3
    Preencher Campo         ${cpLogradpouro}         ${logradouro}
    Press Keys          ${cpLogradpouro}         ENTER
    Sleep       3
    
Captura codigo|${suite}|${id}|
    Sleep    1
    Should Not Be Empty    ${codCep}
    ${codigo}    Get Element Attribute    ${codCep}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "cep", valor "${codigo}"
    Sleep    3
