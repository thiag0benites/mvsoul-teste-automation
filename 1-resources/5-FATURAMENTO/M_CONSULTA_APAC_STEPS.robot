##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_CONSULTA_APAC_PAGE.robot

*** Keywords ***

Consultar Lista dos Processos a Serem Validados
    Preencher campo                                         ${CampoDescricao}    ESTOQUE TESTE 
    Click no Item                                           ${CampoTipo}
    Preencher campo                                         ${btnTipo}           Distribuição 
    Sleep    3