##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Produtos do Estoque
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_TRANSF_SOLICITACAO_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Solicitacoes |${Estoque}| |${DtInicial}|
    Wait Until Element Is Visible      ${BotaoLovEstoque}                  120  
    Selecionar Item Na Lista           ${BotaoLovEstoque}                  ${Estoque}              ${Estoque}
    Preencher Campo                    ${CampoDtInicial}                   ${DtInicial}
    Click no Item                      ${BotaoPesquisar}

Realizar Transferencia
    Click no Item                      ${CbTransferir} 
    Click no Item                      ${BotaoTransfSolic} 

Preencher Estoque Destino |${EstoqueNovo}|
    Selecionar Item Na Lista           ${BotaoLovEstoqueNovo}              ${EstoqueNovo}          ${EstoqueNovo}
    Click no Item                      ${BotaoConfirmar}

Validar Transferencia Estoque |${MensagemSucesso}| |${MensagemImprimir}|
    Valida Mensagem                    ${MensagemToast}                    ${MensagemSucesso}
    Click no Item                      ${BotaoOK} 
    Valida Mensagem                    ${MensagemToast}                    ${MensagemImprimir}
    Click no Item                      ${BotaoSim} 

Validar Impressao Relatorio |${SaidaRelatorio}| 
    Preencher Campo                    ${CampoSaidaRel}                    ${SaidaRelatorio}
    Click no Item                      ${BotaoImprimir} 
    Sleep   2
    Switch Window                      NEW
    Sleep   3  
    Capture Page Screenshot
