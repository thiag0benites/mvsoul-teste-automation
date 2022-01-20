##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela de Agendamento cirurgia
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/O_AGENDA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Campos Centro Cirurgico |${centroCirurgico}|, sala |${sala}|, data |${dtHora}|, convenio |${convenio}|, plano |${plano}|, cirurgiao |${cirurgiao}|, medico associado |${medicoAssociado}|
    Wait Until Element Is Visible       ${cpCenCirugico}        240
    Preencher Campo         ${cpCenCirugico}        ${centroCirurgico}
    Press keys          ${cpCenCirugico}        ENTER
    Sleep       3
    Preencher Campo         ${cpSala}       ${sala}
    Press keys          ${cpSala}        ENTER
    Sleep       3
    Preencher Campo         ${cpDtCirugia}           ${dtHora}
    Press keys          ${cpDtCirugia}        ENTER
    Sleep       3
    Click Element       ${elemRetic} 
    Sleep   8
    Click Element       ${cirurgia}
    Sleep       3
    Click element       ${btnOk}
    Sleep       3
    Preencher Campo         ${cpConvenio}       ${convenio}
    Press Keys      ${cpConvenio}       ENTER
    Sleep       3
    Preencher Campo     ${cpPlano}      ${plano}
    Press Keys      ${cpPlano}      ENTER
    Sleep       3
    Preencher Campo         ${cpCirurgiao}          ${cirurgiao}
    Press Keys      ${cpCirurgiao}      ENTER
    Sleep       3
    Preencher Campo     ${cpMedAssociado}       ${medicoAssociado}
    Press Keys      ${cpMedAssociado}       ENTER
    Sleep       3


Clicar no botao[${nomeBtn}]
    IF    '${nomeBtn}' == 'Agendar'
        Wait Until Element Is Visible    ${btnAgendar}    240
        Sleep       2
        Click Button    ${btnAgendar}
    ELSE IF    '${nomeBtn}' == ''
        Wait Until Element Is Visible    ${}    30
        Sleep       4
        Click Element    ${}
        Sleep       2
    ELSE IF    '${nomeBtn}' == ''
        Wait Until Element Is Visible    ${}    30
        Sleep        4
        Click Element    ${}
        Sleep         2
    ELSE IF    '${}' == ''
        Wait Until Element Is Visible    ${}    30
        Sleep    1
        Click Element    ${}
        Sleep    8
    END

Clicar no botao[Sim]
    
Preencher Campos Cod paciente |${dados}[codPac]|, tipo acomodacao |${dados}[tpAcom]|, Unidade Internacao |${dados}[undInt]|, equipe medica |${dados}[eqpMed]|, anestesista |${dados}[anestesista]|, cid |${dados}[cid]|

Clicar no botao[Confirmar]
Clicar no botao[Nao]