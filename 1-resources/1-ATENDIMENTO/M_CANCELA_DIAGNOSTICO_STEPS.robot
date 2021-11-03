##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cancelamento do Diagnóstico de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_CANCELA_DIAGNOSTICO_PAGE.robot
Resource          ../../2-pages/1-ATENDIMENTO/ATE_COMPL_PAGE.robot
Resource          ../../1-resources/1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Variable ***

*** Keywords ***
####   Keyword para validar pré requisito do teste   ###
Confirmacao Diagnostico
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Diagnóstico do Atendimento>Confirmação"@nprint @las
    Validar Acesso a Tela |Diagnóstico do Atendimento|
    Preencher Campo Atendimento
    Validar Dados Apos Selecao do Atendimento
    Preencher Campos Obrigatórios
    Confirmar Diagnostico
    Click Elemento Por Titulo              Sair
###    ===========================================   ###

Preencher Atendimento
    Preencher Campo                         ${CampoAtendimento}             1000002161
    Send Keys                               Enter

Confirmar Cancelamento de Diagnostico
    Click no Item                           ${BotaoConfirmarDiag}                
    Click no Item                           ${BotaoConfSim} 
    Valida Mensagem                         ${MensagemToast}                Operação realizada com sucesso!


