##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/M_CLASSIFICACA_PAGE.robot

*** Keywords ***

Campos Obrigatorios a serem preenchidos e Salvar
    Click no Item                                           ${CampoTipo}
    Preencher campo                                         ${CampoDescricao}    ESTOQUE TESTE 
    Click no Item                                           ${CampoTipo}
    Preencher campo                                         ${BtnTipo}           Distribuição 
    Click no Item                                           ${BtnMultiEmpresa}
    Preencher campo                                         ${BtnRouparia}    S
    Send Keys                                               Enter        
    Click Elemento por titulo                               Prescrição 
    Selecionar Item Na Lista                                ${BtnTipoDeEsquema}    CUIDADOS DE ENFERMAGEM   CUIDADOS DE ENFERMAGEM    
    Click Elemento por titulo                               Prescrição
Salvar e validar      
           
    Validar Informacao Item                                 ${Alerta}    Há estoque cadastrado para controle de produtos de rouparia. Deseja cadastrar este também?
    Click no Item                                           ${BtnAlerta}
    Validar Informacao Item                                 ${Alerta}    Registros gravados com sucesso






