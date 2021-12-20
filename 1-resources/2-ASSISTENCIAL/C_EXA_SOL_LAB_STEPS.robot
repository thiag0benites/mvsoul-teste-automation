##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Consulta de Exames Solicitados
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/C_EXA_SOL_LAB_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Solicitacao de Exames |${Data}|
    Preencher Campo                ${CampoData}          ${Data}
    Click Elemento por titulo      Executar Consulta

Validar Consulta Realizada |${SetorSolic}| |${Prestador}| |${Paciente}| |${Exame1}| |${Exame2}| |${Pedido1}| |${Pedido2}|
    Validar Elemento Pelo Titulo    ${SetorSolic}
    Validar Elemento Pelo Titulo    ${Prestador}
    Validar Elemento Pelo Titulo    ${Paciente}
    Validar Elemento Pelo Titulo    ${Exame1}
    Validar Elemento Pelo Titulo    ${Exame2}
    Validar Elemento Pelo Titulo    ${Pedido1}
    Validar Elemento Pelo Titulo    ${Pedido2}