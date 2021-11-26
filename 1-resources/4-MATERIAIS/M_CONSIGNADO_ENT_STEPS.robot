##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Entrada de Consignado
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_CONSIGNADO_ENT_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Tipo de Consignacao
    Preencher Campo                         ${CampoTpConsignacao}                    Permanente

Preencher Estoque e Gerar Aplicacao Direta
    Selecionar Item Na Lista                ${BotaoLovEstoque}                       ALMOXARIFADO            ALMOXARIFADO
    Preencher Campo                         ${CampoGerarAplDireta}                   Movimentação

Preencher Campos do Documento
    Preencher Campo                         ${CampoNrDocumento}                      123456
    Preencher Campo                         ${CampoNrSerie}                          1
    Selecionar Item Na Lista                ${BotaoLovFornecedor}                    3M                      3M
    Selecionar Item Na Lista                ${BotaoLovCFOP}                          ENTRADA CONSIGNAÇÃO     ENTRADA CONSIGNAÇÃO
    Preencher Campo                         ${CampoDtEmissao}                        25/11/2021
    Preencher Campo                         ${CampoDtEntrada}                        25/11/2021

Preencher Campos do Produto
    Clicar Item e Selecionar da Lista       ${CampoProduto}                ${BotaoLov}    ACICLOVIR CONSIGNADO    ACICLOVIR CONSIGNADO
    Validar Elemento Pelo Titulo            CAPSULA    
    Clicar no Campo e Preencher Informacao  ${CampoQtdEntrada}                       ${CampoEditavel}        1
    Clicar no Campo e Preencher Informacao  ${CampoVlUnitario}                       ${CampoEditavel}        100
    Click no Item                           ${CampoQtdEntrada}   
 
Preencher Campos do Lote
    Clicar no Campo e Preencher Informacao  ${CampoLote}                              ${CampoEditavel}        123
    Clicar no Campo e Preencher Informacao  ${CampoValidade}                          ${CampoValidadeEdit}    25/11/2030
    Clicar no Campo e Preencher Informacao  ${CampoQtdEntradaLote}                    ${CampoEditavel}        1

Concluir e Avaliar
    Click no Item                           ${BotaoConcluirAvaliar} 
    Valida Mensagem                         ${MensagemToast}                Registros gravados com sucesso
    Valida Mensagem                         ${MensagemToast2}               Atenção: Esta entrada de consignado está configurada para não permitir avaliação!
    Click no Item                           ${BotaoOK}
    Valida Mensagem                         ${MensagemToast}                Atenção: Movimentação Salva com Sucesso !
    Click no Item                           ${BotaoSim}
    Sleep  2
    Element Should Not Be Visible           ${CampoEstoquePreenchido}

#### Keyword para retornar massa de dados para status inicial do teste ####
Excluir Entrada do Consignado
    Click Elemento por titulo               Procurar
    Preencher Campo                         ${CampoNrDocumento}             123456            #${NrDocumento}
    Preencher Campo                         ${CampoNrSerie}                 1            #${Serie}
    Selecionar Item Na Lista                ${BotaoLovFornecedor}           3M        3M            #${Fornecedor}                     ${Fornecedor}
    Click Elemento por titulo               Executar Consulta
    Validar Elemento Pelo Titulo            ALMOXARIFADO
    Click no Item                           ${CampoNrDocumento}
    Click Elemento por titulo               Apagar
    Valida Mensagem                         ${MensagemToast}                Deseja excluir a entrada de consignado?
    Click no Item                           ${BotaoSim}
    Valida Mensagem                         ${MensagemToast}                Entrada de Consignado excluída com sucesso!
    Click no Item                           ${BotaoOK}