##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: M_CAD_USUARIOS_SIMPLES_STEPS
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/7-APOIO_TI/M_CAD_USUARIOS_SIMPLES_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o codigo do Usuario e Nome completo
    Preencher Campo                             ${CampoEditavel}                    LETICIANDRADEL
    Send Keys                                   Enter

    Preencher Campo                             ${CampoEditavel}                    TESTE WATI CONSULTORIA
    Send Keys                                   Enter

Clicar no botão Criar usuarios
    Click no Item           ${btnCriarUsuarios}