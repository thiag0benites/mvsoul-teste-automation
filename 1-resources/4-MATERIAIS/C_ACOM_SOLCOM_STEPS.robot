##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de  Acompanhamento de Solicitacoes de Compras
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/C_ACOM_SOLCOM_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Data Inicial |${DataIni}|
    Preencher Campo                     ${CampoDataIni}                     ${DataIni} 

Pesquisar e Validar Pesquisa |${Estoque}|
    Click no Item                       ${BotaoPesquisar}
    Validar Elemento pelo Titulo        ${Estoque}

