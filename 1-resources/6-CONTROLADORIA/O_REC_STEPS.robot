##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/O_REC_PAGE.robot

*** Keywords ***
Preencher dados do recebimento |${DataIni}||${DataFinal}||${Processo}||${ContaCorrente}||${CodResponsavel}|
    Click no Item                             ${RadioButtonVencimento}
    Clicar no Campo e Preencher Informacao    ${campoDataIni}                    ${campoDataIni}            ${DataIni}
    Clicar no Campo e Preencher Informacao    ${campoDataFinal}                  ${campoDataFinal}          ${DataFinal}
    Clicar no Campo e Preencher Informacao    ${campoProcesso}                   ${campoProcesso}           ${Processo}
    Send Keys                                                                                               enter   
    Clicar no Campo e Preencher Informacao    ${campoContaCorrente}              ${campoContaCorrente}      ${ContaCorrente}
    Click no Item                             ${BtnResponsavel}        
    Clicar no Campo e Preencher Informacao    ${campoCodResponsavel}             ${campoCodResponsavel}     ${CodResponsavel}
    Send Keys                                                                                               tab
    Click no Item                             ${BtnOkResponsavel}
    Click no Item                             ${CheckBox}
    Click no Item                             ${btnConfirmar}        
Valida mensagem sucesso |${MsgEsperada}|
    Valida Mensagem                           ${Alerta}    ${MsgEsperada}
    Click no Item                             ${btnOk}