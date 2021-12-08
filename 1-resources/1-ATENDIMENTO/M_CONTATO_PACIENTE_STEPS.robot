##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/1-ATENDIMENTO/M_CONTATO_PACIENTE_PAGE.robot

*** Variable ***

*** Keywords ***
Clicar no botao Sim no modal de notificacao
    Click no Item    ${btnSimNotificacao}

Clicar no botao Contato
<<<<<<< HEAD
    Click no Item               ${btnContato} 
      
Clicar no botao Executar 
    Click no Item            ${btnExecute} 
    Sleep              30   
=======
    Click no Item    ${btnContato}
>>>>>>> bcff08906ee522c9c978cf264b93ae888b1791ed

Preencher os dados do contato do paciente |${ddd1}|,|${ddd2}|,|${telefone}|
    Click no Item    ${campoDdd1}
    Sleep    1
    Preencher campo    ${campoDdd1Input}    ${ddd1}
    Click no Item    ${campoDdd2}
    Sleep    1
    Preencher campo    ${campoDdd2Input}    ${ddd2}
    Click no Item    ${campoTelefone}
    Sleep    1
    Preencher campo    ${campoTelefoneInput}    ${telefone}

Clicar no botao Salvar
    Click no Item    ${btnSalvar}

Validar cadastro do contato do paciente |${mensagem}|
    Valida Mensagem    ${modalNotificacao}    ${mensagem}

Clicar no botao Pesquisar
    Click no Item    ${btnPesquisar}
