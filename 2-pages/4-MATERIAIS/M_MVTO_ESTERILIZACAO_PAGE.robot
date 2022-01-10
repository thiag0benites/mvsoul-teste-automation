##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Esterilização
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoLovMaqEsterilizadora}    xpath=//input[@id="inp:cdMaqEsterilizadora"]
${CampoLovTpEsterilizacao}    xpath=//input[@id="inp:parametros_cdTpEsterilizacao"]
${CampoLovTpInstrumental}    xpath=//input[@id="inp:parametros_cdTpInstrumental"]
${CbSelecSolic}    xpath=//button[@data-action="sn_selecionado_solic_change"]
${BotaoEnviarEsterilizacao}    xpath=//button[@id="SOLICITACAO_btnEnviar"]
${CbConfEsterilizacao}    xpath=//button[@data-column="ESTERILIZACAO_grdEsterilizaCompSolicitacaoCme_col6"]
${BotaoReceber}    xpath=//button[@id="ESTERILIZACAO_btnReceber"]
${BotaoIniciarEsterilizacao}    xpath=//button[@id="ESTERILIZACAO_btnIniciar"]
${CampoTesteFisico}    xpath=//input[@id="ESTERILIZACAO_snFisico_ac"]
${CampoTesteBiologico}    xpath=//input[@id="ESTERILIZACAO_snBiologico_ac"]
${CampoTesteQuimico}    xpath=//input[@id="ESTERILIZACAO_snQuimico_ac"]
${BotaoFinalizarTestes}    xpath=//button[@id="ESTERILIZACAO_btnFinalizarTeste"]
${CampoEdit}      xpath=//input[@class="editor-text mode-edit"]
${CampoLoteBiologico}    xpath=//div[@data-member="DS_LOTE_BIOLOGICO"]/..
${CampoObsBiologico}    xpath=//div[@data-member="DS_OBSERVACAO_BIOLOGICO"]/..
${CampoLoteQuimico}    xpath=//div[@data-member="DS_LOTE_QUIMICO"]/..
${CampoObsQuimico}    xpath=//div[@data-member="DS_OBSERVACAO_QUIMICO"]/..
${BotaoDispAsernal}    xpath=//button[@id="ESTERILIZACAO_btnDisponivelArsenal"]
${StatusAguardandoEste}    xpath=//div[@data-member="TP_SITUACAO"][@title="Aguardando Esterilização"]
