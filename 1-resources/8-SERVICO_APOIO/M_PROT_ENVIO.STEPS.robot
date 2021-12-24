##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Validar que o sistema realiza envio de documentos entre setores.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/8-SERVICO_APOIO/M_PROT_ENVIO.PAGE.robot

*** Keywords ***
Informa na Tela de Envio Doc <SetorOri> |${VlStOri}| <SetorDest> |${VlStDest}| <PerInicial> |${VlPerInic}| <PerFinal> |${VlPerFinal}| <DocImportar> |${VlDocImpor}| <Salvar> |${MsgEsperada}|
    Validar Acesso a Tela |Envio de Documentos|
    Click no Item    ${CpSetorEnvioA}
    Click no Item    ${CpSetorEnvioB}
    Clicar no Campo e Preencher Informacao    ${CpSetorEnvioC}    ${CpSetorEnvioC}    ${VlStOri}
    Click no Item    ${CpSetorEnvioD}
    Click no Item    ${CpSetorEnvioE}
    # Setor de Destino
    Click no Item    ${CpSetorDestinoA}
    Click no Item    ${CpSetorDestinoB}
    Clicar no Campo e Preencher Informacao    ${CpSetorDestinoC}    ${CpSetorDestinoC}    ${VlStDest}
    Click no Item    ${CpSetorDestinoD}
    Click no Item    ${CpSetorDestinoE}
    # Selecionar Doc
    Click no Item    ${BtDocA}
    Validar Acesso a Tela |Seleção de Contas/Atendimentos|
    Clicar no Campo e Preencher Informacao    ${CpDocPeriIni}    ${CpDocPeriIni}    ${VlPerInic}
    Clicar no Campo e Preencher Informacao    ${CpDocPeriFin}    ${CpDocPeriFin}    ${VlPerFinal}
    Click no Item    ${BtPesq}
    # Checkbox e Importar com Anexo
    Marcar Checkbox |${BtImporA}|
    Click no Item    ${CpImportA}
    Click no Item    ${CpImportB}
    Clicar no Campo e Preencher Informacao    ${CpImportC}    ${CpImportC}    ${VlDocImpor}
    Click no Item    ${CpImportD}
    Click no Item    ${CpImportE}
    # Botão Importar
    Click no Item    ${BtImporA}
    # Salvar e Valida MSG
    Click no Item    ${BtSalvar}
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}