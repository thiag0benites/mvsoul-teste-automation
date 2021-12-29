##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Consulta de Exames Realizados
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/CONFIRMACAO_COLETA_SETOR_PAGE.robot
Resource          ../../1-resources/ContextoSteps.robot

*** Variable ***

*** Keywords ***
Preencher Campo e Consultar |${NPedido}|
    Preencher campo                                          ${Pedido}                 ${NPedido}
    Click no Item                                            ${BtnConsulta}
    Click no Item                                            ${BotaoOK} 

Selecionar Amostra e Salvar |${DataAtual}|
    Click no Item                                            ${MarcarCaixa}
    Preencher campo                                          ${CampoData}              ${DataAtual}
    Click no Item                                            ${BtnSalvar}                

Marcar Ckeckboxxx    
    Marcar Checkbox |${MarcarCaixa}|

