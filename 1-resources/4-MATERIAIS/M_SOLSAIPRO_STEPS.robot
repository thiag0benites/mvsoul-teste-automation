##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Solicitações de Produtos ao Estoque
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_SOLSAIPRO_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Checkbox, Preencher Estoque e Setor |${Estoque}| |${Setor}|
    Click no Item                    ${RbSetor}   
    Selecionar Item Na Lista         ${BotaoLovEstoque}             ${Estoque}                   ${Setor}
    Selecionar Item Na Lista         ${BotaoLovSetor}               ${Estoque}                   ${Setor}

Preencher Produtos |${CdProduto}| |${QtdProduto}| |${NomeProduto}|
    Clicar no Campo e Preencher Informacao    ${CampoCdProduto}     ${CampoCdProdutoEditavel}    ${CdProduto}
    Clicar no Campo e Preencher Informacao    ${CampoQtd}           ${CampoQtdEditavel}          ${QtdProduto}
    Validar Elemento Pelo Titulo              ${NomeProduto}

Nao Imprimir Solicitacao |${MensagemRecebidaConfirmacao}|
    Valida Mensagem                  ${MensagemToast}                ${MensagemRecebidaConfirmacao}
    Click no Item                    ${BotaoNao}

Limpar Tela |${MensagemRecebidaLimpar}|
    Valida Mensagem                  ${MensagemToast}                ${MensagemRecebidaLimpar}
    Click no Item                    ${BotaoSim}
    Wait Until Element Is Not Visible          ${EstoqueSelecionado}            20
    Element Should Not Be Visible    ${EstoqueSelecionado}

    
    