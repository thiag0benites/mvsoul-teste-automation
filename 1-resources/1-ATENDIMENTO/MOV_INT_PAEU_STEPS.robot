##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/1-ATENDIMENTO/MOV_INT_PAEU_PAGE.robot
Resource    ../1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Keywords *** 
Selecionar tipo de atendimento |${NomePaciente}|
    Click no Item                    ${BtnAtendimento} 
    Preencher campo                  ${CampoAtendimento}                      ${NomePaciente}
    Click no Item                    ${BtnFiltro}     
    Click no Item                    ${BtnOk}   
    Click no Item                    ${BtnOk2}     

Selecionar leito
    Click no Item                    ${BtnLeito} 
    Click no Item                    ${LinhaLeito}   
    Click no Item                    ${BtnOk}

Escolher motivo da transferencia |${NomeTransferencia}|
    Click no Item                    ${BtnMotivo}  
    Preencher campo                  ${CampoAtendimento}                      ${NomeTransferencia}
    Click no Item                    ${BtnFiltro}     
    Click no Item                    ${BtnOk} 

Selecionar tipo de limpeza |${NomeLimpeza}|
    Click no Item                    ${BtnLimpeza} 
    Preencher campo                  ${CampoAtendimento}                      ${NomeLimpeza}
    Click no Item                    ${BtnFiltro}     
    Click no Item                    ${BtnOk}  

Preencha o campo observacao |${NomeObs}|
    Preencher campo                   ${CampoObs}                             ${NomeObs}

Clique em salvar |${MsgValidada}|
    Click Elemento por titulo         Salvar
    Valida Mensagem                   ${MsgUsuario}                           ${MsgValidada}       