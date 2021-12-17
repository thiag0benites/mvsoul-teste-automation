##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Configurações iniciais
##################################################################################################################################
*** Settings ***
### Interagir com Browser
Library           Collections
Library           AutoRecorder
Library           SeleniumLibrary    #timeout=10
### Interagir com elemento por imagem
#Library           SikuliLibrary
#Library           ImageHorizonLibrary    ${CURDIR}/4-images
### Trabalha com strings
Library           String
Library           DateTime
### Banco de dados
Library           DatabaseLibrary
### Biblioteca Faker para geração de dados aleatórios
Library           FakerLibrary    locale=pt_BR
### Bibliotecas Personalizadas
Library           7-libraries/bdLibrary/dados.py
Library           7-libraries/desktopLibrary/desktop.py
Library           7-libraries/geracaoDadosLibrary/pessoaFisica.py
Library           7-libraries/geracaoDadosLibrary/pessoaJuridica.py
Library           7-libraries/reportsLibrary/realcar.py
Library           7-libraries/seleniumLibraryAuxiliar/seleniumAuxiliar.py
### Dados login
Resource          1-resources/dados/DadosTeste.robot
### Gerenciador de Dados
Resource          1-resources/bd/BancoDados.robot
### Metodos Genericos
Resource          1-resources/auxiliar/Genericos.robot
### Contexto dos testes
Resource          1-resources/ContextoSteps.robot
Resource          2-pages/LoginPage.robot
Resource          2-pages/HomePage.robot

*** Variables ***
${imagens}        ${CURDIR}\\4-images
${arquivos_upload}    ${CURDIR}\\6-files
### Configurações Sistema Operacional
${so}             windows
# ${so}           ubuntu
### Configurações do Browser
${browser}        chrome
${ambiente}       qadevelop
# ${ambiente}     qarelease
# ${ambiente}     qaautomacao
# ${url}          http://qarelease.mv.com.br:84/soul-mv/
${url}            http://qadevelop.mv.com.br:83/soul-mv/
# ${url}          http://sqa-app-lnx07.mvrec.local:84/soul-mv/
# ${grid}         http://192.168.0.242:4444/wd/hub
# ${grid}         http://localhost:4444/wd/hub

*** Keywords ***
### Cria Nova Sessão do browser
Nova sessao
    Log    *** Teste no Sistema Operacional: ${so}
    Log To Console    *** Teste no Sistema Operacional: ${so}
    # Open Browser    ${url}    ${browser}    None    ${grid}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    # Capture Page Screenshot
    Run Keyword If    '${ambiente}' == 'qadevelop'    Realiza Login    ${dadosLoginUsuarioQaDevelop}    ${dadosLoginSenhaQaDevelop}    ${dadosLoginEmpresaQaDevelop}
    Run Keyword If    '${ambiente}' == 'qarelease'    Realiza Login    ${dadosLoginUsuarioQaRelease}    ${dadosLoginSenhaQaRelease}    ${dadosLoginEmpresaQaRelease}
    Run Keyword If    '${ambiente}' == 'qaautomacao'    Realiza Login    ${dadosLoginUsuarioQaAutomacao}    ${dadosLoginSenhaQaAutomacao}    ${dadosLoginEmpresaQaAutomacao}
### Encerra sessão do browser

Encerra sessao
    Close Browser
