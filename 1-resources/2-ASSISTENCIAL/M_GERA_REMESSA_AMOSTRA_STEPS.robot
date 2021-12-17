##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/2-ASSISTENCIAL/M_GERA_REMESSA_AMOSTRA_PAGE.robot
Resource    ../6-CONTROLADORIA/O_REC_STEPS.robot

*** Keywords ***
Remessa de Amostras |${Data}||${Hora}||${PostoColeta}||${SetorExecutante}||${Obs}||${Amostra}||${MsgEsperada}|
    #Preencher campo Data
    Clicar no Campo e Preencher Informacao    ${CampoData}              ${CampoData}              ${Data} 
    Clicar no Campo e Preencher Informacao    ${CampoHora}              ${CampoHora}              ${Hora}
    Clicar no Campo e Preencher Informacao    ${CampoPostoColeta}       ${CampoPostoColeta}       ${PostoColeta} 
    Clicar no Campo e Preencher Informacao    ${CampoSetorExecutante}   ${CampoSetorExecutante}   ${SetorExecutante} 
    Clicar no Campo e Preencher Informacao    ${CampoObs}               ${CampoObs}               ${Obs} 
    Clicar no Campo e Preencher Informacao    ${CampoAmostra}           ${CampoAmostra}           ${Amostra} 
    Send Keys                                                                                     enter
    Click no Item                             ${BtnFecharRemessa}
    Valida Mensagem                           ${MensagemRecebida}                                 ${MsgEsperada}          
   
    

 