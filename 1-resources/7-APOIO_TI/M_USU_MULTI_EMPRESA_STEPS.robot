##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: M_USU_MULTI_EMPRESA
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/7-APOIO_TI/M_USU_MULTI_EMPRESA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos |${usuario}|,|${empresa}|
    Preencher Campo                             ${campoUsuario}                    ${usuario}
    Preencher Campo                             ${campoEmpresa}                    ${empresa}
