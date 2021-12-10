##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/M_DEVSAL_PAGE.robot

*** Keywords ***
Preencher devolucao de gasto de Sala |${AvisoCirurgia}||${MotivoDev}||${ProdutoEdit}||${QtdeRecebidaEdit}|
    
    Clicar no Campo e Preencher Informacao    ${campoAvisoCirurgia}            ${campoAvisoCirurgia}          ${AvisoCirurgia}
    Clicar no Campo e Preencher Informacao    ${CampoMotivoDev}                ${CampoMotivoDev}              ${MotivoDev}
    Send Keys                                 tab
    Click no Item                             ${BtnCodBarras}    
    Click no Item                             ${CampoProduto}
    Click no Item                             ${BtnSimPopUp}
    Click no Item                             ${BtnCodBarras}
    Clicar no Campo e Preencher Informacao    ${CampoProdutoEdit}              ${CampoProdutoEdit}            ${ProdutoEdit}
    Clicar no Campo e Preencher Informacao    ${CampoQtdeRecebida}             ${CampoQtdeRecebidaEdit}       ${QtdeRecebidaEdit}
    Click no Item                             ${BtnConcluir}
    Click no Item                             ${BtnOk}
    Click no Item                             ${BtnConcluir}

          
   