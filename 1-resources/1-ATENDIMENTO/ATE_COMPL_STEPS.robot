##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Diagnóstico de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/ATE_COMPL_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Campo Atendimento
    Preencher Campo                         ${CampoAtendimento}             1000002161
    Send Keys                               Enter
    Click no Item                           ${BotaoOk} 

Validar Dados Apos Selecao do Atendimento |${CdPaciente}| |${Paciente}| |${UnidInternacao}| |${Prestador}|
    Validar Elemento Pelo Titulo            ${CdPaciente}1308645
    Validar Elemento Pelo Titulo            ${Paciente}MARIA RITA
    Validar Elemento Pelo Titulo            ${UnidInternacao}CLINICA MEDICA HOBRA
    Validar Elemento Pelo Titulo            ${Prestador}GEISHA ABREU SOARES DE PINA

Preencher Campos Obrigatórios
    Preencher Campo                         ${CampoCID}                     R100
    Preencher Campo                         ${ListaTipDoenca}               Aguda
    Preencher Campo                         ${CampoTempDoenca}              1
    Preencher Campo                         ${ListaTempDoenca}              Dias
    Preencher Campo                         ${CampoResultado}               24
    Preencher Campo                         ${CampoDescricao}               Teste Descrição

Confirmar Diagnostico
    Click no Item                           ${BotaoConfirmarDiag}
    Valida Mensagem                         ${MensagemToast}                Processo concluído com sucesso !
    Click no Item                           ${BotaoOk} 
    Valida Mensagem                         ${MensagemToast}                Registros gravados com sucesso             
    Click Elemento Por Titulo               Sair      

####   Keyword para retornar massa de dados a ponto incial do teste   ###
Cancelamento Diagnostico
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Diagnóstico do Atendimento>Cancelamento"@nprint @no
    Validar Acesso a Tela |Cancelamento de Diagnóstico do Atendimento|
    Preencher Atendimento
    Validar Dados Apos Selecao do Atendimento
    Confirmar Cancelamento de Diagnostico


