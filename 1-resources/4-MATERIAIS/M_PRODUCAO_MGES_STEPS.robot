##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/4-MATERIAIS/M_PRODUCAO_MGES_PAGE.robot

*** Keywords ***
Informacoes Gerais de Entrada de Produtos|${Estoque}||${Produto}||${Unidade1}|
    Wait Until Element Is Visible    ${CampoEstoque}    180
    Preencher campo    ${CampoEstoque}    ${Estoque}
    Send Keys    enter
    Click no Item    ${DivProduto}
    Preencher campo    ${CampoEmEdicao}    ${Produto}
    Send Keys    enter
    Preencher campo    ${CampoEmEdicao}    ${Unidade1}
    Send Keys    enter

Aba Itens de Composicao|${CodProduto}||${Unidade2}||${Quantidade}|
    Click no Item    ${DivCodProduto}
    Preencher campo    ${CampoEmEdicao}    ${CodProduto}
    Send Keys    enter
    Preencher campo    ${CampoEmEdicao}    ${Unidade2}
    Send Keys    enter
    Preencher campo    ${CampoQuantidade}    ${Quantidade}

Aba Lote principal|${Serie}|
    Click no Item    ${BtnLotePrincipal}
    Wait Until Element Is Visible    ${DivSerie}    20
    Click no Item    ${DivSerie}
    Preencher campo    ${CampoSerie}    ${Serie}
    Click no Item    ${DivDataValidade}
    Preencher campo com data e hora    ${CampoDataValidade}    %d/%m/%Y %H:%M    24:00:00
    Click no Item    ${BtnConcluir}

Validacao de Mensagem|${MsgEsperada1}||${MsgEsperada2}|
    Valida Mensagem    ${Alerta}    ${MsgEsperada1}
    Click no Item    ${BtnSim}
    Valida Mensagem    ${Alerta}    ${MsgEsperada2}
    Click no Item    ${BtnOK}
