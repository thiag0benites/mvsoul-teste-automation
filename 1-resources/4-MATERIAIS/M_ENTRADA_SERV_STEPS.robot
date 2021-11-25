##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Entrada dos Serviços
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_ENTRADA_SERV_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Campo Tipo de Documento |${TpDocumento}|
    Selecionar Item Na Lista                ${BotaoLovTpDoc}                ${TpDocumento}                   ${TpDocumento}

Preencher Campo Oficina |${Oficina}|
    Selecionar Item Na Lista                ${BotaoLovOficina}              ${Oficina}                       ${Oficina}

Preencher Campos Obrigatorios |${NrDocumento}| |${Serie}| |${Fornecedor}| |${DtEmissao}| |${CFOP}| |${VlTotal}|
    Preencher Campo                         ${CampoNrDoc}                   ${NrDocumento}
    Preencher Campo                         ${CampoSerie}                   ${Serie}
    Selecionar Item Na Lista                ${BotaoLovFornecedor}           ${Fornecedor}                     ${Fornecedor}
    Preencher Campo                         ${CampoDtEmissao}               ${DtEmissao}
    Selecionar Item Na Lista                ${BotaoLovCFOP}                 ${CFOP}                           ${CFOP}
    Preencher Campo                         ${CampoVlTotal}                 ${VlTotal}

Clicar no Botao Servicos |${TelaServico}|
    Click no Item                           ${BotaoServicos} 
    Validar Acesso a Tela |${TelaServico}|

Preencher Dados do Servico |${Servico}| |${QtdEntrada}| |${VlUnitario}|
    Selecionar Item Na Lista                ${BotaoLov}                      ${Servico}                       ${Servico}
    Clicar no Campo e Preencher Informacao  ${CampoQtdEntrada}               ${CampoEditavel}                 ${QtdEntrada}
    Clicar no Campo e Preencher Informacao  ${CampoVlUnitario}               ${CampoEditavel}                 ${VlUnitario}
    Send Keys                               tab

Clicar Botao Rateio por Setor
    Click no Item                            ${BotaoRateio}

Preencher Informacoes de Rateio |${Setor}| |${TxRateio}|
    Selecionar Item Na Lista                ${BotaoLov}                      ${Setor}                         ${Setor}
    Clicar no Campo e Preencher Informacao  ${CampoTxRateio}                 ${CampoEditavel}                 ${TxRateio}
    Send Keys                               tab
    Click no Item                           ${BotaoConfirmar} 

Clicar Botao Sair |${NomeTela}|
    Click no Item                           ${BotaoSair}
    Validar Acesso a Tela |${NomeTela}|

Clicar Botao Duplicata |${TelaDuplicata}|    
    Click no Item                           ${BotaoDuplicata}
    Validar Acesso a Tela |${TelaDuplicata}|

Preencher Campos Duplicata |${Parcela}| |${DtVencimento}| |${VlParcela}|
    Preencher Campo                         ${CampoEditavel}                ${Parcela}
    Clicar no Campo e Preencher Informacao  ${CampoDtVenc}                  ${CampoDtVencEdit}                 ${DtVencimento}
    Clicar no Campo e Preencher Informacao  ${CampoVlParcela}               ${CampoEditavel}                   ${VlParcela}
    Click no Item                           ${BotaoConfirmarDuplicata}

Concluir e Avaliar |${MensagemSalvar}|
    Click no Item                           ${BotaoConcluirEAvaliar} 
    Valida Mensagem                         ${MensagemToast}                ${MensagemSalvar}
    Click no Item                           ${BotaoSim}
    Sleep  2
    Element Should Not Be Visible           ${CampoFornecedorPreenchido}

### Keyword para retorar massa de dados para status inicial do teste ###
Excluir Nota de Entrada Criada |${NrDocumento}| |${Serie}| |${Fornecedor}| |${MensagemExcluir}| |${MensagemExcluirSucesso}|
    Click Elemento por titulo               Procurar
    Preencher Campo                         ${CampoNrDoc}                   ${NrDocumento}
    Preencher Campo                         ${CampoSerie}                   ${Serie}
    Selecionar Item Na Lista                ${BotaoLovFornecedor}           ${Fornecedor}                     ${Fornecedor}
    Click Elemento por titulo               Executar Consulta
    Element Should Be Visible               ${CampoFornecedorPreenchido}
    Click Elemento por titulo               Apagar
    Valida Mensagem                         ${MensagemToast}                ${MensagemExcluir}
    Click no Item                           ${BotaoSim}
    Valida Mensagem                         ${MensagemToast}                ${MensagemExcluirSucesso}
    Click no Item                           ${BotaoOK} 
        

    