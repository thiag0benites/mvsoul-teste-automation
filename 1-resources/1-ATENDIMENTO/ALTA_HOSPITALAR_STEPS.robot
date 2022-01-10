##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/ALTA_HOSPITALAR_PAGE.robot

*** Keywords ***
Campos Obrigatorios a serem preenchidos e Salvar|${Atendimento}||${MotivoDaAlta}||${TipoDeLimpeza}||${ObservacaoDaAlta}||${CIDPrincipal}||${Mensagem1}|
    Wait Until Element Is Visible    ${BtnConfirmarAlta}    180
    Preencher campo    ${CampoAtendimento}    ${Atendimento}    #478375
    Click Elemento por titulo    Executar Consulta
    Preencher campo    ${CampoMotivaDaAlta}    ${MotivoDaAlta}
    Send Keys    enter
    Preencher campo    ${CampoTipoDeLimpeza}    ${TipoDeLimpeza}
    Send Keys    enter
    Click no Item    ${BtnObervacao}
    Preencher campo    ${CampoObservacaoDaAlta}    ${ObservacaoDaAlta}
    Click no Item    ${BtnCID}
    Click no Item    ${BtnCIDPrincipal}
    Preencher campo    ${CampoFiltro}    ${CIDPrincipal}
    Click no Item    ${BtnFiltro}
    Click no Item    ${BtnOKFiltro}
    Click no Item    ${BtnConfirmarAlta}
    Validar Informacao Item    ${Alerta}    ${Mensagem1}
    Click no Item    ${BtnSim}

Comprovante da Alta Hospitalar do Paciente|${Mensagem2}||${Mensagem3}|
    #Seleciona Item Combobox    ${BtnSaidaDoRelatorio}    ${SaidaDoRelatorio}
    Wait Until Element Is Visible    ${BtnSair}    20
    Click no Item    ${BtnSair}
    Validar Informacao Item    ${Alerta}    ${Mensagem3}
    Validar Informacao Item    ${Alerta2}    ${Mensagem2}
    Click no Item    ${BtnOK}

Cancelamento de Alta Hospitalar|${Atendimento}|
    Wait Until Element Is Visible    ${BtnCancelarAlta}    180
    Preencher campo    ${CampoAtendimento}    ${Atendimento}
    Click no Item    ${BtnCancelarAlta}

Validacao do Cancelamento da Alta Hospitalar|${Mensagem1}||${Mensagem2}||${Mensagem3}|
    Validar Informacao Item    ${Alerta}    ${Mensagem1}
    Click no Item    ${BtnSim}
    Wait Until Element Is Visible    ${BtnSair}    20
    Click no Item    ${BtnSair}
    Validar Informacao Item    ${Alerta}    ${Mensagem2}
    Validar Informacao Item    ${Alerta3}    ${Mensagem3}
    Click no Item    ${BtnOK}
