##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Conta do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/C_CONTAS_TESOURARIA_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Conta pelo Atendimento |${CdAtendimento}|
    Preencher Campo                     ${CampoCdAtendimento}           ${CdAtendimento}
    Click Elemento por titulo           Executar Consulta     

Validar Campos Apos Consulta |${Paciente}| |${Prestador}| |${Convenio}| |${TipoConta}| |${GrupoProcedimento}|
    Validar Elemento Pelo Titulo        ${Paciente}
    Validar Elemento Pelo Titulo        ${Prestador}
    Validar Elemento Pelo Titulo        ${Convenio}
    Validar Elemento Pelo Titulo        ${TipoConta}
    Validar Elemento Pelo Titulo        ${GrupoProcedimento}