##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_LAYOUT_ARQUIVO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos |${codigo}|,|${descricao}|,|${banco}|,|${versao}|
    Preencher Campo    ${campoCodigo}                  ${codigo}

    Click no Item                                      ${campoDescricao}
    Sleep   2
    Preencher Campo    ${campoDescricaoInput}          ${descricao}

    Click no Item                                      ${campoBanco}
    Sleep   2
    Preencher Campo    ${campoBancoInput}              ${banco}

    Click no Item                                      ${campoVersao}
    Sleep   2
    Preencher Campo    ${campoVersaoInput}             ${versao}

Marcar Checkbox da tela 
    Click no Item  ${checkboxEmpresa}
    Sleep        1
    Click no Item  ${checkboxData}
    Sleep        1
    Click no Item  ${checkboxHora}
    Sleep        1

Validar cadastro realizado do Layout |${mensagem}|
    Valida Mensagem                  ${MensagemToast}                ${mensagem}

Clicar no botao Salvar do menu
    Click Element     ${btnSalvar}
    Sleep             10