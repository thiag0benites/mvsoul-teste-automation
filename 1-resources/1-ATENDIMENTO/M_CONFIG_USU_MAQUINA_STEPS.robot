##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_CONFIG_USU_MAQUINA_PAGE.robot

*** Variable ***

*** Keywords ***
Clicar na aba Relatorios
    Click no Item  ${abaRelatorios}

Preencher codigo e descricao |${codigo}|,|${descricao}|
    Preencher campo         ${campoCodigo}              ${codigo}
    Sleep     1

    Click no Item          ${campoDescricao}
    Sleep     1
    Preencher campo     ${campoDescricaoInput}          ${descricao}

Clicar no botao Salvar
    Click no Item  ${btnSalvar}

Validar configuracao cadastrada |${mensagem}|
    Valida Mensagem  ${mensagemNotificacao}     ${mensagem}

