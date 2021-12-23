##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/2-ASSISTENCIAL/M_PREVIEW_LAUDO_PSSD_PAGE.robot

*** Keywords ***
Gerenciamento de exames |${Pedido}||${Frame}|
  
    Clicar no Campo e Preencher Informacao    ${CampoPedido}             ${CampoPedido}     ${Pedido}
    Click no Item                             ${BtnExecPesq}
    Click no Item                             ${BtnRevisar} 
    Click no Item                             ${BtnUltimosResultados}
    Click no Item                             ${SelecionaExame}
    Click no Item                             ${BtnVisualizar}
    Sleep    5
    ${AbasChrome}                             Get Window Handles    
    Switch Window                             ${AbasChrome}[1]
    Close Window
    Switch Window                             ${AbasChrome}[0]
    Seleciona frame                           ${IdIframe}                ${Frame}
    Click no Item                             ${BtnRetornar}
    Sleep    5
    #Validar nome paciente
    Should Not Be Empty                       ${CampoNomePaciente}