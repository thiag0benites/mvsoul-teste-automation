##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Validar Acesso à tela de Envio de Documentos através do botão <Novo Protocolo> na tela Central de Documentos.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/8-SERVICO_APOIO/M_CENTRAL_DOCUMENTOS_PAGE.robot

*** Keywords ***
Informar na Tela de Central de Doc <SetorTra> |${VlSetorTra}| <Protocolo> |${VlProtoP}|
    Validar Acesso a Tela |Central de Documentos|
    Click no Item    ${CpSetorTraA}
    Clicar no Campo e Preencher Informacao    ${CpSetorTraB}    ${CpSetorTraB}    ${VlSetorTra}
    Click no Item    ${CpSetorTraC}
    Click no Item    ${CpSetorTraD}
    # Atualizar
    Click no Item    ${BtAtualiza}
    # Novo Protocolo
    Click no Item    ${BtNovoProto}
    Validar Acesso a Tela |Envio de Documentos|
    Click no Item    ${BtPesquisaA}
    Clicar no Campo e Preencher Informacao    ${CpProtocoloP}    ${CpProtocoloP}    ${VlProtoP}
    Click no Item    ${BtPesquisaB}
    Sleep    6
    Click no Item    ${BtExit}
    Validar Acesso a Tela |Central de Documentos|
    Click no Item    ${BtExit}
