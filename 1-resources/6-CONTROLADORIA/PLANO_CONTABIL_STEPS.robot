##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para a Tela De Plano Contábil.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/6-CONTROLADORIA/PLANO_CONTABIL_PAGE.robot
Resource            ../../1-resources/auxiliar/Genericos.robot

*** Variable ***

*** Keywords ***

Acessar "PLANO_CONTABIL"${printscreen} ${las}
    Unselect Frame
    # Pesquisa Escrita (Correção deve ser alinhada com o Thiago )
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}  PLANO_CONTABIL
    Sleep    1
    Click Element    ${ScreenPlanosContabeis} 

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

Preecher Planos |${codigo}|, |${descricao}|, |${mascara}|, |${tipo}|
    Sleep    1
    Clicar no botão Adicionar
    # Click no Item  ${campoCodigo}
    Preencher campo  ${inputCodigo}  ${codigo}
    Click Element  ${campoDescricao}
    Preencher campo  ${inputDescricao}  ${descricao}
    Click Element  ${campoMascara}
    Sleep    1
    Preencher campo  ${inputMascara}   9999.9
    Click Element  ${CampoTipo}
    Preencher campo  ${inputTipo}  ${tipo}
    Click Element  ${checkboxAtivo}
    Sleep    1

Preecher Empresas Associadas |${codigoDaEmpresa}|
    Wait Until Element Is Visible   ${campoCodEmpresaAssociada}    120
    Click Element    ${campoCodEmpresaAssociada}
    Wait Until Element Is Visible   ${inputCodEmpresaAssociada}    120
    Preencher campo  ${inputCodEmpresaAssociada}  ${codigoDaEmpresa}           

