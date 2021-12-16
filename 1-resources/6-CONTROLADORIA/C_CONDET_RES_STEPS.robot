##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/C_CONDET_RES_PAGE.robot

*** Keywords ***

Descricao do Documento |${MsgEsperada}||${Codigo}||${Titulo}|
    Valida Mensagem                                ${Alerta}    ${MsgEsperada}
    Click no Item                                  ${BtnOK}   
    Click no Item                                  ${BtnProcurar}
    Preencher campo                                ${CampoCodigo}        ${Codigo}
    Click no Item                                  ${BtnExecutar} 
    Validar Elemento Pelo Titulo                   ${Titulo}