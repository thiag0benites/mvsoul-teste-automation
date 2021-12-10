##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Consulta APAC
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_CONSULTA_APAC_PAGE.robot
Resource    ../2-ASSISTENCIAL/M_ESPERA_COLETA_STEPS.robot

*** Variable ***

*** Keywords ***

Consultar por Prontuario |${Prontuario}|
    Preencher Campo                ${CampoProntuario}        ${Prontuario}
    Send Keys    TAB
Consultar por APAC |${APAC}|
    Preencher Campo                ${CampoAPAC}              ${APAC}
    Send Keys    TAB
Consultar por CPF |${CPF}|
    Preencher Campo                ${CampoCPF}                ${CPF}
    Send Keys    TAB


Validar Consulta Pelos Resultados |${Sexo}| |${Tipo}| |${Endereco}|
    Validar Elemento Pelo Titulo    ${Sexo}
    Validar Elemento Pelo Titulo    ${Tipo}
    Validar Elemento Pelo Titulo    ${Endereco}