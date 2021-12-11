##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cadastro de CID
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_CID_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Bloco Capitulo |${CodigoCID}| |${DescCID}| |${GOInicial}| |${GOFinal}| |${Idioma}| |${GO}| |${MensagemSucesso}| 
    Wait Until Element Is Visible  ${CampoCodigo}              180
    Preencher Campo                ${CampoCodigo}              ${CodigoCID}
    Preencher Campo                ${CampoDescricao}           ${DescCID}
    Preencher Campo                ${CampoInicial}             ${GOInicial}
    Preencher Campo                ${CampoFinal}               ${GOFinal}
    Preencher Campo                ${CampoIdioma}              ${Idioma}
    Preencher Campo                ${CampoGO}                  ${GO}
    Send Keys                      tab
    Valida Mensagem                ${MensagemToast}            ${MensagemSucesso}

Pesquisar CID Criado |${DescCID}|
    Click no Item                  ${CampoCodigo}
    Click Elemento por titulo      Procurar
    Preencher Campo                ${CampoCodigo}              99
    Click Elemento por titulo      Executar Consulta
    Validar Elemento Pelo Titulo   ${DescCID}

Preencher Bloco Categoria |${CdCategoria}| |${DescCategoria}|
    Clicar no Campo e Preencher Informacao    ${CampoCdCategoria}        ${CampoEditavel}    ${CdCategoria}
    Clicar no Campo e Preencher Informacao    ${CampoDescCategoria}      ${CampoEditavel}    ${DescCategoria}

Preencher Bloco Categoria CID-0 |${CdCategoria}| |${MensagemSucesso}| 
    Clicar no Campo e Preencher Informacao    ${CampoCdCatCID0}          ${CampoEditavel}    ${CdCategoria}
    Send Keys                                 tab
    Valida Mensagem                           ${MensagemToast}           ${MensagemSucesso}

Preencher Bloco CID |${CdCID}| |${DescricaoCID}|
    Clicar no Campo e Preencher Informacao    ${CampoCdCID}              ${CampoEditavel}    ${CdCID}
    Clicar no Campo e Preencher Informacao    ${CampoDescCID}            ${CampoEditavel}    ${DescricaoCID}

Preencher Bloco CID-0 |${CdCID}| |${MensagemSucesso}|
    Clicar no Campo e Preencher Informacao    ${CampoCdCID0}             ${CampoEditavel}    ${CdCID}
    Send Keys                                 tab
    Valida Mensagem                           ${MensagemToast}           ${MensagemSucesso}

### Retornar massa de dados para stutus inicial do teste ###
Excluir CID Criado |${DescCID}| |${MensagemSucesso}|
    Pesquisar CID Criado |${DescCID}|
    Apagar e Salvar                ${CampoCdCID0}             ${MensagemSucesso}
    Apagar e Salvar                ${CampoCdCID}              ${MensagemSucesso}
    Apagar e Salvar                ${CampoCdCatCID0}          ${MensagemSucesso}
    Click no Item                  ${CampoCodigo}             
    Apagar e Salvar                ${CampoCdCategoria}        ${MensagemSucesso}
    Apagar e Salvar                ${CampoCodigo}             ${MensagemSucesso}

Apagar e Salvar 
    [Arguments]                    ${elemento}        ${MensagemSucesso}
    Click no Item                  ${elemento}
    Click Elemento por titulo      Apagar
    Clicar Botao Salvar |${MensagemSucesso}|