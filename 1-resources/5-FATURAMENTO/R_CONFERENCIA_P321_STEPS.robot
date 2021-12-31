##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Relatório de Controle de Conferencia por Paciente
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/5-FATURAMENTO/R_CONFERENCIA_P321_PAGE.robot
# Resource    ../4-MATERIAIS/M_TRANSF_SOLICITACAO_STEPS.robot

*** Keywords ***
Informar no Relatorio <Fatura> |${VlFatura}| <Paciente> |${VlPaciente}| <Atendimento> |${VlAtend}|
    # Validar Acesso a Tela |Controle de Conferencia por Paciente|
    Click no Item    ${CpFaturaA}
    Clicar no Campo e Preencher Informacao    ${CpFaturaB}    ${CpFaturaB}    ${VlFatura}
    Click no Item    ${CpFaturaC}
    Click no Item    ${CpFaturaD}
# Paciente
    Click no Item    ${CpPacieteA}
    Clicar no Campo e Preencher Informacao    ${CpPacieteB}    ${CpPacieteB}    ${VlPaciente}
    Click no Item    ${CpPacieteC}
    Click no Item    ${CpPacieteD}
# Atendimento
    Clicar no Campo e Preencher Informacao    ${CpAtendimento}    ${CpAtendimento}    ${VlAtend}
# Imprimir
    Click no Item    ${BtImprimir}

