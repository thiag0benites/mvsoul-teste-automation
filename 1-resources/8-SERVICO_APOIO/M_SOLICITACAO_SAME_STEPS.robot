##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Passos da tela de Solicitação de Documentos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_SOLICITACAO_SAME_PAGE.robot
Resource    ../6-CONTROLADORIA/M_PREST_CONTAS_STEPS.robot

*** Variable ***

*** Keywords ***
Escolha o motivo da solicitacao
    Click no Item                    ${BtnMotivo}    
    Preencher Campo                  ${CampoMotivo}                    1
    Click no Item                    ${BtnFiltro} 
    Click no Item                    ${BtnOk}  

Escolha o destino da solicitacao
    Preencher Campo                  ${CampoSolicitacao}                111

Escolha a origem da solicitacao
    Preencher Campo                  ${CampoOrigem}                     1

Preencha o atendimento     
    Preencher Campo                  ${CampoPaciente}                   631909    
    Preencher Campo                  ${CampoAtendimento}                1000001747
    Click no Item                    ${BtnSim} 

Clicar em Salvar
    Click Elemento por titulo        Salvar