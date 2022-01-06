##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/1-ATENDIMENTO/M_ANEXO_ATENDIMENTO_PAGE.robot
Resource    ../1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Variable ***
*** Keywords ***
Pesquisar ou cadastrar uma pre internacao para o paciente |${Codigo}|
    Wait Until Element Is Visible                    ${AbaPreInt}         120
    Click Elemento por titulo                        Procurar
    Preencher campo                                  ${CampoCodigo}                   ${Codigo}
    Sleep                                            2
    Clicar no botao [Executar]
    Sleep                                            2            
    Click no Item                                    ${BtnNotificacao} 

Clique no botao Documentos do paciente 
    Click no Item                                    ${BtnPaciente} 

Clique no botao Novo documento
    Click no Item                                    ${BtnNovoDoc}

Preencher os campos e clicar no botao anexar documento |${Descricao}|
    Click no Item                                    ${BtnTipoDoc}  
    Click no Item                                    ${CampoTipoDoc}
    Click no Item                                    ${BtnOk}  
    Click no Item                                    ${BtnTipoStatus}
    Click no Item                                    ${BtnOk} 
    Preencher campo                                  ${CampoDescricao}                    ${Descricao} 
    
   

Faz upload de um arquivo |${MsgUsuario}| 
    Wait Until Element Is Visible                    ${BtnAne}         10
    Click no Item                                    ${BtnAne}
    Choose File                                      ${TipoArquivo}      ${FILE}      
    Wait Until Page Contains                         O documento foi anexado com sucesso.
    Capture Page Screenshot
    Validar Informacao Item                          ${MsgLida}                    ${MsgUsuario}
                   
    