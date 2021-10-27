##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo da Consulta de Cadastro do Paciente para a Jornada do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/ConsultarCadastroDePacientePage.robot
Resource          ../1-Cadastro de Paciente/CadastroDePacienteSteps.robot
### Dados do Teste
# Resource        ../../bd/BancoDados.robot
### Dados do Teste
# Resource        dados/DadosTeste.robot
# Library         SeleniumLibrary

*** Variable ***

*** Keywords ***
Configurar a tela para consulta de paciente [${status}]
    Acessar a tela "Atendimento>Internação>Configurações>Parâmetros"@nprint @nlas
    Wait Until Element Is Visible    ${idAbaAtendimento}    50
    Sleep    1
    Click Element    ${idAbaAtendimento}
    Sleep    2
    Seleciona Item Combobox    ${selectConsultaPaciente}   
    Sleep    2

Clicar no botao de Pesquisa
    Wait Until Element Is Visible    ${btnPesquisar}    50
    Sleep    1
    Click Element    ${btnPesquisar}
    Sleep    60

Pesquisar paciente pelo Nome |${nomePaciente}|${print}
    Wait Until Element Is Visible    ${inputPrimeiroNome}    240
    Preencher campo    ${inputPrimeiroNome}    ${nomePaciente}
    Sleep    1
    Clicar no botao [1-Pesquisar]||

Selecionar o nome na lista e confirmar
    Wait Until Element Is Visible    ${selectNomeLista}    20
    Sleep    1
    Click Element    ${selectNomeLista} 
    Sleep    1
    Clicar no botao [3-Confirmar]||
Clicar em Internar
    Wait Until Element Is Visible    ${btnInternar}    50
    Sleep    1
    Click Element    ${btnInternar}
    Sleep    60
Pre-condicao: Executar a tela de Registro de Internacao atraves de uma tela de consulta [${status}]
    Acessar a tela "Atendimento>Internação>Atendimento>Internação"@nprint @las

    ${validacao}    Elemento Visivel    id=inp:cdOriAte

    IF    ${validacao}
        Configurar a tela para consulta de paciente [${status}]
    END 

    Clicar no botao [Salvar]|${dados}[preIntMsgEsperada]|
    

