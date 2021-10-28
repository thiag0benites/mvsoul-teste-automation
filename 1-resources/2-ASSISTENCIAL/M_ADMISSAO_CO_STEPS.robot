##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Passo a passo do Manutenção de Guias (Std) 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/2-ASSISTENCIAL/M_ADMISSAO_CO_PAGE.robot
Resource    ../../../pep-test-automation/1-resources/MVPEP_LISTA_PACIENTES_INTERNACAO_STEPS.robot
### Metodos Genericos


*** Variable ***

*** Keywords ***
Acessar Atendimento |${Item}|
    Click no Item                    ${BtnSetaAtendimento}
    # Wait Until Element Is Visible    ${BtnSetaAtendimento}          30
    # SeleniumLibrary.Click Element    ${BtnSetaAtendimento}
    # Sleep    5
    SeleniumLibrary.Input Text       ${CampoFiltroAtend}              ${Item}
    Click no Item                    ${BtnFiltrar}
    Click no Item                    ${SelecionaAtendimento}
    # Wait Until Element Is Visible    ${SelecionaAtendimento}        30
    # Click Element                    ${SelecionaAtendimento}
    Click Button                     ${BtnOk}

Acessar Tipo Parto |${Item}|
    Click no Item                    ${CampoTipoParto}
    Click no Item                    ${BtnTipoParto}
    Click no Item                    ${CampoFIltoParto}
    SeleniumLibrary.Input Text       ${CampoFIltoParto}               %${Item}
    Click no Item                    ${BtnFiltrar}
    Click no Item                    ${BtnOk}





# Inserir Data de Inicio |${data}|
Inserir Data do Parto |${dd}/${MES}/${aaaa}|
    # Sleep    2
    # ${dd}                          Get Substring        ${data}         0     2
    # ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    # IF    ${ddPrimeriaPosicao} == 0
    # ${dd}                          Get Substring        ${data}         1     2
    # END

    # ${MES}                         Get Substring        ${data}         3     6
    # ${aaaa}                        Get Substring        ${data}         7     12
    Click Element                  ${CampoDataInicial} 
    Sleep                                               5     
    Click Element                  ${BotaoDataInicial}
    Sleep                                               10
    # Click Element                  ${SetaDoCalendario}
    # Sleep                                               2
    ${anoInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-year']//option[contains(text(),'${aaaa}')]
    Should Be Equal                ${anoInicio.text}                    ${aaaa}
    Click Element                  ${anoInicio}
    Sleep                                               5
    ${mesInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-month']//option[contains(text(),'${MES}')]
    Should Be Equal                ${mesInicio.text}                    ${MES}
    Click Element                  ${mesInicio}
    Sleep                                               5
    ${diaInicio}=                  Get WebElement                       xpath://a[contains(text(),'${dd}')]
    Should Be Equal                ${diaInicio.text}                    ${dd}
    Click Element                  ${diaInicio}
    Sleep                                               5
    # Click Element                  ${CampoDataFinal}
    # Sleep                                               3

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