##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do gerar aviso da cirurgia
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../../2-pages/0-JORNADA_PACIENTE/GerarAvisoCirurgiaPage.robot

*** Variable ***

*** Keywords ***
Preencher os campos |${AvDtPrevInter}|,|${AvTempoPrevisto}|,|${AvCodPaciente}|,|${AvCid}|,|${AvUnidInt}|,|${AvCentrCir}|,|${AvSalaCir}|,|${AvEqptMed}|,|${AvMedAssoc}|${print}
    Wait Until Element Is Visible    ${inputAvDtPrevInter}    120
    Preencher campo    ${inputAvDtPrevInter}    ${AvDtPrevInter}
    Sleep    1
    Preencher campo    ${inputAvTempoPrevisto}    ${AvTempoPrevisto}
    Sleep    1
    Preencher campo    ${inputAvCodPaciente}    ${AvCodPaciente}
    Sleep    1
    Preencher campo    ${inputAvCid}    ${AvCid}
    Sleep    1
    Preencher campo    ${inputAvUnidInt}    ${AvUnidInt}
    Sleep    1
    Preencher campo    ${inputAvCentrCir}    ${AvCentrCir}
    Sleep    1
    Preencher campo    ${inputAvSalaCir}    ${AvSalaCir}
    Sleep    1
    Preencher campo    ${inputAvEqptMed}    ${AvEqptMed}
    Sleep    1
    Preencher campo    ${inputAvMedAssoc}    ${AvMedAssoc}
    Sleep    1