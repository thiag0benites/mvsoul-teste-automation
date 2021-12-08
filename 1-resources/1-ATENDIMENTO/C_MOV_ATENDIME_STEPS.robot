##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Consulta de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/C_MOV_ATENDIME_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Atendimentos
    Send Keys   F8
    Sleep   1

Visualizar Dados da Movimentacao
    Click no Item                   ${CampoDadosMov}
    Sleep   2

Validar Pesquisa |${TipoMov}|
    Validar Elemento pelo Titulo    ${TipoMov}
    Sleep   2


