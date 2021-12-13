##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Produtos do Estoque
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/C_LOTPRO_PAGE.robot

*** Variable ***

*** Keywords ***
Consultar Produto |${CdProduto}| |${MensagemLote}|
    Preencher Campo                  ${CampoProduto}                 ${CdProduto}
    Click Elemento por titulo        Executar Consulta
    Valida Mensagem                  ${MensagemToast}                ${MensagemLote}
    Click no Item                    ${BotaoNao}

Validar Consulta Produto |${Produto}| |${Estoque}| |${CdEstoque}|
    Validar Elemento Pelo Titulo    ${Produto}
    Validar Elemento Pelo Titulo    ${Estoque}
    Validar Elemento Pelo Titulo    ${CdEstoque}

    
    


