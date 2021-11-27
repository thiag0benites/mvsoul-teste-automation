##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de  Cadastro de Ordem de Compras
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_ORDCOM_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Estoque |66|
    Preencher Campo                     ${CampoEstoque}                     66

Preencher Fornecedor |3911|
    Preencher Campo                     ${CampoFornecedor}                     3911

Preencher Periodo Inicial para Entrega |01/12/2021|
    Preencher Campo                     ${CampoPerEntregaIni}                      01/12/2021 

Preencher Periodo Final para Entrega |10/12/2021|
    Preencher Campo                     ${CampoPerEntregaFin}                      10/12/2021

Preencher Condicao |82|
    Preencher Campo                     ${CampoCondic}                     82

Marcar o CheckBox Servico
    Click no Item                       ${CheckServico}

Informar Valor Total |100|
    Preencher Campo                     ${CampoVLTotal}                     100

Informar Valor Desconto |0|
    Preencher Campo                     ${CampoDesconto}                    0            

Informar Valor ICMS |0|
    Preencher Campo                     ${CampoICMS}                        0   

CLicar no Botao Servico
    Click no Item                       ${BotaoServico}       

Preencher Servico |1273|
    Preencher Campo                     ${Servico}                          1273

Preencher Valor Servico |100|
    Preencher Campo                     ${VlServico}                        100

Salvar Registro
    Click Elemento por titulo           Salvar   


Preencher Campos Obrigatorios do Produto |${Unidade}| |${Especie}| |${Classe}| |${Subclasse}|
    Selecionar Item Na Lista            ${BotaoLovUnidade}                  ${Unidade}                           ${Unidade}
    Selecionar Item Na Lista            ${BotaoLovEspecie}                  ${Especie}                           ${Especie}
    Selecionar Item Na Lista            ${BotaoLovClasse}                   ${Classe}                            ${Classe}
    Selecionar Item Na Lista            ${BotaoLovSubclasse}                ${Subclasse}                         ${Subclasse}  

Validar Preenchimento dos Campos Obrigatorios |${Unidade}| |${Especie}| |${Classe}| |${Subclasse}|
    Validar Elemento Pelo Titulo        ${Unidade}
    Validar Elemento Pelo Titulo        ${Especie}
    Validar Elemento Pelo Titulo        ${Classe}
    Validar Elemento Pelo Titulo        ${Subclasse}

Preencher Campos Lote e Registro Anvisa |${Lote}| |${RegAnvisa}|
    Preencher Campo                     ${CampoLote}                         ${Lote}
    Preencher Campo                     ${CampoRegistroAnvisa}               ${RegAnvisa}

Selecionar Atividade do Produto |${Atividade}|
    Selecionar Item Na Lista            ${BotaoLovAtividade}                 ${Atividade}                         ${Atividade}

Salvar Registro |${MensagemProdMestre}| |${MensagemDuplicidade}| |${MensagemSalvar}|
    Click Elemento por titulo           Salvar    
    Valida Mensagem                     ${MensagemToast}                     ${MensagemProdMestre}
    Click no Item                       ${BotaoNao} 
    Wait Until Element Is Visible       ${MensagemToast}                     20
    ${PegaMensagem}                     SeleniumLibrary.Get Text             ${MensagemToast}
    Run Keyword If    "${PegaMensagem}" == "${MensagemDuplicidade}"  Click no Item    ${BotaoSim}
    Valida Mensagem                     ${MensagemToast}                     ${MensagemSalvar}