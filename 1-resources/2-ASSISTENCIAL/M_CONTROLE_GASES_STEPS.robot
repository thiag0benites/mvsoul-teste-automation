##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Movimentação de Aparelhos / Gases
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_CONTROLE_GASES_PAGE.robot

*** Variable ***

*** Keywords ***
Realizar Pesquisa de Atendimento
    Wait Until Element Is Visible               ${BotaoPesquisar}               20
    Click Element                               ${BotaoPesquisar}
    Preencher Campo                             ${CampoPaciente}                1312609
    Click Elemento por titulo                   Executar Consulta
    Validar Elemento Pelo Titulo                PACIENTE TESTE RPA
    Wait Until Element Is Visible               ${BotaoConfirmar}               20
    Click Element                               ${BotaoConfirmar}
    Validar Elemento Pelo Titulo                PACIENTE TESTE RPA

Validar Tabela Descricao Do Procedimento
    Wait Until Element Is Visible               ${ValidAtendimento}             20
    Click Element                               ${ValidAtendimento}
    Validar Elemento Pelo Titulo                ATORVASTATINA 80 MG (POR COMPRIMIDO)
    Validar Elemento Pelo Titulo                0604360045

Preencher Campos Com Dados Do Procedimento
    Wait Until Element Is Visible               ${CampoDataInicial}             20
    Click Element                               ${CampoDataInicial}
    Preencher Campo                             ${CampoDataInicialEditavel}     21/10/2021
