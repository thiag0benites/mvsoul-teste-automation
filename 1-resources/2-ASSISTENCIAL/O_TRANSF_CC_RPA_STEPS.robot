##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Passo a passo do Manutenção de Guias (Std) 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/2-ASSISTENCIAL/O_TRANSF_CC_RPA_PAGE.robot
### Metodos Genericos


*** Variable ***

*** Keywords ***
Acessar Cadastro |${Item}|
    Wait Until Element Is Visible    ${CampoAtendimento}            30
    SeleniumLibrary.Click Element    ${CampoAtendimento}
    Sleep    5
    SeleniumLibrary.Input Text       ${CampoAtendimento}            ${Item}
    Clicar Botao |Executar Consulta|
    Should Be String                 AADA TEIXEIRA PINTO MARTINS

# Acesso Campo |${Campo}|
#     ${Campo}    Run Keyword If    
#     ...   '${Campo}' == 'Codigo Aviso'
#     ...    Click Element                    ${IdeCodigoAviso}
#     ...    Sleep    5
#     ...    SeleniumLibrary.Click Button     ${BtnListaCodigoAviso}
#     ...    SeleniumLibrary.Click Element    ${TabelaCodigoAviso}
#     ...    Clicar Botao |Ok|
#     ...    Should Be String                 44199
#     # ...    ELSE IF
Acesso Campo |${Campo}|
    # ...   '${Campo}' == 'Codigo Aviso'
    Click Element                    ${IdeCodigoAviso}
    Sleep    5
    SeleniumLibrary.Click Button     ${BtnListaCodigoAviso}
    SeleniumLibrary.Click Element    ${TabelaCodigoAviso}
    Clicar Botao |Ok|
    Should Be String                 44199
    # ...    ELSE IF
Clicar Botao |${Botao}|
    Sleep                                               10
    ${Botao}    Run Keyword If
    ...    '${Botao}' == 'Ok'
    ...    Click Button    ${BtnOk}
    ...    ELSE IF
    ...    '${Botao}' == 'Executar Consulta'
    ...    Click Element    ${BtnExecutarConsulta}