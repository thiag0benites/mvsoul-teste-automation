##################################################################################################################################
# Autor: Thiago Benites/Letícia Andrade
# Decrição: Definição das keywords personalizadas na suite de teste (Teste reajustado)
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/5-FATURAMENTO/M_VAL_PROCED_PAGE.robot

*** Variable ***

*** Keywords ***
Inserir informacoes nos seguintes campos |${CodProcedimento}|,|${Procedimento}|,|${CodTabela}|,|${Vigencia}|,|${VlHonorario}|,|${VlOperacional}|
    Wait Until Element Is Visible        ${ProcedimentosXpathCellCodProcedInput}        180
    Sleep                                1

    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellCodProcedInput}        ${codProcedimento}
    Sleep                                1

    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellTable}
    Sleep                                1

    ${strProcedimentoAtual}              SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellProcedimento}
    Wait Until Element Is Visible        ${ProcedimentosXpathCellProcedimento}          5
    Sleep                                1
    Should Be Equal As Strings           ${procedimento}                                ${strProcedimentoAtual}

    Wait Until Element Is Visible        ${ProcedimentosXpathCellTableInput}            5
    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellTableInput}            ${codTabela}

    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellVigencia}
    Sleep                                1

    Wait Until Element Is Visible        ${ProcedimentosXpathCellVigenciaInput}         5
    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellVigenciaInput}         ${vigencia}

    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellVlHonorario}
    Sleep                                1
    Wait Until Element Is Visible        ${ProcedimentosXpathCellVlHonorarioInput}      5
    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellVlHonorarioInput}      ${vlHonorario}

    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellVlOperacional}
    Sleep                                1
    Wait Until Element Is Visible        ${ProcedimentosXpathCellVlOperacionalInput}    5
    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellVlOperacionalInput}    ${vlOperacional}

    Sleep                                1
    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellCodProced}             
    Sleep                                3

    ${strVlHonorario}                    SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellVlHonorario}
    ${strVlOperacional}                  SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellVlOperacional}
    ${strVlTotal}                        SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellVlTotal}

    ${strVlHonorario}                    Replace String                                 ${strVlHonorario}                             ,                           .
    ${strVlOperacional}                  Replace String                                 ${strVlOperacional}                           ,                           .
    ${strVlTotal}                        Replace String                                 ${strVlTotal}                                 ,                           .

    ${intVlHonorario}                    Convert To Number                              ${strVlHonorario}
    ${intVlOperacional}                  Convert To Number                              ${strVlOperacional}
    ${intVlTotal}                        Convert To Number                              ${strVlTotal}

    ${intSomaVlTotal}                    Evaluate                                       ${intVlHonorario} + ${intVlOperacional}

    Log To Console                       *** VlHonorario = ${intVlHonorario}
    Log To Console                       *** VlOperacional = ${intVlOperacional}
    Log To Console                       *** VlTotal Esperado = ${intVlTotal}
    Log                                  *** VlTotal Esperado = ${intVlTotal}
    Log To Console                       *** VlTotal Obtido = ${intSomaVlTotal}
    Log                                  *** VlTotal Obtido = ${intSomaVlTotal}

    ${Ativo}                             SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellAtivo}

    Should Be Equal As Numbers           ${intVlTotal}                                  ${intSomaVlTotal}
    Should Be Equal As Strings           ${Ativo}                                       Não

    Set Global Variable                  ${intVlHonorario}                              ${intVlHonorario}
    Set Global Variable                  ${intVlTotal}                                  ${intVlTotal}
    Set Global Variable                  ${intSomaVlTotal}                              ${intSomaVlTotal}

Valida mensagem ao salvar |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}

Clique no botao Salvar
    Click no Item  ${btnSalvar}