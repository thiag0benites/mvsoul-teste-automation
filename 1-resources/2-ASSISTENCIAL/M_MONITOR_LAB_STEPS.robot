##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/2-ASSISTENCIAL/M_MONITOR_LAB_PAGE.robot

*** Keywords ***
Gerenciamento de exames |${DataEntrega}|
    Clicar no Campo e Preencher Informacao    ${CampoDataEntrega}     ${CampoDataEntrega}     ${DataEntrega}
    Click no Item                             ${BtnExecConsulta}    
    Click no Item                             ${BtnSelecionar}
    Sleep    5
    Should Not Be Empty                       ${CampoAtendimento}            
  
   