##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de  Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_PRODUTO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Descricao e Tipo do Produto |${Descricao}| |${DescResumida}| |${TpProduto}|
    Selecionar Item Na Lista            ${BotaoLovDescricao}                ${Descricao}                         ${Descricao}
    Preencher Campo                     ${CampoDescResumida}                ${DescResumida}
    Preencher Campo                     ${CampoTipoProduto}                 ${TpProduto}

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