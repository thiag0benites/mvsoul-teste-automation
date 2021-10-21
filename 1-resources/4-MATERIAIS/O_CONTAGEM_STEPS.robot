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
    Click Element                           ${BotaoExecConsulta} 
    Validar Preenchimento dos Campos        66              ALMOXARIFADO            21/10/2021          Somente Alguns Produtos

Validar Preenchimento dos Campos
    [Arguments]        ${Estoque}       ${DesEstoque}          ${DataContagem}          ${TpContagem}
    Validar Elemento Pelo Titulo            ${Estoque}
    Validar Elemento Pelo Titulo            ${DesEstoque}
    Validar Elemento Pelo Titulo            ${DataContagem}
    Validar Elemento Pelo Titulo            ${TpContagem}

Inserir Produto |${Produto}|
    Wait Until Element Is Visible           ${BotaoAdicionar}               20
    Click Element                           ${BotaoAdicionar}
    Wait Until Element Is Visible           ${BotaoLovProduto}              20
    Click Element                           ${BotaoLovProduto}
    Selecionar Item Na Lista                ${Produto}                      ${Produto}
    Preencher Campo                         ${CampoLote}                    kjh45612
    Preencher Campo                         ${CampoValidade}                20/10/2030
    Preencher Campo                         ${CampoQtEstoque}               1000

Selecionar Item Na Lista         
    [Arguments]                             ${Item}                         ${ItemLista}   
    Wait Until Element Is Visible           ${CampoFiltro}                  20
    Preencher Campo                         ${CampoFiltro}                  %${Item}
    Wait Until Element Is Visible           ${BotaoFiltrar}                 20
    Click Element                           ${BotaoFiltrar}
    Validar Elemento Pelo Titulo            ${ItemLista}
    Click Element                           ${BotaoOk}

Clicar Botao Fechar Mov Usuario
    Wait Until Element Is Visible           ${BotaoFecharMov}               20
    Click Element                           ${BotaoFecharMov}
    Valida Mensagem                         ${MensagemFecharMov}            Fechamento da leitura realizado com sucesso!
    Wait Until Element Is Visible           ${BotaoOkMensagem}              20
    Click Element                           ${BotaoOkMensagem}









