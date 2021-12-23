##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/2-ASSISTENCIAL/M_PREVIEW_LAUDO_PSSD_PAGE.robot

*** Keywords ***
Gerenciamento de exames
    #PReencher campo PEDIDO:309053
    #Clicar no botão PEsuisar
    #Clicar no botão REVISAR
    #Clicar no botão ULTIMOS RESULTADOS
    #Clicar no primeiro exame
    #Clicar no botao Visualizar
    #Abrir PDF em outra aba
    #FEchar aba do PDF
    #Clicar no botão retornar
    #Validar nome paciente
