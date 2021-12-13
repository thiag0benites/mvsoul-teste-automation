##################################################################################################################################
# Autor: Marcos Costa
# Descrição: Configurar e centralizar as parametrizações do processo da nota fiscal.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                    ../../2-pages/5-FATURAMENTO/M_CONFIG_NF_PAGE.robot

*** Keywords ***

Validar Checkbox de Solicitacao Marcado <Pais Padrao> |${VlPais}| <URL Padrao> |${VlURL}| <Motivo Padrao> |${VlMot}|
    Validar Acesso a Tela |Configurações da Nota Fiscal|
    Marcar Checkbox |${Checkbox1}|
    Sleep    2
    Marcar Checkbox |${Checkbox2}|
    Sleep    2
    Marcar Checkbox |${Checkbox3}|
    Sleep    2
    Marcar Checkbox |${Checkbox4}|
    Sleep    2
    Marcar Checkbox |${Checkbox5}|
    Sleep    2
    Marcar Checkbox |${Checkbox6}|
    Sleep    2
    Marcar Checkbox |${Checkbox7}|
    Sleep    2
    Marcar Checkbox |${Checkbox8}|
    Sleep    2
    Marcar Checkbox |${Checkbox9}|
    Sleep    2
    Marcar Checkbox |${Checkbox10}|
    Sleep    2
    Marcar Checkbox |${Checkbox11}|
    Sleep    2
    Marcar Checkbox |${Checkbox12}|
    Sleep    3
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
    Wait Until Element Is Visible    ${CptabA}
    Click no Item    ${CptabA}
    Sleep    2
    Wait Until Element Is Visible    ${CptabB}
    Click no Item    ${CptabB}
    Wait Until Element Is Visible    ${CptabC}
    Click no Item    ${CptabC}
    Wait Until Element Is Visible    ${CptabD}
    Click no Item    ${CptabD}
    Wait Until Element Is Visible    ${CptabE}
    Click no Item    ${CptabE}
Clicar Salvar |${MsgEsperada}|
    Click no Item    ${BtSalvar}
    sleep    3
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}