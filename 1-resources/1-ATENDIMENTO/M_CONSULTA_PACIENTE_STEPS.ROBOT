##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Mapeamento da Tela M_CONSULTA_PACIENTE_PAGE
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/M_CONSULTA_PACIENTE_PAGE.robot

*** Variable ***

*** Keywords ***

Validar Informacao Prestador |${validarPrestador}|
    Validar Informacao Item  ${campoValidarPrestador}      ${validarPrestador}
