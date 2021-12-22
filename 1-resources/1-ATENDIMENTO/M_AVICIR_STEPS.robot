##################################################################################################################################
# Autor: Rodrigo Torquato
# Decrição: Passos da tela Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_AVICIR_PAGE.robot

*** Variable ***

*** Keywords ***
Preenche Aviso Cirurgia "Data Prev Internacao|${DtPrev}|", "Tempo Prev|${TempoPrev}|", "Atendimento|${Atend}|", "Centro Cirurgico|${CentCir}|", "Sala Cirurgica|${SalaCir}|"
    Preencher campo    ${CampoDtHrPrevInter}    ${DtPrev}
    Preencher campo    ${CampoTempoPrev}    ${TempoPrev}
    Clicar no Campo e Preencher Informacao    ${BtnAtendimento}    ${CampoFiltrar}    ${Atend}
    Click no Item    ${BtnFiltrar}
    Click no Item    ${BtnOkFiltrar}
    Clicar no Campo e Preencher Informacao    ${BtnCentroCir}    ${CampoFiltrar}    ${CentCir}
    Click no Item    ${BtnFiltrar}
    Click no Item    ${BtnOkFiltrar}
    Clicar no Campo e Preencher Informacao    ${BtnSalaCir}    ${CampoFiltrar}    ${SalaCir}
    Click no Item    ${BtnFiltrar}
    Click no Item    ${BtnOkFiltrar}
    Click no Item    ${BtnCirurgias}

Preenche Cirurgia A Serem Realizadas "Codigo Cirurgia|${CodCir}|", "Observacao|${Observ}|"
    Clicar no Campo e Preencher Informacao    ${BtnCodCir}    ${CampoFiltrar}    ${CodCir}
    Click no Item    ${BtnFiltrar}
    Click no Item    ${BtnOkFiltrar}
    Click no Item    ${ChBoxPrincipal}
    Preencher campo    ${CampoObservacao}    ${Observ}
    Click no Item    ${BtnPrestadores}

Preenche Prestadores Cirurgia "Codigo|${Codigo}|", "Atividade Medica|${AtvMed}|", "Mensagem Alerta|${Valid}|"
    Clicar no Campo e Preencher Informacao    ${BtnCodigo}    ${CampoFiltrar}    ${Codigo}
    Click no Item    ${BtnFiltrar}
    Click no Item    ${BtnOkFiltrar}
    Click no Item    ${CampoAtvMedica}
    Clicar no Campo e Preencher Informacao    ${BtnAtvMedica}    ${CampoFiltrar}    ${AtvMed}
    Click no Item    ${BtnFiltrar}
    Click no Item    ${BtnOkFiltrar}
    Click no Item    ${BtnSalvar}
    Validar Informacao Item    ${MsgAlerta}    ${Valid}
