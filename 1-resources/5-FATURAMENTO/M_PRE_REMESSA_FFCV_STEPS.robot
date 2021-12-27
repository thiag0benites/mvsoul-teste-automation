##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/5-FATURAMENTO/M_PRE_REMESSA_FFCV_PAGE.robot

*** Keywords ***
Controle de Pre-Remessa Ambulatorial|${Convenio}||${Agrupamento}||${DataFechamento}||${DataEntrega}|
    Wait Until Element Is Visible    ${CampoEmEdicao}    180
    Clicar no Campo e Preencher Informacao    ${CampoEmEdicao}    ${CampoEmEdicao}    ${Convenio}
    Send Keys    enter
    Preencher campo    ${CampoEmEdicao}    ${Agrupamento}
    Send Keys    enter
    Click no Item    ${DivDataFechamento}
    Preencher campo    ${CampoDataFechamentoEntrega}    ${DataFechamento}
    Click no Item    ${DivDataEntrega}
    Preencher campo    ${CampoDataFechamentoEntrega}    ${DataEntrega}
    Send Keys    enter
    Click no Item    ${btnSalvar}

Validacao dos dados e queima da massa|${MsgEsperada1}||${ValorStatus}||${MsgEsperada2}|
    Valida Mensagem    ${Alerta}    ${MsgEsperada1}
    Wait Until Element Is Visible    ${CampoStatus}    20
    Click no Item    ${btnApagar}
    Click no Item    ${btnSalvar}
    Valida Mensagem    ${AlertaDeletaLinha}    ${MsgEsperada2}

Validacao dos Dados
    Validar Pop-Pup de Alerta e Clicar    ${Alerta}    ${btnSim}
    Wait Until Element Is Visible    ${CampoCodigo}    60
    ${Codigo}    Get Element Attribute    ${CampoCodigo}    title
    Altera massa de dados da "m_cadastro_cirurgia", linha "1", coluna "Codigo", valor "${Codigo}"