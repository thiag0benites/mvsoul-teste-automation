##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para a Tela De M_ENTREGA_RECURSO.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/5-FATURAMENTO/M_ENTREGA_RECURSO_PAGE.robot

*** Variable ***

*** Keywords ***

Acessar "M_ENTREGA_RECURSO"${printscreen} ${las}
    Unselect Frame
    # Pesquisa Escrita (Correção deve ser alinhada com o Thiago )
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}  M_ENTREGA_RECURSO
    Sleep    1
    Click Element    ${ScreenEntregaRecurso} 

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

Preencher Remessa e Validar |${remessa}|
    Preencher campo          ${campoRemessa}      ${remessa}
    Send keys  enter
    Validar Elemento Pelo Titulo                 ${remessa} 

Preencher Recurso e Validar |${recurso}|
    Preencher campo          ${campoRecurso}      ${recurso}
    Send keys  enter
    Validar Elemento Pelo Titulo                 ${recurso} 

Alterar data |${dtPrevisao}| e validar mensagem |${mensagemSucesso}|
    Preencher campo                    ${campoDtPrevisao}      ${dtPrevisao}
    Clicar Botao e Validar Mensagem    ${btnConfEntregaRec}       ${MensagemToast}              ${mensagemSucesso} 
    Click no Item                      ${btnOk}
    Sleep  1
Clicar Botao e Validar Mensagem
    [Arguments]                        ${Botao}                    ${MensagemRecebida}            ${MensagemEsperada}   
    Click no Item                      ${Botao}
    Valida Mensagem                    ${MensagemRecebida}         ${MensagemEsperada}
    
    


