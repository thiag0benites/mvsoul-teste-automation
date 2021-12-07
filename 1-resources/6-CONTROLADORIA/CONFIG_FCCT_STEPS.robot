##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de  Configuração do Sistema Contábil
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/CONFIG_FCCT_PAGE.robot

*** Variable ***

*** Keywords ***

Testar Botoes do Bloco Financeiro
    Wait Until Element Is Visible               ${CheckImportaMovTranCaixa}         200
    Click no Item                               ${AbaContabilidade} 

    Click no Item                               ${CheckImportaMovTranCaixa}
    Click no Item                               ${CheckImportaMovTranCaixa}
    Click no Item                               ${CheckContrLanPassHon}
    Click no Item                               ${CheckContrLanPassHon}
    Click no Item                               ${CheckContrAntAbRec}
    Click no Item                               ${CheckContrAntAbRec}

Testar Botoes do Bloco Caixa  
    Click no Item                               ${CheckImportaMvDepAnt}
    Click no Item                               ${CheckImportaMvDepAnt}
    Click no Item                               ${CheckEntrDepPagAntec}
    Click no Item                               ${CheckEntrDepPagAntec}

Testar Botoes do Bloco Estoque  
    Click no Item                               ${CheckImpEmprEsto}
    Click no Item                               ${CheckImpEmprEsto}
    Click no Item                               ${CheckImpManEst}
    Click no Item                               ${CheckImpManEst}

Selecionar Filtro Relatorio |${FiltroRelatorio}|
    Preencher Campo                             ${FiltroRelat}                  ${FiltroRelatorio}

Testar Botoes do Bloco Faturamento  
    Click no Item                               ${CheckCCEspCanForComp}
    Click no Item                               ${CheckCCEspCanForComp}
    Click no Item                               ${CheckCadClasContAut}
    Click no Item                               ${CheckCadClasContAut}
    Click no Item                               ${CheckUsConCadReg}
    Click no Item                               ${CheckUsConCadReg}

Testar Botoes do Bloco Contabilidade |${MensagemAlerta}|
    Click no Item                               ${CheckPermiteLancAtivo}
    Click no Item                               ${CheckPermiteLancAtivo}
    Click no Item                               ${CheckPermitApropCenCus}
    Click no Item                               ${CheckPermitApropCenCus}
    Click no Item                               ${ChekImpedMovSet}
    Click no Item                               ${ChekImpedMovSet}
    Click no Item                               ${CheckPermitCriac}
    Valida Mensagem                             ${MsgAlertaMov}                 ${MensagemAlerta}
    Click no Item                               ${BotaoOkAlert}

Validar Lotes Integrados |${LotesIntegrados}|
    Preencher Campo                             ${FiltValidLot}                 ${LotesIntegrados}

Alterar Campos Contabil do Faturamento |${CargaFamiliar}| |${RetencaoJudicial}| |${TipoAtendimento}| |${OrigAtend}| |${TipoAcomodacao}| |${TipoContaEnvio}| |${GrupoProcedimento}| |${GrupoFaturamento}| |${Procedimento}| |${HorarioEspecial}| |${TipDesconto}| |${PlanoContas}| |${ItemPres}| 
    Click no Item                               ${DivPrioridadeCarga}
    Preencher Campo                             ${Prioridade}                   ${CargaFamiliar}
    Send Keys   Down
    Preencher Campo                             ${Prioridade}                   ${RetencaoJudicial}
    Send Keys   Down
    Preencher Campo                             ${Prioridade}                   ${TipoAtendimento}
    Send Keys   Down
    Preencher Campo                             ${Prioridade}                   ${OrigAtend}
    Send Keys   Down
    Preencher Campo                             ${Prioridade}                   ${TipoAcomodacao}
    Send Keys   Down
    Preencher Campo                             ${Prioridade}                   ${TipoContaEnvio}
    Send Keys   Down
    Preencher Campo                             ${Prioridade}                   ${GrupoProcedimento}
    Send Keys   Down
    Preencher Campo                             ${Prioridade}                   ${GrupoFaturamento}
    Send Keys   Down
    Preencher Campo                             ${Prioridade}                   ${Procedimento}
    Send Keys   Down
    Preencher Campo                             ${Prioridade}                   ${HorarioEspecial}
    Send Keys   Down
    Preencher Campo                             ${Prioridade}                   ${TipDesconto}
    Send Keys   Down
    Preencher Campo                             ${Prioridade}                   ${PlanoContas}
    Send Keys   Down
    Preencher Campo                             ${Prioridade}                   ${ItemPres}

Salvar Registro |${MsgSalvo}|
    Click Elemento por titulo           Salvar
    Valida Mensagem                     ${RegistroSalvo}                    ${MsgSalvo}