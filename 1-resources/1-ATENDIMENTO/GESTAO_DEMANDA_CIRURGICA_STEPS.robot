##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela gestão demanda cirurgica
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/GESTAO_DEMANDA_CIRURGICA_PAGE.robot

*** Keywords ***
Aperte o batão Pesquisa na tela principal
    Click no Item                    ${BtnPesquisa}   

Escolha uma linha
    Click no Item                    ${LinhaPaciente}
    Click no Item                    ${BtnAprovar} 
    Click no Item                    ${Linha2}   
    Click no Item                    ${BtnSim} 
    Click no Item                    ${BtnSim} 

Mensagem validada |${MsgVerificada}|
    Validar Informacao Item          ${MsgUsuario}                 ${MsgVerificada}
    Click no Item                    ${BtnOk} 