##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para a Tela De O_IMP_CAIXA.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/6-CONTROLADORIA/O_IMP_CAIXA_PAGE.robot
Resource            ../../1-resources/auxiliar/Genericos.robot

*** Variable ***

*** Keywords ***

Acessar "O_IMP_CAIXA"${printscreen} ${las}
    Unselect Frame
    # Pesquisa Escrita (Correção deve ser alinhada com o Thiago )
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}  O_IMP_CAIXA
    Sleep    1
    Click Element    ${ScreenLiberacaoCaixa} 

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

Preecher Periodo |${periodoInicial}|, |${periodoFinal}| e Liberar
    Sleep    1
    Click Element  ${campoPeriodoInicial}                
    Wait Until Element Is Visible       ${inputPeriodoInicial}   120
    Preencher campo  ${inputPeriodoInicial}  ${periodoInicial}
    
    Wait Until Element Is Visible       ${campoPeriodoFinal}   120
    Click Element  ${campoPeriodoFinal}
    Sleep    1
    Preencher campo  ${inputPeriodoFinal}  ${periodoFinal}
   
    Wait Until Element Is Visible       ${btnLiberar}   120
    Click Element  ${btnLiberar}
    Sleep    1

Preecher Empresas Associadas |${codigoDaEmpresa}|
    Wait Until Element Is Visible   ${campoCodEmpresaAssociada}    120
    Click Element    ${campoCodEmpresaAssociada}
    Wait Until Element Is Visible   ${inputCodEmpresaAssociada}    120
    Preencher campo  ${inputCodEmpresaAssociada}  ${codigoDaEmpresa}       


Clicar no Botao |${nomeBtn}|
    IF    '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    120
        Sleep    1
        Click Element    ${btnOk}
        Sleep    1
    END    

