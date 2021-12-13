##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: C_PRESTADOR
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/7-APOIO_TI/C_PRESTADOR_PAGE.robot

*** Variable ***

*** Keywords ***
Clicar no botao Executar
    Sleep   1
    Click no Item               ${btnExecute}   
    Sleep   2

Navegar entre as abas do cadastro do prestador
    Click no Item    ${abaComplemento}
    Sleep    1
    Click no Item    ${abaContato}
    Sleep    1
    Click no Item    ${abaTipoDeVinculo}
    Sleep    1
    Click no Item    ${abaEspecialidades}
    Sleep    1
    Click no Item    ${abaCredenciamento}
    Sleep    1
    Click no Item    ${abaGrupos}
    Sleep    1
    Click no Item    ${abaPrestadores}

Clicar no botao Imprimir Etiquetas
    Click no Item    ${btnImprimirEtiquetas}

Clicar no botao Imprimir
    Click no Item    ${btnImprimir}
