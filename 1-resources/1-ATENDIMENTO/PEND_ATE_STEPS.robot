##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Pendencias de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/PEND_ATE_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Atendimento |${Atendimento}|
    Preencher Campo    ${CampoAtendimento}    ${Atendimento}

Preencher Tipo e Obs |${Tipo}| |${Observacao}|
    Preencher Campo    ${CampoTipo}    ${Tipo}
    Preencher Campo    ${CampoObs}    ${Observacao}

Salvar e Validar |${MsgSalva}|
    Clicar Botao Salvar
    Valida Mensagem    ${MensagemToast}    ${MsgSalva}
