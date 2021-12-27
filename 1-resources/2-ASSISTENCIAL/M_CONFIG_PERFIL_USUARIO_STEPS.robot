##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/2-ASSISTENCIAL/M_CONFIG_PERFIL_USUARIO_PAGE.robot


*** Keywords ***

Area Perfil|${Perfil}|
    Wait Until Element Is Visible                            ${BtnCopiarPerfil}                    180
    Click no Item                                            ${BtnAdicionar}
    Preencher campo                                          ${CampoPerfil}                        ${Perfil}


Dados Perfil Usuario|${Empresa}||${Setor}||${Especialidade}||${TipoPrestador}||${PortaEntrada}||${Sistema}||${PesquisaEmpresa}|
    Wait Until Element Is Visible                            ${BtnEmpresa}            20
    Clicar Item e Selecionar da Lista                        ${BtnEmpresa}            ${BtnFiltrar}        ${PesquisaEmpresa}                        ${Empresa}
    Clicar Item e Selecionar da Lista                        ${BtnSetor}              ${BtnFiltrar}        ${Setor}                                  ${Setor}
    Clicar Item e Selecionar da Lista                        ${BtnEspecialidade}      ${BtnFiltrar}        ${Especialidade}                          ${Especialidade}
    Clicar Item e Selecionar da Lista                        ${BtnTipoPrestador}      ${BtnFiltrar}        ${TipoPrestador}                          ${TipoPrestador}
    Clicar Item e Selecionar da Lista                        ${BtnPortaEntrada}       ${BtnFiltrar}        ${PortaEntrada}                           ${PortaEntrada}
    Clicar Item e Selecionar da Lista                        ${BtnSistema}            ${BtnFiltrar}        ${Sistema}                                ${Sistema}


Salvar e Validar mensagem|${MsgEsperada}|

   Clicar Botao Salvar |${MsgEsperada}|
