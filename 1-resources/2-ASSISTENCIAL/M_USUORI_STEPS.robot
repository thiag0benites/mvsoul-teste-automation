##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Usuários por Origem
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_USUORI_PAGE.robot
Resource          ../2-pages/ContextoPage.robot

*** Variable ***

*** Keywords ***
Selecionar Origem |${Origem}|            
    Selecionar Item Na Lista                    ${BotaoLov}                   ${Origem}                   ${Origem}

### Keyword para retornar massa de dados ao status inicial do teste ###
Excluir Origem |${Origem}|
    Click Elemento por titulo                   ${Origem}
    Click Elemento por titulo                   Apagar
    Clicar Botao Salvar