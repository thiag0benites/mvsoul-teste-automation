##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Orçamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_ORCA_HOCA_PAGE.robot
Resource    ../8-SERVICO_APOIO/DEVDOCPRO_STEPS.robot

*** Variable ***

*** Keywords ***
Preencher Dados do Orcamento
    Selecionar Item Na Lista            ${BotaoLovAtendimento}    SUZANA CARLA BARROS NOGUEIRA DE PINHO        SUZANA CARLA BARROS NOGUEIRA DE PINHO
    Preencher Campo                     ${CampoDtInicial}         12/12/2021
    Preencher Campo                     ${CampoDtFinal}           12/12/2023

Preencher Campos Aba Procedimento
    Click no Item                       ${AbaProcedimento} 
    Selecionar Item Na Lista            ${BotaoLovEdit}           BIÓPSIA HEPÁTICA (PERCUTÂNEA/LAPAROSCÓPICA)        BIÓPSIA HEPÁTICA (PERCUTÂNEA/LAPAROSCÓPICA)
    Send Keys                           tab   
    Validar Elemento Pelo Titulo        BIÓPSIA HEPÁTICA (PERCUTÂNEA/LAPAROSCÓPICA)      

Preencher Campos Aba Custos
    Click no Item                             ${AbaCusto} 
    Selecionar Item Na Lista                  ${BotaoLovEdit}          CUSTO 04        CUSTO 04
    Clicar no Campo e Preencher Informacao    ${CampoUnidade}          ${CampoEdit}    1
    Clicar no Campo e Preencher Informacao    ${CampoValorUnitario}    ${CampoEdit}    10
    Clicar no Campo e Preencher Informacao    ${CampoQuantidade}       ${CampoEdit}    1
    Send Keys                                 tab

Validar Informacao Aba Impostos
    Click no Item                             ${AbaImposto}
    Selecionar Item Na Lista                  ${BotaoLovEdit}          ISS 3,87% LC 128/08 SIMPLES        ISS 3,87% LC 128/08 SIMPLES

Salvar Orcamento
    Click Elemento por titulo                 Salvar
    Wait Until Element Is Visible             ${CampoCdOrcamento}      20
    ${RecebeOrcamento}              Get Element Attribute    ${CampoCdOrcamento}    title      
    Altera massa de dados da "m_orca_hoca", linha "1", coluna "CdOrcamento", valor "${RecebeOrcamento}"
    


