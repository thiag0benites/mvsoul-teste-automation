##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Validar a pesquisa por atendimento de pedido de exame de imagem para confirmação de exames realizados.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/2-ASSISTENCIAL/O_CONF_EXA_RX_PAGE.robot

*** Keywords ***
Informa na Tela de Confirmação <Pacien> |${VlPacien}| <Nome> |${VlNome}| <Prest> |${VlPres}| <Salvar> |${MsgEsperada}|
    Validar Acesso a Tela |Confirmação de Exames Realizados|
    Click no Item    ${CpNotifi}
    Click no Item    ${CpAtendA1}
    Click no Item    ${CpAtendB2}
    Validar Acesso a Tela |Consulta Atendimentos|
    Clicar no Campo e Preencher Informacao    ${CpInpA}    ${CpInpA}    ${VlPacien}
    Click no Item    ${CpNomeA}
    Clicar no Campo e Preencher Informacao    ${CpNomeB}    ${CpNomeB}    ${VlNome}
    Click no Item    ${BtExec}
    Click no Item    ${CpNotifi}
    Click no Item    ${CpConfi}
    Click no Item    ${BtExec}
    Validar Acesso a Tela |Confirmação de Exames Realizados|
    #Prestador
    Click no Item    ${CpPresA}
    Click no Item    ${CpPresB}
    Clicar no Campo e Preencher Informacao    ${CpPresC}    ${CpPresC}    ${VlPres}
    Click no Item    ${CpPresD}
    Click no Item    ${CpPresE}
    #Confirmar Checkbox
    Marcar Checkbox |${ChReali}|
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}
#    
