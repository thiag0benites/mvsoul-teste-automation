##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Importar para o sistema de Patrimônio as notas fiscais de compra de bens patrimoniais registradas no Almoxarifado
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/4-MATERIAIS/M_RECEBE_NOTA_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar a linha da Nota Fiscal que sera tombada |${codNotaFiscal}|
    Wait Until Element Is Visible    ${btnRealizaTombamento}    120 
    ${Descricao}=                    Get WebElement       xpath=//div[contains(@title, '${codNotaFiscal}')] 
    Should Be Equal                  ${Descricao.text}    ${codNotaFiscal}
    Click Element                    ${Descricao}
    M_RECEBE_NOTA_STEPS.Clicar no botao [Realizar Tombamento]


Preencher Dados do bem |${descricaoPlaqueta}|,|${numeroSerie}|,|${modelo}|,|${tipoAquisicao}|,|${classificacao}|,|${subClassificacao}|,|${centroCusto}|,|${localidade}|,|${anos}|,|${dias}|,|${vencimentoGarantia}|${print}

    Wait Until Element Is Visible    ${inputDescricaoPlaqueta}    120
    Preencher campo                  ${inputDescricaoPlaqueta}    ${descricaoPlaqueta}

    Wait Until Element Is Visible    ${inputNumeroSerie}    120
    Preencher campo                  ${inputNumeroSerie}    ${numeroSerie}

    Wait Until Element Is Visible    ${inputModelo}    120
    Preencher campo                  ${inputModelo}    ${modelo}

    Wait Until Element Is Visible    ${inputTipoAquisicao}    120
    Preencher campo                  ${inputTipoAquisicao}    ${tipoAquisicao}

    Wait Until Element Is Visible    ${inputclassificacao}    120
    Preencher campo                  ${inputclassificacao}    ${classificacao}

    Wait Until Element Is Visible    ${inputSubClassificacao}    120
    Preencher campo                  ${inputSubClassificacao}    ${subClassificacao}

    Wait Until Element Is Visible    ${inputCentroCusto}    120
    Preencher campo                  ${inputCentroCusto}    ${centroCusto}

    Wait Until Element Is Visible    ${inputLocalidade}    120
    Preencher campo                  ${inputLocalidade}    ${localidade}

    Sleep                           1
    ## ABA MANUTENÇÃO ##
    M_RECEBE_NOTA_STEPS.Clicar no botao [Manutenção]

    Wait Until Element Is Visible    ${inputAnos}    120
    Preencher campo                  ${inputAnos}    ${anos}

    Wait Until Element Is Visible    ${inputDias}    120
    Preencher campo                  ${inputDias}    ${dias}

    Wait Until Element Is Visible    ${inputVencimentoGarantia}    120
    Preencher campo                  ${inputVencimentoGarantia}    ${vencimentoGarantia}
    Sleep                            1


Validar mensagem |${mensagemSucesso}|

    M_RECEBE_NOTA_STEPS.Clicar no botao [Salvar]

    Wait Until Element Is Visible    ${mensagemNotification}    120
    Element Should Contain           ${mensagemNotification}    ${mensagemSucesso}
    Sleep                            1

Clicar no botao [${nomeBtn}]
    IF                               '${nomeBtn}' == 'Salvar'
    Wait Until Element Is Visible    ${btnSalvar}                             60
    Click Element                    ${btnSalvar}
    Sleep                            1
    ELSE IF                          '${nomeBtn}' == 'Realizar Tombamento'
    Wait Until Element Is Visible    ${btnRealizaTombamento}                  30
    Sleep                            1
    Click Element                    ${btnRealizaTombamento}
    Sleep                            1
    ELSE IF                          '${nomeBtn}' == 'Manutenção'
    Wait Until Element Is Visible    ${abaManutencao}                         30
    Sleep                            1
    Click Element                    ${abaManutencao}
    Sleep                            1
    END


