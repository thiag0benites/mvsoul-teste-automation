##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_EXALAB_PAGE.robot

*** Variable ***

*** Keywords ***  
Preencher Campo Nome |${CampoNomeExame}|
#Preenchimento de campo de Nome.
    Preencher campo                         ${CampoNome}          ${CampoNomeExame}  

Selecionar Datas 
#Selecionr datas de exame
    Click Button                            ${BtSegunda}
    Click Button                            ${BtTerca}
    Click Button                            ${BtQuarta}
    Click Button                            ${BtQuinta}
    Click Button                            ${BtSexta}
    Click Button                            ${BtSabado}
    Click Button                            ${BtDomingo}

Selecionar Tipo |${CampoTipoRes}|
#Preencher Campo tipo de exame.  
    Preencher campo                         ${BotaoTipoRes}       ${CampoTipoRes}
    Send Keys                               tab
       
Clicar Bt Salvar E Valida Msg |${MsgDeConfirmacao}|
#Clicar no botao salvar atraves do titulo e validar mensagem de retorno.
    Click Elemento por titulo               Salvar
    Valida Mensagem                         ${ValidaMsg}             ${MsgDeConfirmacao}

Clicar Botao Apagar
#Deletar registro recem criado para evitar queimar a massa em todo teste.
    Click Elemento por titulo               Apagar
    Sleep    5