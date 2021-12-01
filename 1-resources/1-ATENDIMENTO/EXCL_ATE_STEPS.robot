##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/EXCL_ATE_PAGE.robot

*** Variable ***

*** Keywords ***
Usuário deverá preencher os campos |${numAtend}|,|${motivo}|
    Preencher campo                  ${atendimento}              ${numAtend} 
    Sleep                            2
    Click no Item                    ${CampoMotivo}
    Sleep                            2
    Preencher campo                  ${CampoMotivo}              ${motivo} 

Clicar no botão Excluir Atendimento
    Click no Item                   ${btnExcluirAtendimento}
