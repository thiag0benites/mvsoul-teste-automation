##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Entrada de Empréstimo
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_EMPRESTIMO_ENT_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados do Emprestimo |${Estoque}| |${Setor}| |${Fornecedor}| |${CFOP}| |${DtEmissao}| |${DtEntrada}|
    Selecionar Item Na Lista    ${BotaoLovEstoque}    ${Estoque}    ${Estoque}
    Selecionar Item Na Lista    ${BotaoLovSetor}    ${Setor}    ${Setor}
    Selecionar Item Na Lista    ${BotaoLovFornecedor}    ${Fornecedor}    ${Fornecedor}
    Selecionar Item Na Lista    ${BotaoLovCFOP}    ${CFOP}    ${CFOP}
    Preencher Campo    ${CampoDtEmissao}    ${DtEmissao}
    Preencher Campo    ${CampoDtEntrada}    ${DtEntrada}

Preencher Dados do Produto |${Produto}| |${Quantidade}| |${Unidade}|
    Clicar Item e Selecionar da Lista    ${CampoProduto}    ${BotaoLovProduto}    ${Produto}    ${Produto}
    Validar Elemento Pelo Titulo    ${Unidade}
    Send Keys    tab
    Sleep  1
    Send Keys    tab
    Preencher Campo    ${CampoEdit}    ${Quantidade}
    Send Keys    tab
    Sleep  1
    Send Keys    tab

Preencher Lote |${Lote}| |${Quantidade}| |${MensagemValor}|
    Preencher Campo    ${CampoEdit}    ${Lote}
    Send Keys    tab
    Preencher Campo    ${CampoEdit}    ${Quantidade}
    Click no Item    ${CampoProduto}
    Valida Mensagem    ${MensagemToast}    ${MensagemValor}
    Click no Item    ${BotaoSim}

Concluir Entrada |${MsgEmprestimoSucesso}| |${MensagemSucesso}|
    Click no Item    ${BotaoConcluir}
    Valida Mensagem    ${MensagemToast}    ${MsgEmprestimoSucesso}
    Click no Item    ${BotaoOk}
    Valida Mensagem    ${MensagemToast}    ${MensagemSucesso}

