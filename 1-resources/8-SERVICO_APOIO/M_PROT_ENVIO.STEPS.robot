##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Validar que o sistema realiza envio de documentos entre setores.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/8-SERVICO_APOIO/M_PROT_ENVIO.PAGE.robot

*** Keywords ***
# Informa na Tela de Confirmação <Pacien> |${VlPacien}| <Nome> |${VlNome}| <Prest> |${VlPres}| <Salvar> |${MsgEsperada}|
#     Validar Acesso a Tela |Confirmação de Exames Realizados|
     Click no Item    ${CpNotifi}
#     Click no Item    ${CpAtendA1}
#     Click no Item    ${CpAtendB2}
#     Validar Acesso a Tela |Consulta Atendimentos|
#     Clicar no Campo e Preencher Informacao    ${CpInpA}    ${CpInpA}    ${VlPacien}
   
#     #Confirmar Checkbox
#     Marcar Checkbox |${ChReali}|
#     Valida Mensagem    ${MgsVerif}    ${MsgEsperada}