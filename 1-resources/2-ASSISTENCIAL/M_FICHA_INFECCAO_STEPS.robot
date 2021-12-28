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
    Clicar no Campo e Preencher Informacao    ${CampoAtendimento}    ${CampoAtendimento}    10000017871
    #Clicar no btn pesquisar
    Click no Item                             ${BtnPesquisar}
    #Clicar na aba INFECÇÕES/COLONOZAÇÕES
    Click no Item                             ${AbaInfecCol}
    #Clicar no botao +
    Click no Item                             ${BtnAdd}
    #Prencher campo DATA DE REGISTRO: 08/12/2021
    Clicar no Campo e Preencher Informacao    ${CampoDataReg}        ${CampoDataReg}        08122021
    #Preencher campo CID: Z951
    Clicar no Campo e Preencher Informacao    ${CampoCID}            ${CampoCID}            Z951
    #Preencher campo LOCAL DE PROCEDENCIA : 5
    Send Keys    enter
    
    #Marcar checkbox INFECÇÃO
    #Preencher campo SITIO PRINCIPAL: BJ
    #Preencher campo TOPOGRAFIA: 80
    #Preencher campo PROCEDIMENTO INVASIVO: 368
    #Preencher Localização : Unidade de Internação
    #Preencher campo LEITO: 1769
    #Preencher TEXTAREA OBSERVAÇÕES: TESTES
    #Clicar no botão salvar
    #Validar sucesso

    

 