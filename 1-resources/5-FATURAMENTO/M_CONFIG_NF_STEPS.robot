##################################################################################################################################
# Autor: Marcos Costa
# Descrição: Configurar e centralizar as parametrizações do processo da nota fiscal.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_CONFIG_NF_PAGE.robot
Resource    ../2-ASSISTENCIAL/M_USUUNID_STEPS.robot

*** Keywords ***

Marcar os Campos Checkbox com a parametrizacao desejada <Pais Padrao> |${VlPais}| <URL Padrao> |${VlURL}| <Motivo Padrao> |${VlMot}|
    Validar Acesso a Tela |Configurações da Nota Fiscal|
    Click no Item    ${Checkbox1}
    Click no Item    ${Checkbox2}
    Click no Item    ${Checkbox3}
    Click no Item    ${Checkbox4}
    Click no Item    ${Checkbox5}
    Click no Item    ${Checkbox6}
    Click no Item    ${Checkbox7}
    Click no Item    ${Checkbox8}
    Click no Item    ${Checkbox9}
    Click no Item    ${Checkbox10}
    Click no Item    ${Checkbox11}
    Click no Item    ${Checkbox12}
    # Pais
    Click no Item    ${BtPaisA}
    Click no Item    ${BtPaisB}
    Clicar no Campo e Preencher Informacao    ${BtPaisC}    ${BtPaisC}    ${VlPais}
    Click no Item    ${BtPaisD}
    Click no Item    ${BtPaisE}
    # URL Padrao
    Clicar no Campo e Preencher Informacao    ${CpUrlA}    ${CpUrlA}     ${VlURL}
    # Motivo
    Clicar no Campo e Preencher Informacao    ${CpMoti}    ${CpMoti}     ${VlMot}
    Click no Item    ${CptabA}
    Click no Item    ${CptabB}
    Click no Item    ${CptabC}
    Click no Item    ${CptabD}
    Click no Item    ${CptabE}
    Validar Checkbox de Movimentacao Desmarcado
Clicar Salvar |${MsgEsperada}|
    Click no Item    ${BtSalvar}
    sleep    2
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}