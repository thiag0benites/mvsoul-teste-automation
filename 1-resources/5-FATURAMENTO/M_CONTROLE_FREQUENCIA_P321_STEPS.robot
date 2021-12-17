##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/5-FATURAMENTO/M_CONTROLE_FREQUENCIA_P321_PAGE.robot

*** Keywords ***
Controle de frequencia individual
    Wait Until Element Is Visible             ${CampoMesAno}                 180
    #Preencher campo Mês/Ano :122021
    Clicar no Campo e Preencher Informacao    ${CampoMesAno}                 ${CampoMesAno}                 082021
    #Preencher campo prontuario 173
    Clicar no Campo e Preencher Informacao    ${CampoProntuario}             ${CampoProntuario}             1143853
    Send Keys    enter
    #Preencher tipo de procedimento: 28
    Clicar no Campo e Preencher Informacao    ${CampoAtendimento}            ${CampoAtendimento}            28
    #Preencher Campo prestador: 750
    Clicar no Campo e Preencher Informacao    ${CampoPrestador}              ${CampoPrestador}              750
    #PReencher Data incial do tratamento
    Clicar no Campo e Preencher Informacao    ${DataInicial}                 ${DataInicial}                 12082021
    #Preencher Data final do tratamento
    Clicar no Campo e Preencher Informacao    ${DataFinal}                   ${DataFinal}                   18082021
    #Preencher Campo Procedimento principal: 0304010367
    Clicar no Campo e Preencher Informacao    ${CodPRocedimentoPrincipal}    ${CodPRocedimentoPrincipal}    0304010367
    Send Keys    enter
    #Clicar no Botao Salvar
    Click no Item                             ${btnSalvar}
    #CLicar no botão Imprimir ficha de controle
    Click no Item                             ${BtnImprimirFichaControle}    
    #Clicar no botão imprimir
    #Click no Item                             ${BtnImprimir}
    #Sleep    5
    #${AbasChrome}=    Get Window Handles
    #Switch Window    ${AbasChrome}[1]
    #Close Window
    #Switch Window     ${AbasChrome}[0]
    
    #Fechar aba com PDF
    #CLicar no botão sair
    Click no Item    ${BtnSair}
    #Validação
    Should Not Be Empty    ${CampoNomePaciente}
    