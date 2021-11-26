##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Entrada de Consignado
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_CONSIGNADO_ENT_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Tipo de Consignacao |${TpConsignacao}|
    Preencher Campo                         ${CampoTpConsignacao}                    ${TpConsignacao}

Preencher Estoque e Gerar Aplicacao Direta |${Estoque}| |${GerarAplicacaoDireta}|
    Selecionar Item Na Lista                ${BotaoLovEstoque}                       ${Estoque}               ${Estoque}
    Preencher Campo                         ${CampoGerarAplDireta}                   ${GerarAplicacaoDireta}

Preencher Campos do Documento |${NrDocumento}| |${NrSerie}| |${Fornecedor}| |${CFOP}| |${DtEmissao}| |${DtEntrada}|
    Preencher Campo                         ${CampoNrDocumento}                      ${NrDocumento}
    Preencher Campo                         ${CampoNrSerie}                          ${NrSerie}
    Selecionar Item Na Lista                ${BotaoLovFornecedor}                    ${Fornecedor}            ${Fornecedor}          
    Selecionar Item Na Lista                ${BotaoLovCFOP}                          ${CFOP}                  ${CFOP} 
    Preencher Campo                         ${CampoDtEmissao}                        ${DtEmissao}
    Preencher Campo                         ${CampoDtEntrada}                        ${DtEntrada}

Preencher Campos do Produto |${Produto}| |${Unidade}| |${QtdEntrada}| |${VlUnitario}|
    Clicar Item e Selecionar da Lista       ${CampoProduto}                ${BotaoLov}    ${Produto}         ${Produto}
    Validar Elemento Pelo Titulo            ${Unidade}    
    Clicar no Campo e Preencher Informacao  ${CampoQtdEntrada}                       ${CampoEditavel}        ${QtdEntrada}
    Clicar no Campo e Preencher Informacao  ${CampoVlUnitario}                       ${CampoEditavel}        ${VlUnitario}
    Click no Item                           ${CampoQtdEntrada}   
 
Preencher Campos do Lote |${Lote}| |${Validade}| |${QtdEntradaLote}|
    Clicar no Campo e Preencher Informacao  ${CampoLote}                              ${CampoEditavel}        ${Lote}
    Clicar no Campo e Preencher Informacao  ${CampoValidade}                          ${CampoValidadeEdit}    ${Validade}
    Clicar no Campo e Preencher Informacao  ${CampoQtdEntradaLote}                    ${CampoEditavel}        ${QtdEntradaLote}

Concluir e Avaliar |${MensagemSucesso}| |${MensagemAlerta}| |${MensagemSucessoFinal}|
    Click no Item                           ${BotaoConcluirAvaliar} 
    Valida Mensagem                         ${MensagemToast}                ${MensagemSucesso}
    Valida Mensagem                         ${MensagemToast2}               ${MensagemAlerta}
    Click no Item                           ${BotaoOK}
    Valida Mensagem                         ${MensagemToast}                ${MensagemSucessoFinal}
    Click no Item                           ${BotaoSim}
    Sleep  2
    Element Should Not Be Visible           ${CampoEstoquePreenchido}

#### Keyword para retornar massa de dados para status inicial do teste ####
Excluir Entrada do Consignado |${NrDocumento}| |${NrSerie}| |${Fornecedor}| |${Estoque}| |${MensagemExcluir}| |${MensagemExcluirSucesso}|
    Click Elemento por titulo               Procurar
    Preencher Campo                         ${CampoNrDocumento}             ${NrDocumento}
    Preencher Campo                         ${CampoNrSerie}                 ${NrSerie}
    Selecionar Item Na Lista                ${BotaoLovFornecedor}           ${Fornecedor}                     ${Fornecedor}
    Click Elemento por titulo               Executar Consulta
    Validar Elemento Pelo Titulo            ${Estoque}
    Click no Item                           ${CampoNrDocumento}
    Click Elemento por titulo               Apagar
    Valida Mensagem                         ${MensagemToast}                ${MensagemExcluir}
    Click no Item                           ${BotaoSim}
    Valida Mensagem                         ${MensagemToast}                ${MensagemExcluirSucesso}
    Click no Item                           ${BotaoOK}