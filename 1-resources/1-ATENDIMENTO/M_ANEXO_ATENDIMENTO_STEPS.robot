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
Pesquisar ou cadastrar uma pre internacao para o paciente
    # Wait Until Element Is Visible    ${BtnPes}           120
    # Click no Item                   ${BtnPes} 
    Sleep    80   

    Click Elemento por titulo        Procurar
    Click no Item                    ${CampoCodigo} 
    
    Preencher campo                  ${CampoCodigo}                   38968
    Click Elemento por titulo        Executar Consulta
    Click no Item                    ${BtnNotificacao} 

Clique no botao Documentos do paciente 
    Click no Item                    ${BtnPaciente} 

Clique no botao Novo documento
    Click no Item                    ${BtnNovoDoc}

Preencher os campos e clicar no botao anexar documento
    Click no Item                    ${BtnTipoDoc}  
    Click no Item                    ${CampoTipoDoc}
    Click no Item                    ${BtnOk}  
    Click no Item                    ${BtnTipoStatus}
    #Click no Item                    ${CampoTipoStatus}
    Click no Item                    ${BtnOk} 
    Preencher campo                  ${CampoDescricao}                    TESTE 
    Sleep    5
    #Click no Item                    ${BtnAne}    

#Teste Upload
    #Faz upload de um arquivo

Faz upload de um arquivo  
    #Open Browser                http://qadevelop.mv.com.br:83/soul-mv/?t=1637584139003/upload        chrome

    
    Wait Until Element Is Visible           ${BtnAne}        10
    Click no Item                           ${BtnAne}
    
    Choose File                             ${File1}                   ${EXECDIR}C:\\Users\\ACER\\Downloads\\teste2.pdf  
    #Choose File                             ${FILE}                   ${EXECDIR}C:\\Wati - Pastas e Arquivos\\mvsoul-teste-automation\\6-files\\teste.pdf  
    #Input Text    /images/file_path.PDF     C:\\Wati - Pastas e Arquivos\\mvsoul-teste-automation\\6-files ${FILE}
    #Choose File                               ${BtnAne}   C:\\Wati - Pastas e Arquivos\\mvsoul-teste-automation\\6-files\\teste.pdf  
    Wait Until Page Contains                O documento foi anexado com sucesso.
    Capture Page Screenshot