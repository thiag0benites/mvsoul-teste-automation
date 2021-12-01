##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../2-pages/LoginPage.robot
Resource          ../2-pages/HomePage.robot

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
    IF    "${las}" == "@las"
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    60
        Unselect Frame
        Send Keys    tab
        Send Keys    enter
    END
    Seleciona frame    ${IdIframe}    180
    Sleep    3
    Run Keyword If    '${printscreen}' == '@print'    Capture Page Screenshot

Acessar a tela pela busca |${tela}||${nomeItem}|${printscreen} ${las}
    Unselect Frame
    Click Element                           ${HomeXpathBtnMenu}
    Preencher Campo                         ${HomeXpathInputPesquisa}       ${tela}
    Click Elemento por titulo               ${nomeItem}                   
    IF    "${las}" == "@las"
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    60
        Unselect Frame
        Send Keys    tab
        Send Keys    enter
    END
    Seleciona frame                         ${IdIframe}                         180
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

Clicar no botao "${titulo}"${printscreen}
    Run Keyword If    '${printscreen}' == '@print'    Capture Page Screenshot
    Click Elemento por titulo    ${titulo}    120

Preencher campo
    [Arguments]    ${elemento}    ${valor}
    Wait Until Element Is Visible    ${elemento}    180
    Wait Until Element Is Enabled    ${elemento}    5
    Click Element    ${elemento}
    Sleep    1
    Wait Until Element Is Enabled    ${elemento}    5
    Sleep    0.3
    Input Text    ${elemento}    ${valor}
    FOR    ${i}    IN RANGE    1    11
        Sleep    1
        ${textoAtual}    Get Element Attribute    ${elemento}    value
        # ${textoAtual}    Get Text    ${elemento}
        IF    "${textoAtual}" == "${valor}"
            Exit For Loop
        ELSE IF    "${textoAtual}" != "${valor}"
            IF    "${i}" == "${10}"
                Log To Console    *** Falha ao tentar preencher o campo ${elemento}
                Log    *** Falha ao tentar preencher o campo ${elemento}
                Realcar Elemento Relatorio    ${elemento}
                Capture Page Screenshot
                Fail    *** Falha ao tentar preencher o campo ${elemento}
            ELSE
                Input Text    ${elemento}    ${valor}
            END
        END
    END

Seleciona Item Combobox
    [Arguments]    ${elemento}    ${valor}
    Wait Until Element Is Visible    ${elemento}    10
    SeleniumLibrary.Input Text    ${elemento}    ${valor}
    Wait Until Element Is Enabled    ${elemento}    5
    Press Keys    ${elemento}    ENTER

    FOR    ${i}    IN RANGE    1    11
        Sleep    0.1
        ${textoAtual}    Get Element Attribute    ${elemento}    value
        # ${textoAtual}    Get Text    ${elemento}
        IF    "${textoAtual}" == "${valor}"
            Exit For Loop
        ELSE IF    "${textoAtual}" != "${valor}"
            IF    "${i}" == "${10}"
                Log To Console    *** Falha ao tentar selecionar o "${valor}" no combobox ${elemento}
                Log    *** Falha ao tentar selecionar o "${valor}" no combobox ${elemento}
                Realcar Elemento Relatorio    ${elemento}
                Capture Page Screenshot
                Fail    *** Falha ao tentar selecionar o "${valor}" no combobox ${elemento}
            ELSE
                SeleniumLibrary.Input Text    ${elemento}    ${valor}
                Wait Until Element Is Enabled    ${elemento}    5
                Press Keys    ${elemento}    ENTER
            END
        END
    END

Clicar em Estoque
    Wait Until Element Is Visible    
    Click button
    Sleep                        

Clicar Botao se estiver Visivel
    [Arguments]             ${Botao}                        
    ${Status}           Run Keyword And Return Status           Wait Until Element Is Visible        ${Botao}    120          
    Run Keyword If          '${Status}' == 'True'               Click no Item                        ${Botao}

Click no Item
    [Arguments]       ${elemento}
    Wait Until Element Is Visible    ${elemento}        120
    Sleep                3
    Click Element     ${elemento}

Validar Pop-Pup de Alerta e Clicar
    [Arguments]             ${Alert}     ${Botao}                            
    ${Status}           Run Keyword And Return Status           Validar Item            ${Alert}          
    Run Keyword If          '${Status}' == 'True'               Click no Item           ${Botao}
    
Validar Item
    [Arguments]             ${element}
    Wait Until Element Is Visible           ${element}               120
    Element Should Be Visible               ${element} 

Validar Informacao Item
    [Arguments]             ${element}      ${ResultadoEsperado}     
    Wait Until Element Is Visible           ${element}               120
    Element Should Contain                  ${element}               ${ResultadoEsperado} 

Clicar no Campo e Preencher Informacao
    [Arguments]         ${CampoClick}           ${CampoEditavel}                ${DadoInserido}           
    Click no Item                               ${CampoClick}
    Sleep  1 
    Preencher Campo                             ${CampoEditavel}                ${DadoInserido}     

Clicar Item e Selecionar da Lista
    [Arguments]    ${CampoClick}          ${BotaoLov}        ${Item}           ${ItemLista}          
    Click no Item                   ${CampoClick}   
    Selecionar Item Na Lista        ${BotaoLov}        ${Item}         ${ItemLista}    

