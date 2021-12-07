##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de    Configuração do Sistema Contábil
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/CONFIG_FCCT_PAGE.robot

*** Variable ***

*** Keywords ***
Testar Botoes do Bloco Financeiro
    Wait Until Element Is Visible    ${CheckImportaMovTranCaixa}    200
    Click no Item    ${AbaContabilidade}
    Click no Item    ${CheckImportaMovTranCaixa}
    Click no Item    ${CheckContrLanPassHon}
    Click no Item    ${CheckContrAntAbRec}

Testar Botoes do Bloco Caixa
    Click no Item    ${CheckImportaMvDepAnt}
    Click no Item    ${CheckEntrDepPagAntec}

Testar Botoes do Bloco Estoque
    Click no Item    ${CheckImpEmprEsto}
    Click no Item    ${CheckImpManEst}

Selecionar Filtro Relatorio |${FiltroRelatorio}|
    Preencher Campo    ${FiltroRelat}    ${FiltroRelatorio}

Testar Botoes do Bloco Faturamento
    Click no Item    ${CheckCCEspCanForComp}
    Click no Item    ${CheckCadClasContAut}
    Click no Item    ${CheckUsConCadReg}

Testar Botoes do Bloco Contabilidade |${MensagemAlerta}|
    Click no Item    ${CheckPermiteLancAtivo}
    Click no Item    ${CheckPermitApropCenCus}
    Click no Item    ${ChekImpedMovSet}
    Click no Item    ${CheckPermitCriac}
    Valida Mensagem    ${MsgAlertaMov}    ${MensagemAlerta}
    Click no Item    ${BotaoOkAlert}

Validar Lotes Integrados |${LotesIntegrados}|
    Preencher Campo    ${FiltValidLot}    ${LotesIntegrados}

Alterar Campos Contabil do Faturamento |${CargaFamiliar}| |${RetencaoJudicial}| |${TipoAtendimento}| |${OrigAtend}| |${TipoAcomodacao}| |${TipoContaEnvio}| |${GrupoProcedimento}| |${GrupoFaturamento}| |${Procedimento}| |${HorarioEspecial}| |${TipDesconto}| |${PlanoContas}| |${ItemPres}|
    Click no Item    ${DivPrioridadeCarga}
    Preencher Campo    ${Prioridade}    ${CargaFamiliar}
    Send Keys    Down
    Preencher Campo    ${Prioridade}    ${RetencaoJudicial}
    Send Keys    Down
    Preencher Campo    ${Prioridade}    ${TipoAtendimento}
    Send Keys    Down
    Preencher Campo    ${Prioridade}    ${OrigAtend}
    Send Keys    Down
    Preencher Campo    ${Prioridade}    ${TipoAcomodacao}
    Send Keys    Down
    Preencher Campo    ${Prioridade}    ${TipoContaEnvio}
    Send Keys    Down
    Preencher Campo    ${Prioridade}    ${GrupoProcedimento}
    Send Keys    Down
    Preencher Campo    ${Prioridade}    ${GrupoFaturamento}
    Send Keys    Down
    Preencher Campo    ${Prioridade}    ${Procedimento}
    Send Keys    Down
    Preencher Campo    ${Prioridade}    ${HorarioEspecial}
    Send Keys    Down
    Preencher Campo    ${Prioridade}    ${TipDesconto}
    Send Keys    Down
    Preencher Campo    ${Prioridade}    ${PlanoContas}
    Send Keys    Down
    Preencher Campo    ${Prioridade}    ${ItemPres}

Salvar Registro |${MsgSalvo}|
    Click Elemento por titulo    Salvar
    Valida Mensagem    ${RegistroSalvo}    ${MsgSalvo}

Testar Bloco Principal
    Wait Until Element Is Visible    ${CheckImportaMovTranCaixa}    200
    Click no Item    ${AbaGlosas}
    Click no Item    ${ContGlosas}

Testar Bloco Eventos de Contabilizacao de Glosas
    Click no Item    ${ContPartGlosa}
    Click no Item    ${ContEventosRec}
    Click no Item    ${IndicaContraP}
    Click no Item    ${ContEventGl}

Testar Bloco Sistema de Auditoria de Glosas
    Click no Item    ${RateiaGlosa}

Preencher Eventos de Contabilizacao |${ContCred}| |${ContCred}| |${ContCaixa}|
    Wait Until Element Is Visible    ${CheckImportaMovTranCaixa}    200
    Click no Item    ${AbaPacotes}
    Preencher Campo    ${CampoContaCre}    ${ContCred}
    Preencher Campo    ${CampoContaPag}    ${ContCred}
    Preencher Campo    ${CampoContaCaix}    ${ContCaixa}

Preencher Tempo de Expiracao |${Tela}| |${Tempo}|
    Wait Until Element Is Visible    ${CheckImportaMovTranCaixa}    200
    Click no Item    ${AbaExpTelas}
    Selecionar Item Na Lista    ${CampoTelaEx}    ${Tela}    ${Tela}
    Click no Item    ${CampoTempoDes}
    Preencher Campo    ${CampoTempo}    ${Tempo}

Consultar Historico de Alteracoes
    Wait Until Element Is Visible    ${CheckImportaMovTranCaixa}    200
    Click no Item    ${AbaHistorico}
    Click no Item    ${btnPesquisar}
    Click no Item    ${btnExecute}
