##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_KIT_AVISO_PAGE.robot

*** Keywords ***
Conferencia de Itens de Checagem|${CodigoAvisoCirurgia}|
    Wait Until Element Is Visible    ${btnPesquisar}    180
    Click no Item    ${btnPesquisar}
    Preencher campo    ${CampoCodigoAvisoCirurgia}    ${CodigoAvisoCirurgia}
    Click no Item    ${BtnExecutarConsulta}
    Wait Until Element Is Visible    ${BtnKits}    20
    Click no Item    ${BtnKits}

Aba Kits Cirurgia|${Codigo}||${Quantidade}||${MsgEsperada1}|
    Click no Item    ${BtnAdicionar}
    Preencher campo    ${CampoCodigo}    ${Codigo}
    Send Keys    enter
    Preencher campo    ${CampoQuantidade}    ${Quantidade}
    Click no Item    ${BtnRetornar}
    Valida Mensagem    ${Alerta}    ${MsgEsperada1}
    Click no Item    ${BtnSim}

Apagar a massa pra reutilizacao da massa|${MsgEsperada2}||${MsgEsperada3}|
    Wait Until Element Is Visible    ${BtnKits}    20
    Click no Item    ${BtnKits}
    Wait Until Element Is Visible    ${DivCodigo325}
    Click no Item    ${DivCodigo325}
    Click no Item    ${BtnApagar}
    Click no Item    ${BtnRetornar}
    Valida Mensagem    ${Alerta}    ${MsgEsperada2}
    Click no Item    ${BtnSim}
    Clicar Botao Salvar |${MsgEsperada3}|
