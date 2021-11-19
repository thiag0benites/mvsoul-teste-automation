##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/M_CLASSIFICACA_PAGE.robot

*** Keywords ***

Campos Obrigatorias a serem preenchidas
    Preencher campo                                         ${CampoDescricao}    ESTOQUE TESTE 
    Click no Item                                           ${CampoTipo}
    Preencher campo                                         ${BtnTipo}           Distribuição 
    Click no Item                                           ${BtnMultiEmpresa}
    Click no Item                                           ${BtnOK}
    Preencher campo                                         ${BtnRouparia}    S
    Send Keys                                               Enter        
    Selecionar Item Na Lista                                ${BtnSetor}    ALMOXARIFADO   ALMOXARIFADO    
    
Salvar e validar      
    Click Elemento por titulo                               Salvar        
    Validar Informacao Item                                 ${Alerta}    Há estoque cadastrado para controle de produtos de rouparia. Deseja cadastrar este também?
    Click no Item                                           ${BtnAlerta}
    Validar Informacao Item                                 ${Alerta}    Registros gravados com sucesso






