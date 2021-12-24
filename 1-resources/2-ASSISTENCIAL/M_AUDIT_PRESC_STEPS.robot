##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                            ../../2-pages/2-ASSISTENCIAL/M_AUDIT_PRESC_PAGE.robot

*** Keywords ***
Alterar Data Inicial |${DtInicial}|
    Click no Item                                              ${btnDtInicio}
    Sleep    10
    Click no Item                                              ${selecionaAno}
    Click no Item                                              ${ano2020}
    Click no Item                                              ${selecionaDia}
    #Sleep    3
    #Preencher Campo                                         ${campoDtInicial}    ${DtInicial}
    #Send Keys                                              enter
Pesquisar Todos Principios Ativos
    Clicar Botao se estiver Visivel                        ${btnTipoAntimic}
    Clicar Botao se estiver Visivel                        ${btnTodos}
    Clicar Botao se estiver Visivel                        ${btnPesquisar}
Selecionar Produto Para Auditar
    Click no Item                                          ${btnCheckProduto}
    Clicar Botao se estiver Visivel                        ${btnAuditarProd}
    Click no Item                                          ${btnOk} 
Adicionar Registro |${Descricao}| |${ReavaliarEm}| |${PendenteDe}|
    Click no Item                                          ${btnAdicionar}
    Preencher Campo                                        ${campoEditorTexto}    ${Descricao}
    Send Keys                                              tab    3 seconds
    Send Keys                                              tab
    Preencher Campo                                        ${camposUndefined}    ${ReavaliarEm}
    Send Keys                                              tab
    Preencher Campo                                        ${camposUndefined}    ${PendenteDe}
    Send Keys                                              tab    3 seconds
    Send Keys                                              tab
    Send Keys                                              enter
Preencher Regras da Auditoria do Produto |${NrDias}| |${TpAcao}| |${Mensagem}|
    Preencher Campo                                        ${campoEditorTexto}    ${NrDias}
    Send Keys                                              tab
    Preencher Campo                                        ${camposUndefined}     ${TpAcao}
    Clicar no Campo e Preencher Informacao                 ${campoMensagem}       ${campoMensagem}    ${Mensagem}
Salvar Registro
    Click no Item                                          ${btnSalvar}
    Clicar Botao se estiver Visivel                        ${btnVoltar2}
    Click no Item                                          ${btnSalvar}
    Clicar Botao se estiver Visivel                        ${btnVoltar1}
    
    