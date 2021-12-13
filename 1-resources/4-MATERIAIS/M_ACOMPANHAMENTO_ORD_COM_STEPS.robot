##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Follow-Up
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_ACOMPANHAMENTO_ORD_COM_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados de Pesquisa |${Fornecedor}|
    Selecionar Item Na Lista                        ${BotaoLovOrdCompra}                ${Fornecedor}          ${Fornecedor}
    Click no Item                                   ${BotaoPesquisa}

Validar Dados Pesquisa |${Estoque}| |${Fornecedor}|
    Validar Elemento Pelo Titulo                    ${Estoque}
    Validar Elemento Pelo Titulo                    ${Fornecedor}

Preencher Novo Contato |${DtContato}| |${HrContato}| |${NomeContato}| |${FoneContato}| |${EmailContato}|
    Click no Item                                    ${BotaoNovo}  
    Preencher Campo                                  ${CampoDtContato}                   ${DtContato}
    Preencher Campo                                  ${CampoHrContato}                   ${HrContato}
    Preencher Campo                                  ${CampoNomeContato}                 ${NomeContato}
    Preencher Campo                                  ${CampoFoneContato}                 ${FoneContato}
    Preencher Campo                                  ${CampoEmailContato}                ${EmailContato}

Preencher Historico Follow Up |${HistoricoFollowUp}|
    #Preencher Campo                                  ${CampoHistFollowUpEdit}            ${HistoricoFollowUp}  
    Clicar no Campo e Preencher Informacao           ${CampoHistFollowUp}           ${CampoHistFollowUpEdit}        ${HistoricoFollowUp}     
    
