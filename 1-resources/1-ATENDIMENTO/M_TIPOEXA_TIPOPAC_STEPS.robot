##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_TIPOEXA_TIPOPAC_PAGE.robot

*** Keywords ***
Examine os tipos de pacientes |${Descricao}|
    Click no Item    ${BtnPacientes}
    Click no Item    ${BtnItens}
    Click no Item    ${LinhaDescricao}
    Preencher Campo    ${CampoDescricao}    ${Descricao}
    Click no Item    ${LinhaCodigo}
    Click no Item    ${BtnCodigo}
    Click no Item    ${BtnOk}

Salve o registro cadastratado |${MsgLida}|
    Click Elemento por titulo    Salvar
    Validar Informacao Item    ${MsgRegistro}    ${MsgLida}
