##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Digitação dos Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/O_CONTAGEM_PAGE.robot

*** Variable ***

*** Keywords ***
Realizar Consulta Pelo Codigo
    Preencher Campo                         ${CampoCodigo}                  9307 
    Validar Preenchimento dos Campos        66              ALMOXARIFADO            21/10/21          Somente Alguns Produtos

Validar Preenchimento dos Campos
    [Arguments]        ${Estoque}       ${DesEstoque}          ${DataContagem}          ${TpContagem}
    Validar Elemento Pelo Titulo            ${Estoque}
    Validar Elemento Pelo Titulo            ${DesEstoque}
    Validar Elemento Pelo Titulo            ${DataContagem}
    Validar Elemento Pelo Titulo            ${TpContagem}

Inserir Produto |${Produto}|
    Click no Item                           ${BotaoAdicionar}               
    Click no Item                           ${BotaoLovProduto}              
    Selecionar Item Na Lista                ${Produto}                      ${Produto}
    Preencher Campo                         ${CampoLote}                    kjh45612
    Preencher Campo                         ${CampoValidade}                /10/30
    Preencher Campo                         ${CampoQtEstoque}               1000

Selecionar Item Na Lista         
    [Arguments]                             ${Item}                         ${ItemLista}   
    Click no Item                           ${CampoFiltro}                  
    Preencher Campo                         ${CampoFiltro}                  %${Item}
    Click no Item                           ${BotaoFiltrar}                 
    Validar Elemento Pelo Titulo            ${ItemLista}
    

Clicar Botao Fechar Mov Usuario
    Click no Item                           ${BotaoFecharMov}               
    Valida Mensagem                         ${MensagemFecharMov}            Fechamento da leitura realizado com sucesso!
    Click no Item                           ${BotaoOkMensagem}              
    









