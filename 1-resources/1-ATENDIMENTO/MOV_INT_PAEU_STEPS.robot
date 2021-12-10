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
Selecionar tipo de atendimento
    Click no Item                    ${BtnAtendimento} 
    Preencher campo                  ${CampoAtendimento}                      tony
    Click no Item                    ${BtnFiltro}     
    Click no Item                    ${BtnOk}   
    Click no Item                    ${BtnOk2}     

Selecionar leito
    Click no Item                    ${BtnLeito} 
    Preencher campo                  ${CampoAtendimento}                      leito
    Click no Item                    ${BtnFiltro}     
    Click no Item                    ${BtnOk}

Escolher motivo da transferencia
    Click no Item                    ${BtnMotivo}  
    Preencher campo                  ${CampoAtendimento}                      manu
    Click no Item                    ${BtnFiltro}     
    Click no Item                    ${BtnOk} 

Selecionar tipo de limpeza
    Click no Item                    ${BtnLimpeza} 
    Preencher campo                  ${CampoAtendimento}                      adm
    Click no Item                    ${BtnFiltro}     
    Click no Item                    ${BtnOk}  

Preencha o campo observacao
    Preencher campo                   ${CampoObs}                             testes02

Clique em salvar
    Click Elemento por titulo         Salvar
    Valida Mensagem                   ${MsgUsuario}                           Registros gravados com sucesso (1 registros gravados).         