##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Laudo médico para emissão de AIH
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_LAUDO_AIH_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Codigo Paciente |${CdPaciente}| |${MsgConfirmarPaciente}|
    Preencher Campo    ${CampoCdPaciente}    ${CdPaciente}
    Send Keys    tab
    Valida Mensagem    ${MensagemToast}    ${MsgConfirmarPaciente}
    Click no Item    ${BotaoSim}

Validar Campos com Preenchimento Automatico |${Paciente}| |${Medico}| |${Procedimento}|
    Validar Elemento Pelo Titulo    ${Paciente}
    Validar Elemento Pelo Titulo    ${Medico}
    Validar Elemento Pelo Titulo    ${Procedimento}

Preencher Dados do Laudo |${DtEmissao}| |${EstSolicitante}| |${CaraterAtend}| |${Especialidade}| |${Prestador}| |${CIDSecundario}| |${CIDAssociado}| |${PrincipaisSinais}| |${JustInternacao}| |${ResultProvaDiag}| |${DiagInicial}|
    Preencher campo com data e hora    ${CampoDtEmissao}    %d/%m%y    00:00:00
    Send Keys    tab
    ${RecebeData}    Get Element Attribute    ${CampoDtEmissao}    title
    Altera massa de dados da "m_laudo_aih", linha "1", coluna "DtEmissao", valor "${RecebeData}"
    Selecionar Item Na Lista    ${BotaoLovEstSolicitante}    ${EstSolicitante}    ${EstSolicitante}
    Selecionar Item Na Lista    ${BotaoLovCaraterAtend}    ${CaraterAtend}    ${CaraterAtend}
    Selecionar Item Na Lista    ${BotaoLovEspecialidade}    ${Especialidade}    ${Especialidade}
    Selecionar Item Na Lista    ${BotaoLovPrestador}    ${Prestador}    ${Prestador}
    Selecionar Item Na Lista    ${BotaoLovCIDSecundario}    ${CIDSecundario}    ${CIDSecundario}
    Selecionar Item Na Lista    ${BotaoLovCIDAssociado}    ${CIDAssociado}    ${CIDAssociado}
    Preencher Campo    ${CampoPrincipaisSinais}    ${PrincipaisSinais}
    Preencher Campo    ${CampoJustInternacao}    ${JustInternacao}
    Preencher Campo    ${CampoResultProvaDiag}    ${ResultProvaDiag}
    Preencher Campo    ${CampoDiagInicial}    ${DiagInicial}

Imprimir Laudo
    Click no Item    ${Notificacao}
    Click no Item    ${BotaoImprimirLaudo}
    Click no Item    ${BotaoImprimir}
    Sleep    5
    Switch Window    NEW
    Sleep    5
    Capture Page Screenshot
