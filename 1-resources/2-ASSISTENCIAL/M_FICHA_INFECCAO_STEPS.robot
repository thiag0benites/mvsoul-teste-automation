##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/2-ASSISTENCIAL/M_FICHA_INFECCAO_PAGE.robot


*** Keywords ***
Parametros de Atendimento
    #PReencher campo atendimento: 10000017871

    #Clicar no btn pesquisar
    
    #Clicar na aba INFECÇÕES/COLONOZAÇÕES

    #Clicar no botao +

    #Prencher campo DATA DE REGISTRO: 08/12/2021

    #Preencher campo CID: Z951

    #Preencher campo LOCAL DE PROCEDENCIA : 5

    #Marcar checkbox INFECÇÃO
    #Preencher campo SITIO PRINCIPAL: BJ
    #Preencher campo TOPOGRAFIA: 80
    #Preencher campo PROCEDIMENTO INVASIVO: 368
    #Preencher Localização : Unidade de Internação
    #Preencher campo LEITO: 1769
    #Preencher TEXTAREA OBSERVAÇÕES: TESTES
    #Clicar no botão salvar
    #Validar sucesso

    

 