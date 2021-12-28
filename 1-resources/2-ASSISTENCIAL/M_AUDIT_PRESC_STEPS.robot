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
Pesquisar Todos Principios Ativos
    Clicar Botao se estiver Visivel                        ${btnTipoAntimic}
    Clicar Botao se estiver Visivel                        ${btnTodos}
    Clicar Botao se estiver Visivel                        ${btnPesquisar}
Selecionar Produto Para Auditar
    Validar Elemento Pelo Titulo                           11191
    Click no Item                                          ${btnCheckProduto}
    Clicar Botao se estiver Visivel                        ${btnAuditarProd}
    Click no Item                                          ${btnOk} 
Adicionar Registro |${Descricao}| |${ReavaliarEm}| |${PendenteDe}|
    Sleep    15
    Click no Item                                          ${btnAdicionar}
    Preencher Campo                                        ${campoEditorTexto}    ${Descricao}
    Send Keys                                              tab
    Sleep     2
    Send Keys                                              tab
    Preencher Campo                                        ${camposUndefined}    ${ReavaliarEm}
    Send Keys                                              tab
    Preencher Campo                                        ${camposUndefined}    ${PendenteDe}
    Send Keys                                              tab
    Sleep     2
    Send Keys                                              tab
    ${numeroLinha}    Get Element Attribute    xpath=//div[@data-member="DS_TP_AUDIT_PSIH"][@title='${Descricao}']    data-row
    Click no Item                              xpath=//button[@data-member="BT_REGRA"][@data-row='${numeroLinha}']
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
    
    