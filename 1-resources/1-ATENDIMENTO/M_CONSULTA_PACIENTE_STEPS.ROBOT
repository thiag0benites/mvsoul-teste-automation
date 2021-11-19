##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Mapeamento da Tela M_CONSULTA_PACIENTE_PAGE
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/M_CONSULTA_PACIENTE_PAGE.robot
Resource                ../../1-resources/auxiliar/Genericos.robot

*** Variable ***

*** Keywords ***

Validar Informacao Prestador 
    Validar Elemento Pelo Titulo          |${dados}[validarPrestador]|  
