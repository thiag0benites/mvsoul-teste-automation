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
    Wait Until Element Is Visible           ${TituloPrincipal}              250
    Element Should Contain                  ${TituloPrincipal}              Revisão de Cirurgias

Realizar Consulta Por Aviso
    Wait Until Element Is Visible           ${CampoAviso}                   20
    Click Element                           ${CampoAviso}            
    Wait Until Element Is Visible           ${CampoAvisoEditavel}           20
    SeleniumLibrary.Input Text              ${CampoAvisoEditavel}           44298   
    Click Element                           ${BotaoExecConsulta} 

Validar Campos de Preenchimento Automatico
    Wait Until Element Is Visible           ${CampoDataAviso}               20
    Element Should Contain                  ${CampoDataAviso}               13/10/2021
    Wait Until Element Is Visible           ${CampoStatusAviso}             20
    Element Should Contain                  ${CampoStatusAviso}             Checagem
    Wait Until Element Is Visible           ${CampoSuspensaoAviso}          20
    Element Should Contain                  ${CampoSuspensaoAviso}          Não
    Wait Until Element Is Visible           ${CampoCentroCirurgico}         20
    Element Should Contain                  ${CampoCentroCirurgico}         HOBRA CENTRO CIRURGICO
    Wait Until Element Is Visible           ${CampoSalaCirurgica}           20
    Element Should Contain                  ${CampoSalaCirurgica}           HOBRA SALA 01
    Validar Elemento Pelo Titulo            1312609
    Validar Elemento Pelo Titulo            PACIENTE TESTE RPA
    Wait Until Element Is Visible           ${CampoProcFatura}              20
    Element Should Contain                  ${CampoProcFatura}              31003079
    Wait Until Element Is Visible           ${CampoDescCirurgia}            20
    Element Should Contain                  ${CampoDescCirurgia}            APENDICECTOMIA
    Wait Until Element Is Visible           ${CampoConvenio}                20
    Element Should Contain                  ${CampoConvenio}                PARTICULAR BRASILIA

Validar Acesso e Conteudo Das Abas
    Click Element                           ${AbaPrestadores}  
    Exibicao Prestadores                    13                              IGOR SOUZA RAMOS                 CIRURGIAO               APENDICECTOMIA
    Click Element                           ${AbaEquipamentos}  
    Exibição Material                       47                              MONITOR CARDIACO (HORA)                     0
    Click Element                           ${AbaCaixasCir}  
    Wait Until Element Is Visible           ${ValidAbaCaixasCir}            20
    Element Should Be Visible               ${ValidAbaCaixasCir}
    Click Element                           ${AbaProdutos}  
    Wait Until Element Is Visible           ${ValidAbaProduto}              20
    Element Should Be Visible               ${ValidAbaProduto}
    Click Element                           ${AbaImagem}  
    Wait Until Element Is Visible           ${ValidAbaImagem}               20
    Element Should Be Visible               ${ValidAbaImagem}
    Click Element                           ${AbaLaboratorio}  
    Wait Until Element Is Visible           ${ValidAbaLab}                  20
    Element Should Be Visible               ${ValidAbaLab}
    Click Element                           ${AbaSangue}  
    Wait Until Element Is Visible           ${ValidAbaSangue}               20
    Element Should Be Visible               ${ValidAbaSangue}     
    Click Element                           ${AbaObservacao}  
    Wait Until Element Is Visible           ${ValidAbaObs}                  20
    Element Should Be Visible               ${ValidAbaObs} 
    Click Element                           ${AbaConfCanc}  
    Validar Elemento Pelo Titulo            ANDREVASCONCELOS
    Click Element                           ${AbaHistAlteracoes}  
    Wait Until Element Is Visible           ${ValidAbaHistAlter}            20
    Element Should Be Visible               ${ValidAbaHistAlter} 
    Click Element                           ${AbaHistEvolucao}      
    Wait Until Element Is Visible           ${ValidAbaHistEvol}             20
    Element Should Be Visible               ${ValidAbaHistEvol}  
    Click Element                           ${AbaHistEmail}  
    Wait Until Element Is Visible           ${ValidAbaHistEmails}           20
    Element Should Be Visible               ${ValidAbaHistEmails} 
   
Exibicao Prestadores
    [Arguments]             ${CdPrestador}          ${NmPrestador}              ${Especialidade}            ${Cirurgia}
    Validar Elemento Pelo Titulo          ${CdPrestador}
    Validar Elemento Pelo Titulo          ${NmPrestador}
    Validar Elemento Pelo Titulo          ${Especialidade}
    Validar Elemento Pelo Titulo          ${Cirurgia}  

Exibição Material
    [Arguments]             ${CdMat}                ${Desc}                     ${Quant}
    Validar Elemento Pelo Titulo          ${CdMat}
    Validar Elemento Pelo Titulo          ${Desc}
    Validar Elemento Pelo Titulo          ${Quant}


