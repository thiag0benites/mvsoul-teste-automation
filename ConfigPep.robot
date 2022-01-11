##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Configurações iniciais
##################################################################################################################################
*** Settings ***
### Gravação Vídeos de Evidências
Library           AutoRecorder
### Interagir com Browser
Library           SeleniumLibrary
Library           Collections
### Interagir com elemento por imagem
# Library         SikuliLibrary
# Library         ImageHorizonLibrary    ${CURDIR}/4-images
### Trabalha com stings
Library           String
Library           DateTime
### Bibliotecas Personalizadas
# Library           7-libraries/desktopLibrary/desktop.py
# Library           7-libraries/reportsLibrary/realcar.py
Library           7-libraries/geracaoDadosLibrary/pessoaFisica.py
Library           7-libraries/geracaoDadosLibrary/pessoaJuridica.py
# Library           7-libraries/reportsLibrary/realcar.py
### Banco de dados
Library           DatabaseLibrary
### Metodos Auxiliares para Automação Web
Resource          1-resources/auxiliar/Genericos.robot
### Biblioteca Faker para geração de dados aleatórios
# Library           FakerLibrary    locale=pt_BR    

*** Variables ***
${imagens}        ${CURDIR}\\4-images
${arquivos_upload}    ${CURDIR}\\6-files
### Configurações Sistema Operacional
${so}             windows
# ${so}           ubuntu
### Configurações do Browser
${browser}        chrome
${ambiente}       qarelease
# ${ambiente}       qaautomacao
# ${ambiente}     qadevelop

${url}          http://qarelease.mv.com.br:84/mvpep/
# ${url}          http://qadevelop.mv.com.br:83/mvpep/
# ${url}          http://sqa-app-lnx07.mvrec.local:84/mvpep/