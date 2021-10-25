##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Passo a passo do Manutenção de Guias (Std) 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/2-ASSISTENCIAL/M_ADMISSAO_CO_PAGE.robot
### Metodos Genericos


*** Variable ***

*** Keywords ***
Acessar Atendimento |${Item}|
    Wait Until Element Is Visible    ${BtnSetaAtendimento}         30
    SeleniumLibrary.Click Element    ${BtnSetaAtendimento}
    Sleep    5
    SeleniumLibrary.Input Text       ${CampoFiltroAtend}            ${Item}
    Click Button                     ${BtnFiltrar}
    Wait Until Element Is Visible    ${SelecionaAtendimento}        30
    Click Element                    ${SelecionaAtendimento}
    Click Button                     ${BtnOk}

