##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/2-ASSISTENCIAL/M_CONFIG_PERFIL_USUARIO_PAGE.robot

*** Keywords ***

Informacoes Gerais de Entrada de Produtos
    Wait Until Element Is Visible                            ${CampoEstoque}                       180
    Preencher campo                                          ${CampoEstoque}                       66
    Send Keys                                                enter
 

