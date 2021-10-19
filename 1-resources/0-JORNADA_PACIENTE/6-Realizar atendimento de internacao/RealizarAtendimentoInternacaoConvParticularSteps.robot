##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do realizar atendimento de internação para a Jornada do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/Jornada do Paciente/RealizarAtendimentoInternacaoConvParticularPage.robot
### Dados do Teste
# Resource          ../../bd/BancoDados.robot

### Dados do Teste
# Resource    dados/DadosTeste.robot
# Library    SeleniumLibrary

*** Variable ***

*** Keywords ***
Informar o código do Paciente 

Selecionar nome do Paciente   
Clicar no botão Internar 
Clicar no botão Sim 

Clicar no botão OK