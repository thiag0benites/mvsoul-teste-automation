##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_LANC_FFCV_PAGE.robot


*** Keywords ***
Auditoria de Conta Ambulatorial|${Conta}|
    Wait Until Element Is Visible                        ${CampoConta}                                                                                                   180
    Preencher campo                                      ${CampoConta}                                                                                                   481486
    Click no Item                                        ${BtnExecutarConsulta}
    Sleep    5
    Click no Item                                        ${BtnIncluirItem}

Lançamentos de Contas do Faturamento|${Grupo}||${Procedimento}||${Motivo}||${MsgEsperada}|
    Wait Until Element Is Visible                        ${CampoInputLove}                                                                                               180
    Click no Item                                        ${BtnAdicionar}
    ${RecebeLinha}    Get Element Attribute              ${CampoInputLove}                                                                                               row
    Altera massa de dados da "m_lanc_ffcv", linha "1", coluna "Linha", valor "${RecebeLinha}"
    Preencher campo                                      //input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@row="${RecebeLinha}"]                        14
    Send Keys                                            enter
    Preencher campo                                      //input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@row="${RecebeLinha}"]                        08007954
    Send Keys                                            enter
    Click no Item                                        //div[@data-member="CD_MOTIVO"][@data-row="${RecebeLinha}"]/..
    Preencher campo                                      //input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@row="${RecebeLinha}"]                        11
    Send Keys                                            enter
    Click no Item                                        ${BtnSalvar}
    Valida Mensagem                                      ${Alerta}                                                                                                       Registros gravados com sucesso
    Click no Item                                        ${BtnSair} 


Cancelamento da massa
        

