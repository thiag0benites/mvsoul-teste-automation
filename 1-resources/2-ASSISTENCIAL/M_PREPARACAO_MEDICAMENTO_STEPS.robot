##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Consulta de Itens Prescritos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_PREPARACAO_MEDICAMENTO_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar e Preencher Informacoes |${Solic}| |${DataIni}| |${DataFim}|
    Wait Until Element Is Visible    ${CampoPac}    250
    Preencher Campo    ${CampoSolic}    ${Solic}
    Preencher Campo    ${CampoDataIni}    ${DataIni}
    Preencher Campo    ${CampoDataFim}    ${DataFim}
    #######DataIni e DataFim são datas fixas #########
    Click no Item    ${BotaoConsultar}

Escolher na Lista e Preparar
    Click no Item    ${BotaoPreparar}
    Click no Item    ${BotaoConfirmar}

Consultar Concluidos e Validar |${StatConc}| |${Presc}|
    Click no Item    ${CheckConcluido}
    Click no Item    ${BotaoConsultar}
    Validar Elemento Pelo Titulo    ${StatConc}
    Validar Elemento Pelo Titulo    ${Presc}
    Sleep    2
