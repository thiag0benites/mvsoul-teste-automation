##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../2-pages/LoginPage.robot
Resource          ../2-pages/HomePage.robot
### Dados do Teste
Resource          dados/DadosTeste.robot

*** Variable ***
${imgVisivel}
@{novaListaItensMenu}
@{listaXpathItensMenu}    @{EMPTY}
@{validaItemExistente}

*** Keywords ***
Login
    Nova sessao
    Realiza Login    ${dadosLoginUsuario}    ${dadosLoginSenha}    ${dadosLoginEmpresa}

### Enviar o caminho completo do menu separado por >
### Exemplo:
###    titulo_do_menu>titulo_do_submenu>titulo_do_menu
Quando navego no menu "${caminhoSelecaoMenu}"
    @{listaItensMenu}    Converte string em lista    ${listaItensMenu}    >
    FOR    ${itemMenu}    IN    @{listaXpathItensMenu}
        Seleciona item no menu    ${itemMenu}
        Log To Console    *** Item ${itemMenu} selecionado no menu
        Log    *** Item ${itemMenu} selecionado no menu
        Capture Page Screenshot
    END
### Enviar o caminho completo do menu separado por >
### Exemplo:
###    titulo_do_menu>titulo_do_submenu>titulo_do_menu

Acessar a tela "${caminhoSelecaoMenu}"${printscreen} ${las}
    Unselect Frame
    # Realcar Elemento    ${HomeXpathBtnMenu}
    ${cont}    Set Variable    ${1}
    Click Element    ${HomeXpathBtnMenu}
    @{listaItensMenu}    Converte string em lista    ${caminhoSelecaoMenu}    >
    @{listaXpathItensMenu}    Criar Lista Itens Menu Xpath com Index    @{listaItensMenu}
    
    FOR    ${itemMenu}    IN    @{listaXpathItensMenu}
        ${visivel}    Elemento Visivel    xpath=${itemMenu}
        Log To Console    *** Visivel: ${visivel}
        ${classe}    Get Element Attribute    xpath=${itemMenu}/ancestor::li[1]    class
        Log To Console    *** Visivel: ${classe}

        IF    '${classe}' == 'menu-node'
            Seleciona item no menu    ${itemMenu}
        END

        Log To Console    *** Item ${itemMenu} selecionado no menu
        Log    *** Item ${itemMenu} selecionado no menu
    END

    #### If LAS Image ####
    # IF    "${las}" == "@las"
    #     Imagem Exist    ${imagens}\\${so}_${browser}_alert.png    180
    #     Efetuar Click    ${imagens}\\${so}_${browser}_alert.png
    #     Sleep    4
    # END
    #### End If LAS Image ####

    #### LAS Send Keys #####
    IF    "${las}" == "@las"
        Sleep    1
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    class=las-display    60
        Unselect Frame
        Sleep   1
        Send Keys
    END
    #### End LAS Send Keys #####
    
    Seleciona frame    ${IdIframe}    180
    Sleep    3
    Run Keyword If    '${printscreen}' == '@print'    Capture Page Screenshot

Criar Lista Itens Menu Xpath com Index
    [Arguments]    @{listaItensMenu}
    Set Test Variable    @{novaListaItensMenu}
    Set Test Variable    @{validaItemExistente}
    ${contLista}    Get length    ${novaListaItensMenu}

    IF    ${contLista} > 0
        FOR    ${item}    IN    @{novaListaItensMenu}
            Remove Values From List    ${novaListaItensMenu}    ${item}
        END
    END

    ${indexXPath}    Set Variable    ${EMPTY}

    FOR    ${itemMenu}    IN    @{listaItensMenu}
        ${indexHtml}    Set Variable    ${1}
        ${contLista}    Get length    ${novaListaItensMenu}
        IF    ${contLista} > 0
            ${contListMenu}    Get Length    ${listaItensMenu}
            FOR    ${novoItemMenu}    IN    @{novaListaItensMenu}
                ${flag}    Set Variable    false

                FOR    ${novoItemMenu}    IN    @{novaListaItensMenu}
                    ${existe}    Get Lines Containing String    ${novoItemMenu}    (//*[@title='${itemMenu}'])[
                    IF    "${existe}" != ""
                        ${flag}    Set Variable    true
                        Exit For Loop
                    END
                END
                
                IF    "${flag}" == "true"
                    ${indexXPath}    Get Substring    ${novoItemMenu}    -1

                    IF    '${indexXPath}' == ']'
                        ${indexHtml}    Get Substring    ${novoItemMenu}    -2
                        ${indexHtml}    Replace String    ${indexHtml}    ]    ${EMPTY}
                        ${indexHtml}    Set Variable    ${${indexHtml}}
                        ${indexHtml}    Evaluate    ${indexHtml} + 1
                    END
                END

                Append To List    ${novaListaItensMenu}    (//*[@title='${itemMenu}'])[${indexHtml}]
                Exit For Loop
            END
        ELSE
            Append To List    ${novaListaItensMenu}    (//*[@title='${itemMenu}'])[${indexHtml}]
        END
    END
    [Return]    @{novaListaItensMenu}
### Clica nos botões de cabeçalho após a troca do frame

Clicar no botão "${titulo}"${printscreen}
    Run Keyword If    '${printscreen}' == '@print'    Capture Screen
    Click Elemento por titulo    ${titulo}    120

Preencher campo
    [Arguments]    ${elemento}    ${valor}
    Wait Until Element Is Visible    ${elemento}    10
    Wait Until Element Is Enabled    ${elemento}    5
    SeleniumLibrary.Click Element    ${elemento}
    Sleep    1.5
    SeleniumLibrary.Input Text    ${elemento}    ${valor}

Seleciona Item Combobox
    [Arguments]    ${elemento}    ${valor}
    Wait Until Element Is Visible    ${elemento}    10
    SeleniumLibrary.Input Text    ${elemento}    ${valor}
    Sleep    0.5
    Press Keys    ${elemento}    ENTER