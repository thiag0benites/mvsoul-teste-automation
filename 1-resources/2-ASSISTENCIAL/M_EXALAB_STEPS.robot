##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_EXALAB_PAGE.robot

*** Variable ***

*** Keywords ***  
Preencher Campo Nome
    Preencher campo                      ${CampoNome}    WATI testes  

Selecionar Tipo
    #Click Button                         ${BotaoTipoRes}
    Preencher campo                      ${BotaoTipoRes}    Sem Resultado
    Send Keys     tab
       
Clicar Bt Salvar 
    Click Elemento por titulo               Salvar
    Valida Mensagem                         xpath=//p[@class="notifications-item-text"]               Registros gravados com sucesso

#Preencher Campo Tipo de Resultado
    #Selecionar Item Na Lista               ${BotaoTipoRes}    Sem Resultado   S 








