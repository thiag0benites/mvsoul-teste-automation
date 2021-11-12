##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Setores de Exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_SETEXA_PAGE.robot
Resource    ../4-MATERIAIS/M_ENTRADA_NOVA_STEPS.robot

*** Variable ***

*** Keywords ***
Preencher Campos Obrigatorios
    Preencher Campo                     ${CampoNome}                 TESTE AUTOMACAO
    Selecionar Item Na Lista            ${BotaoLovTpStExame}         ANATOMIA                            ANATOMIA
    Preencher Campo                     ${CampoNrAtual}              555
    Selecionar Item Na Lista            ${BotaoLovCentroCusto}       ALMOXARIFADO                        ALMOXARIFADO
    Selecionar Item Na Lista            ${BotaoLovPrestador}         GEISHA ABREU SOARES DE PINA         GEISHA ABREU SOARES DE PINA

Validar Preenchimento dos Campos
    Validar Elemento Pelo Titulo        TESTE AUTOMACAO
    Validar Elemento Pelo Titulo        ANATOMIA
    Validar Elemento Pelo Titulo        555
    Validar Elemento Pelo Titulo        ALMOXARIFADO
    Validar Elemento Pelo Titulo        GEISHA ABREU SOARES DE PINA