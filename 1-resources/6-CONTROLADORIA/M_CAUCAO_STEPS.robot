##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Registrar a entrada de um depósito de pagamento antecipado
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/M_CAUCAO_PAGE.robot

*** Keywords ***

Informe o Atendimento para o Recebimento Adiantado: Atendimento |${VlAtend}|
    Validar Acesso a Tela |Manutenção do Depósito de Pagamento Antecipado|
    Clicar no Campo e Preencher Informacao    ${BtAtend}    ${BtAtend}   ${VlAtend}
    Click no Item    ${BtExec}
Bloco Deposito Antecipado Informe: Data Deposito |${VlData}| Moeda |${VlMoeda}| Valor Deposito |${VlDin}|
    Clicar no Campo e Preencher Informacao    ${DtDepAnt}  ${CpIntData}  ${VlData}
    Click no Item    ${CpMoedaSelec}
    Click no Item    ${BtLovMoeda} 
    Clicar no Campo e Preencher Informacao   ${CpFilterMoeda}  ${CpFilterMoeda}  ${VlMoeda}
    Click no Item    ${BtFilterMoeda}
    Click no Item    ${BtOkMoeda}
    Clicar no Campo e Preencher Informacao   ${BtValDep}   ${BtInpValor}   ${VlDin}
Bloco de Dados do Deposito Antecipado Informe: Forma de Pagamento |${VlForPag}| Motivo Deposito |${VlMotPag}|    
    Click no Item    ${BtSelecFp}
    Clicar no Campo e Preencher Informacao    ${BtInputFp}    ${BtInputFp}    ${VlForPag}
    Click no Item    ${BtSelecMd}
    Click no Item    ${BtIntLove}
    Clicar no Campo e Preencher Informacao    ${BtInputMd}    ${BtInputMd}    ${VlMotPag}
    Click no Item    ${BtFilterMd}
    Click no Item    ${BtOkMotD}
Click no Botao Responsavel e Informe: |${VlResp}|
    Click no Item    ${BtSelecResp}
    Click no Item    ${BtintResp}
    Click no Item    ${BtGrList}
    Clicar no Campo e Preencher Informacao    ${BtInsResp}    ${BtInsResp}    ${VlResp}
    Click no Item    ${BtFilterRes}
    Click no Item    ${BtOkResp}
    Click no Item    ${BtConfirResp}
No Campo Caixa Informar: |${VlCaixa}|
    Click no Item    ${BtSelecCaixa}
    Click no Item    ${BtGdCaixa}
    Clicar no Campo e Preencher Informacao   ${BtIntCaixa}   ${BtIntCaixa}   ${VlCaixa}
    Click no Item    ${BtFilterCaixa}
    Click no Item    ${BtOkCaixa}
Clicar no botao Salvar |${MsgEsperada}|
    Click no Item    ${BtSalvaDp}
    sleep    2
    Valida Mensagem    ${MsgVerifi}    ${MsgEsperada}