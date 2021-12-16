##################################################################################################################################
# Autor: Danilo Campanello
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_CONFIG_EST_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher "Manutencao Lote Compras|${Parametro}|", "Qtd De Lotes Em Dias |${QtdXA}|, |${QtdZA}|, |${QtdXC}|, |${QtdZC}|", "Validar Alteracao|${ValidAlt}|"
    Sleep    5
    Click no Item    ${CampoParametro}
    Sleep     3
    SeleniumLibrary.Input Text                ${CampoParametro}            ${Parametro}
    Send Keys    tab
    Preencher campo                           ${CampoQtdXA}                ${QtdXA}
    Preencher campo                           ${CampoQtdZA}                ${QtdZA}
    Preencher campo                           ${CampoQtdXC}                ${QtdXC}
    Preencher campo                           ${CampoQtdZC}                ${QtdZC}
    Click no Item                             ${BtnSalvar}
    Validar Informacao Item                   ${MsgAltData}                ${ValidAlt}
    Click no Item                             ${BtnOkAlerta}

Preencher "Inflacao Mensal de Formacao de OC|${FormacOC}|", "Valor Inflacao|${VlInflacao}|", "Validar Alteracao|${ValidAlt}|"
    Sleep    5
    Clicar no Campo e Preencher Informacao    ${CampoParametro}            ${CampoParametro}            ${FormacOC}
    Send Keys    tab
    Clicar no Campo e Preencher Informacao    ${CampoEdit}                 ${CampoEdit}                 ${VlInflacao}
    Click no Item                             ${BtnSalvar}
    Validar Informacao Item                   ${MsgAltData}                ${ValidAlt}
    Click no Item                             ${BtnOkAlerta}