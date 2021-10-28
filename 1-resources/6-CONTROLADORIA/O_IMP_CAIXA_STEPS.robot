##################################################################################################################################
# Autor: Denner Ricardo
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/O_IMP_CAIXA_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar a tela de Caixa ${printscreen} ${las}
    Unselect Frame
    Sleep    1
    Click Element    ${menuControladoria}
    Sleep    1
    Click Element    ${menuContabilidade}
    Sleep    1
    Click Element    ${menuLiberacaoMovimentacoes}
    Sleep    1
    Click Element    ${menuCaixa}
    #### LAS Send Keys #####
    IF    "${las}" == "@las"
        # Sleep    1
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    60
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