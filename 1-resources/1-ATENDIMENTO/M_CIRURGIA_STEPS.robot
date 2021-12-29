##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Cirurgia
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_CIRURGIA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Descricao, Porte e Subgrupo |${Descricao}| |${Porte}| |${Subgrupo}|
    Preencher campo    ${CampoDescricao}    ${Descricao}
    Preencher campo    ${CampoPorte}    ${Porte}
    Preencher campo    ${CampoSubgrupo}    ${Subgrupo}

Preencher Procedimentos e via de Acesso |${Procedimento}| |${ProcedimentoSIH}| |${ProcedimentoSIA}| |${Via}|
    Preencher campo    ${CampoProcedimento}    ${Procedimento}
    Preencher campo    ${CampoVia}    ${Via}
    Preencher campo    ${CampoProcedimentoSIH}    ${ProcedimentoSIH}
    Preencher campo    ${CampoProcedimentoSIA}    ${ProcedimentoSIA}

Preencher Orientacao e Preparo |${Orientacao}| |${Preparo}|
    Preencher Campo    ${CampoOrientacao}    ${Orientacao}
    Preencher Campo    ${CampoPreparo}    ${Preparo}

Salvar e Validar |${MsgSalva}|
    Click Elemento por titulo    Salvar
    Valida Mensagem    ${MensagemToast}    ${MsgSalva}
    Sleep    2