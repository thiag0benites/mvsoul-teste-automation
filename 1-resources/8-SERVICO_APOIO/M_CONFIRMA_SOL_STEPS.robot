##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Confirmacao de Solicitacoes
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_CONFIRMA_SOL_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Solicitacao |${Solicitacao}|
    Preencher Campo    ${CampoSol}    ${Solicitacao}
    Click Elemento por titulo    Executar Consulta

Preencher Quantidade e Confirmar |${QtAtendida}|
    Click no Item    ${DivQt}
    Preencher Campo    ${CampoQt}    ${QtAtendida}
    Click no Item    ${BotaoConfirmado}

Valida Confirmacao
    Wait Until Element Is Visible    ${BotaoMarcado}
    ${Data}    Get Current Date    result_format=%d/%m/%Y    increment=00:00:00
    Altera massa de dados da "M_CONFIRMA_SOL", linha "1", coluna "DataAtual", valor "${Data}"
    Validar Elemento Pelo Titulo    ${Data}
    #Valida a Confirmacao pela Data Atual e armazena a Data no Gerenciador
