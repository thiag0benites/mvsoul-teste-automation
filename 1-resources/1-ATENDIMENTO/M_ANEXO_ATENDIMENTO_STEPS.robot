##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/1-ATENDIMENTO/M_ANEXO_ATENDIMENTO_PAGE.robot
Resource    ../1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Keywords ***
Pesquisar ou cadastrar uma pre internacao para o paciente
    Click Elemento por titulo        Procurar
    Click no Item                    ${CampoCodigo} 
    
    Preencher campo                  ${CampoCodigo}                   38968
    Click Elemento por titulo        Executar Consulta
    Click no Item                    ${BtnNotificacao} 

Clicar no botao Documentos do paciente 
    Click no Item                    ${BtnDocPaciente} 

Clicar no botao Novo documento
    Click no Item                    ${BtnNovoDoc}

Preencher os campos e clicar no botao anexar documento
    Click no Item                    ${BtnTipoDoc}  
    Click no Item                    ${CampoTipoDoc} 
    Click no Item                    ${BtnOk}    
    Preencher campo                  ${CampoDescricao}                    TESTE
    Click no Item                    ${BtnAnexarDoc}    

Teste Upload
    Faz upload de um arquivo

Faz upload de um arquivo  
    Open Browser                http://qadevelop.mv.com.br:83/soul-mv/?t=1637584139003/upload    chrome
    Wait Until Element Is Visible           file-submit
    Choose File                             file-upload     ${FILE}
    Click Button                            file-submit
    Wait Until Page Contains                File Uploaded!
    Capture Page Screenshot