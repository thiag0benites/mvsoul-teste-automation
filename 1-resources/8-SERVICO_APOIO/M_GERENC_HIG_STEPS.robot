##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Gerenciamento de Higienizações de Leitos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_GERENC_HIG_PAGE.robot

*** Variable ***

*** Keywords ***
Testar Lov das Unidades
    Click no Item    ${LovUnid}
    Sleep    2
    Click no Item    ${BotaoCancelar}

Consultar e Validar todas as Unidades |${Unidades}| |${Apartamento}| |${Enfermaria}| |${Leito}|
    Preencher Campo    ${CampoUnid}    ${Unidades}
    Send Keys    TAB
    Validar Elemento Pelo Titulo    ${Apartamento}
    Validar Elemento Pelo Titulo    ${Enfermaria}
    Validar Elemento Pelo Titulo    ${Leito}
    Sleep    3
