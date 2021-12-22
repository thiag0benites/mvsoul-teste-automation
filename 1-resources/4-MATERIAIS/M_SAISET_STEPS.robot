##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de    Acompanhamento de Solicitacoes de Compras
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_SAISET_PAGE.robot
Resource    ../8-SERVICO_APOIO/M_SAI_SETOR_STEPS.robot

*** Variable ***

*** Keywords ***


Preencher Estoque e Unidade |${Estoque}| |${Unidade}|
    Preencher Campo                ${CampoEstoque}                ${Estoque}
    Preencher Campo                ${CampoUnidade}                ${Unidade}

Preencher Produto e Quantidade |${Produto}| |${Quantidade}|
    Clicar no Campo e Preencher Informacao    ${DivProduto}        ${CampoProduto}        ${Produto}
    Clicar no Campo e Preencher Informacao    ${DivQuantidade}     ${CampoQuantidade}     ${Quantidade}

Validar Saida |${Mensagem}|
    Click no Item                   ${BotaoConcluir}
    Valida Mensagem                 ${MensagemEsperada}        ${Mensagem}
    Click no Item                   ${BtnOk}

    

