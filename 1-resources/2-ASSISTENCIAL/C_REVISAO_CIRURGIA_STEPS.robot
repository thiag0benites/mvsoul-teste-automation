##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Revisão de Cirurgias
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/C_REVISAO_CIRURGIA_PAGE.robot

*** Variable ***

*** Keywords ***
Realizar Consulta Por Aviso
    Wait Until Element Is Visible           ${CampoAviso}                   20
    Click Element                           ${CampoAviso}     
    Preencher Campo                         ${CampoAvisoEditavel}           44298 
    Click Element                           ${BotaoExecConsulta} 

Validar Campos de Preenchimento Automatico
    Validar Informacao Item                 ${CampoDataAviso}               13/10/2021
    Validar Informacao Item                 ${CampoStatusAviso}             Checagem
    Validar Informacao Item                 ${CampoSuspensaoAviso}          Não
    Validar Informacao Item                 ${CampoCentroCirurgico}         HOBRA CENTRO CIRURGICO
    Validar Informacao Item                 ${CampoSalaCirurgica}           HOBRA SALA 01
    Validar Elemento Pelo Titulo            1312609
    Validar Elemento Pelo Titulo            PACIENTE TESTE RPA
    Validar Informacao Item                 ${CampoProcFatura}              31003079
    Validar Informacao Item                 ${CampoDescCirurgia}            APENDICECTOMIA
    Validar Informacao Item                 ${CampoConvenio}                PARTICULAR BRASILIA

Validar Acesso e Conteudo Das Abas
    Click Element                           ${AbaPrestadores}  
    Exibicao Prestadores                    13                              IGOR SOUZA RAMOS                 CIRURGIAO               APENDICECTOMIA
    Click Element                           ${AbaEquipamentos}  
    Exibição Material                       47                              MONITOR CARDIACO (HORA)                     0
    Click Element                           ${AbaCaixasCir}  
    Validar Item                            ${ValidAbaCaixasCir}
    Click Element                           ${AbaProdutos}  
    Validar Item                            ${ValidAbaProduto}
    Click Element                           ${AbaImagem}  
    Validar Item                            ${ValidAbaImagem}
    Click Element                           ${AbaLaboratorio}  
    Validar Item                            ${ValidAbaLab}
    Click Element                           ${AbaSangue}  
    Validar Item                            ${ValidAbaSangue}     
    Click Element                           ${AbaObservacao}  
    Validar Item                            ${ValidAbaObs} 
    Click Element                           ${AbaConfCanc}  
    Validar Elemento Pelo Titulo            ANDREVASCONCELOS
    Click Element                           ${AbaHistAlteracoes}  
    Validar Item                            ${ValidAbaHistAlter} 
    Click Element                           ${AbaHistEvolucao}      
    Validar Item                            ${ValidAbaHistEvol}  
    Click Element                           ${AbaHistEmail}  
    Validar Item                            ${ValidAbaHistEmails} 
   
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