##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Importar para o sistema de Patrimônio as notas fiscais de compra de bens patrimoniais registradas no Almoxarifado
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/M_RECEBE_NOTA_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar a linha da Nota Fiscal que sera tombada |${codNotaFiscal}|
    Sleep    3
    ${Descricao}=               Get WebElement                 xpath=//div[@class='slick-cell b1 f1 ui-fixed-width']//div[contains(@title, '${codNotaFiscal}')] 
    Should Be Equal             ${Descricao.text}              ${codNotaFiscal}
    Click Element               ${Descricao}

Preencher Dados do bem |${descricaoPlaqueta}|,|${numeroSerie}|,|${modelo}|,|${tipoAquisicao}|,|${classificacao}|,|${subClassificacao}|,|${centroCusto}|,|${localidade}|,|${anos}|,|${dias}|,|${vencimentoGarantia}|${print}
    Preencher campo    ${inputDescricaoPlaqueta}    ${descricaoPlaqueta}
    Sleep    1
    Preencher campo    ${inputNumeroSerie}    ${numeroSerie}
    Sleep    1
    Preencher campo    ${inputModelo}    ${modelo}
    Sleep    1
    Preencher campo    ${inputTipoAquisicao}    ${tipoAquisicao}
    Sleep    1
    Preencher campo    ${inputclassificacao}    ${classificacao}
    Sleep    1
    Preencher campo    ${inputSubClassificacao}    ${subClassificacao}
    Sleep    1
    Preencher campo    ${inputCentroCusto}    ${centroCusto}
    Sleep    1
    Preencher campo    ${inputLocalidade}    ${localidade}
    Sleep    1
    ## ABA MANUTENÇÃO ## 
    Clicar no botao [Manutenção]
    Preencher campo    ${inputAnos}    ${anos}
    Sleep    1
    Preencher campo    ${inputDias}    ${dias}
    Sleep    1
    Preencher campo    ${inputVencimentoGarantia}    ${vencimentoGarantia}
    Sleep    1
     

Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    60
        Click Element    ${btnSalvar}
        Sleep    1
    ELSE IF    '${nomeBtn}' == 'Realizar Tombamento'
        Wait Until Element Is Visible    ${btnRealizaTombamento}    30
        Sleep    1
        Click Element    ${btnRealizaTombamento}
        Sleep    1
    ELSE IF    '${nomeBtn}' == 'Manutenção'
        Wait Until Element Is Visible    ${abaManutencao}    30
        Sleep    1
        Click Element    ${abaManutencao}
        Sleep    1
    END
 

