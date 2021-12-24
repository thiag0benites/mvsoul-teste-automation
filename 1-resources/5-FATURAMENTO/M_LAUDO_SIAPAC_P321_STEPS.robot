##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: M_LAUDO_SIAPAC_P321
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_LAUDO_SIAPAC_P321_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher campo Competencia|${competencia}|, Prontuario|${prontuario}|, Tipo Tratamento|${tpTratamento}|, Data solicitacao|${dtCirurgia}|, Prestador|${prestador}|, Estabelecimento|${estabelecimento}|, Data Autorizacao|${dtCirurgia}|, Origem|${origem}|, Procedimento principal|${procPrincipal}|, Serv SUS|${servSus}|, Cid|${cid}|, Cid Secundario|${cidSec}|, Observacoes|${observacoes}|
    Wait Until Element Is Visible       ${cpCompetencia}        180
    Preencher campo        ${cpCompetencia}        ${competencia}
    Press Keys      ${cpCompetencia}        ENTER
    Sleep       3
    Preencher campo           ${cpProntuario}         ${prontuario}
    Press Keys          ${cpProntuario}         ENTER
    Sleep       3
    Click Element           ${btnSimPaciente}
    Sleep       3
    Preencher campo           ${cpTpTratamento}         ${tpTratamento}
    Sleep       3
    Preencher campo         ${cpDtSolicitacao}         ${dtCirurgia}
    Sleep       3
    Preencher campo         ${cpPrestador}          ${prestador}
    Sleep       3
    Preencher campo         ${cpEstabelecimento}        ${estabelecimento}
    Sleep       3
    Preencher campo         ${cpDtAutorizacao}          ${dtCirurgia}
    Sleep       3
    Preencher campo         ${cpOrigem}          ${origem}
    Sleep       3
    Preencher campo         ${cpProcedimento}          ${procPrincipal}
    Sleep       3
    Preencher campo         ${cpSus}         ${servSus}
    Sleep       3
    Preencher campo         ${cpCidPrincipal}        ${cid}
    Sleep       3
    Preencher campo         ${cpCidSec}        ${cidSec}
    Sleep       3
    Preencher campo         ${cpObservacao}        ${observacoes}
    Sleep       3


Clicar no botao[Salvar]
    Sleep       2
    Click Element       ${btnSalvar}
    Sleep       2
    Click Element        ${btnSim}
    Sleep       3

Preencher campo Nr AIH|${nrAIH}|, IMC paciente|${IMC}|, Perda de peso|${perdaPeso}|, Kg Perdido Pós|${klPerdido}|, Data cirurgia|${dtCirurgia}|
    Wait Until Element Is Visible           ${cpNrAIH}
    #Click Element           ${elemNrAIH}
    Preencher campo         ${cpNrAIH}        ${nrAIH}
    Sleep       3
    Preencher campo         ${cpImc}        ${IMC}
    Sleep       3
    Preencher campo         ${cpPercPeso}        ${perdaPeso}
    Sleep       3
    Preencher campo         ${cpKlPerdidoPos}         ${klPerdido}
    Sleep       3
    Preencher campo         ${cpDtCirurgia}         ${dtCirurgia}
    Sleep       3

Selecionar Checkbox relacionados
    Click Element       ${checkComorbidades}
    Sleep        3
    Click Element           ${cpDiabetes} 
    Sleep        3
    Click Element       ${cpApneia}
    Sleep       3
    Click Element       ${cpProcCirurgia}
    Sleep       3

Clicar no botao[Salvar2]
    Click Element       ${btnSalvar2}       
    Sleep       6
        
Captura codigo|${suite}|${id}|
    Wait Until Element Is Visible    ${cpCodigo}    120
    Should Not Be Empty    ${cpCodigo}
    ${codigo}    Get Element Attribute    ${cpCodigo}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "cpCodigo", valor "${codigo}"