##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para a Tela De M_RECEBE_GLOSA.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_RECEBE_GLOSA_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar "M_RECEBE_GLOSA"${printscreen} ${las}
    Unselect Frame
    # Pesquisa Escrita (Correção deve ser alinhada com o Thiago )
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo    ${HomeXpathBtnPesquisaInput}    M_RECEBE_GLOSA
    Sleep    1
    Click Element    ${ScreenRecebeGlosa}
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

Preencher Lote e Validar |${lote}|
    Preencher campo    ${campoLote}    ${lote}
    Clicar no Botao Executar
    Validar Elemento Pelo Titulo    ${lote}

Alterar data |${dtRecebimento}| e validar mensagem |${mensagemSucesso}|
    Preencher campo    ${campoDtRecebimento}    ${dtRecebimento}
    Click no Item    ${checkBoxRecTotal}
    Clicar Botao e Validar Mensagem    ${btnSalvar}    ${MensagemToast}    ${mensagemSucesso}
    Click no Item    ${btnOk}

Clicar Botao e Validar Mensagem
    [Arguments]    ${Botao}    ${MensagemRecebida}    ${MensagemEsperada}
    Click no Item    ${Botao}
    Valida Mensagem    ${MensagemRecebida}    ${MensagemEsperada}
