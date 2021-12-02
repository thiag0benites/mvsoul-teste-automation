##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_ENTREGA_GLOSA_PAGE.robot

*** Keywords ***

Descrição da Fatura |${Remessa}||${DataPrevistaParaPagamento}|
    Preencher campo                           ${CampoRemessa}                        ${Remessa}
    Send Keys                                 enter
    
    Preencher campo                           ${CampoDataPrevistaParaPagamento}      ${DataPrevistaParaPagamento}
    Click no Item                             ${btnConfEntregaDaGlosa}


Validacao de tela |${Alert}|
    Valida Mensagem                           ${Alerta}        ${Alert}
    Click no Item                             ${btnOK}
    





