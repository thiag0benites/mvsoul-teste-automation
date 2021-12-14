##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de    Ajusta Valor do Custo Médio do Produto
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_AJUSTA_CUSTO_MEDIO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Estoque e Tipo de Ajuste |${Estoque}| |${TpAjuste}|
    Selecionar Item Na Lista    ${BotaoLovEstoque}    ${Estoque}    ${Estoque}
    Preencher Campo    ${CampoTpAjuste}    ${TpAjuste}
    Send Keys    tab

Selecionar Produto |${CdProduto}| |${Justificativa}|
    Clicar no Campo e Preencher Informacao    ${CampoProduto}    ${BotaoLovProduto}    ${CdProduto}
    Preencher Campo    ${CampoJustificativa}    ${Justificativa}

Gerar Valor Custo Medio |${MsgConfirmaRefProduto}| |${NovoCustoMedio}| |${MsgValorGerado}| |${MsgSucesso}|
    Click no Item    ${BotaoGerarValorAjuste}
    Valida Mensagem    ${MensagemToast}    ${MsgConfirmaRefProduto}
    Click no Item    ${BotaoSim}
    Preencher Campo    ${CampoNovoCustoMedio}    ${NovoCustoMedio}
    Send Keys    tab
    Click no Item    ${BotaoConfirmar}
    Valida Mensagem    ${MensagemToast}    ${MsgValorGerado}
    Click no Item    ${BotaoSim}
    Valida Mensagem    ${MensagemToast}    ${MsgSucesso}
