##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Consulta de atendimento
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/1-ATENDIMENTO/CONS_ATE_PAGE.robot
### Pages utilizadas na Suite de teste

*** Variable ***

*** Keywords ***
Clicar Botao Pesquisar e Insere dados
    Click Element                                ${BtnNot} 
    Click Element                                ${BtnPesquisar} 
Validar Dados Pesquisa Atendimento |${PacNumero}| |${PacNome}| |${PacNas}| |${PacMae}| |${NumAtende}| |${Localizacao}|
    Validar Elemento Pelo Titulo    ${PacNumero}
    Validar Elemento Pelo Titulo    ${PacNome}
    Validar Elemento Pelo Titulo    ${PacNas}
    Validar Elemento Pelo Titulo    ${PacMae}
    Validar Elemento Pelo Titulo    ${NumAtende}
    Validar Elemento Pelo Titulo    ${Localizacao}
#|${dataIniAtend}||${dataFimAtend}||${Internacao}|