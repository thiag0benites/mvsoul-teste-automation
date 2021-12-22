##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Passo a passo da M_LACTO_AIH_P321
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_LACTO_AIH_P321_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar pelo codigo do atendimento 
    Sleep    2
    Click no Item    ${btnPesquisar}

Executar a pesquisa
    Sleep    2
    Click no Item    ${btnExecutar}

Validar Resultado da Pesquisa |${dadosPesquisa}|
    Validar Elemento Pelo Titulo            ${dadosPesquisa}    

Ir para a aba Conta AIH 
    Sleep    1
    Click no Item    ${abaContas}

Adicionar novo registro na tabela 
    Click no Item    ${btnAdicionar}

Preencher os campos da tabela |${nr}|,|${remessa}|,|${internacao}|,|${alta}|,|${procedimento}|,|${especialidade}|,|${motivo}|,|${ca}|,|${laudo}|
    Preencher campo    ${campoNrAIH}            ${nr}

    Click no Item      ${campoRemessa}
    Sleep    2
    Preencher campo    ${campoRemessaInput}         ${remessa}
    
    Click no Item      ${campoInternacao}
    Sleep    2
    Preencher campo    ${campoInternacaoInput}      ${internacao}
    
    Click no Item      ${campoAlta}
    Sleep    2
    Preencher campo    ${campoAltaInput}            ${alta}

    Click no Item      ${campoProced}
    Sleep    2
    Preencher campo    ${campoProcedInput}          ${procedimento}

    Click no Item      ${campoEspecialidade}
    Sleep    2
    Preencher campo    ${campoEspecialidadeInput}   ${especialidade}
    
    Click no Item      ${campoMotivo}
    Sleep    2
    Preencher campo    ${campoMotivoInput}          ${motivo} 
       
    Click no Item      ${campoCA}
    Sleep    2
    Preencher campo    ${campoCAInput}              ${ca} 
       
    Click no Item      ${campoDataLaudo}
    Sleep    2
    Preencher campo    ${campoDataLaudoInput}        ${laudo} 

Salvar os dados inseridos 
    Click no Item    ${btnSalvar}

Validar mensagem |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}

Ver Itens da Conta 
    Sleep    1
    Click no Item    ${abaItens}

Ver criticas da conta
    Sleep    1
    Click no Item    ${abaCriticas}
