##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/C_CC_PRESTADOR_PAGE.robot

*** Keywords ***

Descrição do Prestador |${Prestador}||${DataInicial}||${DataFinal}|
    Preencher campo                                ${CampoPrestador}        ${Prestador}
    Send Keys                                      enter
    Clicar no Campo e Preencher Informacao         ${CampoDataInicial}      ${CampoDataInicial}       ${DataInicial}
    Send Keys                                      enter
    Preencher campo                                ${CampoDataFinal}        ${DataFinal}
    Send Keys                                      enter
    Click no Item                                  ${BtnConsultar}
    Sleep    15
    Validar Item                                   ${Saldo} 
    Capture Page Screenshot