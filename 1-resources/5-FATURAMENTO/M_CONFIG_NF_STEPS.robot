##################################################################################################################################
# Autor: Marcos Costa
# Descrição: Configurar e centralizar as parametrizações do processo da nota fiscal.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_CONFIG_NF_PAGE.robot

*** Keywords ***

Informar no Campo <Convenio> |${VlConv}| 
    Validar Acesso a Tela |Faturas|
    Click no Item    ${BtConvA}
    Click no Item    ${BtConvB}
    Clicar no Campo e Preencher Informacao    
    Click no Item    ${BtConvD}
    Click no Item    ${BtConvE}    
    # Descrição
    Clicar no Campo e Preencher Informacao     
    # Competencia
    Clicar no Campo e Preencher Informacao    
Clicar Salvar |${MsgEsperada}|
    Click no Item    ${BtSalvar}
    sleep    2
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}