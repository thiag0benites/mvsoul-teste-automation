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
    Click Element    ${CampoAtendimento}
    Sleep    5
    Input Text       ${CampoAtendimento}            ${Item}
    Clicar Botao |Executar Consulta|

<<<<<<< HEAD
# Acesso Campo |${Campo}|
#     ${Campo}    Run Keyword If    
#     ...   '${Campo}' == 'Codigo Aviso'
#     ...    Click Element                    ${IdeCodigoAviso}
#     ...    Sleep    5
#     ...    Click Button     ${BtnListaCodigoAviso}
#     ...    Click Element    ${TabelaCodigoAviso}
#     ...    Clicar Botao |Ok|
#     ...    Should Be String                 44199
#     # ...    ELSE IF
Acesso Campo |${Campo}|
    # ${Campo}    Run Keyword If
    # ...   '${Campo}' == 'Codigo Aviso'
    Click Element                    ${IdeCodigoAviso}
    Sleep    5
    Click Button     ${BtnListaCodigoAviso}
    Click Element    ${TabelaCodigoAviso}
=======
Acesso Campo |${Campo}|
    Click no Item    ${IdeCodigoAviso}
    Click no Item    ${BtnListaCodigoAviso}
    Click no Item    ${TabelaCodigoAviso}
>>>>>>> feature/leticia
    Clicar Botao |Ok|
               

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

Validador
    Validar Pesquisa Realizada|${LocatorComResultado}||${LocatorSemResultado}|@print
Seleciona Transporte Data Chamada
    Click no Item    ${CampoDataInicial}
 

Seleciona Trans Hora
<<<<<<< HEAD
    Wait Until Element Is Visible    ${CampoTransHora}       30
    Sleep                                                    3
    Click Element                    ${CampoTransHora}
    Sleep                                                    3
    Input Text       xpath=//input[@class='editor-text mode-edit']    1134
=======
    Click no Item    ${CampoTransHora} 
    SeleniumLibrary.Input Text       xpath=//input[@class='editor-text mode-edit']    1110
>>>>>>> feature/leticia
    Sleep                                                    3
    
Seleciona Centro Cir Data Transf
    Click no Item    ${CampoCentCirData}

Seleciona Centro Cir Hora
<<<<<<< HEAD
    Wait Until Element Is Visible    ${CampoCentCirHora}     30
    Sleep                                                    3
    Click Element                    ${CampoCentCirHora}
    Sleep                                                    3
    Click Element                    ${CampoCentCirHora}
    Sleep    3
    Input Text       xpath=//input[@class='editor-text mode-edit']    1144
    Validador Elemento|1144|
=======
    Click no Item    ${CampoCentCirHora}
    SeleniumLibrary.Input Text       xpath=//input[@class='editor-text mode-edit']    1120
>>>>>>> feature/leticia

Seleciona Recuperacao Pos Anestesica                                         
    Click Button                     ${BtnListaAnestSetor}
    Sleep    5
    Click Element                    ${ListaSetorPosAnest} 
    Sleep    3
    Click Button                     ${BtnOk}    
    Sleep    3       

Seleciona listagem RPA
    Click Element                    ${LocalTranfPosCir}
    Sleep                                                    3
    Click Button                     ${BtnLocalTranPosCir}
    # Sleep    3
    Input Text       xpath=//*[@id="dsLocalTransfPosCir_ac"]               R
    Sleep    5
    Send Keys    enter
    Sleep    5
Preenche Data e Hora Recuperacao Pro Anestesica
    Click Element                    ${CampoDataRecPosAnest}
    Sleep    2
    # Input Text       ${CampoDataRecPosAnest}    19/10/2021
    Click Element                    ${CampoHoraPosAnest}
    Sleep    2
<<<<<<< HEAD
    Input Text       ${CampoTextoHoraPosAnest}    1700
=======
    SeleniumLibrary.Input Text       ${CampoTextoHoraPosAnest}    1125
>>>>>>> feature/leticia
    Sleep    2
    Click Element                    ${CampoDataFinalPos}
    Sleep    2
    # Input Text       ${CampoDataFinalPos}        19/10/2021  
    Click Element                    ${CampoHoraSaidAPosAnt}
    Sleep    5
<<<<<<< HEAD
    Input Text       ${CampoTextoHoraFinalPos}      1720
=======
    SeleniumLibrary.Input Text       ${CampoTextoHoraFinalPos}      1145
>>>>>>> feature/leticia

Validador Elemento|${Elemento}|
    Run Keyword If    '${Elemento}' == '${Elemento}'
    ...    Log To Console    ***'${Elemento}' Validado Com Sucesso!***


