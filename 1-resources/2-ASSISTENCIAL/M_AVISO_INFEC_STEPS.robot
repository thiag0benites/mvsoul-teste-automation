##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Pacientes Internados e Susceptíveis a Processos Infecciosos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_AVISO_INFEC_PAGE.robot
Resource    M_USUUNID_STEPS.robot

*** Variable ***

*** Keywords ***
Preencher Filtros para Pesquisa |${Paciente}|
    Selecionar Item Na Lista    ${BotaoLovAtendimento}     ${Paciente}    ${Paciente}
    Marcar Checkbox |${CbProcInvasivo}|
    Marcar Checkbox |${CbAltaUltrapassada}|
    Marcar Checkbox |${CbAvisoCirurgia}|
    Marcar Checkbox |${CbExaLab}|
    Click no Item    ${RbAmbos}
    Click no Item    ${BotaoPesquisar} 

Validar Resultados da Pesquisa |${Paciente}| |${Prestador}| |${CID}| |${Procedencia}| 
    Validar Elemento Pelo Titulo    ${Paciente}
    Validar Elemento Pelo Titulo    ${Prestador}
    Validar Elemento Pelo Titulo    ${CID}
    Validar Elemento Pelo Titulo    ${Procedencia}

Validar Aba Culturas |${Exame}| |${Microrganismos}| |${AntimicrobianoCult}|
    Validar Elemento Pelo Titulo    ${Exame}
    Validar Elemento Pelo Titulo    ${Microrganismos}
    Validar Elemento Pelo Titulo    ${AntimicrobianoCult}

Validar Aba Antimicrobianos |${Prescricao}| |${Antimicrobiano}| |${Frequencia}|
    Click no Item    ${AbaAntimicrobiano}  
    Validar Elemento Pelo Titulo    ${Prescricao}
    Validar Elemento Pelo Titulo    ${Antimicrobiano}
    Validar Elemento Pelo Titulo    ${Frequencia}

Validar Aba Proc. Invasivos |${Horario}| |${Procedimento}| |${Topografia}|
    Click no Item    ${AbaProcInvasivo}  
    Validar Elemento Pelo Titulo    ${Horario}
    Validar Elemento Pelo Titulo    ${Procedimento}
    Validar Elemento Pelo Titulo    ${Topografia}

Validar Aba Cirurgias |${HrInicio}| |${HrFim}| |${ProcedimentoCir}| |${PrestadorCir}|
    Click no Item    ${AbaCirurgias}  
    Validar Elemento Pelo Titulo    ${HrInicio}
    Validar Elemento Pelo Titulo    ${HrFim}
    Validar Elemento Pelo Titulo    ${ProcedimentoCir}
    Validar Elemento Pelo Titulo    ${PrestadorCir}


