##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/2-ASSISTENCIAL/M_CONFIG_PERFIL_USUARIO_PAGE.robot
Resource    ../5-FATURAMENTO/M_VAL_PLACON_STEPS.robot

*** Keywords ***

Area Perfil
    Wait Until Element Is Visible                            ${CampoEmpresa}                       180
    Click no Item                                            ${BtnAdicionar}
    Preencher campo                                          ${CampoPerfil}                        TESTE


Dados Perfil Usuario
    Wait Until Element Is Visible                            ${CampoEmpresa}                       20
    Clicar Item e Selecionar da Lista                        ${BtnEmpresa}            ${BtnFiltrar}        5                                         5 - HOSPITAL MV - MATRIZ  - TESTES WATI 
    Clicar Item e Selecionar da Lista                        ${BtnSetor}              ${BtnFiltrar}        170                                       170
    Clicar Item e Selecionar da Lista                        ${BtnEspecialidade}      ${BtnFiltrar}        ASSISTENTE SOCIAL                         ASSISTENTE SOCIAL
    Clicar Item e Selecionar da Lista                        ${BtnTipoPrestador}      ${BtnFiltrar}        ASSISTENTE SOCIAL                         ASSISTENTE SOCIAL
    Clicar Item e Selecionar da Lista                        ${BtnPortaEntrada}       ${BtnFiltrar}        Lista de Pacientes                        Lista de Pacientes
    Clicar Item e Selecionar da Lista                        ${BtnSistema}            ${BtnFiltrar}        PRONTUARIO ELETRONICO DO PACIENTE         PRONTUARIO ELETRONICO DO PACIENTE



Salvar e Validar mensagem|${MsgEsperada}|

   Clicar Botao Salvar |${MsgEsperada}|
