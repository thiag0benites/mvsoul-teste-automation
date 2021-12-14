##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/4-MATERIAIS/M_RECEBE_SOLIC_CONSULTA_PAGE.robot

*** Keywords ***
Consultar Lista dos Processos a Serem Validados|${MsgEsperada}|
    Click no Item    ${btnExecutar}
    Click no Item    ${btnConfirmar}
    Valida Mensagem    ${Alerta}    ${MsgEsperada}
    Click no Item    ${btnNao}
