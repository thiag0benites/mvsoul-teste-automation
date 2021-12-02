##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_TIP_DET_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos |${descricao}|,|${dias}|,|${valorMin}|,|${valorMax}|
    Preencher Campo        ${campoDescricao}                ${descricao}
    Sleep                  1
    Click no Item          ${campoDias}
    Sleep                  1
    Preencher Campo        ${campoDiasInput}                ${dias}
    Sleep                  1
    Click no Item          ${campoValorMin}
    Sleep                  1
    Preencher Campo        ${campoValorMinInput}            ${valorMin}
    Sleep                  1
    Click no Item          ${campoValorMax}
    Sleep                  1
    Preencher Campo        ${campoValorMaxInput}             ${valorMax}
    Sleep                  1

Preencher os inputs da tela |${fornecedor}|,|${contaContabil}|,|${contaCusto}|,|${contaContabilDespesa}|,|${tipoDocumento}|
    Preencher Campo        ${inputFornecedor}                   ${fornecedor}
    Sleep                  1
    Preencher Campo        ${inputcontaContabil}                ${contaContabil}
    Sleep                  1
    Preencher Campo        ${inputcontaCusto}                   ${contaCusto}
    Sleep                  2
    Preencher Campo        ${campoContaContabilDespesa}         ${contaContabilDespesa}
    Sleep                  2
    Preencher Campo        ${campoTipoDocumento}                ${tipoDocumento}
    Sleep                  1

Preencher a tabela |${vlFaixa}|,|${vlPercentual}|,|${vlDeducao}|,|${vlDeducaoPendente}|
    Click no Item          ${campoVlFaixa}
    Sleep                  1
    Preencher Campo        ${campoVlFaixaInput}             ${vlFaixa}
    Sleep                  1

    Click no Item          ${campoVlPercentual}
    Sleep                  1
    Preencher Campo        ${campoVlPercentualInput}         ${vlPercentual}
    Sleep                  1

    Click no Item          ${campoVlDeducao}
    Sleep                  1
    Preencher Campo        ${vlDeducaoInput}                  ${vlDeducao}
    Sleep                  1

Valida cadastro realizado na tela |${mensagem}|
    Valida Mensagem        ${mensagemNotification}                ${mensagem}
