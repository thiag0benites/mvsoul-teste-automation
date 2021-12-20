##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_LANC_FFCV_PAGE.robot


*** Keywords ***
Auditoria de Conta Ambulatorial
    Wait Until Element Is Visible                        ${CampoConta}                           180
    Preencher campo                                      ${CampoConta}                           481486
    Click no Item                                        ${BtnExecutarConsulta}
    Sleep    5
    Click no Item                                        ${BtnIncluirItem}

Lançamentos de Contas do Faturamento
    Wait Until Element Is Visible                        ${CampoInputLove}                       180
    Click no Item                                        ${BtnAdicionar}
    ${RecebeLinha}    Get Element Attribute              ${CampoInputLove}                       row
    Preencher campo                                      ${CampoInputLove}                       14
    Send Keys                                            enter
    Preencher campo                                      ${CampoInputLove}                       08007954
    Send Keys                                            enter







