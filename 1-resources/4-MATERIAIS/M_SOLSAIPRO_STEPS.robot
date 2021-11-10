##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Solicitações de Produtos ao Estoque
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_SOLSAIPRO_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Checkbox, Preencher Estoque e Setor
    Click no Item                    ${RbSetor}   
    Selecionar Item Na Lista         ${BotaoLovEstoque}             ALMOXARIFADO            ALMOXARIFADO
    Selecionar Item Na Lista         ${BotaoLovSetor}               AMBULANCIA              AMBULANCIA

Preencher Produtos
    Clicar no Campo e Preencher Informacao    ${CampoCdProduto}     ${CampoCdProdutoEditavel}    2
    Clicar no Campo e Preencher Informacao    ${CampoQtd}           ${CampoQtdEditavel}          1
    Validar Elemento Pelo Titulo              REOPRO 2MG/ML-5ML FR/AMP IV- ABCIXIMABE

Nao Imprimir Solicitacao
    Valida Mensagem                  ${MensagemToast}                Atenção: Imprimir Solicitação?
    Click no Item                    ${BotaoNao}

Limpar Tela
    Valida Mensagem                  ${MensagemToast}                Atenção: Movimentação Salva com Sucesso ! Deseja Limpar a Tela?
    Click no Item                    ${BotaoSim}
    Wait Until Element Is Not Visible          ${EstoqueSelecionado}            20
    Element Should Not Be Visible    ${EstoqueSelecionado}

    
    