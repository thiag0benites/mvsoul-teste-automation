##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Passos da tela Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_ENTREGA_LAUDO_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Selecionar Setor Solicitante |${Setor}|
    Preencher campo                           ${CampoAtendimento}    ${Setor}
    Click no Item                             ${BtnPesquisa} 
    Click no Item                             ${ChBoxEntregar}
    Click no Item                             ${BtnGerarProt}   

Gerar Protocolo "Resp Pela Retirada|${RespRet}|", "Nome Responsavel|${NomeResp}|", "CPF Responsavel|${CPF}|", "Tel Contato|${Telefone}|", "Observacao|${Obs}|"
    Clicar no Campo e Preencher Informacao    ${BtnTipoParent}        ${CampoFiltro}        ${RespRet}
    Click no Item                             ${BtnFiltrar}
    Click no Item                             ${BtnOKFiltrar}
    Preencher campo                           ${CampoNomeResp}         ${NomeResp}
    Preencher campo                           ${CampoCPF}              ${CPF}
    Preencher campo                           ${CampoTelContato}       ${Telefone}
    Click no Item                             ${CampoUsuResp}
    Preencher campo                           ${CampoObs}              ${Obs}
    Click no Item                             ${BtnConfirmar}
    Validar Pop-Pup de Alerta e Clicar        ${MsgAlerta}             ${BtnOkAlerta}     

