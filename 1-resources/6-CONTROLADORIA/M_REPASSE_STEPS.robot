##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Geração de Repasse
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_REPASSE_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Parametros do Repasse |${Competencia}| |${Descricao}| |${Convenio}| |${BaseRepasse}|
    Preencher Campo                    ${CampoCompRepasse}                 ${Competencia}
    Preencher Campo                    ${CampoDescricao}                   ${Descricao}
    Selecionar Item Na Lista           ${BotaoLovConvenio}                 ${Convenio}                 ${Convenio}
    Sleep    1
    Preencher Campo                    ${CampoBaseRepasse}                 ${BaseRepasse}
    Send Keys                          tab

Clicar Botao Confirmar |${NomeTelaRepasse}|
    Click no Item                      ${BotaoConfirmar}
    Validar Acesso a Tela |${NomeTelaRepasse}|

Confirmar Mensagem e Validar Botao OK
    [Arguments]                        ${MensagemEsperada}            
    Valida Mensagem                    ${MensagemToast}                    ${MensagemEsperada}
    Click no Item                      ${BotaoOK}       

Confirmar Repasse |${MsgGravacao}| |${MsgRepasseSucesso}| |${MsgValorFixo}| |${MsgConcluido}| |${NomeTela}|
    Click no Item                      ${BotaoConfirmarRepasse}
    Valida Mensagem                    ${MensagemToast}                ${MsgGravacao}
    Click no Item                      ${BotaoConfirmarRepasse}
    Confirmar Mensagem e Validar Botao OK                              ${MsgRepasseSucesso}
    Confirmar Mensagem e Validar Botao OK                              ${MsgValorFixo}
    Confirmar Mensagem e Validar Botao OK                              ${MsgConcluido}
    Validar Acesso a Tela |${NomeTela}|