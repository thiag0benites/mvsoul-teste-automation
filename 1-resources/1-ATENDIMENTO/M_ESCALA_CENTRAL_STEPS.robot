##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_ESCALA_CENTRAL_PAGE.robot


*** Keywords ***
Cadastro de Escalas |${Prestador}||${HoraInicial}||${HoraFinal}||${DiaSemana}||${Dinamica}||${Setor}||${MsgEsperada}|
    Clicar no Campo e Preencher Informacao    ${campoPrestador}       ${campoPrestador}      ${Prestador}
    Clicar no Campo e Preencher Informacao    ${campoHoraInicial}     ${campoHoraInicial}    ${HoraInicial}
    Clicar no Campo e Preencher Informacao    ${campoHoraFinal}       ${campoHoraFinal}      ${HoraFinal}
    Clicar no Campo e Preencher Informacao    ${ComboBoxDiaSemana}    ${ComboBoxDiaSemana}   ${DiaSemana}
    Clicar no Campo e Preencher Informacao    ${ComboboxDinamica}     ${ComboboxDinamica}    ${Dinamica}
    Clicar no Campo e Preencher Informacao    ${CampoSetor}           ${CampoSetor}          ${Setor}
    Click no Item                             ${BtnSalvar}
    Valida Mensagem                           ${Alerta}               ${MsgEsperada}