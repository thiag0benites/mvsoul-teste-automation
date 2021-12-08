##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de M_VALOR_INICIAL_PRODUTO.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/M_VALOR_INICIAL_PRODUTO_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher produto |${produto}| e validar |${descricaoProduto}|
    Click no Item  ${campoProduto}
    Preencher campo    ${campoProdutoInput}    ${produto}
    Send keys  enter
    Validar Elemento Pelo Titulo    ${descricaoProduto}


Informar valor de custo |${valorCustos}| e validar mensagem |${mensagemSucesso}|
    Click no Item      ${campoValorCustos}
    Preencher campo    ${campoValorCustosInput}    ${valorCustos}
    Clicar no botao Salvar do menu
    Valida Mensagem    ${MensagemToast}    ${mensagemSucesso}
    Sleep    1

