##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Diagnóstico de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/ATE_COMPL_PAGE.robot
Resource          ../../1-resources/1-ATENDIMENTO/M_CANCELA_DIAGNOSTICO_STEPS.robot

*** Variable ***

*** Keywords ***
Preencher Campo Atendimento |${Atendimento}|
    Preencher Campo                         ${CampoAtendimento}             ${Atendimento}
    Send Keys                               Enter
    Click no Item                           ${BotaoOk} 

Validar Dados Apos Selecao do Atendimento |${CdPaciente}| |${Paciente}| |${UnidInternacao}| |${Prestador}|
    Validar Elemento Pelo Titulo            ${CdPaciente}
    Validar Elemento Pelo Titulo            ${Paciente}
    Validar Elemento Pelo Titulo            ${UnidInternacao}
    Validar Elemento Pelo Titulo            ${Prestador}

Preencher Campos Obrigatórios |${CID}| |${TpDoenca}| |${TempoDoenca}| |${DiasDoenca}| |${Resultado}| |${Descricao}|
    Preencher Campo                         ${CampoCID}                     ${CID}
    Preencher Campo                         ${ListaTipDoenca}               ${TpDoenca}
    Preencher Campo                         ${CampoTempDoenca}              ${TempoDoenca}
    Preencher Campo                         ${ListaTempDoenca}              ${DiasDoenca}
    Preencher Campo                         ${CampoResultado}               ${Resultado}
    Preencher Campo                         ${CampoDescricao}               ${Descricao}

Confirmar Diagnostico |${MensagemRecebidaProcesso}| |${MensagemRecebidaConfirmacao}| 
    Click no Item                           ${BotaoConfirmarDiag}
    Validar Informacao Item                 ${MensagemToast}                ${MensagemRecebidaProcesso}
    Click no Item                           ${BotaoOk} 
    Valida Mensagem                         ${MensagemToast}                ${MensagemRecebidaConfirmacao}            
    Click Elemento Por Titulo               Sair      

####   Keyword para retornar massa de dados a ponto incial do teste   ###
Cancelamento Diagnostico
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Diagnóstico do Atendimento>Cancelamento"@nprint @no
    Validar Acesso a Tela |Cancelamento de Diagnóstico do Atendimento|
    Preencher Atendimento |1000002161|
    Validar Dados Apos Selecao do Atendimento |1308645| |MARIA RITA| |CLINICA MEDICA HOBRA| |GEISHA ABREU SOARES DE PINA|
    Confirmar Cancelamento de Diagnostico |Operação realizada com sucesso!|


