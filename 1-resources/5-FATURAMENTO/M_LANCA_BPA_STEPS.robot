##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para a Tela De M_LANCA_BPA.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/5-FATURAMENTO/M_LANCA_BPA_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Lancamento e Validar |${fatura}|, |${remessa}|, |${paciente}|, |${data}|, |${procedimento}|

    Preencher campo                 ${campoFatura}    ${fatura}
    Send keys                       enter
    Validar Elemento Pelo Titulo    ${fatura}

    # Click no Item                   ${campoRemessa}
    Clicar no botao Nao
    Preencher campo                 ${campoRemessaInput}    ${remessa}
    Send keys                       enter
    Validar Elemento Pelo Titulo    ${remessa}

    Click no Item                   ${campoPaciente}
    Preencher campo                 ${campoPacienteInput}    ${paciente}
    Send keys                       enter
    Validar Elemento Pelo Titulo    ${paciente}

    # Click no Item                   ${campoData}
    Preencher campo                 ${campoDataInput}    ${data}
    Send keys                       enter
    Validar Elemento Pelo Titulo    ${data}
    Send keys                       Tab

    Click no Item                   ${campoProcedimento}
    Preencher campo                 ${campoProcedimentoInput}    ${procedimento}
    Send keys                       enter
    Validar Elemento Pelo Titulo    ${remessa}

Preencher e Validar |${setor}|, |${setorProd}|, |${prestador}|, |${qtdDe}|, |${servico}|, |${ups}|

    Click no Item                   ${campoSetor}
    Preencher campo                 ${campoSetorInput}    ${setor}
    Send keys                       enter
    Validar Elemento Pelo Titulo    ${setor}

    # Click no Item                   ${campoSetorProd}
    Preencher campo                 ${campoSetorProdInput}    ${setorProd}
    Send keys                       enter
    Validar Elemento Pelo Titulo    ${setorProd}

    # Click no Item                   ${campoPrestador}
    Preencher campo                 ${campoPrestadorInput}    ${prestador}
    Send keys                       enter
    Validar Elemento Pelo Titulo    ${prestador}

    Click no Item                   ${campoQtdDe}
    Preencher campo                 ${campoQtdDeInput}    ${qtdDe}
    Send keys                       enter
    Validar Elemento Pelo Titulo    ${qtdDe}

    Preencher campo                 ${campoServico}    ${servico}
    Send keys                       enter
    Validar Elemento Pelo Titulo    ${servico}
    Send keys                       Tab


Salvar e validar mensagem |${mensagemSucesso}|
    Clicar no botao Salvar do menu
    Click no Item                     ${btnOk}
    Wait Until Element Is Visible     ${mensagemApresentada}    120
    Element Should Contain            ${mensagemApresentada}    ${mensagemSucesso}
    Sleep                             1




