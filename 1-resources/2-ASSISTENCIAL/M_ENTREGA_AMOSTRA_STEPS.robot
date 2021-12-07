##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Confirmação de Entrega de Amostra
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_ENTREGA_AMOSTRA_PAGE.robot

*** Variable ***

*** Keywords ***
### Keyword para receber massa de dados ###
Pesquisar Amostras
    Wait Until Element Is Visible                ${CampoCdAmostra}            120
    Click no Item                                ${CampoCdAmostra}
    Sleep  2
    Click Elemento por titulo                    Procurar
    Click Elemento por titulo                    Executar Consulta

### =================================== ###
Pegar Codigo Amostra Nao Entregue
    ${LinhaTabela}      Get Element Attribute    ${StatusNaoEntregue}            data-row
    ${CdAmostra}        Get Element Attribute    xpath=//div[@data-member="CD_AMOSTRA"][@data-row="${LinhaTabela}"]    title
    Click no Item                                ${BotaoNovaEntrega}
    Preencher Campo                              ${CampoEntregaAmostra}          

Realizar Entrega Amostra
    
