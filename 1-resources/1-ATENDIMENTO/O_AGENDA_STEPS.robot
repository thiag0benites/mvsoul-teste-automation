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
    ELSE IF    '${nomeBtn}' == 'Confirmar'
        Wait Until Element Is Visible    ${btnConfirmar}    30
        Sleep       4
        Click Element    ${btnConfirmar}
        Sleep       2
    ELSE IF    '${nomeBtn}' == 'Nao'
        Wait Until Element Is Visible    ${btnNao}    30
        Sleep        4
        Click Element    ${btnNao}
        Sleep         2
    END

Preencher Campos Cod paciente |${codPac}|, tipo acomodacao |${tpAcom}|, Unidade Internacao |${undInt}|, equipe medica |${eqpMed}|, anestesista |${anestesista}|, cid |${cid}|
    Wait Until Element Is Visible       ${cpCodPac}         240
    Preencher Campo         ${cpCodPac}         ${codPac}
    Sleep       1
    Press Keys          ${cpCodPac}       ENTER
    Sleep       3
    Preencher Campo         ${cpTpAcom}         ${tpAcom}
    Press Keys          ${cpTpAcom}       ENTER
    Sleep       3
    Preencher Campo         ${cpUnInt}         ${undInt}
    Press Keys          ${cpUnInt}       ENTER
    Sleep       3
    Preencher Campo         ${cpEqMed}         ${eqpMed}
    Press Keys          ${cpEqMed}       ENTER
    Sleep       3
    Preencher Campo         ${cpAnestesista}         ${anestesista}
    Press Keys          ${cpAnestesista}       ENTER
    Sleep       3
    Preencher Campo         ${cpCid}         ${cid}
    Press Keys          ${cpCid}       ENTER
    Sleep       3

