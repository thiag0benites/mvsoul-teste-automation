##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: M_USU_MULTI_EMPRESA
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/7-APOIO_TI/M_USU_MULTI_EMPRESA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos |${empresa}|,|${usuario}|
    Preencher Campo    ${campoEmpresa}    ${empresa}
    Sleep    2
    Clicar no botao adicionar
    Sleep    2
    Preencher Campo    ${campoUsuarioInput}    ${usuario}

Validar mensagem ao salvar |${mensagem}|
    Valida Mensagem         ${notificacao}             ${mensagem}

Clicar no botao adicionar
    Click no Item    ${buttonAdicionar}
    Sleep    2
    
Clicar no botao Salvar do menu
    Click Element     ${btnSalvar}
    Sleep             60