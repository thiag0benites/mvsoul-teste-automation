##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/O_GERA_CALCULOS_PAGE.robot

*** Keywords ***

Preecher Campo Competencia |${Competencia}|
    Wait Until Element Is Visible                   ${btnCompetencia}    120
    Click no Item                                   ${btnCompetencia}
    Click no Item                                   ${CampoFiltro}
    Preencher campo                                 ${CampoFiltro}    ${Competencia}
    Click no Item                                   ${BtnFiltro}
    Click no Item                                   ${Btnok2}
    

Calculo e Validacao de mensagem |${MsgEsperada}|
 #Inicio dos Calculos   
    Click no Item                                   ${DivAlocacao}
    Click no Item                                   ${DivPrimario}
    Click no Item                                   ${DivRateio}
    Click no Item                                   ${DivUnitario}
    Click no Item                                   ${DivPaciente}
    Click no Item                                   ${DivTratamento}
    Click no Item                                   ${BtnConfirmar}
 #Após Finalizar os Calculos, deverá aparecer uma pop-up  com mensagem esperada 
    Wait Until Element Is Visible                   ${Alerta}    360
    Valida Mensagem                                 ${Alerta}    ${MsgEsperada}
    Click no Item                                   ${BtnOK}        
    
#Após a conclusao do teste, estou resetando a massa de dados
    Click no Item                                   ${BtnLimpar}        
#O Wait está validando se o Status do ultimo elemento está Limpo
    Wait Until Element Is Visible                   ${ValidaLimparAMassa}    20



