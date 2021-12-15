##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/1-ATENDIMENTO/M_GRU_IT_CHE_AVI_CIR_PAGE.robot
Resource    ../6-CONTROLADORIA/O_REC_STEPS.robot
*** Keywords ***

Conferencia de Itens de Checagem|${MsgEsperada}|
    Wait Until Element Is Visible                            ${btnPesquisar}                180
    Click no Item                                            ${btnPesquisar}
    Wait Until Element Is Visible                            ${CheckBoxChecado}             20
    Click no Item                                            ${CheckBoxChecado}
    Valida Mensagem                                          ${Alerta}                      ${MsgEsperada}











