##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/O_TRANSF_PREST_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos |${numAtend}|,|${nomePrestadorDest}|,|${motivoTransferencia}|,|${servico}|
    Preencher campo                  ${inputAtend}                            ${numAtend} 
    Sleep                            2
    Preencher campo                  ${inputPrestadorDestino}                 ${nomePrestadorDest} 
    Sleep                            2
    Preencher campo                  ${textareaMotivo}                        ${motivoTransferencia} 
    Sleep                            2
    Click Element                    ${servicoTable}
    Sleep                            2
    Preencher campo                  ${servicoTableInput}                     ${servico}

Validar atendimento 
    Sleep                            2
    Validar Item   ${atendimento}

Confirmar Transferencia de Prestador
    Click Element                    ${buttonTransferencia}
    Valida Mensagem  ${MensagemSalvar}   Atendimentos Transferidos.....:1
    Sleep               5