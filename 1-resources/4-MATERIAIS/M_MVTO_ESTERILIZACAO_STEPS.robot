##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Esterilização
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_MVTO_ESTERILIZACAO_PAGE.robot

*** Variable ***

*** Keywords ***
Enviar para Esterilizacao |${MaqEsterilizadora}| |${TpEsterilizacao}| |${TpInstrumental}|   
    Preencher Campo    ${CampoLovMaqEsterilizadora}    ${MaqEsterilizadora}   
    Preencher Campo    ${CampoLovTpEsterilizacao}    ${TpEsterilizacao}
    Preencher Campo    ${CampoLovTpInstrumental}    ${TpInstrumental}
    ${PegaLinha}        Get Element Attribute    ${StatusAguardandoEste}    data-row
    Click no Item    xpath=//button[@data-action="sn_selecionado_solic_change"][@data-row="${PegaLinha}"]
    Click no Item    ${BotaoEnviarEsterilizacao}

Confirmar Esterilizacao |${MsgConfEsterilizacao}|
    Click no Item    ${CbConfEsterilizacao}
    Click no Item    ${BotaoReceber}
    ContextoSteps.Valida Mensagem    ${MensagemToast}    ${MsgConfEsterilizacao}
    Click no Item    ${BotaoSim}

Iniciar Esterilizacao |${MsgIniciarEsterilizacao}|
    Click no Item    ${BotaoIniciarEsterilizacao}
    ContextoSteps.Valida Mensagem    ${MensagemToast}    ${MsgIniciarEsterilizacao}
    Click no Item    ${BotaoSim}

Finalizar Testes |${TesteFisico}| |${TesteBiologico}| |${TesteQuimico}| |${LoteBiologico}| |${ObsBiologico}| |${LoteQuimico}| |${ObsQuimico}| |${MsgFinalizarTestes}| |${MsgImprimirEtiqueta}| |${NaoConforme}|
    Preencher Campo    ${CampoTesteFisico}    ${TesteFisico}
    Preencher Campo    ${CampoTesteBiologico}    ${TesteBiologico}
    Preencher Campo    ${CampoTesteQuimico}    ${TesteQuimico}
    Sleep  2
    Clicar no Campo e Preencher Informacao    ${CampoLoteBiologico}    ${CampoEdit}    ${LoteBiologico}
    Sleep  2
    Clicar no Campo e Preencher Informacao    ${CampoObsBiologico}    ${CampoEdit}    ${ObsBiologico}
    Sleep  2
    Clicar no Campo e Preencher Informacao    ${CampoLoteQuimico}    ${CampoEdit}    ${LoteQuimico}
    Sleep  2
    Clicar no Campo e Preencher Informacao    ${CampoObsQuimico}    ${CampoEdit}    ${ObsQuimico}   
    Click no Item    ${BotaoFinalizarTestes}
    Genericos.Valida Mensagem    ${MensagemToast}    ${MsgFinalizarTestes}
    Click no Item    ${BotaoSim}
    Genericos.Valida Mensagem    ${MensagemToast}    ${MsgImprimirEtiqueta}
    Click no Item    ${BotaoNao}

Disponibilizar Para Arsenal |${MsgDispArsenal}| |${MsgConsulta}|
    Click no Item    ${BotaoDispAsernal}
    Genericos.Valida Mensagem    ${MensagemToast}    ${MsgDispArsenal}
    Click no Item    ${BotaoSim}
    Genericos.Valida Mensagem    ${MensagemToast}    ${MsgConsulta}
