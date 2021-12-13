##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Consulta Alta Hospitalar do Dia
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/ALT_DIA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Campo Data |${DataAlta}|
    Preencher Campo    ${Calendario}    ${DataAlta}

Click Botao Pesquisar
    Click no Item    ${BotaoConfirmar}

Validar Dados Pos Pesquisa |${NomePac}| |${MotAlta}| |${HrAlta}||${Procedimento}|
    Validar Elemento Pelo Titulo    ${NomePac}
    Validar Elemento Pelo Titulo    ${MotAlta}
    Validar Elemento Pelo Titulo    ${HrAlta}
    Validar Elemento Pelo Titulo    ${Procedimento}
