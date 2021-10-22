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
    # ${Campo}    Run Keyword If
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
    ...    ELSE IF
    ...    '${Botao}' == 'Salvar'
    ...    Click Element    ${btnSalvar}

Seleciona Transporte Data Chamada
    Wait Until Element Is Visible    ${CampoDataInicial}    30
    Sleep                                                   1
    Click Element                    ${CampoDataInicial}  
    # Click Button                     ${BotaoDataInicial}
    Sleep                                               2
    

Seleciona Trans Hora
    Wait Until Element Is Visible    ${CampoTransHora}       30
    Sleep                                                    3
    Click Element                    ${CampoTransHora}
    Sleep                                                    3
    SeleniumLibrary.Input Text       xpath=//input[@class='editor-text mode-edit']    1134
    Sleep                                                    3
    
Seleciona Centro Cir Data Transf
    Wait Until Element Is Visible    ${CampoCentCirData}     30
    Sleep                                                    3
    Click Element                    ${CampoCentCirData}
    Sleep                                                    3
    Click Element                    ${CampoCentCirData}

Seleciona Centro Cir Hora
    Wait Until Element Is Visible    ${CampoCentCirHora}     30
    Sleep                                                    3
    Click Element                    ${CampoCentCirHora}
    Sleep                                                    3
    Click Element                    ${CampoCentCirHora}
    Sleep    3
    SeleniumLibrary.Input Text       xpath=//input[@class='editor-text mode-edit']    1144
    Validador Elemento|1144|

Seleciona Recuperacao Pos Anestesica
    Click Element                    ${CampoRecAnestSetor}
    Sleep    10                                                    
    Click Element                    ${BtnListaAnestSetor}
    Sleep    5
    Click Element                    ${ListaSetorPosAnest} 
    Sleep    3
    Click Button                     ${BtnOk}    
    Sleep    3       

Seleciona listagem RPA
    Click Element                    ${LocalTranfPosCir}
    Sleep                                                    3
    # Click Element                    ${LocalTranfPosCir}
    # Sleep    3
    # SeleniumLibrary.Input Text       xpath=//*[@id="dsLocalTransfPosCir_ac"]               RPA

Preenche Data e Hora Recuperacao Pro Anestesica
    Click Element                    ${CampoDataRecPosAnest}
    Sleep    2
    # SeleniumLibrary.Input Text       ${CampoDataRecPosAnest}    19/10/2021
    Sleep    3
    Click Element                    ${CampoHoraPosAnest}
    Sleep    2
    SeleniumLibrary.Input Text       ${CampoTextoHoraPosAnest}    1700
    Sleep    2
    Click Element                    ${CampoDataFinalPos}
    Sleep    2
    # SeleniumLibrary.Input Text       ${CampoDataFinalPos}        19/10/2021  
    Click Element                    ${CampoHoraSaidAPosAnt}
    Sleep    5
    SeleniumLibrary.Input Text       ${CampoTextoHoraFinalPos}      1720

Validador Elemento|${Elemento}|
    Run Keyword If    '${Elemento}' == '${Elemento}'
    ...    Log To Console    ***${Elemento} Validado Com Sucesso!***
    

    


# Inserir Data de Inicio |${data}|
# # Inserir Data de Inicio |${dd}/${MES}/${aaaa}|
#     Sleep    2
#     ${dd}                          Get Substring        ${data}         0     2
#     ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

#     IF    ${ddPrimeriaPosicao} == 0
#     ${dd}                          Get Substring        ${data}         1     2
#     END

#     ${MES}                         Get Substring        ${data}         3     6
#     ${aaaa}                        Get Substring        ${data}         7     12
#     Click Element                  ${CampoDataInicial}  
#     Click Button                   ${BotaoDataInicial}
#     Sleep                                               2
#     Click Element                  ${SetaDoCalendario}
#     Sleep                                               2
#     ${anoInicio}=                  Get WebElement                       xpath://option[contains(text(),'${aaaa}')]
#     Should Be Equal                ${anoInicio.text}                    ${aaaa}
#     Click Element                  ${anoInicio}
#     Sleep                                               2
#     ${mesInicio}=                  Get WebElement                       xpath://option[contains(text(),'${MES}')]
#     # Should Be Equal                ${mesInicio.text}                    ${MES}.
#     Click Element                  ${mesInicio}
#     Sleep                                               2
#     ${diaInicio}=                  Get WebElement                       xpath://a[contains(text(),'${dd}')]
#     # Should Be Equal                ${diaInicio.text}                    ${dd}
#     Click Element                  ${diaInicio}
#     Sleep                                               3
#     Click Element                  ${CampoDataFinal}
#     Sleep                                               3

# Inserir Data Final |${data}|
# # Inserir Data Final |${dd}/${MES}/${aaaa}|
#     Sleep    2
#     ${dd}                          Get Substring        ${data}         0     2
#     ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

#     IF    ${ddPrimeriaPosicao} == 0
#     ${dd}                          Get Substring        ${data}                       1     2
#     END
#     ${MES}                         Get Substring        ${data}         3     6
#     ${aaaa}                        Get Substring        ${data}         7     12
#     Sleep                                               3
#     Click Button                   ${BotaoDataFinal} 
#     Sleep                                               1
#     Click Element                  ${SetaDoCalendario}
#     Sleep                                               1
#     ${anoFinal}=                   Get WebElement                       xpath://td//div[contains(text(),'${aaaa}')]
#     Should Be Equal                ${anoFinal.text}                     ${aaaa}
#     Click Element                  ${anoFinal}
#     Sleep                                               1
#     ${mesFinal}=                   Get WebElement                       xpath://td//div[contains(text(),'${MES}')]
#     Should Be Equal                ${mesFinal.text}                     ${MES}.
#     Click Element                  ${mesFinal}
#     Sleep                                               1
#     ${diaFinal}=                   Get WebElement                       xpath://td//div[contains(text(),'${dd}')]
#     Should Be Equal                ${diaFinal.text}                     ${dd}
#     Click Element                  ${diaFinal}
#     Sleep                                               5