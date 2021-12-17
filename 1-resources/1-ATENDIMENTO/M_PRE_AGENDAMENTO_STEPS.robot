##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_PRE_AGENDAMENTO_PAGE.robot

*** Keywords ***
Preencha os campos obrigatorios |${DataA}| |${DataB}| |${Hora}| |${DataC}| |${Paciente}|
    Preencher Campo                    ${Data1}                    ${DataA}
    Preencher Campo                    ${Data2}                    ${DataB}
    Preencher Campo                    ${CampoTempo}               ${Hora}
    Preencher Campo                    ${Data3}                    ${DataC}
    Preencher Campo                    ${CampoPaciente}            ${Paciente}

Escolha o centro cirurgico |${Centro}|
    Click no Item                      ${BtnCentroCirurgico} 
    Preencher Campo                    ${CampoFiltro}               ${Centro}
    Click no Item                      ${BtnFiltro}   
    Click no Item                      ${BtnOk} 

Selecione o tipo de acomodacao
    Click no Item                      ${BtnAcomodacao} 
    Click no Item                      ${BtnOk}  

Selecione a sala cirurgica
    Click no Item                      ${BtnCentroCirurgico} 
    Click no Item                      ${BtnOk} 

Escolha o medico associado |${Medico}|
    Click no Item                      ${BtnMedico} 
    Preencher Campo                    ${CampoFiltro}               ${Medico}
    Click no Item                      ${BtnFiltro}   
    Click no Item                      ${BtnOk} 

Pressione o botao adicionar cirurgia
    Click no Item                      ${BtnAdicionar}    

Preencha as caracteristicas da cirurgia |${Caracteristica}|
    Click no Item                       ${BtnSubgrupo}
    Click no Item                       ${BtnOk} 
    Click no Item                       ${BtnGrupo} 
    Click no Item                       ${BtnOk} 
    Click no Item                       ${BtnCirurgia} 
    Click no Item                       ${BtnOk} 
    Click no Item                       ${BtnConvenio} 
    Click no Item                       ${BtnOk} 
    Click no Item                       ${BtnPlano} 
    Click no Item                       ${BtnOk}
    Click no Item                       ${BtnPotencial} 
    Click no Item                       ${BtnOk}
    Seleciona Item Combobox             ${ComboboxLateralidade}       ${Caracteristica}
    Click no Item                       ${BtnPrestador}
    Click no Item                       ${BtnOk}
    Click no Item                       ${BtnAtividade}  
    Click no Item                       ${BtnOk}
    Click Elemento por titulo           Salvar
    Click no Item                       ${BtnRetornar}    

Captura do codigo registrado |${suite}|${id}|
    Sleep    1
    Should Not Be Empty   ${MsgUsuario}
    ${protocolo}    Get Text    ${MsgUsuario}    
    Altera massa de dados da "${suite}", linha "${id}", coluna "MsgEsperada", valor "${protocolo}"
    Sleep    3