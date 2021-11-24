##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: MED_TIPCOM
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/7-APOIO_TI/MED_TIPCOM_PAGE.robot

*** Variable ***

*** Keywords ***
Validar Campos De Retorno Da Consulta 
    Validar Elemento Pelo Titulo            FARMACEUTICO DO HOSPITAL
    Validar Elemento Pelo Titulo            FARMACEUTICO
