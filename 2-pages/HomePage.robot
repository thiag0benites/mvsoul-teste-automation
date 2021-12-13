##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
${HomeXpathBtnMenu}    xpath=//*[@class='mv-basico-menu dp32']
${HomeXpathInputPesquisa}    xpath=//input[@id='menu-filter-1']


*** Keywords ***
### Autor: Thiago Benites
### Data: 17/11/2020
### Descrição: Seleciona item no menu principal do MV
# Seleciona item no menu
#    [Arguments]    ${tituloItemMenu}
#    ${titleItemMenu}    Set Variable    xpath=//*[@title='${tituloItemMenu}']
#    Wait Until Element Is Visible    ${titleItemMenu}
#    Click Element    ${titleItemMenu}
#    Sleep    0.5
# Capture Page Screenshot
### Autor: Thiago Benites
### Data: 01/07/2021
### Descrição: Seleciona item no menu principal do MV
Seleciona item no menu
    [Arguments]    ${xpathTituloItemMenu}
    ${titleItemMenu}    Set Variable    xpath=${xpathTituloItemMenu}
    Wait Until Element Is Visible    ${titleItemMenu}    5
    # Realcar Elemento Execucao    ${titleItemMenu}
    Sleep    0.5
    Click Javascript    ${titleItemMenu}
    Sleep    2