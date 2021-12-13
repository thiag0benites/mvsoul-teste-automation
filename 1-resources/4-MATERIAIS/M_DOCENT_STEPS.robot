##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Documento de Entrada
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_DOCENT_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados do Documento |${Fornecedor}| |${NrDocumento}| |${Serie}| |${TpDocumento}| |${DtEmissao}| |${DtEntrada}| |${CFOP}| |${VlTotal}|
    Selecionar Item Na Lista                    ${BotaoLovFornecedor}                ${Fornecedor}                ${Fornecedor}
    Preencher Campo                             ${CampoNrDocumento}                  ${NrDocumento}
    Preencher Campo                             ${CampoSerie}                        ${Serie}
    Selecionar Item Na Lista                    ${BotaoLovTpDocumento}               ${TpDocumento}               ${TpDocumento}
    Preencher Campo                             ${CampoDtEmissao}                    ${DtEmissao}
    Preencher Campo                             ${CampoDtEntrada}                    ${DtEntrada}
    Selecionar Item Na Lista                    ${BotaoLovCFOP}                      ${CFOP}                      ${CFOP}
    Preencher Campo                             ${CampoVlTotal}                      ${VlTotal}

Preencher Dados da Duplicata |${MsgTotalProduto}| |${Parcela}| |${DtVencimento}| |${VlParcela}|
    Click no Item                               ${CampoParcela}
    Valida Mensagem                             ${MensagemToast}                     ${MsgTotalProduto}
    Click no Item                               ${BotaoOK} 
    Preencher Campo                             ${CampoEditavel}                     ${Parcela}
    Clicar no Campo e Preencher Informacao      ${CampoDtVencimento}                 ${CampoDtVencimentoEdit}     ${DtVencimento}
    Clicar no Campo e Preencher Informacao      ${CampoVlParcela}                    ${CampoEditavel}             ${VlParcela}

Salvar Documento de Entrada |${MsgSucesso}| |${MsgLimpaTela}| |${Fornecedor}|
    Click Elemento por titulo                   Salvar
    Valida Mensagem                             ${MensagemToast}                     ${MsgSucesso}
    Valida Mensagem                             ${MensagemSalvar}                    ${MsgLimpaTela}
    Click no Item                               ${BotaoNao}
    Wait Until Element Is Visible               xpath=//span[contains(@title, "${Fornecedor}")]                 20

### Keyword para retornar massa de dados para status inicial do teste ###
Excluir Documento de Entrada |${MsgExcluir}| |${MsgSucesso}|
    Click no Item                               ${CampoFornecedor}
    Click Elemento por titulo                   Apagar
    Valida Mensagem                             ${MensagemToast}                     ${MsgExcluir}
    Click no Item                               ${BotaoSim}
    Valida Mensagem                             ${MensagemToast}                     ${MsgSucesso}

    
    


