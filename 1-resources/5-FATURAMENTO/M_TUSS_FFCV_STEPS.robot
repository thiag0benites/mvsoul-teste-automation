##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: M_TUSS_FFCV
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_TUSS_FFCV_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo Terminologia |${terminologia}|
    Preencher campo    ${terminologiaInput}    ${terminologia}
    Sleep    2

Clicar no botao de pesquisa da tela
    Click no Item    ${btnPesquisar2}

Clicar no botao Adicionar
    Click no Item    ${btnAdicionar}

Preencher os campos da tabela |${codigo}|,|${descricao}|,|${empresa}|,|${convenio}|,|${procedimento}|,|${inicioVigencia}|
    Preencher campo    ${campoCodigoInput}    ${codigo}
    Click no Item    ${campoDescricao}
    Sleep    1
    Preencher campo    ${campoDescricaoInput}    ${descricao}
    Click no Item    ${campoEmpresa}
    Sleep    1
    Preencher campo    ${campoEmpresaInput}    ${empresa}
    Click no Item    ${campoConvenio}
    Sleep    1
    Preencher campo    ${campoConvenioInput}    ${convenio}
    Click no Item    ${campoProcedimento}
    Sleep    1
    Preencher campo    ${campoProcedimentoInput}    ${procedimento}
    Sleep    1
    Preencher campo    ${dataInicioVigencia}    ${inicioVigencia}

Clicar no botao Salvar
    Click no Item    ${btnSalvar}

Validar cadastro realizado |${mensagem}|
    Valida Mensagem    ${MensagemToast}    ${mensagem}
