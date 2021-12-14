##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Catalogo dos Fornecedores
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_CATPROD_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Fornecedor, Produto, Unidade, Valor e Validade |${CdFornecedor}| |${CdProduto}| |${CdUnidade}| |${Valor}| |${DtValidade}|
    Selecionar Item na Lista            ${LovFor}                  ${CdFornecedor}         ${CdFornecedor}
    Click no Item                       ${DivProd}
    Sleep   2
    Preencher Campo                     ${CampoProd}                 ${CdProduto}
    Click no Item                       ${DivUnid} 
    Sleep   1
    Preencher Campo                     ${CampoUnid}                 ${CdUnidade}
    Click no Item                       ${DivValor}
    Sleep   1
    Preencher Campo                     ${CampoValor}                ${Valor}
    Click no Item                       ${DivValidade}
    Sleep   1
    Preencher Campo                     ${CampoValidade}             ${DtValidade}

Salvar Registro |${MsgSalva}|
    Click Elemento por titulo           Salvar
    Valida Mensagem                     ${RegistroSalvo}                    ${MsgSalva}


