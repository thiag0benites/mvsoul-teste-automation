##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: c_lote
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/C_LOTE_FAT_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos da tabela |${convenio}|,|${descricao}|,|${competencia}|
    Click no Item      ${campoConvenioLoteFatInput}
    Preencher campo    ${campoConvenioLoteFatInput}         ${convenio}
    Sleep    1
    
    Click no Item      ${campoDescricaoLoteFat}
    Preencher campo    ${campoDescricaoLoteFatInput}        ${descricao}
    Sleep    1

    Click no Item      ${campoCompetenciaLoteFat}
    Preencher campo    ${campoCompetenciaLoteFatInput}      ${competencia}
    Sleep    1

Preencher a data de abertura na tabela |${dataAbertura}|
    Click no Item    ${campoDataAberturaLoteFat}
    Sleep    2
    Preencher campo    ${campoDataAberturaInputLoteFat}    ${dataAbertura}

Clicar no botao Salvar da tela de faturas e remessas
    Click no Item    ${btnSalvarLoteFat}

Validar mensagem ao salvar |${mensagem}|
    Valida Mensagem    ${MensagemSalvarLoteFat}    ${mensagem}
