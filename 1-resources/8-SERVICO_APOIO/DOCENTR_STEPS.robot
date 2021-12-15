##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de DOCENTR.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/DOCENTR_PAGE.robot

*** Variable ***

*** Keywords ***

Acessar |${tela}|${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}       ${tela}
    Sleep    1
    Click Element    ${ScreenEntradaDeDocumentos} 

    #### LAS Send Keys #####
    IF    "${las}" == "@las"
        # Sleep    1
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    180
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

Preencher SAME e Validar |${same}|
    Preencher campo    ${campoSame}    ${same}
    Send Keys  enter
    Validar Elemento Pelo Titulo    ${same}
    Click no Item    ${btnAcessar}

Preencher Data Entrada |${dataEntrada}|, Atendimento |${atendimento}|, observacao |${observacao}| e validar
    Preencher campo    ${campoDataEntrada}    ${dataEntrada}
    Send Keys  enter
    Validar Elemento Pelo Titulo    ${dataEntrada}

    Preencher campo    ${campoAtendimento}    ${atendimento}
    Send Keys  enter
    Validar Elemento Pelo Titulo    ${atendimento}

    Preencher campo    ${campoObservacao}    ${observacao}
    Send Keys  enter
    Validar Elemento Pelo Titulo    ${observacao}

Preencher Armario |${armario}|, Tipo de Documentos |${tipoDocumento}| e validar
    Preencher campo    ${campoArmario}    ${armario}
    Send Keys  enter
    Validar Elemento Pelo Titulo    ${armario}

    Preencher campo    ${campoTipoDocumento}    ${tipoDocumento}
    Send Keys  enter
    Validar Elemento Pelo Titulo    ${tipoDocumento}

Imprimir e validar mensagem |${mensagemSucesso}|
    Click no Item    ${btnImprimir}
    Click no Item    ${checkbox}
    Click no Item    ${btnSair}
    Wait Until Element Is Visible    ${mensagemApresentada}     120
    Element Should Contain   ${mensagemApresentada}   ${mensagemSucesso}
    Click no Item    ${btnOk}
    Sleep  1
