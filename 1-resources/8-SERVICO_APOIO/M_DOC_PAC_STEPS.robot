##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Protocolos de Matricula no Same
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_DOC_PAC_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Same |${SAME}|
    Preencher Campo    ${CampoSame}    ${SAME}
    Click no Item    ${BotaoAcessar}
    Sleep    3

Preencher Matricula e Pesquisar |${Matricula}|
    Preencher Campo    ${CampoMatricula}    ${Matricula}
    Click Elemento por titulo    Executar Consulta

Imprimir e validar Relatorio
    Click no Item    ${BotaoImpEt}
    Click no Item    ${BotaoImprimirFim}
    Sleep    6
    Switch Window    NEW
    Sleep    3
    Capture Page Screenshot
