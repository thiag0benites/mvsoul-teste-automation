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
    Wait Until Element Is Visible        ${BtnPesquisar}     180
    Click no Item    ${CampoAtendimento}
    Sleep    2
    Input Text    ${CampoAtendimento}    10000017871
    #Clicar no btn pesquisar
    Click no Item    ${BtnPesquisar}
    #Clicar na aba INFECÇÕES/COLONOZAÇÕES
    Wait Until Element Is Visible    ${DivData}    30
    Click no Item    ${AbaInfecCol} 
    #Clicar no botao +
    Click no Item    ${BtnAdd}
    #Prencher campo DATA DE REGISTRO: 08/12/2021
    Clicar no Campo e Preencher Informacao    ${CampoDataReg}    ${CampoDataReg}    09122021
    #Preencher campo CID: Z951
    Clicar no Campo e Preencher Informacao    ${CampoCID}    ${CampoCID}    Z951
    Send Keys    enter
    #Marcar checkbox INFECÇÃO
    Click no Item    ${CheckBoxInfec}
    #Preencher campo SITIO PRINCIPAL: BJ
    Clicar no Campo e Preencher Informacao    ${CampoSitioPrincipal}    ${CampoSitioPrincipal}    BJ
    #Preencher campo TOPOGRAFIA: 80
    Clicar no Campo e Preencher Informacao    ${CampoTopografia}    ${CampoTopografia}    81
    #Preencher campo PROCEDIMENTO INVASIVO: 368
    Clicar no Campo e Preencher Informacao    ${CampoProcedInvasivo}    ${CampoProcedInvasivo}    368
    #Preencher Localização : Unidade de Internação
    Clicar no Campo e Preencher Informacao    ${ComboBoxLocalização}     ${ComboBoxLocalização}    Unidade de Internação
    #Preencher campo LEITO: 2128
    Clicar no Campo e Preencher Informacao    ${CampoLeito}      ${CampoLeito}      1769
    #Preencher TEXTAREA OBSERVAÇÕES: TESTES2
    Clicar no Campo e Preencher Informacao    ${TextArea}     ${TextArea}     TESTES3
    #Clicar no botão salvar
    Click no Item    ${btnSalvar} 
    #Validar sucesso
    Clicar Botao Salvar |Registros gravados com sucesso|    