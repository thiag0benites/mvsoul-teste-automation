##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Alteracao de Tipo de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/C_LEITOS_GERENCIAL_PAGE.robot

*** Variable ***

*** Keywords ***

Validar Acesso
    Wait Until Element Is Visible    ${DivPrincipal}     360

Navegar entre Campos
    Click no Item                    ${DivNavega}
    Click no Item                    ${SetPainel}
    Click no Item                    ${SetTipoAco}

Acessar e Validar Leitos |${Leito1}| |${Leito2}| |${Leito3}|
    Click no Item                    ${Bercario}
    Validar Elemento Pelo Titulo     ${Leito1}
    Validar Elemento Pelo Titulo     ${Leito2}
    Validar Elemento Pelo Titulo     ${Leito3}
    Sleep    2


Navegar entre Campos Analise Ocupacao
    Click no Item                    ${DivNavega}
    Click no Item                    ${SetAnalise}
    Click no Item                    ${SetPrestador}


Acessar e Validar Leitos Ocupacao |${Leito1}| |${Leito2}| |${Leito3}|
    Click no Item                    ${Prestador}
    Validar Elemento Pelo Titulo     ${Leito1}
    Validar Elemento Pelo Titulo     ${Leito2}
    Validar Elemento Pelo Titulo     ${Leito3}
    Sleep    2

Navegar entre Campos Servico
    Click no Item                    ${DivNavega}
    Click no Item                    ${SetPainel}
    Click no Item                    ${SetServico}

Acessar e Validar Leitos Servico |${Leito1}| |${Leito2}| |${Leito3}|
    Click no Item                    ${Servico}
    Validar Elemento Pelo Titulo     ${Leito1}
    Validar Elemento Pelo Titulo     ${Leito2}
    Validar Elemento Pelo Titulo     ${Leito3}
    Sleep    2