##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_ALERTA_PROTOCOLO_PAGE.robot
Resource          M_USUUNID_STEPS.robot

*** Variable ***

*** Keywords ***
Preencher Dados Protocolo |${Descricao}| |${MensagemAlerta}| |${EtapaProtocolo}| |${Ordem}|
    Wait Until Element Is Visible    ${CampoDescricao}    180
    Preencher Campo    ${CampoDescricao}    ${Descricao}
    Marcar Checkbox |${CbFinalizarAfericao}|
    Marcar Checkbox |${CbFinalizarDocumento}|
    Marcar Checkbox |${CbHistoricoEnfermagem}|
    Marcar Checkbox |${CbLaudarExame}|
    Marcar Checkbox |${CbFinalizarDiagnostico}|
    Marcar Checkbox |${CbAvaliacaoScore}|
    Marcar Checkbox |${CbTransferirLeito}|
    Marcar Checkbox |${CbPrescricao}|
    Preencher campo Alerta    ${CampoMensagemAlerta}    ${MensagemAlerta}
    Clicar Item e Selecionar da Lista    ${CampoEtapaProtocolo}    ${BotaoLovEdit}    ${EtapaProtocolo}    ${EtapaProtocolo}
    Clicar no Campo e Preencher Informacao    ${CampoOrdem}    ${CampoOrdemEdit}    ${Ordem}

Preencher Dados Alerta |${Sigla}| |${Criticidade}| |${CriterioEvento}| |${TpEntrada}| |${Documento}|
    Marcar Checkbox |${CbHabilitaVisualizacao}|
    Preencher Campo    ${CampoSigla}    ${Sigla}
    Click no Item    ${BotaoCor}
    Click no Item    ${CorVermelho}
    Selecionar Item Na Lista    ${BotaoLovCriticidade}    ${Criticidade}    ${Criticidade}
    Selecionar Item Na Lista    ${BotaoLovCriterioEvento}    ${CriterioEvento}    ${CriterioEvento}
    Preencher Campo    ${CampoTpEntrada}    ${TpEntrada}
    Send Keys    tab
    Selecionar Item Na Lista    ${BotaoLovDocumento}    ${Documento}    ${Documento}

Salvar Protocolo
    Click no Item    ${CampoDescricao}
    Click Elemento por titulo    Salvar
    Wait Until Element Is Visible    ${CampoCdProtocolo}    20
    ${RecebeCdProtocolo}    Get Element Attribute    ${CampoCdProtocolo}    title
    Altera massa de dados da "m_alerta_protocolo", linha "1", coluna "CdProtocolo", valor "${RecebeCdProtocolo}"

Preencher campo Alerta
    [Arguments]    ${elemento}    ${valor}
    Wait Until Element Is Visible    ${elemento}    180
    Wait Until Element Is Enabled    ${elemento}    5
    Sleep    1
    Wait Until Element Is Enabled    ${elemento}    5
    Sleep    0.3
    Input Text    ${elemento}    ${valor}
    FOR    ${i}    IN RANGE    1    11
        Sleep    0.5
        ${textoAtual}    Get Element Attribute    ${elemento}    value
        # ${textoAtual}    Get Text    ${elemento}
        IF    "${textoAtual}" == "${valor}"
            Exit For Loop
        ELSE IF    "${textoAtual}" != "${valor}"
            IF    "${i}" == "${10}"
                Log To Console    *** Falha ao tentar preencher o campo ${elemento}
                Log    *** Falha ao tentar preencher o campo ${elemento}
                Realcar Elemento Relatorio    ${elemento}
                Capture Page Screenshot
                Fail    *** Falha ao tentar preencher o campo ${elemento}
            ELSE
                Input Text    ${elemento}    ${valor}
            END
        END
    END
### Keyword para retornar massa de dados para stataus inicial do teste ###

Alterar Dados Cadastrados |${Descricao}| |${Sigla}|
    Preencher Campo    ${CampoDescricao}    ${Descricao}
    Preencher Campo    ${CampoSigla}    ${Sigla}
    Click Elemento por titulo    Salvar
    Wait Until Element Is Visible    ${MensagemToast}    20
