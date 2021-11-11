##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/CON_ATE_PAGE.robot

*** Variable ***

*** Keywords ***
Usuário deverá preencher o campo <Dt. Ini. Atend.>|${dataIniAtend}|,|${dataFimAtend}|,|${Internacao}|
    Preencher campo                  ${dataInicio}              ${dataIniAtend} 
    Sleep                            2
    Preencher campo                  ${dataFim}                 ${dataFimAtend} 
    Sleep                            2
    Preencher campo                  ${inputInternacao}         ${Internacao}
