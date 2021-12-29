##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                            ../../2-pages/6-CONTROLADORIA/O_IMPORTACAO_PAGE.robot

*** Keywords ***
Selecionar no Campo [Tipo de Importacao] |${TipoDeImportacao_2}|
    Preencher Campo                                        ${campoTipoImp}    ${TipoDeImportacao_2}
Selecionar no Campo [Plano Contabil] o Plano Contabil |${PlanoContabil}|
    Clicar Botao se estiver Visivel                        ${btnPlano}
    Clicar no Campo e Preencher Informacao                 ${campoFiltro}    ${campoFiltro}    ${PlanoContabil}
Marcar o Check Box "Agrupar Lancamentos Por Cod. Reduzido?" |${TipoDeImportacao}|
    Preencher Campo                                        ${campoTipoImp}    ${TipoDeImportacao}
    Clicar Botao se estiver Visivel                        ${btnAgrupLancCodRed}
Marcar o Check Box "Utilizar Sequencial do Plano de Contas?" |${TipoDeImportacao_2}|
    Preencher Campo                                        ${campoTipoImp}    ${TipoDeImportacao_2}
    Clicar Botao se estiver Visivel                        ${btnUtilSeq}
Marcar o Check Box "Gerar Contas Com o Mesmo Cod Reduzido do Plano"
    Clicar Botao se estiver Visivel                        ${btnGerarContas}
Marcar o Check Box "Unico Cod. de Movimento?" |${TipoDeImportacao}|
    Preencher Campo                                        ${campoTipoImp}    ${TipoDeImportacao}
    Clicar Botao se estiver Visivel                        ${btnUnicoCodMov}
Marcar o Check Box "Considerar Data de Referencia Como Data de Lancamento?"
    Clicar Botao se estiver Visivel                        ${btnConsiderarDtRef}
#Selecionar Atraves do Botão <Procurar Arquivos> o Arquivo a Ser Importado
Marcar o Check Box "Importar Somente se Nao Houver Divergencias de Debitos e Creditos"
    Clicar Botao se estiver Visivel                        ${btnImportarDiverg}
Clicar no Botao <Importar> Para Iniciar o Processo de Importacao
    Clicar Botao se estiver Visivel                        ${btnImportar}