##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/EXCL_ATE_PAGE.robot

*** Variable ***

*** Keywords ***
Usuario devera preencher os campos |${numAtend}|,|${motivo}|
    Preencher campo                  ${atendimento}              ${numAtend} 
    Sleep                            1

    Click no Item                    ${CampoMotivo}
    Sleep                            1
    Preencher campo                  ${CampoMotivo}              ${motivo} 

Clicar no botao Excluir Atendimento
    Click no Item                   ${btnExcluirAtendimento}
Clicar no botao Sim
    Click no Item            ${btnSimNotifications}