Acessa a Tela Pela Busca |${NomeTela}||${NomeMenu}| ${las}
    Unselect Frame
    Click Element                           ${BotaoBuscaTela}
    Preencher Campo                         ${CampoBuscaTela}                   ${NomeTela}
    Click Elemento por titulo               ${NomeMenu}
    IF    "${las}" == "@las"
        # Sleep    1
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    180
        Unselect Frame
        # Sleep    1
        Send Keys    tab
        Send Keys    enter
    END
    Seleciona frame                         ${IdIframe}                         180

Validar Pesquisa Realizada|${LocatorComResultado}||${LocatorSemResultado}|${print}
    ${Cont}    Set Variable    0
    Log To Console    *** Com Resultado: ${LocatorComResultado}
    Log To Console    *** Sem Resultado: ${LocatorSemResultado}
    ${CondicaoComResultados}    Run Keyword And Return Status    Wait Until Element Is Visible    ${LocatorComResultado}    10
    ${CondicaoSemResultados}    Run Keyword And Return Status    Wait Until Element Is Visible    ${LocatorSemResultado}    10

    IF    ${CondicaoComResultados} == True
        ${Cont}    Evaluate    ${Cont} + 1
        Log To Console    *** Pesquisa realizada com resultados!
    ELSE
        Log    *** Insira o locator de pesquisa com resultado.
        Log To Console    *** Insira o locator de pesquisa com resultado.
    END
    IF    ${CondicaoSemResultados} == True
        ${Cont}    Evaluate    ${Cont} + 1
        Log To Console    *** Pesquisa realizada, porém sem resultado!
    ELSE
        Log    *** Insira o locator de pesquisa sem resultado.
        Log To Console    *** Insira o locator de pesquisa sem resultado.
    END
    IF    ${Cont} == 0
        Fail    *** Falha na pesquisa!
    END
    # IF    ${CondicaoComResultados} == False
    # END
    # IF    ${CondicaoSemResultados} == False
    #    Fail    *** Falha na pesquisa!'
    # END
    Run Keyword If    '${print}' == '@print'    Capture Page Screenshot

    
# Validar Ausencia de Resultados[${Locator}]${print}
#    ${Condicao}    Page Should Contain Element    ${Locator}
#    Wait Until Element Is Visible    ${Locator}    10
#    Sleep    2
#    IF    '${Condicao}' == 'True'
#    Log To Console    *** Pesquisa realizada, porém sem resultado!
#    END
#    Run Keyword If    '${print}' == '@print'    Capture Page Screenshot

Preencher Input inativo
    [Arguments]         ${activ}    ${input}    ${text}
    Wait Until Element Is Visible       ${activ}        120
    Sleep                               3
    Click Element                       ${activ}
    Sleep                               3
    Wait Until Element Is Visible       ${input}        120
    Sleep                               3
    SeleniumLibrary.Input Text          ${input}        ${text}

Preencher o Campo Input
    [Arguments]         ${ClickInput}    ${input}              ${text}
    Wait Until Element Is Visible        ${ClickInput}         120
    Click Element                        ${ClickInput}
    Sleep                                                      3
    Wait Until Element Is Visible        ${input}              120
    Input Text                           ${input}              ${text}
    Sleep                                                      3
    
Valida Mensagem
    [Arguments]    ${ElementoMsgRecebida}    ${MensagemEsperada}
    Wait Until Element Is Visible    ${ElementoMsgRecebida}    120
    Sleep    3
    #${ElementoMsgRecebida}    Get Element Text    ${ElementoMsgRecebida}
    #Should Be Equal As Strings    ${ElementoMsgRecebida}   ${MensagemEsperada}
    Element Should Contain    ${ElementoMsgRecebida}    ${MensagemEsperada}
    #[Arguments]    ${ElementoMsgRecebida}    ${MensagemEsperada}
    # Wait Until Element Is Visible    ${ElementoMsgRecebida}    30
    # ${msgObtida}    Get Element Text    ${ElementoMsgRecebida}
    # Should Be Equal As Strings    ${MensagemEsperada}    ${msgObtida}
    # #Log To Console    *** Mensagem de alerta não foi apresentada!

Clicar no botao ${nomeBtn}
    IF    '${nomeBtn}' == 'Salvar do menu'
        Wait Until Element Is Visible    ${btnSalvar}    60
        Click Element    ${btnSalvar}
    
    ELSE IF    '${nomeBtn}' == 'Adicionar'
        Wait Until Element Is Visible    ${btnAdicionar}    30
        Click Element    ${btnAdicionar}
    
    ELSE IF    '${nomeBtn}' == 'Pesquisar'
        Wait Until Element Is Visible    ${btnPesquisar}    30
        Click Element    ${btnPesquisar}
    
    ELSE IF    '${nomeBtn}' == 'Executar'
        Wait Until Element Is Visible    ${btnExecute}    30
        Click Element    ${btnExecute}
    
    ELSE IF    '${nomeBtn}' == 'Pesquisar'
        Wait Until Element Is Visible    ${abaManutencao}    30
        Click Element    ${abaManutencao}
    
    ELSE IF    '${nomeBtn}' == 'Nao'
        Wait Until Element Is Visible    ${btnNaoNotifications}    30
        Click Element    ${btnNaoNotifications}
    
    ELSE IF    '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible    ${btnSimNotifications}    30
        Click Element    ${btnSimNotifications}
    END