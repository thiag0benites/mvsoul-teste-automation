##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: M_USUARIO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/5-FATURAMENTO/G_CIH_A_PAGE.robot

*** Variable ***
${windowhandles}            Get Window Handles
${WindowTitle}             Get Title
        
*** Keywords ***
Preencher Campo Dt Competencia|${dtCompet}|
    Wait Until Element Is Visible       ${cpDtCons}         180
    Preencher Campo         ${cpDtCons}         ${dtCompet}
    Press Keys          ${cpDtCons}         ENTER
    Sleep       3

Selecionar aba convenio
    Sleep       4
    Click Element       ${abaConvenio}
    
Prencher campo Codigo|${codConvenio}|
    Wait Until Element Is Visible       ${cpCodConv}         240
    Preencher Campo         ${cpCodConv}         ${codConvenio}
    Press Keys          ${cpCodConv}         ENTER
    Sleep       3

Selecionar aba unidade
    Click Element       ${abaUnidade}
    Sleep       3

Preencher campo Unidade|${unidade}|
    Wait Until Element Is Visible       ${cpUnidade}         180
    Preencher Campo         ${cpUnidade}         ${unidade}
    Press Keys          ${cpUnidade}         ENTER
    Sleep       3

Selecionar aba Origem Ambulatorial 
    Click Element       ${abaOrigemAmb}
    Sleep       3

Preencher campo codigo|${codOrigemAmb}|
    Wait Until Element Is Visible       ${cpCodAmb}         180
    Preencher Campo         ${cpCodAmb}         ${codOrigemAmb}
    Press Keys          ${cpCodAmb}         ENTER
    Sleep       3

Selecionar aba Origem Internacao
    Click Element       ${abaOrigemInt}
    Sleep       3

Preencher campo codigo OrigemInt|${codOrigemInt}|
    Wait Until Element Is Visible       ${cpCodInt}         180
    Preencher Campo         ${cpCodInt}         ${codOrigemInt}
    Press Keys          ${cpCodInt}         ENTER
    Sleep       3
Selecionar aba Parametros
    Click Element       ${abaParemtro}
    Sleep       3

Clicar no botao[${nomeBtn}]
    IF    '${nomeBtn}' == 'Gerar Arquivo'
        Wait Until Element Is Visible    ${btnGerarArquivo}    30
        Sleep    3
        Click Element    ${btnGerarArquivo}
    ELSE IF    '${nomeBtn}' == 'sim'
        Wait Until Element Is Visible    ${btnSim}    30
        Sleep    3
        Click Button      ${btnSim}
    ELSE IF    '${nomeBtn}' == 'sim2'
        Wait Until Element Is Visible    ${btnSim2}    30
        Sleep    3
        Click Element      ${btnSim2}
    ELSE IF    '${nomeBtn}' == 'Imprimir'
        Wait Until Element Is Visible    ${btnImprimir}    30
        Sleep    3
        Click Button    ${btnImprimir}
        Sleep       6
    ELSE IF    '${nomeBtn}' == 'Imprimir Inconsistencia'
        Wait Until Element Is Visible    ${btnImprimirIncons}    30
        Sleep    3
        Click Button    ${btnImprimirIncons}
    ELSE IF    '${nomeBtn}' == 'Imprimir2'
        Wait Until Element Is Visible    ${btnImprimir2}    30
        Sleep    3
        Click Element    ${btnImprimir2}   
    END

  
Valida aba do browser
    Sleep       3
    Switch Window	MAIN