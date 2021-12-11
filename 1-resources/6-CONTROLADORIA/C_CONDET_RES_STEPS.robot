##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/C_CONDET_RES_PAGE.robot

*** Keywords ***

Descrição do Documento |${Codigo}||${Titulo}|
    Valida Mensagem                                ${Alerta}    Problema na Configuração do Sistema
    Click no Item                                  ${BtnOK}   
    Click no Item                                  ${BtnProcurar}
    Preencher campo                                ${CampoCodigo}        ${Codigo}
    Click no Item                                  ${BtnExecutar} 
    Validar Elemento Pelo Titulo                   ${Titulo}




