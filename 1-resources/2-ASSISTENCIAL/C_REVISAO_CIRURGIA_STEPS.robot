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
    Wait Until Element Is Visible           ${TituloPrincipal}              100
    Element Should Contain                  ${TituloPrincipal}              Revisão de Cirurgias

Realizar Consulta Por Aviso
    Wait Until Element Is Visible           ${CampoAviso}                   20
    Click Element                           ${CampoAviso}            
    Wait Until Element Is Visible           ${CampoAvisoEditavel}           20
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

Validar Acesso e Conteudo Das Abas
    Click Element                           ${AbaPrestadores}  
    Exibicao Prestadores                    5739                            GEISHA ABREU SOARES DE PINA                 CIRURGIAO               ABDOMINOPLASTIA
    Exibicao Prestadores                    100008                          LARISSA OLIVEIRA                            ANESTESISTA             ABDOMINOPLASTIA
    Exibicao Prestadores                    7894                            ABDON KATTER FILHO                          CIRURGIAO               ABDOMINOPLASTIA
    Exibicao Prestadores                    14                              LUCIANE FELIX DA SILVA                      CONSULTOR               ABDOMINOPLASTIA
    Click Element                           ${AbaEquipamentos}  
    Exibição Material                       47                              MONITOR CARDIACO (HORA)                     0
    Exibição Material                       50                              MONITOR DE PRESSAO INVASIVA                 1
    Click Element                           ${AbaCaixasCir}  
    Exibição Material                       17195                           CAIXA BÁSICA GRANDE                         1
    Click Element                           ${AbaProdutos}  
    Exibição Produtos                       17202           ACETIL          ALMOXARIFADO            COMPRIMIDO          1           Normal
    Click Element                           ${AbaImagem}  
    Exibicao Exames                         551                   BIOPSIA OU CITOLOGIA (ENDOSCOPIA ALTA OU BAIXA)       ENDOSCOPIA - HOBRA      1
    Click Element                           ${AbaLaboratorio}  
    Exibicao Exames                         2197                            HEMOGRAMA                        LAB DE ANALISES CLÍNICAS 2         1
    Click Element                           ${AbaSangue}  
    Exibição Material                       31                              CONCENTRADO DE PLAQUETAS                    1
    Click Element                           ${AbaObservacao}  
    Wait Until Element Is Visible           ${ValidAbaObs}                  20
    Element Should Be Visible               ${ValidAbaObs} 
    Click Element                           ${AbaConfCanc}  
    Prestador Confirmacao                   GPINA
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
    Wait Until Element Is Visible       xpath=//*[@title="${CdPrestador}"]              20
    Element Should Be Visible           xpath=//*[@title="${CdPrestador}"]
    Wait Until Element Is Visible       xpath=//div[@title="${NmPrestador}"]            20
    Element Should Be Visible           xpath=//div[@title="${NmPrestador}"]
    Wait Until Element Is Visible       xpath=//div[@title="${Especialidade}"]          20
    Element Should Be Visible           xpath=//div[@title="${Especialidade}"]
    Wait Until Element Is Visible       xpath=//div[@title="${Cirurgia}"]               20
    Element Should Be Visible           xpath=//div[@title="${Cirurgia}"]

Exibição Material
    [Arguments]             ${CdMat}                ${Desc}                     ${Quant}
    Wait Until Element Is Visible       xpath=//*[@title="${CdMat}"]                    20
    Element Should Be Visible           xpath=//*[@title="${CdMat}"]
    Wait Until Element Is Visible       xpath=//div[@title="${Desc}"]                   20
    Element Should Be Visible           xpath=//div[@title="${Desc}"]
    Wait Until Element Is Visible       xpath=//div[@title="${Desc}"]/../../div[3]/div[@title="${Quant}"]                  20
    Element Should Be Visible           xpath=//div[@title="${Desc}"]/../../div[3]/div[@title="${Quant}"] 

Exibição Produtos
    [Arguments]     ${CdProd}      ${Desc}      ${Estoque}         ${Unidade}           ${Quant}        ${TpProd}
    Wait Until Element Is Visible       xpath=//*[@title="${CdProd}"]                   20    
    Element Should Be Visible           xpath=//*[@title="${CdProd}"]
    Wait Until Element Is Visible       xpath=//div[@title="${Desc}"]                   20  
    Element Should Be Visible           xpath=//div[@title="${Desc}"]
    Wait Until Element Is Visible       xpath=//div[@title="${Estoque}"]                20  
    Element Should Be Visible           xpath=//div[@title="${Estoque}"]
    Wait Until Element Is Visible       xpath=//div[@title="${Unidade}"]                20  
    Element Should Be Visible           xpath=//div[@title="${Unidade}"]          
    Wait Until Element Is Visible       xpath=//div[@title="${Desc}"]/../../div[6]/div[@title="${Quant}"]                  20    
    Element Should Be Visible           xpath=//div[@title="${Desc}"]/../../div[6]/div[@title="${Quant}"]     
    Wait Until Element Is Visible       xpath=//div[@title="${TpProd}"]                 20  
    Element Should Be Visible           xpath=//div[@title="${TpProd}"]   

Exibicao Exames
    [Arguments]             ${CdExame}             ${Desc}                      ${SetorExec}                ${Quant}
    Wait Until Element Is Visible       xpath=//*[@title="${CdExame}"]                  20
    Element Should Be Visible           xpath=//*[@title="${CdExame}"]
    Wait Until Element Is Visible       xpath=//div[@title="${Desc}"]                   20
    Element Should Be Visible           xpath=//div[@title="${Desc}"]
    Wait Until Element Is Visible       xpath=//div[@title="${SetorExec}"]              20
    Element Should Be Visible           xpath=//div[@title="${SetorExec}"]
    Wait Until Element Is Visible       xpath=//div[@title="${Desc}"]/../../div[4]/div[@title="${Quant}"]                  20
    Element Should Be Visible           xpath=//div[@title="${Desc}"]/../../div[4]/div[@title="${Quant}"]  

Prestador Confirmacao
    [Arguments]             ${Prestador}
    Wait Until Element Is Visible       xpath=//*[@title="${Prestador}"]                20   
    Element Should Be Visible           xpath=//*[@title="${Prestador}"]
