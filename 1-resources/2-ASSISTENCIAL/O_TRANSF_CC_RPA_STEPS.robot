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

Acesso Campo |${Campo}|
    Click no Item    ${IdeCodigoAviso}
    Click no Item    ${BtnListaCodigoAviso}
    Click no Item    ${TabelaCodigoAviso}
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
    Click no Item    ${CampoTransHora} 
    SeleniumLibrary.Input Text       xpath=//input[@class='editor-text mode-edit']    1110
    Sleep                                                    3
    
Seleciona Centro Cir Data Transf
    Click no Item    ${CampoCentCirData}

Seleciona Centro Cir Hora
    Click no Item    ${CampoCentCirHora}
    SeleniumLibrary.Input Text       xpath=//input[@class='editor-text mode-edit']    1120

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
    SeleniumLibrary.Input Text       xpath=//*[@id="dsLocalTransfPosCir_ac"]               R
    Sleep    5
    Send Keys    enter
    Sleep    5
Preenche Data e Hora Recuperacao Pro Anestesica
    Click Element                    ${CampoDataRecPosAnest}
    Sleep    2
    # SeleniumLibrary.Input Text       ${CampoDataRecPosAnest}    19/10/2021
    Click Element                    ${CampoHoraPosAnest}
    Sleep    2
    SeleniumLibrary.Input Text       ${CampoTextoHoraPosAnest}    1125
    Sleep    2
    Click Element                    ${CampoDataFinalPos}
    Sleep    2
    # SeleniumLibrary.Input Text       ${CampoDataFinalPos}        19/10/2021  
    Click Element                    ${CampoHoraSaidAPosAnt}
    Sleep    5
    SeleniumLibrary.Input Text       ${CampoTextoHoraFinalPos}      1145

Validador Elemento|${Elemento}|
    Run Keyword If    '${Elemento}' == '${Elemento}'
    ...    Log To Console    ***'${Elemento}' Validado Com Sucesso!***


