##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Saída de Produtos para Empréstimo
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_EMPRESTIMO_SAI_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Dados do Emprestimo |${Estoque}| |${Fornecedor}|
    Selecionar Item Na Lista    ${BotaoLovEstoque}     ${Estoque}    ${Estoque}
    Selecionar Item Na Lista    ${BotaoLovFornecedor}     ${Fornecedor}    ${Fornecedor}

Preencher Dados Produto |${Produto}| |${Quantidade}|
    Clicar Item e Selecionar da Lista    ${CampoProduto}     ${BotaoLovEdit}    ${Produto}    ${Produto}
    Clicar no Campo e Preencher Informacao    ${CampoQuantMov}     ${CampoEdit}    ${Quantidade}

Salvar Movimentacao |${MensagemSucesso}| |${MsgLimpaTela}| |${Estoque}|
    Click Elemento por titulo    Salvar
    Valida Mensagem    ${MensagemToast}    ${MensagemSucesso}
    Valida Mensagem    ${MensagemLimparTela}    ${MsgLimpaTela}
    Click no Item    ${BotaoSim}  
    Wait Until Element Is Not Visible    xpath=//input[@id="inp:mvtoEstoque_dspDsEstoque"][@title="${Estoque}"]   20
