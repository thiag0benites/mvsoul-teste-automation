##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/O_SPED_ECF_PAGE.robot

*** Keywords ***

Dados Paciente
    Preencher campo                           ${CampoDataFinal}        30/11/2021
    Preencher campo                           ${CampoDataInicial}      01/11/2021
    Click no Item                             ${btnGerarSped}


Validacao de tela
    Valida Mensagem                           ${Alerta}    Arquivos SPED_ECF
    Click no Item                             ${btnOK}
    





