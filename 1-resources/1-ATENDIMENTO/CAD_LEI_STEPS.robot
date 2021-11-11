##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/CAD_LEI_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo código de unidade da internacao |${codigo}|
    Preencher campo                  ${inputCodigo}              ${codigo} 

Preencher os campos da tabela |${leito}|,|${descResumida}|,|${enferm}|,|${acomod}|
    Wait Until Element Is Visible        ${campoLeito}                   120
    Click Element                        ${campoLeito}
    Sleep      2

    Click Element                        ${btnAdicionar}
    Sleep      2

    Preencher campo                      ${campoLeitoInput}                     ${leito}
    Sleep      2

    Click no Item                        ${campoDesc}
    Preencher campo                      ${campoDescInput}                      ${descResumida}
    
    Click no Item                        ${campoEnferm}
    Sleep      2
    Preencher campo                      ${campoEnfermInput}                    ${enferm}

    Click no Item                        ${campoAcomod}
    Sleep      2
    Preencher campo                      ${campoAcomodInput}                    ${acomod}