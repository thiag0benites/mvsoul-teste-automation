##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Inclusao e Exclusao de Proibição
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_INCLUSAO_EXCLUSAO_PROIBICAO_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Procedimento, Convenio, Plano e Setores |${Procedimento}| |${Convenio}| |${Empresa}|
    Wait Until Element Is Visible    ${CampoProced}    250
    Preencher Campo    ${CampoProced}    ${Procedimento}
    Send Keys    TAB
    Click no Item    ${BotaoConvenios}
    Preencher Campo    ${CampoEmpresa}    ${Empresa}
    Send Keys    TAB
    Sleep    1
    Click no Item    ${BotaoSetores}

Preencher Vigencia Automaticamente
    Sleep    2
    Preencher campo com data e hora    ${CampoDataIni}    %d/%m/%Y    00:00:00
    Send Keys    TAB
    ${DataIni}    Get Element Attribute    ${CampoDataIni}    title
    Altera massa de dados da "M_INCLUSAO_EXCLUSAO_PROIBICAO", linha "1", coluna "DataIni", valor "${DataIni}"
    Sleep    2
    Preencher campo com data e hora    ${CampoDataFim}    %d/%m/%Y    264:00:00
    Send Keys    TAB
    ${DataFim}    Get Element Attribute    ${CampoDataFim}    title
    Altera massa de dados da "M_INCLUSAO_EXCLUSAO_PROIBICAO", linha "1", coluna "DataFim", valor "${DataFim}"

Incluir e Validar |${Justificativa}| |${MsgSalva}|
    Preencher Campo    ${CampoJustificativa}    ${Justificativa}
    Click no Item    ${BotaoIncluir}
    Valida Mensagem    ${MensagemToast}    ${MsgSalva}

Excluir e Validar |${MsgSalva}|
    Sleep    1
    Click no Item    ${AbaProcedimentos}
    Click no Item    ${BotaoExcluir}
    Valida Mensagem    ${MensagemToast}    ${MsgSalva}
    Click no Item    ${btnOk}
