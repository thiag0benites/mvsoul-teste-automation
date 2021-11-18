##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Solicitação de Serviços
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_SOLICITACAO_SERV_PAGE.robot

*** Variable ***

*** Keywords ***
Validar Campos Preenchidos ao Acessar Tela
    Validar Item                        ${CampoDataDesabilitado}
    Validar Item                        ${CampoHoraDesabilitado}
    Validar Item                        ${CampoSolicitantePreenchido}



    