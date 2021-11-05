##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Liberação e Interdição de Leitos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_INT_LEITOS_PAGE.robot


*** Variable ***

*** Keywords ***
Consultar Leito
    Preencher Campo                 ${CampoLeitoEdit}               300
    Click Elemento por titulo       Executar Consulta

Validar Informacaoes do Leito
    Validar Elemento Pelo Titulo    217
    Validar Elemento Pelo Titulo    AP 217
    Validar Elemento Pelo Titulo    21
    Validar Elemento Pelo Titulo    UNIDADE 2 - HOBRA
    Validar Elemento Pelo Titulo    APARTAMENTO

Alterar Campo Ocupacao |${Ocupacao}|
    Clicar no Campo e Preencher Informacao          ${CampoOcupacao}            ${ListaOcupacao}             ${Ocupacao}

### Keyword para retornar massa de dados para status inicial ###
Tela em Modo de Busca
    Click Elemento por titulo       Procurar
    Consultar Leito


