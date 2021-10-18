##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do informar equipamentos no aviso da cirurgia
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/LoginPage.robot
Resource          ../../../2-pages/HomePage.robot
Resource          ../../../2-pages/Jornada do Paciente/InformarEquipamentosPage.robot
### Dados do Teste
# Resource          ../../bd/BancoDados.robot

*** Variable ***

*** Keywords ***
Clicar no botão Pesquisar
Informar o código do aviso de cirurgia
Clicar no botão executar 
Clicar no botão Equipamento
Selecionar um equipamento na lista 
Informar a quantidade solicitada 
Clicar no botão Salvar