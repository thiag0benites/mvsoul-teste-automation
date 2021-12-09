##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/O_SPED_ECF_PAGE.robot

*** Keywords ***
Dados Paciente |${DataFinal}||${DataInicial}|
    Preencher campo    ${CampoDataFinal}    ${DataFinal}
    Preencher campo    ${CampoDataInicial}    ${DataInicial}
    Click no Item    ${btnGerarSped}

Validacao de tela |${MensagemSucesso}|
    Valida Mensagem    ${Alerta}    ${MensagemSucesso}
    Click no Item    ${btnOK}
