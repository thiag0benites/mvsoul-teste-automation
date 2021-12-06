##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/6-CONTROLADORIA/O_DIRF_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos da tela de geracao de DIRF |${ano}|,|${cpf}|,|${nome}|,|${cpf2}|,|${email}|,|${ddd}|,|${telefone}|
    Preencher Campo        ${inputAno}                  ${ano}
    Sleep                  1

    Preencher Campo        ${inputCpf}                  ${cpf}
    Sleep                  1

    Preencher Campo        ${inputNome}                 ${nome}
    Sleep                  1

    Preencher Campo        ${inputCpf2}                  ${cpf2}
    Sleep                  1

    Preencher Campo        ${inputEmail}                ${email}
    Sleep                  1

    Preencher Campo        ${inputDDD}                   ${ddd}
    Sleep                  1

    Preencher Campo        ${inputTelefone}               ${telefone}
    Sleep                  1

Clicar no botao gerar 
    Click no Item          ${btnGerarDIRF}

Validar mensagem de sucesso |${mensagem}|
    Valida Mensagem        ${mensagemNotification}                ${mensagem}
