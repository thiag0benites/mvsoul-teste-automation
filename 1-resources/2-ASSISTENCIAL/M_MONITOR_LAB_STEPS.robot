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
    Click no item                             ${CampoExame}
    Click no Item                             ${BtnSelecionar}
    Sleep    5
    ${NumAtendimento}    Get Element Attribute    ${CampoAtendimento}     title
    Altera massa de dados da "m_monitor_lab", linha "1", coluna "Atendimento", valor "${NumAtendimento}"