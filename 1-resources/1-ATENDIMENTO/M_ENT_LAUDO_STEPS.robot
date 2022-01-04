##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Passos da tela Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_ENT_LAUDO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Informacoes "Responsavel|${Resp}|", "Setor Executante|${SetExec}|", "Observacoes|${Obs}|"
    Preencher campo                            ${CampoResponsavel}         ${Resp}
    Clicar no Campo e Preencher Informacao     ${BtnSetorExec}             ${CampoFiltrar}        ${SetExec}
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOkFiltrar}
    Preencher campo                            ${CampoObservacoes}          ${Obs}
    Click no Item                              ${BtnPesquisar}
    
Preenche Consulta de Laudos "Laudo|${Laudo}|", "Mensagem Sucesso|${MsgSucesso}|"
    Click no Item                              ${BtnExecutar}
    Click no Item                              ${BtnConfirma}
    Validar Pop-Pup de Alerta e Clicar         ${MsgAlerta}                ${BtnOkAlerta}
    Clicar no Campo e Preencher Informacao     ${BtnLaudo}                 ${CampoFiltrar}        ${Laudo}
    Click no Item                              ${BtnFiltrar}
    Click no Item                              ${BtnOkFiltrar}
    Click no Item                              ${BtnSalvar}
    Validar Informacao Item                    ${MsgAlerta}                ${MsgSucesso}


 