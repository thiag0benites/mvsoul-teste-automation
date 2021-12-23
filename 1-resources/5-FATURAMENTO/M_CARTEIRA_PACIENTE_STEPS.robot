##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
Resource          ../../2-pages/5-FATURAMENTO/M_CARTEIRA_PACIENTE_PAGE.robot

*** Variables ***

*** Keywords ***
Criacao da carteira paciente |${Nome}| |${Medico}| |${Carteira}| |${Validade}| |${Ativo}| |${MsgLida}|
    Click no Item    ${BtnPaciente}
    Preencher Campo    ${CampoNome}    ${Nome}
    Click Elemento por titulo    Executar Consulta
    Click no Item    ${BtnAtender}
    Click no Item    ${BtnMedico}
    Preencher Campo    ${CampoFiltro}    ${Medico}
    Click no Item    ${BtnFiltro}
    Sleep    20
    #Wait Until Element Is Visible    ${BtnOk2}
    Click no Item    ${BtnOk2}
    Click no Item    ${BtnOrigem}
    Click no Item    ${BtnOk2}
    Click no Item    ${BtnConvenio}
    Click no Item    ${LinhaConvenio}
    Click no Item    ${BtnOk2}
    Click no Item    ${BtnPlano}
    Click no Item    ${BtnOk2}
    Click no Item    ${BtnLocal}
    Click no Item    ${BtnOk2}
    Click no Item    ${BtnCarteira}
    Click Elemento por titulo    Adicionar
    Click no Item    ${LinhaCarteira}
    Preencher Campo    ${CampoCarteira}    ${Carteira}
    Click no Item    ${LinhaValidade}
    Preencher Campo    ${CampoValidade}    ${Validade}
    Click no Item    ${LinhaAtivo}
    Click no Item    ${LinhaAtivo}
    Seleciona Item Combobox    ${ComboboxAtivo}    ${Ativo}
    Click no Item    ${BtnCategoria}
    Click no Item    ${BtnOk2}
    Click no Item    ${BtnSelecionar}
    Validar Informacao Item    ${MsgRegistrada}    ${MsgLida}
    #Should Not Be Empty    ${ValidaCarteira}
    Page Should Contain    Carteira
