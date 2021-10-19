##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Revisão de Cirurgias
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/C_REVISAO_CIRURGIA_PAGE.robot

*** Variable ***

*** Keywords ***
Validar Acesso a Tela
    Wait Until Element Is Visible           ${TituloPrincipal}              80
    Element Should Contain                  ${TituloPrincipal}              Revisão de Cirurgias

Realizar Consulta Por Aviso
    Wait Until Element Is Visible           ${CampoAviso}                   20
    Click Element                           ${CampoAviso}            
    SeleniumLibrary.Input Text              ${CampoAvisoEditavel}           44271   
    Click Element                           ${BotaoExecConsulta} 

Validar Campos de Preenchimento Automatico
    Wait Until Element Is Visible           ${CampoDataAviso}               20
    Element Should Contain                  ${CampoDataAviso}               01/10/2021
    Wait Until Element Is Visible           ${CampoStatusAviso}             20
    Element Should Contain                  ${CampoStatusAviso}             Realizada
    Wait Until Element Is Visible           ${CampoSuspensaoAviso}          20
    Element Should Contain                  ${CampoSuspensaoAviso}          Não
    Wait Until Element Is Visible           ${CampoCentroCirurgico}         20
    Element Should Contain                  ${CampoCentroCirurgico}         CENTRO CIRURGICO 03
    Wait Until Element Is Visible           ${CampoSalaCirurgica}           20
    Element Should Contain                  ${CampoSalaCirurgica}           SALA_01
    Wait Until Element Is Visible           ${CampoCdPaciente}              20
    Wait Until Element Is Visible           ${CampoNmPaciente}              20
    Wait Until Element Is Visible           ${CampoProcFatura}              20
    Element Should Contain                  ${CampoProcFatura}              10000013
    Wait Until Element Is Visible           ${CampoDescCirurgia}            20
    Element Should Contain                  ${CampoDescCirurgia}            ABDOMINOPLASTIA
    Wait Until Element Is Visible           ${CampoConvenio}                20
    Element Should Contain                  ${CampoConvenio}                PARTICULAR BRASILIA

Validar Acesso Das Abas
    Click Element                           ${AbaPrestadores}  
    Sleep  2
    Click Element                           ${AbaEquipamentos}  
    Sleep  2
    Click Element                           ${AbaCaixasCir}  
    Sleep  2
    Click Element                           ${AbaProdutos}  
    Sleep  2
    Click Element                           ${AbaImagem}  
    Sleep  2
    Click Element                           ${AbaLaboratorio}  
    Sleep  2
    Click Element                           ${AbaSangue}  
    Sleep  2
    Click Element                           ${AbaObservacao}  
    Sleep  2
    Click Element                           ${AbaConfCanc}  
    Sleep  2
    Click Element                           ${AbaHistAlteracoes}  
    Sleep  2
    Click Element                           ${AbaHistEvolucao}  
    Sleep  2
    Click Element                           ${AbaHistEmail}  
    Sleep  2
    


