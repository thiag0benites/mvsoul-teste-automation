##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/M_PLACON_PAGE.robot

*** Keywords ***
Informar o numero no campo codigo da empresa
    Click no Item    ${BtnLimpar}
    Click no Item    ${BtnCodigo}
    Click no Item    ${CampoBuscaEmpresa}
    Click no Item    ${BtnOk}
    Click Elemento por titulo    Adicionar

No grid Contas clicar no campo codigo |${MsgCampoConta}|
    Preencher campo    ${CampoConta}    ${MsgCampoConta}
    Send Keys    enter

Clicar Descricao da Conta |${MsgCampoConta2}|
    Preencher campo    ${CampoConta}    ${MsgCampoConta2}
    Send Keys    enter

Clicar no campo Natureza |${BtnNatureza2}|
    Preencher campo    ${BtnNatureza}    ${BtnNatureza2}
    Press Keys    ${BtnNatureza}    ENTER

Clicar no campo Grupo da Conta
    Click no Item    ${BtnGrupoConta}
    Click no Item    ${CampoGrupoConta}
    Click no Item    ${BtnOk}

Indicar no campo Exporta ANS
    Click no Item    ${CheckBoxExpotaAns}

Clicar no botao Salvar |${MsgVerificada}|
    Click Elemento por titulo    Salvar
    Valida Mensagem    ${MsgValidada}    ${MsgVerificada}
