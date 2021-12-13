##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Consulta de Solicitações de Banco de Sangue
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/C_SOLIC_SANGUE_PAGE.robot

*** Variable ***

*** Keywords ***
Realizar Consulta de Solicicao do Banco de Sangue |${CdSolicitacao}|
    Click Elemento por titulo    Procurar
    Preencher Campo    ${CampoCdSolicitacao}    ${CdSolicitacao}
    Click Elemento por titulo    Executar Consulta

Validar Consulta Realizada |${Paciente}| |${MedicoSolicitante}| |${Exame}|
    Validar Elemento Pelo Titulo    ${Paciente}
    Validar Elemento Pelo Titulo    ${MedicoSolicitante}
    Validar Elemento Pelo Titulo    ${Exame}
